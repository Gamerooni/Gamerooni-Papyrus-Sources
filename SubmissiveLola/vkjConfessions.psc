Scriptname vkjConfessions extends Quest Conditional

; How Confessions work:
; The Owner will give the PC 2 lines to say to another NPC (Citizen1 or Citizen2).
; Those two things to say will come from different general topics.
; There are 5 fixed topics (Whore, Slave, Naughty, Sex, and Pet) plus (optionally) Custom.
; Each topic has 6 specific lines, so the PC isn't just saying "I'm a whore" every time.
; Topics and Lines are randomly chosen.  The Whore Topic is excluded if forced prostitution is off.
; When the PC speaks to the Citizen, the player must choose the correct line.
; Choosing the wrong line penalizes score.
;
; Notes for developers:
; The PC's lines should be short enough to not wrap on the screen.  Player will see 6 at a time.
; Ideally, some lines within a topic will be similar, to make the player pay attention and READ.
; But every line should have unique elements so that the correct choice is clear.
; Example:  Two lines about leashes.  In one PC says he likes it; in another PC says he's led naked.
; The owner's description of what the PC is to say should be more detailed.
; Confessions don't have to be true.  Owner might want PC to admit to something that never happened.
; Confessions should be humiliating but fit the mod's tone.
; Admitting to sex with dogs is too much unless creature content is added and the player enables it.
;
; We do not prevent the player from saying both confessions to the same NPC because one might have 
; blocked dialog so the player might have to cheat.  But player gets a small bonus for talking to both.

ReferenceAlias Property Citizen1 Auto
ReferenceAlias Property Citizen2 Auto
vkjMQ Property MQ Auto
GlobalVariable Property GlobalProstitutionChance Auto
int Property NumTopics = 5 Auto;  The number of topics, excluding Custom.  This allows for expansion.
int Property Topic1 Auto Conditional;  The first confession topic
int Property Topic2 Auto Conditional;  The second confession topic
int Property Line1 Auto Conditional;   The line to be said within Topic1 (there are 6 possible lines per topic)
int Property Line2 Auto Conditional;   The line to be said within Topic2
int Property GiveTopic Auto Conditional;  The topic now being "given" (from owner to PC, or from PC to NPC)
int Property GiveLine Auto Conditional;   The specific line within a topic being "given" (or that should be said)
int Property GotLineCount Auto Conditional;   The number of lines the PC has been given to say so far
int Property SaidLineCount Auto Conditional;  The number of lines the PC has said to an NPC so far
int Property NumRight Auto Conditional;  The number of responses the player got right

int violationmagnitude = 0

function Complete()
endFunction

Auto State Disabled
	Event OnBeginState()
		UnregisterForUpdateGameTime()
		UnregisterForUpdate()
		MQ.MCM.UpdateConfessionCount()
		MQ.MCM.SetNextConfession()
		MQ.SetBlockEvents(false)
	endEvent
EndState

State Startup
	Event OnBeginState()
		MQ.SetBlockEvents(true)
		if MQ.MCM.CustomConfessions > 0
			MQ.LoadConfessions()
		endif
		GotLineCount = 0
		SaidLineCount = 0
		NumRight = 0
		SelectTopics()
	EndEvent
EndState

State Running
	Event OnBeginState()
		SetActive(true)
		GiveTopic = Topic1
		GiveLine = Line1
		violationmagnitude = 0
		RegisterForSingleUpdateGameTime(2.5); Generous limit to allow the player time to read without rushing
	endEvent

	Event OnUpdateGameTime()
		GoToState("TooLate")
	endEvent

	function Complete()
		SetStage(30)
		Reward()
	endFunction
EndState

State TooLate
	Event OnBeginState()
		RegisterForUpdate(30)
	endEvent

	Event OnUpdate()
		if GetStage() < 20
			Debug.Notification("You have something to confess, don't you?")
		else
			Debug.Notification("Why haven't you reported back to your " + MQ.OwnerTitle + "?")
		endif
		violationmagnitude += 1
		MQ.ReactOnViolation(violationmagnitude)
	endEvent

	function Complete()
		SetStage(30)
		Reward()
	endFunction
EndState

Function SelectTopics()
	; Of the NumTopics number of high-level topics, select 2 for the PC to say.
	; Then choose 1 of 6 Lines as the correct line for each of those topics.
	; Indexing starts at 1.
	int startIndex = 1
	if GlobalProstitutionChance.GetValue() == 0.0; Skip the whoring topic if forced prostitution is off
		startIndex = 2
	endif
	
	if MQ.MCM.CustomConfessions == 1; Sometimes
		NumTopics += 1
	endif
	
	Topic1 = Utility.RandomInt(startIndex, NumTopics)
	if MQ.MCM.CustomConfessions == 2; Always
		Topic2 = NumTopics + 1
	else
		Topic2 = Utility.RandomInt(startIndex, NumTopics)
	endif
	While Topic2 == Topic1
		Topic2 = Utility.RandomInt(startIndex, NumTopics)
	EndWhile
	
	Line1 = Utility.RandomInt(1, 6)
	Line2 = Utility.RandomInt(1, 6)
	
	GiveTopic = Topic1
	GiveLine = Line1
