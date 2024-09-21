;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 6
Scriptname vkj_zOwnerBleedoutPunishment Extends TopicInfo

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
(GetOwningQuest() as vkjOwnerBleedoutPunishment).SayIntro = false
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjOwnerBleedoutPunishment q = GetOwningQuest() as vkjOwnerBleedoutPunishment
q.PunishDays = false
q.AddDays()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjOwnerBleedoutPunishment q = GetOwningQuest() as vkjOwnerBleedoutPunishment
q.PunishProst = false
q.AddQuota()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjOwnerBleedoutPunishment q = GetOwningQuest() as vkjOwnerBleedoutPunishment
q.PunishPotions = false
q.TakePotions()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjOwnerBleedoutPunishment q = GetOwningQuest() as vkjOwnerBleedoutPunishment
Utility.Wait(3)
q.mq.oralSex(akSpeaker, q.mq.PlayerRef)
q.Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjOwnerBleedoutPunishment q = GetOwningQuest() as vkjOwnerBleedoutPunishment
q.Stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
