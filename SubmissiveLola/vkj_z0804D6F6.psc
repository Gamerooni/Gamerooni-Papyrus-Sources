;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_z0804D6F6 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
(GetOwningQuest() as vkjMQ).sexReward()
if Game.GetPlayer().GetActorBase().getSex() == 0
(GetOwningQuest() as vkjMQ).FuckWithTags(akSpeaker, "Cunnilingus", true)
else
(GetOwningQuest() as vkjMQ).FuckWithTags(akSpeaker, "Lesbian", true)
endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
