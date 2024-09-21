;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 3
Scriptname vkj_zMotivate Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
(Quest.GetQuest("vkjOwnerComment") as vkjOwnerComment).MQ.MinimalReward()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjOwnerComment q = Quest.GetQuest("vkjOwnerComment") as vkjOwnerComment
vkjMCM MCM = q.MQ.MCM
MCM.UpdateTimesMotivated()
q.MQ.OwnerWillPunishThisTime()
if Utility.RandomInt(1,3) < (3 - MCM.OwnerAttitude); Strict owner is more likely to whip
	q.MQ.Spank(akSpeaker, true, true)
else
	q.MQ.WhipPlayer(true, true)
endif
q.End()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjOwnerComment q = Quest.GetQuest("vkjOwnerComment") as vkjOwnerComment
q.MQ.OwnerWillPunishThisTime()
q.MQ.Punish()
q.End()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
