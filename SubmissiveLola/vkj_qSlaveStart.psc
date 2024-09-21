Scriptname vkj_qSlaveStart extends Quest Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN AUTOCAST TYPE vkjStrongHand
Quest __temp = self as Quest
vkjSlaveStart kmyQuest = __temp as vkjSlaveStart
;END AUTOCAST
;BEGIN CODE
kmyQuest.StartScene()
;END CODE
EndFunction
;END FRAGMENT
