;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname vkj_zHirelingOwner Extends TopicInfo Hidden

;An alternate enslavement scenerio in which one of Skyrim's "Hire for 500 gold" followers will accept you becoming their slave as payment instead.

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
	; "HQ" is the HirelingQuest Quest object.

	Actor akSpeaker = akSpeakerRef as Actor
	vkjStrongHand SH = GetOwningQuest() as vkjStrongHand

	int i = 6 ;HireAct.Length
	while i > 0
		i -= 1
		if akSpeakerRef == HireAct[i]
			HireGV[i].Value = 1
			;debug.notification("Found Hireling at " + i)
		endif
	endwhile
	
	HasHirelingGV.Value=1
	;SH.HQ.PayHireling(akSpeaker)
	;SH.HQ.ReHire(akSpeaker)
	akSpeaker.AddToFaction(SH.HQ.CurrentHireling)
	(SH.HQ.pDialogueFollower as DialogueFollowerScript).SetFollower(akSpeaker)

	CurrentOwner.ForceRefTo(akSpeaker)
	if akSpeaker.GetActorBase().GetSex() == 0
		Title.ForceRefTo(MasterRef)
	else
		Title.ForceRefTo(MistressRef)
	endif
	
	; Set contract term
	if SH.MCM._Contract == 8; Randomize the contract to between 5 days and 1 month.
		SH.MCM.ForceContractDays = Utility.RandomInt(5, 30)
	elseif SH.MCM._Contract < 2
		SH.MCM.ForceContractDays = 5
	endif

	SH.GiveCollar(True)
	GetOwningQuest().SetStage(10)
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

ReferenceAlias Property CurrentOwner  Auto  
Actor Property MasterRef Auto  
Actor Property MistressRef Auto  
ReferenceAlias Property Title  Auto
Globalvariable Property HasHirelingGV Auto

Globalvariable[] Property HireGV Auto
Actor[] Property HireAct Auto