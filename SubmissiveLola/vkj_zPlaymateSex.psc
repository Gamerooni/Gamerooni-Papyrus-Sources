;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 5
Scriptname vkj_zPlaymateSex Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjPlaymateSex q = GetOwningQuest() as vkjPlaymateSex
q.ForcegreetScene.Stop()
q.MQ.PlaymateSexDelayed = q.MQ.PlaymateSexDelayed + 1
q.SetStage(20)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjPlaymateSex q = GetOwningQuest() as vkjPlaymateSex
q.ForcegreetScene.Stop()
q.MQ.PlaymateSexDelayed = 0
q.MQ.FuckWithTags(akSpeaker, "Sex", PlayerSwap = PlayerOnTop)
q.SetStage(20)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjPlaymateSex q = GetOwningQuest() as vkjPlaymateSex
q.ForcegreetScene.Stop()
q.MQ.UpdateSubmittedToActorFaction(akSpeaker, 1)
q.MQ.PlaymateSexDelayed = 0
q.MQ.FuckWithTags(akSpeaker, "Rough")
q.SetStage(20)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjPlaymateSex q = GetOwningQuest() as vkjPlaymateSex
q.ForcegreetScene.Stop()
q.MQ.UpdateSubmittedToActorFaction(akSpeaker, 1)
q.MQ.MCM.CheckPlaymateSubAchievement()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
; This is the walkaway topic.  Let the player get away with breaking out of dialog.  Do not count as a delay.
vkjPlaymateSex q = GetOwningQuest() as vkjPlaymateSex
q.ForcegreetScene.Stop()
q.SetStage(20)
;END CODE
EndFunction
;END FRAGMENT

bool Property PlayerOnTop=false auto

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
