;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_zPonyNotSteward Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjPonyExpress q = GetOwningQuest() as vkjPonyExpress
q.MQ.Humiliation(akSpeaker)
GetOwningQuest().SetObjectiveCompleted(2)
GetOwningQuest().SetStage(StageNum)
GetOwningQuest().SetObjectiveDisplayed(StageNum)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

int Property StageNum auto