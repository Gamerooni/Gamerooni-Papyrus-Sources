
; Is a female player with a gag in her mouth trying to talk to her owner?

Scriptname vkj_zGagTalkF Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_2
Function Fragment_2(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE

gag.enableTalk()

;END CODE
EndFunction
;END FRAGMENT

ZadGagQuestScript Property gag Auto
;END FRAGMENT CODE - Do not edit anything between this and the begin comment
