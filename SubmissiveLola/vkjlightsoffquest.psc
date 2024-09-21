;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 16
Scriptname vkjLightsOffQuest Extends Quest Hidden

;BEGIN ALIAS PROPERTY Title
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Title Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Owner
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Owner Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN AUTOCAST TYPE vkjBlindhoodControl
Quest __temp = self as Quest
vkjBlindhoodControl kmyQuest = __temp as vkjBlindhoodControl
;END AUTOCAST
;BEGIN CODE
kmyQuest.GoToState("Active")
SetObjectiveDisplayed(0)
RegisterForModEvent("DDI_Quest_SigTerm", "DDITerminate")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN AUTOCAST TYPE vkjBlindhoodControl
Quest __temp = self as Quest
vkjBlindhoodControl kmyQuest = __temp as vkjBlindhoodControl
;END AUTOCAST
;BEGIN CODE
setObjectiveCompleted(0)
kmyQuest.GoToState("Disabled")
Stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Event DDITerminate()
	SetStage(20)
EndEvent