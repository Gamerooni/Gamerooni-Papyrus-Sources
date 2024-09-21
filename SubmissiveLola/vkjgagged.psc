;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 10
Scriptname vkjGagged Extends Quest Conditional

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

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN AUTOCAST TYPE vkjDeviceControl
Quest __temp = self as Quest
vkjDeviceControl kmyQuest = __temp as vkjDeviceControl
;END AUTOCAST
;BEGIN CODE
kmyQuest.GoToState("Active")
MQ.SetObjectiveDisplayed(103)
MQ.MCM.UpdateTimesGagged()
RegisterForSleep()
SetGagTimer(Hours)
RegisterForModEvent("DDI_Quest_SigTerm", "DDITerminate")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN AUTOCAST TYPE vkjDeviceControl
Quest __temp = self as Quest
vkjDeviceControl kmyQuest = __temp as vkjDeviceControl
;END AUTOCAST
;BEGIN CODE
kmyQuest.GoToState("Disabled")
MQ.SetObjectiveCompleted(103)
MQ.SetObjectiveDisplayed(103, false)
Stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

vkjMQ Property MQ Auto
float Property Hours=6.0 Auto
int Property TimesAsked Auto Conditional

float hoursDuration; Remaining time to be gagged
float gagStartTime; in game days passed
float sleepDesiredEndTime; in game days passed

Function SetGagTimer(float newHoursDuration)
	hoursDuration = newHoursDuration
	gagStartTime = Utility.GetCurrentGameTime()
	RegisterForSingleUpdateGameTime(hoursDuration)
EndFunction

Function AddGagTime(float hoursAdded)
	float hoursGagged = (Utility.GetCurrentGameTime() - gagStartTime) * 24.0
	SetGagTimer(hoursDuration - hoursGagged + hoursAdded)
EndFunction

Function IncrementTimesAsked()
	TimesAsked += 1
EndFunction

Event OnUpdateGameTime()
	SetStage(20)
EndEvent

Event OnSleepStart(float afSleepStartTime, float afDesiredSleepEndTime)
	; Extend gag time by time slept
	sleepDesiredEndTime = afDesiredSleepEndTime
	float hoursGagged = (afSleepStartTime - gagStartTime) * 24.0
	float hoursToSleep = (afDesiredSleepEndTime - afSleepStartTime) * 24.0
	SetGagTimer(hoursDuration - hoursGagged + hoursToSleep)
EndEvent

Event OnSleepStop(bool interrupted)
	if interrupted
		; Remaining gag time (hoursDuration) had been set assuming uninterrupted sleep.
		; Reduce the timer by the time not slept.
		float hoursNotSlept = (sleepDesiredEndTime - Utility.GetCurrentGameTime()) * 24.0
		SetGagTimer(hoursDuration - hoursNotSlept)
	endif
EndEvent

Event DDITerminate()
	SetStage(20)
EndEvent