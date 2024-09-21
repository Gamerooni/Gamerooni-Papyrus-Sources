;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_zPunishSpank Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
MQ.UpdateSubmissionScore(Penalty); The spank function itself does not reduce score
MQ.Spank(MQ.OwnerRef, punish = true, specialPunishment = isSpecial)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

vkjMQ Property MQ auto
bool Property isSpecial=true auto
int Property Penalty auto; This should be zero or negative