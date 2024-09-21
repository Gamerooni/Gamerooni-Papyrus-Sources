;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_zOfferedService Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
(GetOwningQuest() as vkjMQ).UpdateTimesServiceIsRequired(-1)
if IsSex
	;(GetOwningQuest() as vkjMQ).UpdateTimesSexIsRequired(-1); Now handled by the mod event
	int handle = ModEvent.Create("PlayerOfferedSexToMaster")
    if (handle)
        ModEvent.PushForm(handle, self)
        ModEvent.PushForm(handle, akSpeaker)
		ModEvent.PushBool(handle, true)
        ModEvent.Send(handle)
    endif
endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

bool Property IsSex=false auto