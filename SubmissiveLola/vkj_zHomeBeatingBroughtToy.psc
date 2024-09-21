;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_zHomeBeatingBroughtToy Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjHomeBeating q = GetOwningQuest() as vkjHomeBeating
if !q.IsObjectiveDisplayed(3)
	q.MQ.SetLastHomeBeatingToy(Toy)
	q.RepeatToy = q.MQ.HomeBeatingToyCount >= 3
else; using a different item is required
	q.DifferentToyFailed = toy == q.MQ.LastHomeBeatingToy
	if !q.DifferentToyFailed
		q.SetObjectiveCompleted(3)
	endif
endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Weapon Property Toy auto