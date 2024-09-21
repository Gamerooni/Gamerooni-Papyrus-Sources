;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname vkj_zPonyStableSex Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
; Stable master branch
vkjPonyExpress q = GetOwningQuest() as vkjPonyExpress
q.MQ.Humiliation(akSpeaker)
q.SetObjectiveCompleted(3)
q.SetObjectiveDisplayed(31)
; Whipping
string crop = q.MQ.MCM.WhipWeaponModelList[1].GetModelPath(); crop
q.MQ.ActorWhipPlayer(akSpeaker, duration=10, doStrip=false, dhlpSuspend=false, weaponModel=crop)
; Sex
q.TimesRidden = q.TimesRidden + 1
q.MQ.FuckWithTags(akSpeaker, "Vaginal,DoggyStyle")
; Finish
q.SetObjectiveCompleted(31)
q.SetStage(80)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
; Horse branch
vkjPonyExpress q = GetOwningQuest() as vkjPonyExpress
q.MQ.Humiliate(akSpeaker, adjustment=4)
q.SetObjectiveCompleted(3)
q.SetObjectiveDisplayed(31)
; Spawn horse
Actor horse = q.MQ.PlayerRef.PlaceAtMe(HorseForm, 1, false, true) as Actor
q.MQ.MoveNpcBehindPlayer(horse, 400)
horse.Enable(true)
; Sex
q.TimesRidden = q.TimesRidden + 1
q.MQ.FuckWithTags(horse, "Horse")
; Finish
Utility.Wait(10)
q.SetObjectiveCompleted(31)
q.SetStage(80)
Utility.Wait(6)
horse.DeleteWhenAble()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Form Property HorseForm auto