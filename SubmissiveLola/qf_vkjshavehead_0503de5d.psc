;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 3
Scriptname QF_vkjShaveHead_0503DE5D Extends Quest Hidden

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Owner
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Owner Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Title
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Title Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN AUTOCAST TYPE vkjShaveHead
Quest __temp = self as Quest
vkjShaveHead kmyQuest = __temp as vkjShaveHead
;END AUTOCAST
;BEGIN CODE
; Stage 30: Player successfully asked to restore hair
kmyQuest.MCM.SetNextHairChange()
kmyQuest.Restore()
kmyQuest.Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN AUTOCAST TYPE vkjShaveHead
Quest __temp = self as Quest
vkjShaveHead kmyQuest = __temp as vkjShaveHead
;END AUTOCAST
;BEGIN CODE
kmyQuest.Change()
kmyQuest.SetDuration()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
