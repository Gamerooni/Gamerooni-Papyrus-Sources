;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_zSexRough Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjSex q = GetOwningQuest() as vkjSex
q.MQ.UpdateDFResistance(2.0); Lose 2 DF resistance for playing along
Utility.Wait(3)
if (akSpeaker.GetActorBase().GetSex() == 1) && (q.MQ.MCM.v_StrapOn == 0)
	; Player never wants mistress to use a strap-on.
	; There are few or no rough animations for a female in the male position without a strap-on, so no rough.
	if q.MQ.PlayerRef.GetActorBase().GetSex() == 0
		q.MQ.FuckWithTags(akSpeaker, "Cowgirl"); Male PC
	else
		q.MQ.FuckWithTags(akSpeaker, "Lesbian"); Female PC
	endif
else
	; Male owner, or female owner with strap-on.
	if (q.MQ.MCM.v_roughSexChance + q.MQ.MCM.v_roughSexChance100) == 0
		; Player never wants rough sex
		q.MQ.FuckWithTags(akSpeaker, "DoggyStyle")
	else
		q.MQ.FuckWithTagsAndBackup(akSpeaker, "Rough,DoggyStyle", false, "Rough,MF", "", 3)
	endif
endif
GetOwningQuest().SetStage(20)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
