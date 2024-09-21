;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_zStartProstitution Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
if ProstitutionQuest.IsRunning()
	ProstitutionQuest.SetStage(20);  Force early shutdown
	Utility.Wait(2)
endif
ProstitutionQuest.Start()
ProstitutionQuest.ForcegreetScene.Stop()
ProstitutionQuest.startQuest()
ProstitutionQuest.IsReluctant = false
; Be very sure that the scene is stopped
Utility.Wait(0.5)
ProstitutionQuest.ForcegreetScene.Stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

vkjPimpedBasic Property ProstitutionQuest auto