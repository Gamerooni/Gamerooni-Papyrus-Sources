;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_zMQClown1 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjMQ MQ = GetOwningQuest() as vkjMQ
utility.wait(3)
if akSpeaker.GetActorBase().GetSex() == 0 || utility.randomInt(0,99) < MQ.MCM.v_StrapOn
	MQ.FuckWithTags(akSpeaker, "Rough")
else
	MQ.FuckWithTags(akSpeaker, "Lesbian", true)
endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
