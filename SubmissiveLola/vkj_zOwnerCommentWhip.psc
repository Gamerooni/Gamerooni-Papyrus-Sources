;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_zOwnerCommentWhip Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjOwnerComment q = GetOwningQuest() as vkjOwnerComment
Utility.Wait(3)
if Acceptance == 0
	q.MQ.UpdateSubmissionScore(0.1)
else
	q.MQ.UpdateSubmissionScore(Acceptance)
endif

q.MQ.GiveWhippedMinorDebuff()
Float whippingDuration = q.MQ.MCM.WhipPunishDuration / 2.0; half duration
whippingDuration = vkjLib.Max(whippingDuration, 10.0)
whippingDuration = vkjLib.Min(whippingDuration, 50.0)
q.MQ.ActorWhipPlayer(akSpeaker, whippingDuration, dhlpSuspend = true, afterTopic = AfterTopic)
q.End()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

int Property Acceptance=0 auto
Topic Property AfterTopic auto