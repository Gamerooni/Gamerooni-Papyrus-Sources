;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_zSlaveStart Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjSlaveStart q = Quest.GetQuest("vkjSlaveStart") as vkjSlaveStart
Utility.Wait(1)
q.MQ.PlayerKneelBasic()
q.ForcegreetScene.Stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
