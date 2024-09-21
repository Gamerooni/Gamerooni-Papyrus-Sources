;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname vkj_zStrongHand Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
(GetOwningQuest() as vkjStrongHand).Follower = akSpeaker
(GetOwningQuest() as vkj_qStrongHand).Alias_Owner.ForceRefTo(akSpeaker)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjStrongHand q = GetOwningQuest() as vkjStrongHand
q.GiveKeys = true
; Set contract term
if q.MCM._Contract == 8; Randomize the contract to between 3 days and 2 weeks.
	q.MCM.ForceContractDays = Utility.RandomInt(3, 14)
elseif q.MCM._Contract == 0
	q.MCM.ForceContractDays = 3
endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment