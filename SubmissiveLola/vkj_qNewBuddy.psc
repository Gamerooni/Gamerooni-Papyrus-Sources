;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 21
Scriptname vkj_qNewBuddy Extends Quest Hidden

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

;BEGIN ALIAS PROPERTY Buddy1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Buddy1 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Buddy2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Buddy2 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_17
Function Fragment_17()
;BEGIN AUTOCAST TYPE vkjNewBuddy
Quest __temp = self as Quest
vkjNewBuddy kmyQuest = __temp as vkjNewBuddy
;END AUTOCAST
;BEGIN CODE
SetObjectiveDisplayed(0)
kmyQuest.GoToState("Running")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN AUTOCAST TYPE vkjNewBuddy
Quest __temp = self as Quest
vkjNewBuddy kmyQuest = __temp as vkjNewBuddy
;END AUTOCAST
;BEGIN CODE
SetObjectiveCompleted(0)
kmyQuest.GoToState("Disabled")
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_16
Function Fragment_16()
;BEGIN AUTOCAST TYPE vkjNewBuddy
Quest __temp = self as Quest
vkjNewBuddy kmyQuest = __temp as vkjNewBuddy
;END AUTOCAST
;BEGIN CODE
SetObjectiveDisplayed(0, false)
kmyQuest.GoToState("Disabled")
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_19
Function Fragment_19()
;BEGIN AUTOCAST TYPE vkjNewBuddy
Quest __temp = self as Quest
vkjNewBuddy kmyQuest = __temp as vkjNewBuddy
;END AUTOCAST
;BEGIN CODE
SetObjectiveDisplayed(10)
kmyQuest.GoToState("Running")
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
