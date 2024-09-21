;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_zAddItem Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
Person.AddItem(Item, Count, Silent)
;END CODE
EndFunction
;END FRAGMENT

Actor Property Person auto
Form Property Item auto
int Property Count=1 auto
bool Property Silent=false auto
;END FRAGMENT CODE - Do not edit anything between this and the begin comment