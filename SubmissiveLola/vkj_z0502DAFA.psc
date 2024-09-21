;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_z0502DAFA Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
GetOwningQuest().SetStage(10)
vkjArmorRestriction q = GetOwningQuest() as vkjArmorRestriction
if q.MCM.NudeRule == 5; Home only
	q.MQ.MinimalReward()
elseif q.MCM.NudeRule != 7; not Never
	q.MQ.MediumReward()
endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
