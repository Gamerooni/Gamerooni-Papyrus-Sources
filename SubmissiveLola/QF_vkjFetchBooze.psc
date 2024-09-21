;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 28
Scriptname QF_vkjFetchBooze Extends Quest Hidden

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
;BEGIN AUTOCAST TYPE vkjFeedMe
Quest __temp = self as Quest
vkjFetchBooze kmyQuest = __temp as vkjFetchBooze
kmyQuest.InitQuest()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_19
Function Fragment_19()
;BEGIN AUTOCAST TYPE vkjFetchBooze
Quest __temp = self as Quest
vkjFetchBooze kmyQuest = __temp as vkjFetchBooze
;END AUTOCAST
;BEGIN CODE
SetObjectiveDisplayed(20)
RegisterForSingleUpdateGameTime(MQ.ScaledGameTime(1))
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_17
Function Fragment_17()
;BEGIN AUTOCAST TYPE vkjFetchBooze
Quest __temp = self as Quest
vkjFetchBooze kmyQuest = __temp as vkjFetchBooze
;END AUTOCAST
;BEGIN CODE
stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_25
Function Fragment_25()
;BEGIN AUTOCAST TYPE vkjFetchBooze
Quest __temp = self as Quest
vkjFetchBooze kmyQuest = __temp as vkjFetchBooze
;END AUTOCAST
;BEGIN CODE
SetObjectiveDisplayed(50)
RegisterForSingleUpdateGameTime(MQ.ScaledGameTime(1))
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_26
Function Fragment_26()
;BEGIN AUTOCAST TYPE vkjFetchBooze
Quest __temp = self as Quest
vkjFetchBooze kmyQuest = __temp as vkjFetchBooze
;END AUTOCAST
;BEGIN CODE
SetObjectiveDisplayed(70)
RegisterForSingleUpdateGameTime(MQ.ScaledGameTime(1.5)); 50% bonus for difficult run (spiced wine)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_27
Function Fragment_27()
;BEGIN AUTOCAST TYPE vkjFetchBooze
Quest __temp = self as Quest
vkjFetchBooze kmyQuest = __temp as vkjFetchBooze
;END AUTOCAST
;BEGIN CODE
SetObjectiveDisplayed(90)
RegisterForSingleUpdateGameTime(MQ.ScaledGameTime(1.5)); 50% bonus for difficult run (Honningbrew Mead)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN AUTOCAST TYPE vkjFetchBooze
Quest __temp = self as Quest
vkjFetchBooze kmyQuest = __temp as vkjFetchBooze
;END AUTOCAST
;BEGIN CODE
SetObjectiveDisplayed(30)
RegisterForSingleUpdateGameTime(MQ.ScaledGameTime(1))
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_20
Function Fragment_20()
;BEGIN AUTOCAST TYPE vkjFetchBooze
Quest __temp = self as Quest
vkjFetchBooze kmyQuest = __temp as vkjFetchBooze
;END AUTOCAST
;BEGIN CODE
SetObjectiveDisplayed(10)
RegisterForSingleUpdateGameTime(MQ.ScaledGameTime(1))
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_23
Function Fragment_23()
;BEGIN AUTOCAST TYPE vkjFetchBooze
Quest __temp = self as Quest
vkjFetchBooze kmyQuest = __temp as vkjFetchBooze
;END AUTOCAST
;BEGIN CODE
SetObjectiveDisplayed(40)
RegisterForSingleUpdateGameTime(MQ.ScaledGameTime(1))
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Scene Property ForcegreetScene Auto
vkjMQ Property MQ Auto