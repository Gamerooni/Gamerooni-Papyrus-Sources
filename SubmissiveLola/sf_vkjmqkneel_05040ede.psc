;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 12
Scriptname SF_vkjMQKneel_05040EDE Extends Scene Hidden

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
Game.ForceThirdPerson()
(GetOwningQuest() as vkjMQ).SceneLocked = true
(GetOwningQuest() as vkjMQ).PlayerKneel()
;debug.notification("scene start")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
;debug.notification("phase1 stop")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
;debug.notification("scene stop")
(GetOwningQuest() as vkjMQ).EndKneel()
(GetOwningQuest() as vkjMQ).RequestService()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
