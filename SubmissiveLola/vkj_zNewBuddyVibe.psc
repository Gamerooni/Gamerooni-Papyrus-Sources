;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname vkj_zNewBuddyVibe Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjNewBuddy q = Quest.GetQuest("vkjNewBuddy") as vkjNewBuddy
q.MQ.vibratePlayerToOneOrgasm(85)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjNewBuddy q = Quest.GetQuest("vkjNewBuddy") as vkjNewBuddy
akSpeaker.AddToFaction(q.SlutClientFaction)
q.Watcher.ForceRefTo(akSpeaker)
akSpeaker.SetLookAt(q.MQ.PlayerRef)
q.ExtendTimer()
CommentsQuest.Start()
Utility.Wait(0.5)
if q.MQ.zlib.IsVibrating(q.MQ.PlayerRef) == false; impatient player quickly clicked through first topic
	q.MQ.vibratePlayerToOneOrgasm(85)
	Utility.Wait(1)
endif
int i
While q.MQ.zlib.IsVibrating(q.MQ.PlayerRef)
	Utility.Wait(1)
	i += 1
	if i == 10
		akSpeaker.Say(Comments)
	endif
EndWhile
CommentsQuest.Stop()
akSpeaker.ClearLookAt()
q.MQ.MediumReward()
q.MQ.Humiliate(akSpeaker)
q.SetStage(20)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Quest Property CommentsQuest auto
Topic Property Comments auto