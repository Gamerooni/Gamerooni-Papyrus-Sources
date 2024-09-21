;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname vkj_z050377CC Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
NextTimeGlobal.SetValue(DaysPassedGlobal.GetValue() + 0.16667)
vkjTrick q = GetOwningQuest() as vkjTrick
q.MQ.MediumReward()
q.MQ.Humiliate()
q.End()
KwLickSceneRequest.SendStoryEvent(akRef1 = akSpeaker)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjTrick q = GetOwningQuest() as vkjTrick
q.MQ.LickFeetDelayed(GetOwningQuest())
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Keyword Property KwLickSceneRequest Auto  
GlobalVariable Property NextTimeGlobal Auto
GlobalVariable Property DaysPassedGlobal Auto