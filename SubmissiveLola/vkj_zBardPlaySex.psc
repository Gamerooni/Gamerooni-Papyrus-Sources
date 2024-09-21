;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_zBardPlaySex Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjBardPlay q = Quest.GetQuest("vkjBardPlay") as vkjBardPlay
if q.GetStage() == 20; inside
	WasOutside.SetValue(0)
	q.SetObjectiveCompleted(20)
elseif q.GetStage() == 30; outside
	WasOutside.SetValue(1)
	q.SetObjectiveCompleted(30)
endif
q.GoToState("Finale")
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GlobalVariable property WasOutside auto