;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_zGuardSpank Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjMQ mq = (GetOwningQuest() as vkjSpankingQuest).MQ
bool niceSpank = akSpeaker.GetRelationshipRank(mq.PlayerRef) > 0
mq.Spank(akSpeaker, punish = false, reward = niceSpank)
GetOwningQuest().SetStage(10)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
