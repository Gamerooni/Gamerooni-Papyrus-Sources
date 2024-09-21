;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_zFailedDailyService Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjOwnerComment q = Quest.GetQuest("vkjOwnerComment") as vkjOwnerComment
q.MQ.EndKneel()
if Score != 0
	q.MQ.UpdateSubmissionScore(Score)
endif
q.MQ.FailedOfferingService = 0
q.MQ.OwnerWillPunishThisTime()
q.MQ.WhipPlayer(true, true)
q.MQ.TryToAddPunishmentDays()
akSpeakerRef.Say(q.MQ.WhippingCommentsNegative)
q.End()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

int Property Score=0 Auto