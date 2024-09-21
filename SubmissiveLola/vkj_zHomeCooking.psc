;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 8
Scriptname vkj_zHomeCooking Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
; Punish for backtalk
(GetOwningQuest() as vkjHomeCooking).MQ.PunishForModerate()
GetOwningQuest().SetStage(5)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
; Remove old food
vkjHomeCooking q = GetOwningQuest() as vkjHomeCooking
q.RemoveOldFood()
GetOwningQuest().SetStage(5)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
; Start cooking
GetOwningQuest().SetStage(5)
vkjHomeCooking q = GetOwningQuest() as vkjHomeCooking
q.RemoveOldFood()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
; Check if PC has the meal
vkjHomeCooking q = GetOwningQuest() as vkjHomeCooking
q.CheckFood()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
; Rejected meal
vkjHomeCooking q = GetOwningQuest() as vkjHomeCooking
q.ResetTimeLimit()
q.RemoveMeal()
q.Success = 0
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
; Accepted meal.  Ends quest.
vkjHomeCooking q = GetOwningQuest() as vkjHomeCooking
q.GiveFood()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
; Punish and end.
vkjHomeCooking q = GetOwningQuest() as vkjHomeCooking
q.GetPunished()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
; End forcegreeting scene.
vkjHomeCooking q = GetOwningQuest() as vkjHomeCooking
q.ForcegreetScene.Stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
