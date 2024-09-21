Scriptname vkjCountingIsFun extends Quest Conditional

vkjMQ Property MQ auto
Scene Property ForcegreetScene auto
Actor Property PlayerRef auto
int Property Round auto Conditional; Why not use stages?  There's nothing needed on stage change, and we're just repeating the same action.
int Property NumHits auto Conditional
Faction Property GameFaction auto
GlobalVariable Property GlobalNum1 auto
GlobalVariable Property GlobalNum2 auto
GlobalVariable Property GlobalNum3 auto
GlobalVariable Property GlobalNum4 auto
GlobalVariable Property GlobalNum5 auto
GlobalVariable Property GlobalNum6 auto
GlobalVariable Property GlobalNum7 auto

Actor previousDom

Function DoWhip()
	MQ.OwnerRef.AddToFaction(GameFaction)
	MQ.NumPlayerHits = 0
	MQ.ReportHitsOnPlayer = true

	Actor dom = MQ.OwnerRef
	bool playmateWhips = MQ.WillPlaymatePunish()
	if playmateWhips
		dom = MQ.PlaymateRef
		MQ.Watcher.ForceRefTo(MQ.OwnerRef)
		MQ.OwnerRef.SetLookAt(PlayerRef)
	elseif MQ.PlaymateIsAvailable
		MQ.Watcher.ForceRefTo(MQ.PlaymateRef)
		MQ.PlaymateRef.SetLookAt(PlayerRef)
	endif
	if (previousDom != none) && (dom != previousDom)
		MQ.MoveNpc(previousDom, -75, -30, -30); Move back, don't have them stand on each other.
	endif

	int duration = Utility.RandomInt(12, 18) + Round
	dom.ModActorValue("Stamina", -5000); Prevent hard-to-count spinning attacks.
	bool faceAway
	if Round == 0
		MQ.Strip()
		faceAway = PlayerRef.GetHeadingAngle(dom) < 90.0
	endif
	float dist = dom.GetDistance(PlayerRef)
	if dom.GetDistance(PlayerRef) < 75.0
		MQ.MoveNpc(dom, -1 * (100.0 - dist))
	endif
	MQ.ActorWhipPlayer(dom, duration, doStrip = false, dhlpSuspend = true, weaponModel = "", reverse=true, faceAway=faceAway)
	MQ.OwnerRef.ClearLookAt()
	if MQ.PlaymateIsAvailable
		MQ.PlaymateRef.ClearLookAt()
	endif
	PlayerRef.RestoreActorValue("Health", 5000)
	if Round == 0
		MQ.ClearPlayerBodyDecals()
	endif
	dom.ModActorValue("Stamina", 5000)
	MQ.Watcher.Clear()
	previousDom = dom

	NumHits = MQ.NumPlayerHits
	MQ.ReportHitsOnPlayer = false
	MQ.NumPlayerHits = 0

	; Spread: Round 0 = 7, Round 1 = 5, Round 2 = 3, Round 3 = 1
	int spread = 7 - (Round * 2)
	int nStart = NumHits - Utility.RandomInt(0, (spread - 1))
	if nStart < 0; NumHits can be zero if the whipping fails
		nStart = 0
	endif

	GlobalNum1.SetValue(nStart)
	GlobalNum2.SetValue(nStart + 1)
	GlobalNum3.SetValue(nStart + 2)
	GlobalNum4.SetValue(nStart + 3)
	GlobalNum5.SetValue(nStart + 4)
	GlobalNum6.SetValue(nStart + 5)
	GlobalNum7.SetValue(nStart + 6)
	
	UpdateCurrentInstanceGlobal(GlobalNum1)
	UpdateCurrentInstanceGlobal(GlobalNum2)
	UpdateCurrentInstanceGlobal(GlobalNum3)
	UpdateCurrentInstanceGlobal(GlobalNum4)
	UpdateCurrentInstanceGlobal(GlobalNum5)
	UpdateCurrentInstanceGlobal(GlobalNum6)
	UpdateCurrentInstanceGlobal(GlobalNum7)
	
	Round += 1
	ForcegreetScene.Start()
EndFunction

Function Failure()
	ForcegreetScene.Stop()
	DoWhip()
EndFunction

Function Success()
	ForcegreetScene.Stop()
	MQ.Redress()
	if Round < 4
		MQ.UpdateSubmissionScore(7 - (Round * 2)); 5, 3, 1, 0
		if Round == 1; Earn whipped buff for correct first time.
			MQ.WhippedBuff.Cast(PlayerRef, PlayerRef)
		endif
	endif
	if Round > 2
		PlayerRef.DispelSpell(MQ.WhippedBuff); This wasn't fun.  Remove any existing whipped buff.
	endif
	
	MQ.MCM.SetNextCountingIsFun()
	EndThisQuest()
EndFunction

Function EndThisQuest()
	ForcegreetScene.Stop(); failsafe
	Stop()
EndFunction