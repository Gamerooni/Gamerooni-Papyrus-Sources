;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_zFindTreasureStart Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
(GetOwningQuest() as vkjFindTreasure).ForcegreetScene.Stop()
Utility.Wait(0.5)
GetOwningQuest().SetStage(10)
if FirstTime
	Utility.Wait(2)
	Debug.Messagebox("Check the Skill Trained option on the Roleplay page of the MCM to be sure that you receive the reward you want when you complete this quest.")
endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

bool Property FirstTime auto