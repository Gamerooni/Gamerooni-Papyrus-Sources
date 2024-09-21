;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_zWelcomeBack Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjStrongHand q = (GetOwningQuest() as vkjStrongHand)
q.Resubmitted = true
q.MQ.SetStage(10)
q.MQ.HowAcquired = q.SetHowAcquired()
q.TryGiveKeys()
if EquipCuffs
	CuffsQuest.Start()
endif
q.SetStage(20)
if q.IsLastOwner
	; Even female slaves get anal.  It's not a gentle welcome home.
	q.MQ.FuckWithTags(akSpeaker, "Anal")
else
	; Disloyal slaves get rough anal sex.
	q.MQ.FuckWithTags(akSpeaker, "Anal,Rough")
endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

bool Property EquipCuffs auto
vkjCuffsControl Property CuffsQuest auto