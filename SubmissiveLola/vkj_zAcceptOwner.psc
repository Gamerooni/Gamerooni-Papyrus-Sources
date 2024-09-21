;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname vkj_zAcceptOwner Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
CurrentOwner.ForceRefTo(akSpeaker)
Title.ForceRefTo(OwnerRef)
vkjStrongHand q = GetOwningQuest() as vkjStrongHand
q.FollowerAsked = FollowerAsked
if GiveCollar
    q.GiveCollar(EquipCollar)
    GetOwningQuest().SetStage(10)
else
    GetOwningQuest().SetObjectiveCompleted(0)
    GetOwningQuest().SetObjectiveDisplayed(0, false)
    GetOwningQuest().SetObjectiveDisplayed(11)
    GetOwningQuest().SetCurrentStageID(11)
    GetOwningQuest().SetStage(11)
endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

ReferenceAlias Property CurrentOwner  Auto  
Actor Property OwnerRef Auto  
ReferenceAlias Property Title  Auto  
Bool Property GiveCollar Auto
Bool Property EquipCollar=false Auto
Bool Property FollowerAsked Auto