;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_zHomeBeatingStart Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
Quest q = Quest.GetQuest("vkjHomeBeating")
q.Start()
if RequireNew
	Utility.Wait(0.5)
	(q as vkjHomeBeating).SetObjectiveDisplayed(3)
endif
(GetOwningQuest() as vkjOwnerComment).StopScene()
(GetOwningQuest() as vkjOwnerComment).End()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

bool Property RequireNew auto