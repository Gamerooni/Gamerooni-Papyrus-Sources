;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 11
Scriptname vkj_qTrophySlave Extends Quest Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN AUTOCAST TYPE vkjTrophySlave
Quest __temp = self as Quest
vkjTrophySlave kmyQuest = __temp as vkjTrophySlave
;END AUTOCAST
;BEGIN CODE
kmyQuest.Init()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN AUTOCAST TYPE vkjTrophySlave
Quest __temp = self as Quest
vkjTrophySlave kmyQuest = __temp as vkjTrophySlave
;END AUTOCAST
;BEGIN CODE
SetObjectiveDisplayed(10)
kmyQuest.SetActive(true)
kmyQuest.GoToState("Traveling")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN AUTOCAST TYPE vkjTrophySlave
Quest __temp = self as Quest
vkjTrophySlave kmyQuest = __temp as vkjTrophySlave
;END AUTOCAST
;BEGIN CODE
SetObjectiveCompleted(10)
SetObjectiveDisplayed(20)
kmyQuest.SetActive(false)
kmyQuest.GoToState("AtMarket")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN AUTOCAST TYPE vkjTrophySlave
Quest __temp = self as Quest
vkjTrophySlave kmyQuest = __temp as vkjTrophySlave
;END AUTOCAST
;BEGIN CODE
kmyQuest.PlayPlatformScene()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN AUTOCAST TYPE vkjTrophySlave
Quest __temp = self as Quest
vkjTrophySlave kmyQuest = __temp as vkjTrophySlave
;END AUTOCAST
;BEGIN CODE
SetObjectiveDisplayed(30)
kmyQuest.ReleaseAndTalk()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN AUTOCAST TYPE vkjTrophySlave
Quest __temp = self as Quest
vkjTrophySlave kmyQuest = __temp as vkjTrophySlave
;END AUTOCAST
;BEGIN CODE
SetObjectiveCompleted(30)
kmyQuest.GoToState("Disabled")
Stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
