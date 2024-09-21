;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_zNewCollar Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
DC.Swapout()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
Armor collar = PlayerRef.GetWornForm(0x00008000) as Armor
if (collar.HasKeyword(KwQuestItem))
	Debug.Notification("The collar is a quest item that cannot be removed")
	DC.GiveCollar()
else
	DC.Device = collar
	DC.Swapout()
endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

vkjDeviceControl Property DC auto
Actor Property PlayerRef auto
Keyword Property KwQuestItem auto