;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_zEquipDevice Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
if TargetAlias != none
	MQ.EquipDD(TargetAlias.GetActorReference(), Device)
else
	MQ.EquipDD(Target, Device)
endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

vkjMQ Property MQ auto
ReferenceAlias Property TargetAlias Auto
Actor Property Target auto
Armor Property Device auto