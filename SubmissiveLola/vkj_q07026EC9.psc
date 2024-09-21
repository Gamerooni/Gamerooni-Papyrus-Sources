;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 15
Scriptname vkj_q07026EC9 Extends Quest Hidden

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

;BEGIN ALIAS PROPERTY PlayerLocation
;ALIAS PROPERTY TYPE LocationAlias
LocationAlias Property Alias_PlayerLocation Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN AUTOCAST TYPE vkjDeviceControl
Quest __temp = self as Quest
vkjDeviceControl kmyQuest = __temp as vkjDeviceControl
;END AUTOCAST
;BEGIN CODE
kmyQuest.GoToState("Active")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN AUTOCAST TYPE vkjMQ
Quest __temp = self as Quest
vkjMQ kmyQuest = __temp as vkjMQ
;END AUTOCAST
;BEGIN CODE
GoToState("Disabled")
kmyQuest.EndSlavery()
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN AUTOCAST TYPE vkjDeviceControl
Quest __temp = self as Quest
vkjDeviceControl kmyQuest = __temp as vkjDeviceControl
;END AUTOCAST
;BEGIN CODE
kmyQuest.GoToState("Disabled")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN AUTOCAST TYPE vkjMQ
Quest __temp = self as Quest
vkjMQ kmyQuest = __temp as vkjMQ
;END AUTOCAST
;BEGIN CODE
SetObjectiveDisplayed(1)
setObjectiveDisplayed(6)
kmyQuest.BeginSlavery()
kmyQuest.GoToState("Running")
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
