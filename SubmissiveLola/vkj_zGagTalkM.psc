
; Is a male player with a gag in his mouth trying to talk to his owner?

Scriptname vkj_zGagTalkM Extends TopicInfo Hidden

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