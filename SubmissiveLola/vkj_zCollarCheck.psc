;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 3
Scriptname vkj_zCollarCheck Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjOwnerComment q = GetOwningQuest() as vkjOwnerComment
q.StopScene()
q.CollarIsManipulated = q.MQ.zlib.IsLockManipulated(q.MQ.PlayerRef, q.MQ.zlib.zad_DeviousCollar)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
; Lock the collar and punish the slave.
vkjOwnerComment q = GetOwningQuest() as vkjOwnerComment
q.StopScene()
q.MQ.zlib.SetLockUnManipulated(q.MQ.PlayerRef, q.MQ.zlib.zad_DeviousCollar)
q.MQ.UpdateSubmissionScore(-10)
q.MQ.HurtAndStagger(3)
q.End()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
; Lock the collar and punish the slave.
vkjOwnerComment q = GetOwningQuest() as vkjOwnerComment
q.End()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
