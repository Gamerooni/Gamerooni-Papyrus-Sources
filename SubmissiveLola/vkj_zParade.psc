;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_zParade Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjParade q = (GetOwningQuest() as vkjParade)
if Forced
	q.MQ.PunishForModerate()
endif
if Strip
	if q.MQ.PlayerRef.WornHasKeyword(q.KwClothingBody) || q.MQ.PlayerRef.WornHasKeyword(q.KwArmorBody)
		q.HadBodyClothing = true
		if !Forced
			q.MQ.MinimalReward()
		endif
	endif
	if q.IsPony
		q.PonyGirl()
	else
		q.Redress = true
		q.MQ.Strip()
	endif
endif
q.SetStage(10)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

bool Property Strip=true auto
bool Property Forced auto