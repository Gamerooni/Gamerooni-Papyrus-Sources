;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 3
Scriptname vkj_zVibrate Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
MQ.VibratePlayer(Power, Duration, Duration, Tease)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
if VictimAlias != none
	MQ.vibrateFixedTime(VictimAlias.GetActorReference(), Power, Duration, Tease)
elseif Victim == none
	MQ.vibrateFixedTime(MQ.PlayerRef, Power, Duration, Tease)
else
	MQ.vibrateFixedTime(Victim, Power, Duration, Tease)
endif
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
MQ.vibrateWithPlaymate(3, min = Duration, max = Duration)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

vkjMQ Property MQ auto
int Property Power = 4 auto
int Property Duration = 10 auto
bool Property Tease = true auto
Actor Property Victim auto
ReferenceAlias Property VictimAlias Auto