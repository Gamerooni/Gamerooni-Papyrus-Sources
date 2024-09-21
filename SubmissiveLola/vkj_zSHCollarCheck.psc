;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname vkj_zSHCollarCheck Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjStrongHand q = GetOwningQuest() as vkjStrongHand
q.CollarIsManipulated = false
if q.MCM.P.WornHasKeyword(q.MCM.zlib.zad_DeviousCollar)
	q.CollarIsManipulated = q.MCM.zlib.IsLockManipulated(q.MCM.P, q.MCM.zlib.zad_DeviousCollar)
endif
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjStrongHand q = GetOwningQuest() as vkjStrongHand
q.MCM.zlib.SetLockUnManipulated(q.MCM.P, q.MCM.zlib.zad_DeviousCollar)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
