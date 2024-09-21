;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 6
Scriptname vkj_zButtToy Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjButtToy q = (GetOwningQuest() as vkjButtToy)
q.ForcegreetScene.Stop()
q.Enthusiasm = Enthusiasm
if Enthusiasm != 0
	q.MQ.UpdateSubmissionScore(Enthusiasm)
endif
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjButtToy q = (GetOwningQuest() as vkjButtToy)
q.MQ.StripBody(q.MQ.PlayerRef, doAnim=true)
q.MQ.PlayShowArs()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjButtToy q = (GetOwningQuest() as vkjButtToy)
q.MQ.EquipDD(q.MQ.PlayerRef, Toy)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjButtToy q = (GetOwningQuest() as vkjButtToy)
q.MQ.ResetAnim()
q.MQ.zlib.Aroused.UpdateActorExposure(q.MQ.PlayerRef, 30); for the first 2 pumps
q.MQ.zlib.InflateAnalPlug(q.MQ.PlayerRef, amount=3)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
MCM.ButtToyCount = 1
MCM.SetNextButtToy()
EndThisQuest()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
MCM.ButtToyCount = MCM.ButtToyCount + 1
MCM.SetNextButtToy()
EndThisQuest()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Function EndThisQuest()
	vkjButtToy q = (GetOwningQuest() as vkjButtToy)
	q.ForcegreetScene.Stop(); failsafe
	Utility.Wait(10)
	q.Stop()
EndFunction

int Property Enthusiasm auto
Armor Property Toy auto
vkjMCM Property MCM auto