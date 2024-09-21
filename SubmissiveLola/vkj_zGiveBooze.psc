;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_zGiveBooze Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
if Type < 0
	(GetOwningQuest() as vkjFetchBooze).GiveBooze(reward=GiveReward, endQuest=EndNow)
else
	(GetOwningQuest() as vkjFetchBooze).GiveBooze(Type, reward=GiveReward, endQuest=EndNow)
endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

bool Property EndNow=true auto
bool Property GiveReward=true auto
int Property Type=-1 auto