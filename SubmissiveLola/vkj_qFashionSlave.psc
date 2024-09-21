;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 3
Scriptname vkj_qFashionSlave Extends Quest Hidden

;BEGIN ALIAS PROPERTY Title
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Title Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Dom
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Dom Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
SetObjectiveDisplayed(10,false)
SetObjectiveDisplayed(0)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
SetObjectiveCompleted(0)
SetObjectiveDisplayed(10)
CompleteAllObjectives()
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN AUTOCAST
Quest __temp = self as Quest
vkjFashionSlave kmyQuest = __temp as vkjFashionSlave
;END AUTOCAST
;BEGIN CODE
kmyQuest.StartUp()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Scene Property ForcegreetScene auto