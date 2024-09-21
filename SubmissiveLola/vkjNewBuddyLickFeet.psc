;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname vkjNewBuddyLickFeet Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjNewBuddy q = GetOwningQuest() as vkjNewBuddy
akSpeaker.AddToFaction(q.SlutClientFaction)
q.MQ.LastNewBuddyChoice = 1
if Strip
	q.MQ.Humiliate(akSpeaker, 1)
else
	q.MQ.Humiliate(akSpeaker)
endif
q.MQ.MinimalReward()
q.SetStage(20)
q.MQ.SetStripForLick(Strip)
KwLickSceneRequest.SendStoryEvent(akRef1 = akSpeaker)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjNewBuddy q = GetOwningQuest() as vkjNewBuddy
q.MQ.LastNewBuddyChoice = 0; Don't record this choice
Utility.Wait(2)
Debug.Notification("Your " + q.MQ.OwnerTitle + " is very disappointed with you")
q.MQ.PunishForDemanding()
Utility.Wait(1)
q.SetStage(20)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Keyword Property KwLickSceneRequest Auto
bool Property Strip=false Auto