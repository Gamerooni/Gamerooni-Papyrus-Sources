;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_z08060360 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
(Quest.GetQuest("vkjOwnerComment") as vkjOwnerComment).StopScene()
(Quest.GetQuest("vkjOwnerComment") as vkjOwnerComment).EndMe()
Utility.Wait(4)
TrickQuest.Start()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Quest Property TrickQuest auto