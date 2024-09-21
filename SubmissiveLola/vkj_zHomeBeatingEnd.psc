;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_zHomeBeatingEnd Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjHomeBeating q = GetOwningQuest() as vkjHomeBeating
Utility.Wait(3)
if Punish
	q.SetObjectiveCompleted(2)
	q.MQ.UpdateSubmissionScore(-5); bonus score loss
	q.SetStage(100)
	q.MQ.WhipPlayer(Punish = true)
else
	q.SetObjectiveCompleted(1)
	q.MQ.GiveWhippedMinorDebuff()

	Float whippingDuration = q.MQ.MCM.WhipPunishDuration / 2.0; half duration
	whippingDuration = vkjLib.Max(whippingDuration, 10.0)
	whippingDuration = vkjLib.Min(whippingDuration, 30.0)
	
	q.SetStage(100); end quest
	q.MQ.LastHomeBeatingToy = Toy
	q.MQ.ActorWhipPlayer(akSpeaker, whippingDuration, weaponModel = Toy.GetModelPath(), reverse = UsePaddle, afterTopic = AfterTopic)
endif
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
; Repeat toy
vkjHomeBeating q = GetOwningQuest() as vkjHomeBeating
Utility.Wait(3)
q.SetObjectiveCompleted(1)
q.MQ.GiveWhippedMinorDebuff()

Float whippingDuration = q.MQ.MCM.WhipPunishDuration * 1.1 / 2.0; half duration, plus bonus for repeat toy
whippingDuration = vkjLib.Max(whippingDuration, 12.0)
whippingDuration = vkjLib.Min(whippingDuration, 35.0)

q.SetStage(100); end quest
q.MQ.ActorWhipPlayer(akSpeaker, whippingDuration, weaponModel = q.MQ.LastHomeBeatingToy.GetModelPath(), reverse = UsePaddle, afterTopic = AfterTopic)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

bool Property Punish=false auto
bool Property UsePaddle=false auto
Weapon Property Toy=none auto
Topic Property AfterTopic auto