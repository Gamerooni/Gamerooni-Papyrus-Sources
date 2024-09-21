;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 4
Scriptname vkj_zFriendlyFirePunish Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
(GetOwningQuest() as vkjFriendlyFire).ForcegreetScene.Stop()
GetOwningQuest().SetStage(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
(GetOwningQuest() as vkjFriendlyFire).ForcegreetScene.Stop()
MQ.GagQuest.Start()
(GetOwningQuest() as vkjFriendlyFire).AddPunishmentDays()
MQ.FriendlyFireCount = 0
GetOwningQuest().Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
(GetOwningQuest() as vkjFriendlyFire).ForcegreetScene.Stop()
MQ.Hurt()
(GetOwningQuest() as vkjFriendlyFire).AddPunishmentDays()
MQ.FriendlyFireCount = 0
GetOwningQuest().Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
(GetOwningQuest() as vkjFriendlyFire).ForcegreetScene.Stop()
MQ.PunishForWalkAway()
MQ.GagQuest.Start()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

vkjMQ Property MQ auto