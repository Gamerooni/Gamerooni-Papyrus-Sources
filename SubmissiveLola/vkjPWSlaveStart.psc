Scriptname vkjPWSlaveStart extends Quest Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN AUTOCAST TYPE vkjStrongHand
Quest __temp = self as Quest
vkjPWSlaveStart kmyQuest = __temp as vkjPWSlaveStart
;END AUTOCAST
;BEGIN CODE
(SlaveQuest as vkjSlaveStart).StartScene(1)
;END CODE
EndFunction
;END FRAGMENT

Quest Property SlaveQuest auto