;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 11
Scriptname vkjFindTreasure Extends Quest Hidden

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
;BEGIN AUTOCAST TYPE vkjFindTreasure
Quest __temp = self as Quest
vkjFindTreasure kmyQuest = __temp as vkjFindTreasure
;END AUTOCAST
;BEGIN CODE
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN AUTOCAST TYPE vkjFindTreasure
Quest __temp = self as Quest
vkjFindTreasure kmyQuest = __temp as vkjFindTreasure
;END AUTOCAST
;BEGIN CODE
SetObjectiveDisplayed(10)
SetTimeLimit()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN AUTOCAST TYPE vkjFindTreasure
Quest __temp = self as Quest
vkjFindTreasure kmyQuest = __temp as vkjFindTreasure
;END AUTOCAST
;BEGIN CODE
SetObjectiveCompleted(10)
SetObjectiveDisplayed(20)
MQ.MCM.UpdateTreasuresFound()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN AUTOCAST TYPE vkjFindTreasure
Quest __temp = self as Quest
vkjFindTreasure kmyQuest = __temp as vkjFindTreasure
;END AUTOCAST
;BEGIN CODE
SetObjectiveDisplayed(15)
RegisterForSingleUpdateGameTime(24)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN AUTOCAST TYPE vkjFindTreasure
Quest __temp = self as Quest
vkjFindTreasure kmyQuest = __temp as vkjFindTreasure
;END AUTOCAST
;BEGIN CODE
SetObjectiveFailed(10)
SetObjectiveDisplayed(80)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN AUTOCAST TYPE vkjFindTreasure
Quest __temp = self as Quest
vkjFindTreasure kmyQuest = __temp as vkjFindTreasure
;END AUTOCAST
;BEGIN CODE
MQ.MCM.SetNextFindTreasure()
MQ.Punish()
CompleteAllObjectives()
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN AUTOCAST TYPE vkjFindTreasure
Quest __temp = self as Quest
vkjFindTreasure kmyQuest = __temp as vkjFindTreasure
;END AUTOCAST
;BEGIN CODE
MQ.MCM.SetNextFindTreasure()
SetObjectiveCompleted(20)
CompleteAllObjectives()
Stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Event OnUpdateGameTime()
	if MQ.SuspendAll && (GetStage() == 10)
		RegisterForSingleUpdateGameTime(36); extend 2.5 days (including the one-day warning)
	elseif GetStage() == 10
		SetStage(15); One-day warning
	else
		SetStage(80)
	endif
EndEvent

Function SetTimeLimit()
	RegisterForSingleUpdateGameTime(144); Set for 6 days, after which the one-day warning triggers
EndFunction

vkjMQ Property MQ Auto
Scene Property ForcegreetScene Auto