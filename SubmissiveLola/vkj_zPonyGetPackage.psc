;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_zPonyGetPackage Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjPonyExpress q = GetOwningQuest() as vkjPonyExpress
q.SetObjectiveCompleted(1)
q.SetStage(80)
q.PlayerRef.RemoveItem(q.MerchantNote, 1, true)
q.PlayerRef.AddItem(q.GoodsSack)
q.MQ.Humiliation(akSpeaker)
if DoSex
	q.TimesRidden = q.TimesRidden + 1
	string tags = "Vaginal,Doggystyle"
	if q.MerchantNoteNumber == 1; anal sex
		tags = "Anal,Doggystyle"
		if (q.EquippedTail > 0) && (q.MCM.RemovePlugsForSex != 1)
			; Removes tail to permit anal sex, but unfortunately doesn't replace it afterwards.  DD 5.2 will make this unnecessarry.
			;q.MQ.RemoveDDByKeyword(q.PlayerRef, q.MQ.zlib.zad_DeviousPlugAnal)
		endif
	elseif q.MerchantNoteNumber == 2; rough sex
		tags = "Vaginal,Rough"
	endif
	q.MQ.FuckWithTags(akSpeaker, tags)
endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

bool Property DoSex auto