;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_zNewBuddyDance Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjNewBuddy q = Quest.GetQuest("vkjNewBuddy") as vkjNewBuddy
akSpeaker.AddToFaction(q.SlutClientFaction)
q.MQ.LastNewBuddyChoice = 3
q.Watcher.ForceRefTo(akSpeaker)
q.MQ.MediumReward()
q.ExtendTimer()
q.MQ.SendPlayerDance(target=akSpeaker)
q.MQ.Humiliate(akSpeaker, -1)
GetOwningQuest().SetStage(20)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
