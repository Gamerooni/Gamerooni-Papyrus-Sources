;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 20
Scriptname vkj_qBringGold Extends Quest Hidden

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

;BEGIN FRAGMENT Fragment_17
Function Fragment_17()
;BEGIN AUTOCAST TYPE vkjBringGold
Quest __temp = self as Quest
vkjBringGold kmyQuest = __temp as vkjBringGold
;END AUTOCAST
;BEGIN CODE
kmyQuest.GoToState("Disabled")
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN AUTOCAST TYPE vkjBringGold
Quest __temp = self as Quest
vkjBringGold kmyQuest = __temp as vkjBringGold
;END AUTOCAST
;BEGIN CODE
kmyQuest.GoToState("Running")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_19
Function Fragment_19()
;BEGIN AUTOCAST TYPE vkjBringGold
Quest __temp = self as Quest
vkjBringGold kmyQuest = __temp as vkjBringGold
;END AUTOCAST
;BEGIN CODE
kmyQuest.GoToState("Disabled")
Stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
