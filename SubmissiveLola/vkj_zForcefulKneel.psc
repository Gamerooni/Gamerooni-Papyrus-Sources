;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_zForcefulKneel Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
; Kneel
Game.ForceThirdPerson()
if MCM.UseAlternateKneel
	MCM.P.PlayIdle(IdleAlternate)
else
	MCM.P.PlayIdle(IdleKneeling)
endif
; Set contract to at least 2 weeks.
if (MCM._Contract < 4)
	MCM.ForceContractDays = 14
elseif MCM._Contract == 8; Random
	MCM.ForceContractDays = Utility.RandomInt(14, 30)
endif
; Set punishments days to at least 3.
if MCM.PunishmentDays < 3
	MCM.PunishmentDays = 3
endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

vkjMCM Property MCM auto
Idle Property IdleKneeling auto
Idle Property IdleAlternate auto