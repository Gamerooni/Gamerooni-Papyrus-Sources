;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 11
Scriptname vkjFriendlyFire Extends Quest

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN AUTOCAST TYPE vkjDeviceControl
Quest __temp = self as Quest
vkjDeviceControl kmyQuest = __temp as vkjDeviceControl
;END AUTOCAST
;BEGIN CODE
SetObjectiveCompleted(1)
if !WasAlreadyBound && !kmyQuest.MQ.EnoughActionQuest.IsRunning()
	kmyQuest.GoToState("Disabled")
endif
CompleteAllObjectives()
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN AUTOCAST TYPE vkjDeviceControl
Quest __temp = self as Quest
vkjDeviceControl kmyQuest = __temp as vkjDeviceControl
;END AUTOCAST
;BEGIN CODE
SetObjectiveDisplayed(1)
kmyQuest.GoToState("Active")
RegisterForModEvent("DDI_Quest_SigTerm", "DDITerminate")

int dur = 5
if MQ.FriendlyFireCount < 5
	dur = MQ.FriendlyFireCount
endif
MiscUtil.PrintConsole("Careless hands punishment time will be " + dur + " hours")
RegisterForSingleUpdateGameTime(dur as float); Quest duration
AddPunishmentDays()
MQ.FriendlyFireCount = 0
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
WasAlreadyBound = zlib.PlayerRef.WornHasKeyword(zlib.zad_DeviousHeavyBondage)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

vkjMQ Property MQ auto
zadlibs Property zlib auto
Scene Property ForcegreetScene auto
bool Property WasAlreadyBound auto

Function AddPunishmentDays()
	int mult = 1
	if MQ.FriendlyFireCount >= 5
		mult = 3
	elseif MQ.FriendlyFireCount >= 3
		mult = 2
	endif	

	MQ.TryToAddPunishmentDays(mult)
EndFunction

Function OnUpdateGameTime(); Invoked when punishment time expires
	if MQ.IsPlayerHavingSex(); Restraints might have been removed during sex
		RegisterForSingleUpdateGameTime(0.1); Try again soon
		return
	endif

	SetStage(20); End quest
EndFunction

Event DDITerminate()
	SetStage(20)
EndEvent