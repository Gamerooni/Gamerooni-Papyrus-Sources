;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 10
Scriptname vkjRoped Extends Quest

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

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN AUTOCAST TYPE vkjDeviceControl
Quest __temp = self as Quest
vkjDeviceControl kmyQuest = __temp as vkjDeviceControl
;END AUTOCAST
;BEGIN CODE
kmyQuest.GoToState("Disabled")
kmyQuest.MQ.SetObjectiveCompleted(106)
kmyQuest.MQ.SetObjectiveDisplayed(106, false)
SendModEvent("SLTR_RopedEnd")
Stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

vkjMQ Property MQ  Auto
vkjDeviceControl Property D Auto
Scene Property ForcegreetScene Auto
int Property TimesAsked Auto
int timeCount
float startTime

Event OnUpdateGameTime()
	float myTime = Utility.GetCurrentGameTime()
	float timePassed = myTime - startTime
	while timePassed > 0.3
		timeCount -= 1
		timePassed -= 0.33
	endwhile
	
	if timeCount < 1
		SetStage(20)
	else
		RegisterForSingleUpdateGameTime(8)
	endif
EndEvent

Function RopeUp()
	SetStage(10)
	D.GoToState("Active")
	MQ.SetObjectiveDisplayed(106)
	RegisterForModEvent("DDI_Quest_SigTerm", "DDITerminate")
	startTime = Utility.GetCurrentGameTime()
	RegisterForSingleUpdateGameTime(8)
	timeCount = 9
	SendModEvent("SLTR_RopedStart")
	ForcegreetScene.Stop()
EndFunction

Event DDITerminate()
	SetStage(20)
EndEvent