EndFunction

; PC was told a confession to say
Function GotLine()
	GotLineCount += 1
	if GotLineCount == 1
		GiveTopic = Topic2
		GiveLine = Line2
	endif
EndFunction

; PC just said a confession
Function SaidLine(int topicNum, int lineNum, Actor npc)
	MQ.Humiliate(npc)

	; Did the player get it right?
	if lineNum == GiveLine
		Debug.Notification("Your " + MQ.OwnerTitle + " nods in approval")
		MQ.MinimalReward()
		NumRight += 1
	else
		Debug.Notification("Your " + MQ.OwnerTitle + " looks angry")
		MQ.UpdateSubmissionScore(-1); Don't zap during this dialog, just reduce score
	endif

	SaidLineCount += 1
	if SaidLineCount == 1
		GiveTopic = Topic2
		GiveLine = Line2
	endif
	
	; Update objectives
	if npc == (Citizen1.GetReference() As Actor)
		SetObjectiveCompleted(1)
	elseif npc == (Citizen2.GetReference() As Actor)
		SetObjectiveCompleted(2)
	endif
	if SaidLineCount == 2
		SetStage(20)
	endif
EndFunction

Function Reward()
	if NumRight == 2
		if IsObjectiveCompleted(1) && IsObjectiveCompleted(2)
			MQ.UpdateSubmissionScore(3); Bonus for talking to both NPCs and not cheating
		else
			MQ.UpdateSubmissionScore(2)
		endif
	elseif NumRight == 1
		MQ.UpdateSubmissionScore(-1)
	elseif NumRight == 0
		MQ.UpdateSubmissionScore(-2)
		MQ.Punish()
	endif
EndFunction

Function Help()
	string str = "This is what I want you to say.\nGet it right!\n\n" + GetHelpFor(Topic1, Line1) + "\n\n" + GetHelpFor(Topic2, Line2)
	Debug.Messagebox(str)
EndFunction

string Function GetHelpFor(int nTopic, int nLine)
	if nTopic == 1
		if nLine == 1
			return "Sex slave rented out to any who can pay."
		elseif nLine == 2
			return "Sex slave is what you do best."
		elseif nLine == 3
			return "No good as adventurer, so you're a sex slave."
		elseif nLine == 4
			return "Selling your body feels so dirty."
		elseif nLine == 5
			return "As a slave whore your body earns me lots of gold."
		elseif nLine == 6
			return "You're a whore, catch you when you're working."
		endif
	elseif nTopic == 2
		if nLine == 1
			return "You lacked self control."
		elseif nLine == 2
			return "Your life was empty."
		elseif nLine == 3
			return "Lustful desire made you a slave."
		elseif nLine == 4
			return "Wild and foolish before I tamed you."
		elseif nLine == 5
			return "Need to be told what to do so you don't think."
		elseif nLine == 6
			return "You're happy now that I taught you obedience."
		endif
	elseif nTopic == 3
		if nLine == 1
			return "You're naughty and need spankings."
		elseif nLine == 2
			return "You're spanked when bad and when you beg."
		elseif nLine == 3
			return "Orgasmed during a spanking, pain excites you."
		elseif nLine == 4
			return "You're whipped when bad, misbehave on purpose."
		elseif nLine == 5
			return "I'm expert with a whip.  You need strong hand."
		elseif nLine == 6
			return "You get excited just thinking about a whipping."
		endif
	elseif nTopic == 4
		if nLine == 1
			return "You like pleasuring yourself but I won't let you."
		elseif nLine == 2
			return "You need sex all the time."
		elseif nLine == 3
			return "You're a trained fucktoy."
		elseif nLine == 4
			return "You're a pervert."
		elseif nLine == 5
			return "Don't need to hide being slut / sex crazed."
		elseif nLine == 6
			return "Used to be shy, but need lots of sex now."
		endif
	elseif nTopic == 5
		if nLine == 1
			return "You like being led on a leash as a pet."
		elseif nLine == 2
			return "I leash you and walk you.  Naked."
		elseif nLine == 3
			return "As my pet you do tricks, fetch, and beg."
		elseif nLine == 4
			return "When I say \"Fetch\" you bring me ale."
		elseif nLine == 5
			return "If you're good you can sleep on my bed."
		elseif nLine == 6
			return "You lick my feet and other places."
		endif
	elseif nTopic == 6
		if nLine == 1
			return "That thing you're ashamed of doing."
		elseif nLine == 2
			return "That depraved thing you like to do."
		elseif nLine == 3
			return "The things you dream about at night."
		elseif nLine == 4
			return "The embarrassing thing that happened to you."
		elseif nLine == 5
			return "That fantasy you keep daydreaming about."
		elseif nLine == 6
			return "The perverted thing you like done to you."
		endif
	endif
EndFunction