;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 11
Scriptname vkjEnoughAction Extends Quest Hidden

;BEGIN ALIAS PROPERTY Owner
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Owner Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Title
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Title Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN AUTOCAST TYPE vkjDeviceControl
Quest __temp = self as Quest
vkjDeviceControl kmyQuest = __temp as vkjDeviceControl
;END AUTOCAST
;BEGIN CODE
MQ.IsOverburdened = false
SetObjectiveCompleted(0)
kmyQuest.GoToState("Disabled")
Quest qFF = Quest.GetQuest("vkjFriendlyFire")
if qFF.IsRunning(); Also end Careless Hands
	qFF.SetStage(20)
endif
CompleteAllObjectives()
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN AUTOCAST TYPE vkjDeviceControl
Quest __temp = self as Quest
vkjDeviceControl kmyQuest = __temp as vkjDeviceControl
;END AUTOCAST
;BEGIN CODE
ForcegreetScene.Stop()
SetObjectiveDisplayed(0)
kmyQuest.GoToState("Active")
RegisterForModEvent("DDI_Quest_SigTerm", "DDITerminate")
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

vkjMQ Property MQ auto
zadlibs Property zlib auto
Scene Property ForcegreetScene auto

Event DDITerminate()
	SetStage(20)
EndEvent