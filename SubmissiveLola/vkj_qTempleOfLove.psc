;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 11
Scriptname vkj_qTempleOfLove Extends Quest Hidden

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

;BEGIN ALIAS PROPERTY Temple
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Temple Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Partner
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Partner Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN AUTOCAST TYPE vkjTempleOfLove
Quest __temp = self as Quest
vkjTempleOfLove kmyQuest = __temp as vkjTempleOfLove
;END AUTOCAST
;BEGIN CODE
kmyQuest.GoToState("Startup")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN AUTOCAST TYPE vkjTempleOfLove
Quest __temp = self as Quest
vkjTempleOfLove kmyQuest = __temp as vkjTempleOfLove
;END AUTOCAST
;BEGIN CODE
SetObjectiveDisplayed(10)
kmyQuest.GoToState("Running")
;END CODE
EndFunction

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN AUTOCAST TYPE vkjTempleOfLove
Quest __temp = self as Quest
vkjTempleOfLove kmyQuest = __temp as vkjTempleOfLove
;END AUTOCAST
;BEGIN CODE
SetObjectiveDisplayed(20)
kmyQuest.GoToState("Running")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN AUTOCAST TYPE vkjTempleOfLove
Quest __temp = self as Quest
vkjTempleOfLove kmyQuest = __temp as vkjTempleOfLove
;END AUTOCAST
;BEGIN CODE
SetObjectiveCompleted(20)
SetObjectiveDisplayed(30)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN AUTOCAST TYPE vkjTempleOfLove
Quest __temp = self as Quest
vkjTempleOfLove kmyQuest = __temp as vkjTempleOfLove
;END AUTOCAST
;BEGIN CODE
kmyQuest.GoToState("Disabled")
Utility.Wait(1)
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN AUTOCAST TYPE vkjTempleOfLove
Quest __temp = self as Quest
vkjTempleOfLove kmyQuest = __temp as vkjTempleOfLove
;END AUTOCAST
;BEGIN CODE
kmyQuest.GoToState("Disabled")
Stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment