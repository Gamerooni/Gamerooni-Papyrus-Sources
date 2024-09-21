;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 5
Scriptname vkj_zVampireFeed Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
; Normal agreement
(GetOwningQuest() as vkjTrick).MQ.MinimalReward()
(GetOwningQuest() as vkjTrick).VampireFeed(akSpeaker)
(GetOwningQuest() as vkjTrick).End()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
; Refusal
(GetOwningQuest() as vkjTrick).MQ.PunishForModerate()
(GetOwningQuest() as vkjTrick).VampireFeed(akSpeaker)
(GetOwningQuest() as vkjTrick).End()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
; Excited (silly mortal)
(GetOwningQuest() as vkjTrick).MQ.MediumReward()
(GetOwningQuest() as vkjTrick).VampireFeed(akSpeaker)
(GetOwningQuest() as vkjTrick).End()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
; Excited (silly mortal)
(GetOwningQuest() as vkjTrick).MQ.SmallReward()
(GetOwningQuest() as vkjTrick).VampireFeed(akSpeaker)
(GetOwningQuest() as vkjTrick).End()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
; Playmate feeds
vkjTrick q = GetOwningQuest() as vkjTrick
q.MQ.MinimalReward()
q.VampireFeed(q.MQ.PlaymateRef)
q.End()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
