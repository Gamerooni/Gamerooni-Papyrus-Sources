;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname vkj_zReturnToDFC Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjMQ q = Quest.GetQuest("vkjMQ") as vkjMQ
q.SetBlockEvents(true)
(GetOwningQuest() as vkjReturnToDFC).Score = q.GlobalSubmissionScore.GetValue()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjMQ q = Quest.GetQuest("vkjMQ") as vkjMQ
; Raise score so that if player returns to enslavement, there won't be any score loss.
float score = q.GlobalSubmissionScore.GetValue()
q.GlobalSubmissionScore.SetValue(score + 20)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
