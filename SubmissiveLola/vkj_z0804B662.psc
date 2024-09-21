;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_z0804B662 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjGagged q = GetOwningQuest() as vkjGagged
q.IncrementTimesAsked()
if q.TimesAsked == 1
	; Do nothing
elseif q.TimesAsked == 2
	q.AddGagTime(2.0)
	q.MQ.UpdateSubmissionScore(-1)
else
	q.AddGagTime(q.TimesAsked)
	q.MQ.PunishForMinor()
endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
