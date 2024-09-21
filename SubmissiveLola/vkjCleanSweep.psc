;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 11
Scriptname vkjCleanSweep Extends Quest Hidden Conditional

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN AUTOCAST TYPE vkjCleanSweep
Quest __temp = self as Quest
vkjCleanSweep kmyQuest = __temp as vkjCleanSweep
;END AUTOCAST
;BEGIN CODE
MQ.SetBlockEvents(true)
if TimesToSweep < 1
	TimesToSweep = 1
endif
IsHome = PlayerRef.GetCurrentLocation().HasKeyword(KwHome)
UseBoots = !PlayerRef.WornHasKeyword(MQ.zlib.zad_DeviousBoots) && (MQ.GetScore() as int - 40) >= Utility.RandomInt(1,50)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN AUTOCAST TYPE vkjCleanSweep
Quest __temp = self as Quest
vkjCleanSweep kmyQuest = __temp as vkjCleanSweep
;END AUTOCAST
;BEGIN CODE
; Sweep task start
ForcegreetScene.Stop()
PlayerRef.AddSpell(SweepSpell, false)
Utility.Wait(0.5)
PrevPower = PlayerRef.GetEquippedSpell(2)
PlayerRef.EquipSpell(SweepSpell, 2)
SetObjectiveDisplayed(0)
if IsHome
	SetObjectiveDisplayed(1)
else
	SetObjectiveDisplayed(2)
endif
RegisterForSingleUpdate(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN AUTOCAST TYPE vkjCleanSweep
Quest __temp = self as Quest
vkjCleanSweep kmyQuest = __temp as vkjCleanSweep
;END AUTOCAST
;BEGIN CODE
; Report back
SetObjectiveDisplayed(0, false)
if IsHome
	SetObjectiveCompleted(1)
else
	SetObjectiveCompleted(2)
endif
SetObjectiveDisplayed(3)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN AUTOCAST TYPE vkjCleanSweep
Quest __temp = self as Quest
vkjCleanSweep kmyQuest = __temp as vkjCleanSweep
;END AUTOCAST
;BEGIN CODE
; Sweep 1 (was 2) more times
TimesToSweep = 1; was 2
SetObjectiveDisplayed(0, false)
if IsHome
	SetObjectiveCompleted(1, false)
	SetObjectiveDisplayed(1)
else
	SetObjectiveCompleted(2, false)
	SetObjectiveDisplayed(2)
endif
SetObjectiveDisplayed(3, false)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN AUTOCAST TYPE vkjCleanSweep
Quest __temp = self as Quest
vkjCleanSweep kmyQuest = __temp as vkjCleanSweep
;END AUTOCAST
;BEGIN CODE
; Report back
SetObjectiveCompleted(0)
if IsHome
	SetObjectiveCompleted(1)
else
	SetObjectiveCompleted(2)
endif
SetObjectiveDisplayed(3)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN AUTOCAST TYPE vkjCleanSweep
Quest __temp = self as Quest
vkjCleanSweep kmyQuest = __temp as vkjCleanSweep
;END AUTOCAST
;BEGIN CODE
; Sweep 1 more time
TimesToSweep = 1
SetObjectiveDisplayed(0, false)
if IsHome
	SetObjectiveCompleted(1, false)
	SetObjectiveDisplayed(1)
else
	SetObjectiveCompleted(2, false)
	SetObjectiveDisplayed(2)
endif
SetObjectiveDisplayed(3, false)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN AUTOCAST TYPE vkjCleanSweep
Quest __temp = self as Quest
vkjCleanSweep kmyQuest = __temp as vkjCleanSweep
;END AUTOCAST
;BEGIN CODE
; Report back
SetObjectiveCompleted(0)
if IsHome
	SetObjectiveCompleted(1)
else
	SetObjectiveCompleted(2)
endif
SetObjectiveDisplayed(3)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN AUTOCAST TYPE vkjCleanSweep
Quest __temp = self as Quest
vkjCleanSweep kmyQuest = __temp as vkjCleanSweep
;END AUTOCAST
;BEGIN CODE
SetObjectiveCompleted(3)
SetObjectiveDisplayed(3, false)
CompleteAllObjectives(); Ensure that all objectives are removed from the quest log
UnequipBoots()
Stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property PlayerRef auto
vkjMQ Property MQ auto
Spell Property SweepSpell auto
Keyword Property KwHome auto
Keyword Property KwInn auto
Scene Property ForcegreetScene auto
Topic Property SameSpotComment auto
int Property TimesToSweep=3 auto; was 4
bool Property IsHome auto conditional
bool Property UseBoots auto conditional

Armor Shoes
Armor BondageShoes

int reward = 2
int lastSweepX = 13131
int lastSweepY

Spell PrevPower; The previously equipped power

Event OnUpdate()
	if GetStage() < 100; This check shouldn't be necessary.
		RegisterForSingleUpdate(10)
		Location loc = PlayerRef.GetCurrentLocation()
		if (IsHome && !loc.HasKeyword(KwHome)) || (!IsHome && !loc.HasKeyword(KwInn))
			MQ.PunishForModerate()
			if IsHome
				MQ.DisplayWarning("Finish cleaning before you may leave home")
			else
				MQ.DisplayWarning("Finish cleaning before you may leave the inn")
			endif
		endif
	endif
EndEvent

Function EquipBoots()
	Shoes = PlayerRef.GetWornForm(0x00000080) as Armor
	BondageShoes = MQ.MCM.BondageShoesList.GetAt(MQ.MCM.BondageShoes) as Armor
	MQ.EquipDD(PlayerRef, BondageShoes, MQ.zlib.zad_DeviousBoots)
EndFunction

Function UnequipBoots()
	MQ.RemoveDD(PlayerRef, BondageShoes, true)
	if Shoes != none
		PlayerRef.EquipItem(Shoes, abSilent=true)
	endif
EndFunction

Function Swept()
	; Check for sweeping the same spot
	if lastSweepX != 13131
		if (Math.abs((PlayerRef.GetPositionX() as int) - lastSweepX) < 50) && (Math.abs((PlayerRef.GetPositionY() as int) - lastSweepY) < 50)
			if PlayerRef.GetDistance(MQ.OwnerRef) < 1200; Owner must not be too far away
				if reward >= 1
					reward -= 1
				endif
				MQ.Hurt()
				MQ.OwnerRef.Say(SameSpotComment)
				return
			endif
		endif
	endif
	lastSweepX = PlayerRef.GetPositionX() as int
	lastSweepY = PlayerRef.GetPositionY() as int

	TimesToSweep = TimesToSweep - 1
	if TimesToSweep > 1
		Debug.Notification("Sweep " + TimesToSweep + " more times")
	elseif TimesToSweep == 1
		Debug.Notification("Sweep 1 more time")
	else; Finished sweeping
		AdvanceStage()
	endif
EndFunction

Function AdvanceStage()
	SetStage(GetStage() + 10)
EndFunction

bool Function CanSweep()
	return (TimesToSweep > 0)
EndFunction

Function EndQuest()
	PlayerRef.RemoveSpell(SweepSpell)
	if PrevPower != none
		PlayerRef.EquipSpell(PrevPower, 2)
	endif
	MQ.MCM.UpdateTimesCleaned()
	MQ.UpdateSubmissionScore(reward)
	MQ.SetBlockEvents(false)
	SetStage(100)
EndFunction