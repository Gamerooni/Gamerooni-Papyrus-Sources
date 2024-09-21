;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 11
Scriptname vkjShopping Extends Quest Hidden Conditional

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN AUTOCAST TYPE vkjShopping
Quest __temp = self as Quest
vkjShopping kmyQuest = __temp as vkjShopping
;END AUTOCAST
;BEGIN CODE
;
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN AUTOCAST TYPE vkjShopping
Quest __temp = self as Quest
vkjShopping kmyQuest = __temp as vkjShopping
;END AUTOCAST
;BEGIN CODE
MQ.SetBlockEvents(true)
SetObjectiveDisplayed(1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN AUTOCAST TYPE vkjShopping
Quest __temp = self as Quest
vkjShopping kmyQuest = __temp as vkjShopping
;END AUTOCAST
;BEGIN CODE
; Report back
SetObjectiveCompleted(1)
SetObjectiveDisplayed(2)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN AUTOCAST TYPE vkjShopping
Quest __temp = self as Quest
vkjShopping kmyQuest = __temp as vkjShopping
;END AUTOCAST
;BEGIN CODE
; Shopping begins
MQ.SetBlockEvents(true)

playerStartingGold = PlayerRef.GetItemCount(Gold)
int nGold = MQ.FollowerItemCount(MQ.OwnerRef, Gold) - MCM.OwnerPoverty
if nGold < 0; this should never happen
	nGold = 0
endif
MQ.TransferGoldToPlayer(nGold, playSound = true)

MQ.OwnerDoNothingScene.Start()
NextShoppingTime.SetValue(GameDaysPassed.GetValue() + 0.5)

if MCM.ShoppingBonus > 0
	SpeechBuff.SetNthEffectMagnitude(0, MCM.ShoppingBonus)
	PlayerRef.AddSpell(SpeechBuff, false)
endif

; Cancel any public humiliation for now
int i = MQ.HumiliationSpells.GetSize()
While i > 0
	i -= 1
	Spell aSpell = MQ.HumiliationSpells.GetAt(i) as Spell
	if PlayerRef.HasSpell(aSpell)
		PlayerRef.RemoveSpell(aSpell); Remove the current spell.  Player will get a free downgrade to the next level.
		if i > 0
			NextHumiliationSpell = MQ.HumiliationSpells.GetAt(i - 1) as Spell		
		endif
		i = -1
	endif
EndWhile

; Cancel score-nased speech debuff
if PlayerRef.HasSpell(MQ.SpeechReductionSpell)
	PlayerRef.RemoveSpell(MQ.SpeechReductionSpell)
endif

; Training discount
startingTrainingCost = Game.GetGameSettingFloat("fTrainingMultCost")
Game.SetGameSettingFloat("fTrainingMultCost", (startingTrainingCost * 0.9))

if TargetType != 2
	RegisterForSingleUpdate(30); merchant or trainer
else
	RegisterForSingleUpdate(60); steward
endif

SetObjectiveCompleted(2)
SetObjectiveDisplayed(3)
;SetObjectiveDisplayed(4)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN AUTOCAST TYPE vkjShopping
Quest __temp = self as Quest
vkjShopping kmyQuest = __temp as vkjShopping
;END AUTOCAST
;BEGIN CODE
UnregisterForUpdate()
; Shopping has ended
int leftoverOwnerGold = PlayerRef.GetItemCount(Gold) - playerStartingGold
if leftoverOwnerGold < 0
	leftoverOwnerGold = 0
endif
PlayerRef.RemoveItem(Gold, leftoverOwnerGold, true, MQ.OwnerRef)
SetObjectiveCompleted(3)
SetObjectiveDisplayed(5)
EndQuest()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN AUTOCAST TYPE vkjShopping
Quest __temp = self as Quest
vkjShopping kmyQuest = __temp as vkjShopping
;END AUTOCAST
;BEGIN CODE
MQ.OwnerDoNothingScene.Stop()
MQ.SetBlockEvents(false)
PlayerRef.RemoveSpell(SpeechBuff)
if NextHumiliationSpell != none
	PlayerRef.AddSpell(NextHumiliationSpell, false)
endif
MQ.UpdateSpeechReductionRate()
Game.SetGameSettingFloat("fTrainingMultCost", startingTrainingCost)
Stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property PlayerRef auto
vkjMQ Property MQ auto
vkjMCM Property MCM auto
MiscObject Property Gold auto
Spell Property SpeechBuff auto
GlobalVariable Property NextShoppingTime auto
GlobalVariable Property GameDaysPassed auto
int Property TargetGender auto Conditional
int Property TargetType auto Conditional; 0=merchant, 1=trainer, 2=steward
bool Property SexRequired auto Conditional

Spell NextHumiliationSpell
bool wasNoSwipingGold
int ownerGoldShare
int ownerPoverty
int playerExpenseGold
int playerStartingGold
float startingTrainingCost = 10.0

Event OnUpdate()
	; Time is up
	if UI.IsMenuOpen("BarterMenu"); barter window is open, so hold off on ending this phase
		RegisterForSingleUpdate(1)
		return
	endif
	Debug.Notification("Time is up")
	SetStage(80)
EndEvent

Function EndQuest()
	if GetStage() >= 30
		SetObjectiveDisplayed(5)
	endif
	SetObjectiveDisplayed(5, false)
	CompleteAllObjectives(); Ensure that all objectives are removed from the quest log
	SetStage(100)
EndFunction

Function Entertain(Actor npc, bool sex, bool dance)
	if sex && !dance
		MQ.Fuck(npc)
	elseif sex && dance
		MQ.SendPlayerDance(target=npc)
	else
		MQ.SendPlayerDance(target=npc, sexAtEnd=false)
	endif
	SetStage(20)
EndFunction

Function SetGender(int val)
	TargetGender = val
	SexRequired = false
	if MQ.PlayerCanHaveSexWithGender(TargetGender)
		SexRequired = Utility.RandomInt(1, 100) <= MCM.ShoppingSex
	endif
EndFunction