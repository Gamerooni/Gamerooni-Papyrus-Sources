;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 
Scriptname vkj_zPonyReturn Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjPonyExpress q = GetOwningQuest() as vkjPonyExpress
if Punish
	q.SetObjectiveCompleted(9)
else
	q.SetObjectiveCompleted(8)
endif
q.RemoveQuestItems()
q.UnequipGear(!Punish)
q.SetStage(100)
Utility.Wait(3)
if Punish
	q.MQ.Punish()
endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

bool Property Punish auto