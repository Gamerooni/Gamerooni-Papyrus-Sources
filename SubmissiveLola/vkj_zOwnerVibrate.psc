;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 3
Scriptname vkj_zOwnerVibrate Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_2
Function Fragment_2(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjOwnerComment q = Quest.GetQuest("vkjOwnerComment") as vkjOwnerComment
q.StopScene()
q.End()
q.MQ.VibratePlayer(Power, Min, Max)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

int Property Power = 4 auto
int Property Min = 10 auto
int Property Max = 20 auto