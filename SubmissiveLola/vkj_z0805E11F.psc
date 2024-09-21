;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_z0805E11F Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjSex q = GetOwningQuest() as vkjSex
Utility.Wait(3)
if q.MQ.PlayerRef.GetActorValue("Health") < 70
	q.MQ.PlayerRef.RestoreActorValue("Health", 50)
endif
q.MQ.WhipPlayer(true); Whipping will deduct 5 more points
q.SetStage(20)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
