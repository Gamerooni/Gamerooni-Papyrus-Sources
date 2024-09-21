;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 4
Scriptname vkj_qConfessions Extends Quest Hidden

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Title
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Title Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Owner
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Owner Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Citizen1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Citizen1 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Citizen2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Citizen2 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN AUTOCAST TYPE vkjConfessions
Quest __temp = self as Quest
vkjConfessions kmyQuest = __temp as vkjConfessions
;END AUTOCAST
;BEGIN CODE
kmyQuest.GoToState("Startup")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN AUTOCAST TYPE vkjConfessions
Quest __temp = self as Quest
vkjConfessions kmyQuest = __temp as vkjConfessions
;END AUTOCAST
;BEGIN CODE
SetObjectiveDisplayed(1)
SetObjectiveDisplayed(2)
kmyQuest.GoToState("Running")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN AUTOCAST TYPE vkjConfessions
Quest __temp = self as Quest
vkjConfessions kmyQuest = __temp as vkjConfessions
;END AUTOCAST
;BEGIN CODE
SetObjectiveDisplayed(3)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN AUTOCAST TYPE vkjConfessions
Quest __temp = self as Quest
vkjConfessions kmyQuest = __temp as vkjConfessions
;END AUTOCAST
;BEGIN CODE
SetObjectiveCompleted(3)
CompleteAllObjectives(); Ensure that all objectives are removed from the quest log
kmyQuest.GoToState("Disabled")
Stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
