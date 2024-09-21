;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 15
Scriptname vkj_qTravelControl Extends Quest Hidden

;BEGIN ALIAS PROPERTY currentHold
;ALIAS PROPERTY TYPE LocationAlias
LocationAlias Property Alias_currentHold Auto
;END ALIAS PROPERTY

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

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN AUTOCAST TYPE vkjTravelRestriction
Quest __temp = self as Quest
vkjTravelRestriction kmyQuest = __temp as vkjTravelRestriction
;END AUTOCAST
;BEGIN CODE
SetObjectiveDisplayed(0)
kmyQuest.MQ.SetObjectiveDisplayed(102)
kmyQuest.GoToState("Active")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN AUTOCAST TYPE vkjTravelRestriction
Quest __temp = self as Quest
vkjTravelRestriction kmyQuest = __temp as vkjTravelRestriction
;END AUTOCAST
;BEGIN CODE
setObjectiveCompleted(0)
kmyQuest.MQ.SetObjectiveCompleted(102)
kmyQuest.MQ.SetObjectiveDisplayed(102, false)
kmyQuest.GoToState("Disabled")
Stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
