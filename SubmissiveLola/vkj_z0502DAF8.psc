;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname vkj_z0502DAF8 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjFetchBooze q = GetOwningQuest() as vkjFetchBooze
q.MQ.PunishForWalkaway()
q.StartRun()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjFetchBooze q = GetOwningQuest() as vkjFetchBooze
q.MQ.PunishForDemanding()

; Use a ring gag if item is sweet roll, or DD will hide it.
int gagSetting = q.MCM.gags
if q.RequestedItem == 1 && gagSetting != 2; sweet roll, ring gag
	q.MCM.gags = 2
endif
q.MQ.GagQuest.Start()
Utility.Wait(4)
q.MCM.gags = gagSetting

q.StartRun()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
