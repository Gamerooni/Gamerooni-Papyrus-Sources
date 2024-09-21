;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_zPunishTrickWhipping Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjTrick q = Quest.GetQuest("vkjTrick") as vkjTrick
q.TrickToPerform = 0
q.MQ.UpdateSubmissionScore(-10); PunishForDemanding
q.MQ.OwnerWillPunishThisTime()
q.MQ.WhipPlayer(true)
q.End()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
