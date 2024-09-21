;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 11
Scriptname vkjRoadTrip Extends Quest Hidden

;BEGIN ALIAS PROPERTY RequiredHold
;ALIAS PROPERTY TYPE LocationAlias
LocationAlias Property Alias_RequiredHold Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Owner
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Owner Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Title
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Title Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY


;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN AUTOCAST TYPE vkjRoadTrip
Quest __temp = self as Quest
vkjRoadTrip kmyQuest = __temp as vkjRoadTrip
;END AUTOCAST
;BEGIN CODE
ForcegreetScene.Stop()
MQ.SetBlockEvents(true)

vkjFindTreasure tombRaider = Quest.GetQuest("vkjFindTreasure") as vkjFindTreasure
if tombRaider.IsRunning()
	tombRaider.SetTimeLimit(); Reset time limit
	Debug.Notification("Tomb Raider time extended: you have 7 days from now.")
	Utility.Wait(1)
endif
MQ.StopQuestByName("vkjBringGold"); Stop Adventuring Slave
Quest ropedQuest = Quest.GetQuest("vkjRoped")
if ropedQuest.IsRunning()
	ropedQuest.SetStage(20); End Roped Up quest
endif

if MCM.SlutsQuest == none; older SLTR versions had a logic gap
	MCM.recheck_softmods()
endif

SetObjectiveDisplayed(1)
SetObjectiveDisplayed(2)
RegisterForSingleUpdateGameTime(24)
RegisterForSingleUpdate(updateInterval)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN AUTOCAST TYPE vkjRoadTrip
Quest __temp = self as Quest
vkjRoadTrip kmyQuest = __temp as vkjRoadTrip
;END AUTOCAST
;BEGIN CODE
; Started the run
UnregisterForUpdateGameTime()
SetObjectiveCompleted(1)
SetObjectiveDisplayed(2, false)
SetObjectiveDisplayed(3)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN AUTOCAST TYPE vkjRoadTrip
Quest __temp = self as Quest
vkjRoadTrip kmyQuest = __temp as vkjRoadTrip
;END AUTOCAST
;BEGIN CODE
; Too long
SetObjectiveDisplayed(1, false)
SetObjectiveDisplayed(2, false)
SetObjectiveDisplayed(0)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN AUTOCAST TYPE vkjRoadTrip
Quest __temp = self as Quest
vkjRoadTrip kmyQuest = __temp as vkjRoadTrip
;END AUTOCAST
;BEGIN CODE
CompleteAllObjectives()
stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN AUTOCAST TYPE vkjRoadTrip
Quest __temp = self as Quest
vkjRoadTrip kmyQuest = __temp as vkjRoadTrip
;END AUTOCAST
;BEGIN CODE
CompleteAllObjectives()
stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property PlayerRef auto
vkjMQ Property MQ auto
vkjMCM Property MCM auto
Scene Property ForcegreetScene auto
LocationAlias Property RequiredHoldRef auto
Keyword Property KwHold auto

float updateInterval = 20.0
int nWarnings = 0

Event OnUpdateGameTime()
	if GetStage() == 10
		SetStage(80); Failed
	endif
EndEvent

Event OnUpdate()
	if GetStage() >= 80
		return
	endif
	RegisterForSingleUpdate(updateInterval)

	if GetStage() == 10; Grace period to start the run
		int slutsStage = MCM.SlutsQuest.GetStage()
		if MCM.SlutsQuest.IsRunning() && slutsStage >= 20; Started SLUTS run
			MCM.UpdateSlutsCount()
			MQ.TimesServiceIsRequired = 0
			MQ.TimesSexIsRequired = 0
			MQ.UpdateSubmissionScore(5)
			SetStage(20)
			return
		endif
	
		; Check travel restriction
		Location loc = PlayerRef.GetCurrentLocation()
		if !MQ.SuspendAll && (loc != none) && !loc.IsSameLocation(RequiredHoldRef.GetLocation(), KwHold)  
			MQ.DisplayWarning("You are forbidden to leave " + RequiredHoldRef.GetLocation().GetName() + " hold")
			RegisterForSingleUpdate(updateInterval + 10.0); Allow a little longer to return
			nWarnings += 1
			if nWarnings > 1
				MQ.Hurt()
			endif
		else 
			nWarnings = 0
		endif
	elseif GetStage() == 20; Pulling cart
		; SLUTS Redux ends at stage 40.  Resume ends at or after stage 60, depending on its version.
		if !MCM.SlutsQuest.IsRunning() || (MCM.SlutsQuest.GetStage() == 40) || (MCM.SlutsQuest.GetStage() >= 60); Finished pulling cart
			EndQuest()
		endif
	endif
EndEvent

Function FailQuest()
	MQ.SetBlockEvents(false)
	MCM.SetNextSluts()
	MQ.UpdateSubmissionScore(-20); Punishment will subtract 5 more
	SetStage(90)
	MQ.Punish()
EndFunction

Function EndQuest()
	MQ.SetBlockEvents(false)
	MCM.SetNextSluts()
	SetStage(100)
EndFunction
