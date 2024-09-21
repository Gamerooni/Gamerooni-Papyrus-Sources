;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_zPonyGetGold Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
bool rough = false
vkjPonyExpress q = GetOwningQuest() as vkjPonyExpress
if q.GetStage() == 20
	q.SetObjectiveCompleted(2)
elseif q.GetStage() == 21
	q.SetObjectiveCompleted(21)
elseif q.GetStage() == 22
	q.SetObjectiveCompleted(22)
	rough = true
elseif q.GetStage() == 23
	q.SetObjectiveCompleted(23)
elseif q.GetStage() == 24
	q.SetObjectiveCompleted(24)
	rough = true
endif

q.MQ.Humiliation(akSpeaker)
	
q.SetStage(80)
q.PlayerRef.RemoveItem(q.LetterOfCredit, 1, true)
q.PlayerRef.AddItem(q.CoinSack)
if DoSex
	q.TimesRidden = q.TimesRidden + 1
	if akSpeaker.GetActorBase().GetSex() == 0
		q.MQ.FuckWithTags(akSpeaker, "Vaginal,DoggyStyle")
	else
		string tags = "Vaginal,MF"
		if rough
			tags = "Rough,Vaginal,MF"
		endif
		q.MQ.FuckWithTags(akSpeaker, tags); PC is gagged, so no oral/lez/69
	endif
endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

bool Property DoSex auto