;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 4
Scriptname vkj_zBoundForAJarl Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
; Speaking to Elisif
(GetOwningQuest() as vkjBoundForAJarl).BeQuiet()
vkjMQ MQ = (GetOwningQuest() as vkjBoundForAJarl).MQ
MQ.SmallReward()
MQ.TravelMarker.MoveTo(MQ.PlayerRef)
;MQ.TravelMarker.SetPosition(-1212, 1077, 592)
;MQ.TravelMarker.SetAngle(0, 0, -27)
MQ.TravelMarker.SetPosition(-1376, 1075, 592)
MQ.TravelMarker.SetAngle(0, 0, 33)
MQ.TravelToMarkerQuest.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
(GetOwningQuest() as vkjBoundForAJarl).BeQuiet()
vkjMQ MQ = (GetOwningQuest() as vkjBoundForAJarl).MQ
MQ.zlib.StopVibrating(MQ.PlayerRef); just a precaution
Game.DisablePlayerControls()
ElisifScene.ForceStart()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjMQ MQ = (GetOwningQuest() as vkjBoundForAJarl).MQ
MQ.zlib.VibrateEffect(MQ.PlayerRef, Power, 60, true, true)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
BoundForAJarl.Start()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Scene Property ElisifScene auto
Quest Property BoundForAJarl auto
int Property Power = 4 auto