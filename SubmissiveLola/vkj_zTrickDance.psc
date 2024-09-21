;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 3
Scriptname vkj_zTrickDance Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
; Owner courage
vkjTrick q = Quest.GetQuest("vkjTrick") as vkjTrick
vkjMQ MQ = q.MQ
MQ.MediumReward()
MQ.SendPlayerDance(buffOwner=true, strip=true)
q.End()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
; Regular trick dance
vkjTrick q = Quest.GetQuest("vkjTrick") as vkjTrick
vkjMQ MQ = q.MQ
MQ.MediumReward()
MQ.SendPlayerDance(buffOwner=false)
q.End()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
; Naked dance
vkjTrick q = Quest.GetQuest("vkjTrick") as vkjTrick
vkjMQ MQ = q.MQ
MQ.LargeReward()
MQ.SendPlayerDance(buffOwner=false, strip=true)
q.End()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
