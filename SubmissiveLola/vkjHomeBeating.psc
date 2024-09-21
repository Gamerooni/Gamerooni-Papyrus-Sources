;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 11
Scriptname vkjHomeBeating Extends Quest Hidden Conditional

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
;BEGIN AUTOCAST TYPE vkjHomeBeating
Quest __temp = self as Quest
vkjHomeBeating kmyQuest = __temp as vkjHomeBeating
;END AUTOCAST
;BEGIN CODE
DifferentToyFailed = false
MQ.SetBlockEvents(true)
SetObjectiveDisplayed(1)
RegisterForSingleUpdate(200.0)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN AUTOCAST TYPE vkjHomeBeating
Quest __temp = self as Quest
vkjHomeBeating kmyQuest = __temp as vkjHomeBeating
SetObjectiveFailed(1)
SetObjectiveDisplayed(2)
;END AUTOCAST
;BEGIN CODE

;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN AUTOCAST TYPE vkjHomeBeating
Quest __temp = self as Quest
vkjHomeBeating kmyQuest = __temp as vkjHomeBeating
;END AUTOCAST
;BEGIN CODE
MQ.SetBlockEvents(false)
SetObjectiveDisplayed(3, false)
CompleteAllObjectives()
Stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property PlayerRef auto
vkjMQ Property MQ auto
vkjMCM Property MCM auto
bool Property RepeatToy auto Conditional
bool Property DifferentToyFailed auto Conditional

Event OnUpdate()
	SetStage(10); Too long, failed
EndEvent

Function EndThisQuest()
	MQ.SetBlockEvents(false)
	SetStage(100)
EndFunction