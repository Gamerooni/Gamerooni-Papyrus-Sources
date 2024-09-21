;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 5
Scriptname SF_vkjMQAnalExamScene_05040EE9 Extends Scene Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
Game.ForceThirdPerson()
vkjMQ MQ = GetOwningQuest() as vkjMQ
MQ.SceneLocked = true
MQ.MoveNpcToPlayer(MQ.OwnerRef, 100)
MQ.Strip()
MQ.PlayShowArs()
;debug.notification("scene start")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
(GetOwningQuest() as vkjMQ).ResetAnim()
(GetOwningQuest() as vkjMQ).Redress()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
