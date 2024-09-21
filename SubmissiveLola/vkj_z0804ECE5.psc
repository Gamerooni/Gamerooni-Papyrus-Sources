;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_z0804ECE5 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjRoped q = GetOwningQuest() as vkjRoped
q.MQ.MediumReward()
q.MQ.StripBody(q.MQ.PlayerRef, doAnim=true)
Utility.Wait(4)
q.RopeUp()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
