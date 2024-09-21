;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_zNewBuddyOral Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjNewBuddy q = GetOwningQuest() as vkjNewBuddy
akSpeaker.AddToFaction(q.SlutClientFaction)
q.MQ.LastNewBuddyChoice = 2
q.MQ.Humiliate(akSpeaker)
q.MQ.SmallReward()
q.MQ.OwnerWillWatchSex()
q.MQ.oralSex(akSpeaker, q.MQ.PlayerRef)
q.SetStage(20)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
