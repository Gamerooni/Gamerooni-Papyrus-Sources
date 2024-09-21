;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_zAskOwner Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
if MQ.MCM.UseCombatPotions
	MQ.UpdateCombatPotionCount()
endif
if Punish
	MQ.UpdateSubmissionScore(-1)
endif
MQ.UpdatePlaymateAvailability()
if Score.GetValue() >= MQ.MCM.AlwaysKneelScore
	MQ.KneelAwhile(5.0)
endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

vkjMQ Property MQ auto
GlobalVariable Property Score auto
bool Property Punish auto