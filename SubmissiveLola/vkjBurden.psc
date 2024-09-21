;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 11
Scriptname vkjBurden Extends Quest Hidden Conditional

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN AUTOCAST TYPE vkjBurden
Quest __temp = self as Quest
vkjBurden kmyQuest = __temp as vkjBurden
;END AUTOCAST
;BEGIN CODE
SetStage(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN AUTOCAST TYPE vkjBurden
Quest __temp = self as Quest
vkjBurden kmyQuest = __temp as vkjBurden
;END AUTOCAST
;BEGIN CODE
PlayerRef.AddItem(DeadWeight, (Burden.GetWeight() as int), true)
SetObjectiveDisplayed(1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN AUTOCAST TYPE vkjBurden
Quest __temp = self as Quest
vkjBurden kmyQuest = __temp as vkjBurden
;END AUTOCAST
;BEGIN CODE
CompleteAllObjectives()
Stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property PlayerRef auto
vkjMQ Property MQ auto
MiscObject Property Burden auto
MiscObject Property DeadWeight auto

Function EndQuest()
	MQ.MediumReward()
	PlayerRef.RemoveItem(Burden, 1, true)
	PlayerRef.RemoveItem(DeadWeight, (Burden.GetWeight() as int), true)
	SetStage(100)
EndFunction