;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_zTempleOfLoveInvite Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
SexPartner.ForceRefTo(akSpeaker)
GetOwningQuest().SetStage(30)
if Bonus
	(GetOwningQuest() as vkjTempleOfLove).MQ.UpdateSubmissionScore(0.5)
endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

ReferenceAlias Property SexPartner Auto  
Bool Property Bonus Auto