;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_z0804ED25 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
(GetOwningQuest() as vkjFeedMe).MQ.PunishForModerate()
GetOwningQuest().SetStage(5)
;(GetOwningQuest() as vkjFeedMe).MQ.Wait(); It seems better to let the owner follow the PC into the inn and have the meal there
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
