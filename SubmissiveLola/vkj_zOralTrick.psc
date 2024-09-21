;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 3
Scriptname vkj_zOralTrick Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
(GetOwningQuest() as vkjTrick).MQ.MediumReward()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjTrick q = Quest.GetQuest("vkjTrick") as vkjTrick
if q.MQ.IsSubmissive
	q.MQ.SmallReward(); should be more enthusiastic when submissive
else
	q.MQ.MediumReward()
endif
Utility.Wait(3)
q.MQ.oralSex(akSpeaker, q.MQ.PlayerRef)
q.End()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjTrick q = Quest.GetQuest("vkjTrick") as vkjTrick
q.MQ.MediumReward()
Utility.Wait(3)
q.MQ.oralSex(akSpeaker, q.MQ.PlayerRef)
q.End()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
