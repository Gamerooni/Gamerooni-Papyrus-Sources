;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_zPunishPalaceWhipping Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
Quest q = Quest.GetQuest("vkjEnterPalace")
vkjTrick trick = q as vkjTrick
trick.timesasked = 0
trick.MQ.UpdateSubmissionScore(-10); PunishForDemanding
trick.MQ.WhipPlayer(true)
q.Stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
