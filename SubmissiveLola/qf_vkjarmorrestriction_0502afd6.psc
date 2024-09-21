;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 11
Scriptname QF_vkjArmorRestriction_0502AFD6 Extends Quest Hidden

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

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN AUTOCAST TYPE vkjArmorRestriction
Quest __temp = self as Quest
vkjArmorRestriction kmyQuest = __temp as vkjArmorRestriction
;END AUTOCAST
;BEGIN CODE
kmyQuest.GoToState("Naked")
kmyQuest.MQ.SetObjectiveCompleted(100)
kmyQuest.MQ.SetObjectiveDisplayed(100, false)
kmyQuest.MQ.SetObjectiveDisplayed(101)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN AUTOCAST TYPE vkjArmorRestriction
Quest __temp = self as Quest
vkjArmorRestriction kmyQuest = __temp as vkjArmorRestriction
;END AUTOCAST
;BEGIN CODE
kmyQuest.MQ.SetObjectiveCompleted(100)
kmyQuest.MQ.SetObjectiveDisplayed(100, false)
kmyQuest.MQ.SetObjectiveCompleted(101)
kmyQuest.MQ.SetObjectiveDisplayed(101, false)
kmyQuest.GoToState("Disabled")
stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN AUTOCAST TYPE vkjArmorRestriction
Quest __temp = self as Quest
vkjArmorRestriction kmyQuest = __temp as vkjArmorRestriction
;END AUTOCAST
;BEGIN CODE
kmyQuest.GoToState("NoBodyArmor")
kmyQuest.MQ.SetObjectiveDisplayed(101, false)
kmyQuest.MQ.SetObjectiveDisplayed(100)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
