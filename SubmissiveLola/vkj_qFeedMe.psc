;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 27
Scriptname vkj_qFeedMe Extends Quest Hidden

;BEGIN ALIAS PROPERTY Owner
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Owner Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Title
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Title Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN AUTOCAST TYPE vkjFeedMe
Quest __temp = self as Quest
vkjFeedMe kmyQuest = __temp as vkjFeedMe
kmyQuest.MQ.SetBlockEvents(true)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3; Stage 5
Function Fragment_3()
;BEGIN AUTOCAST TYPE vkjFeedMe
Quest __temp = self as Quest
vkjFeedMe kmyQuest = __temp as vkjFeedMe
;END AUTOCAST
;BEGIN CODE
kmyQuest.ForcegreetScene.Stop()
SetObjectiveDisplayed(10)
RegisterForSingleUpdateGameTime(kmyQuest.MQ.ScaledGameTime(2))
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10; Stage 10
Function Fragment_10()
;BEGIN AUTOCAST TYPE vkjFeedMe
Quest __temp = self as Quest
vkjFeedMe kmyQuest = __temp as vkjFeedMe
;END AUTOCAST
;BEGIN CODE
SetObjectiveFailed(10)
SetObjectiveDisplayed(20)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_17; Stage 20
Function Fragment_17()
;BEGIN CODE
stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_26; Stage 20
Function Fragment_26()
;BEGIN CODE
stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
