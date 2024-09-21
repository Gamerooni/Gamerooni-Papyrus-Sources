;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname vkj_z05042F5C Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
; Because you tried to pass off a stale sweetroll, you don't get the minimal reward just for agreeing to go get a fresh one.
; Remove all sweetrolls that the player was carrying.  They're stale!
PlayerRef.RemoveItem(Sweetroll, 99, false)
; Now Lola's ready to go find a new sweetroll.
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjFetchBooze q = Quest.GetQuest("vkjFetchBooze") as vkjFetchBooze
q.StartRun()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Potion Property Sweetroll Auto
Actor Property PlayerRef Auto