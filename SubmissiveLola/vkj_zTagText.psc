;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 5
Scriptname vkj_zTagText Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjMQ MQ = (GetOwningQuest() as vkjTagged).MQ
if Option == 1
	MQ.CollarInscription = "Property of " + MQ.OwnerRef.GetBaseObject().GetName()
elseif Option == 2
	MQ.CollarInscription = MQ.OwnerRef.GetBaseObject().GetName() + "'s Slave"
elseif Option == 3
	MQ.CollarInscription = MQ.OwnerRef.GetBaseObject().GetName() + "'s Pet"
endif
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjMQ MQ = (GetOwningQuest() as vkjTagged).MQ
if Option == 1
	MQ.CollarInscription = MQ.CollarInscription + "\n\nTrained by " + MQ.OwnerTitle + " " + MQ.OwnerRef.GetBaseObject().GetName() + "."
elseif Option == 2
	MQ.CollarInscription = MQ.CollarInscription + "\n\nTamed by " + MQ.OwnerTitle + " " + MQ.OwnerRef.GetBaseObject().GetName() + "."
elseif Option == 3
	MQ.CollarInscription = MQ.CollarInscription + "\n\nBroken by " + MQ.OwnerTitle + " " + MQ.OwnerRef.GetBaseObject().GetName() + "."
endif
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjMQ MQ = (GetOwningQuest() as vkjTagged).MQ
if Option == 1
	MQ.CollarInscription = MQ.CollarInscription + "\nIf lost, return this slave to her owner."
elseif Option == 2
	MQ.CollarInscription = MQ.CollarInscription + "\nIf lost, return this slave to his owner."
endif
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjMQ MQ = (GetOwningQuest() as vkjTagged).MQ
if Option == 1
	MQ.CollarInscription = MQ.CollarInscription + "\nAnswers to Lola."
elseif Option == 2
	MQ.CollarInscription = MQ.CollarInscription + "\nAnswers to " + MQ.PlayerRef.GetBaseObject().GetName() + "."
endif
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
(GetOwningQuest() as vkjTagged).MQ.SaveInscription()
Quest qBestow = Quest.GetQuest("vkjBestowTag")
if qBestow.IsRunning()
	qBestow.Stop()
	Utility.Wait(0.5)
endif
qBestow.Start()
Debug.Notification("Collar Tag added.")
GetOwningQuest().SetStage(10)
Utility.Wait(2)
Debug.MessageBox("The collar tag is a clothing item in your inventory.  It cannot actually be equipped, but clicking it will display its inscription.  You can edit the inscription by following the instructions for the \"Load collar tag inscription\" button on the MCM System page.")
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

int Property Option auto