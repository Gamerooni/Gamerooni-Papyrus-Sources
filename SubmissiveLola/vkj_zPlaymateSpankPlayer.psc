;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_zPlaymateSpankPlayer Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjMQ mq = Quest.GetQuest("vkjMQ") as vkjMQ
bool niceSpank = mq.PlaymateRef.GetRelationshipRank(mq.PlayerRef) > 0
mq.Spank(mq.PlaymateRef, punish = false, reward = niceSpank)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
