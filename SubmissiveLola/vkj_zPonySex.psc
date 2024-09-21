;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_zPonySex Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjPonyExpress q = GetOwningQuest() as vkjPonyExpress
q.TimesRidden = q.TimesRidden + 1
q.MQ.Humiliate(akSpeaker)
q.MQ.FuckWithTags(akSpeaker, "Vaginal,DoggyStyle")
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment