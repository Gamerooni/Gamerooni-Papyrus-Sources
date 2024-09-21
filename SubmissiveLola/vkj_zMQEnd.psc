;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname vkj_zMQEnd Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjMQ q = Quest.GetQuest("vkjMQ") as vkjMQ
q.SetBlockEvents(true)
if ReturnName
	q.ReturnOldName()
endif
bool willSell = Utility.RandomInt(1, 100) <= q.MCM.ChanceSoldOnExit
if Whip
	q.WhipPlayer(true, true)
	if !willSell
		akSpeakerRef.Say(ExitTopic)
	endif
endif
if willSell
	q.Watcher.ForceRefTo(akSpeaker)
	Utility.Wait(0.5)
	q.FastStrip()
	q.StripAccessories()
	q.PlayerKneel()
	akSpeakerRef.Say(SoldTopic)
	Debug.Notification(akSpeaker.GetActorBase().GetName() + " sells you to slavers!")
	Utility.Wait(8)
	q.Watcher.Clear()
	q.FollowerQuest.DismissFollower(iMessage = 0, iSayLine = 0)
	q.EndKneel()
	q.PlayerRef.RestoreActorValue("Health", 500)
	q.EmptyCombatPotions(akSpeakerRef); Owner takes any combat potions
	SendModEvent("SSLV Entry")
endif
q.SetStage(20)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjMQ q = Quest.GetQuest("vkjMQ") as vkjMQ
q.SetBlockEvents(true)
if !q.MCM.NickNameMode
	q.ReturnOldName()
endif
(GetOwningQuest() as vkjReturnToDFC).ForcegreetScene.Stop()
q.SetStage(20)
GetOwningQuest().Stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Bool Property ReturnName auto
Bool Property Whip auto
Topic Property ExitTopic auto
Topic Property SoldTopic auto