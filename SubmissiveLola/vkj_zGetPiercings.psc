;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname vkj_zGetPiercings Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	If !P.WornHasKeyword(K[0])
		zlib.equipDevice(P, A[0], A[1], K[0], false, false)
	endif
	If !P.WornHasKeyword(K[1])
		zlib.equipDevice(P, A[2], A[3], K[1], false, false)
	endif
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
(GetOwningQuest() as vkjTrick).MQ.Strip()
;END CODE
EndFunction
;END FRAGMENT

zadlibs property zlib auto
actor property P auto
armor[] property A auto
Keyword[] property K auto
;END FRAGMENT CODE - Do not edit anything between this and the begin comment
