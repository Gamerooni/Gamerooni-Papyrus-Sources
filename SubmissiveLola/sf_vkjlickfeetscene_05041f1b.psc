;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 14
Scriptname SF_vkjLickFeetScene_05041F1B Extends Scene Hidden

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN CODE
(GetOwningQuest() as vkjLickFeet).EndLick()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
Game.ForceThirdPerson()
(GetOwningQuest() as vkjLickFeet).StartLick()
;debug.notification("scene start")
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
