;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 28
Scriptname vkj_qPimpedBasic Extends Quest Hidden

;BEGIN ALIAS PROPERTY Title
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Title Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Owner
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Owner Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN AUTOCAST TYPE vkjPimpedBasic
Quest __temp = self as Quest
vkjPimpedBasic kmyQuest = __temp as vkjPimpedBasic
;END AUTOCAST
;BEGIN CODE
kmyQuest.InitQuest()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_17
Function Fragment_17()
;BEGIN AUTOCAST TYPE vkjPimpedBasic
Quest __temp = self as Quest
vkjPimpedBasic kmyQuest = __temp as vkjPimpedBasic
;END AUTOCAST
;BEGIN CODE
CompleteAllObjectives()
stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_26
Function Fragment_26()
;BEGIN AUTOCAST TYPE vkjPimpedBasic
Quest __temp = self as Quest
vkjPimpedBasic kmyQuest = __temp as vkjPimpedBasic
;END AUTOCAST
;BEGIN CODE
;The cooldown phase of this quest
	kmyQuest.BeginCooldown()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment