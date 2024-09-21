;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 6
Scriptname vkj_zShoppingInfo Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
if !MCM.SpentOwnerGold
	MCM.SpentOwnerGold = true
	MCM.MQ.ShowShoppingHelp()
endif
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
int hours = Math.Ceiling((Cooldown.GetValue() - GameDaysPassed.GetValue()) * 24)
Debug.Notification("You must wait " + hours + " more hours")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
ShoppingQuest.Start()
Utility.Wait(0.5)
ShoppingQuest.TargetType = Type
ShoppingQuest.SetGender(Gender)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
ShoppingQuest.EndQuest()
(GetOwningQuest() as vkjMQ).UpdateSubmissionScore(-3)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
ShoppingQuest.SetStage(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
ShoppingQuest.SetStage(30)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

vkjMCM Property MCM auto
GlobalVariable Property Cooldown auto
GlobalVariable Property GameDaysPassed auto
int Property Gender auto
int Property Type auto
vkjShopping Property ShoppingQuest auto