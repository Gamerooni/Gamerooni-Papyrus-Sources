;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_zNewBuddy3Way Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjNewBuddy q = Quest.GetQuest("vkjNewBuddy") as vkjNewBuddy
q.MQ.MediumReward()
Actor buddy = q.SexPartner.GetReference() as Actor
buddy.AddToFaction(q.SlutClientFaction)
q.MQ.FuckThreeWayDom(buddy)
q.SetStage(20)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
