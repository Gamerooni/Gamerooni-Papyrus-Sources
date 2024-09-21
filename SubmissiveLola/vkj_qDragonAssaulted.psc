;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname vkj_qDragonAssaulted Extends Quest Hidden

;BEGIN ALIAS PROPERTY DRAGON
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_DRAGON Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN AUTOCAST TYPE vkjDragonAssaulted
Quest __temp = self as Quest
vkjDragonAssaulted kmyQuest = __temp as vkjDragonAssaulted
;END AUTOCAST
;BEGIN CODE
if Alias_Dragon.GetActorRef()
    kmyQuest.DropRestrictions()
    Alias_Dragon.Clear()
endif
Stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
