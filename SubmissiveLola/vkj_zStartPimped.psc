;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname vkj_zStartPimped Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
(GetOwningQuest() as vkjPimpedBasic).ForcegreetScene.Stop()
if !ReluctantWhore
	(GetOwningQuest() as vkjPimpedBasic).MQ.MinimalReward()
endif
(GetOwningQuest() as vkjPimpedBasic).startQuest()
(GetOwningQuest() as vkjPimpedBasic).IsReluctant = ReluctantWhore
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
(GetOwningQuest() as vkjPimpedBasic).ForcegreetScene.Stop()
if ReluctantWhore
	(GetOwningQuest() as vkjPimpedBasic).MQ.vibratePlayer(4, 20, 20)
else
	(GetOwningQuest() as vkjPimpedBasic).MQ.vibratePlayer(4, 10, 10)
endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Bool Property ReluctantWhore auto