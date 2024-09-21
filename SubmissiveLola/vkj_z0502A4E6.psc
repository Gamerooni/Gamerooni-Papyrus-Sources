;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_z0502A4E6 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjOwnerComment q = GetOwningQuest() as vkjOwnerComment
q.StopScene()
float pain = 0.333 + (q.MQ.MCM.GlobalUnfairDom.GetValue() / 100.0)
if pain > 1.0
	pain = 1.0
endif
q.MQ.Hurt(pain)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
