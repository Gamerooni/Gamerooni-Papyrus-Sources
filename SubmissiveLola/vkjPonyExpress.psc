Scriptname vkjPonyExpress extends vkjPonyGear Conditional

Scene Property ForcegreetScene Auto
GlobalVariable Property PonyExpressEvent Auto; Last event this quest used (1: merchant, 2: steward, 3: stable)
GlobalVariable Property GagTalk Auto
Faction Property SpokenToFaction Auto
Faction Property WitnessFaction Auto
Book Property GuideBook Auto
Book Property LetterOfCredit Auto
ObjectReference Property MerchantNote Auto Hidden
int Property MerchantNoteNumber Auto Hidden
MiscObject Property CoinSack Auto
MiscObject Property GoodsSack Auto
Quest Property GeneralComments auto
Spell Property CloakSpell auto

ObjectReference Property WhiterunInnDest auto
ObjectReference Property SolitudeInnDest auto
ObjectReference Property RiftenInnDest auto
ObjectReference Property MarkarthInnDest auto
ObjectReference Property WindhelmInnDest auto
Worldspace Property WhiterunWorld auto
Worldspace Property SolitudeWorld auto
Worldspace Property RiftenWorld auto
Worldspace Property MarkarthWorld auto
Worldspace Property WindhelmWorld auto

int Property NumSpokenTo Auto Conditional; The number of merchants spoken to so far.
bool Property HasPackage Auto Conditional; True if the current merchant has the package.
int Property TimesRidden Auto Conditional

Actor Merchant1
Actor Merchant2
bool FastTravelWasEnabled
float GagTalkOriginalSetting
int violationMagnitude = 0
int updateInterval = 10

Function Complete()
EndFunction

Auto State Disabled
	Event OnBeginState()
		if Merchant1 != none
			Merchant1.RemoveFromFaction(SpokenToFaction)
		endif
		if Merchant2 != none
			Merchant2.RemoveFromFaction(SpokenToFaction)
		endif
		
		MQ.Follow()
		if MQ.TravelToMarkerQuest.IsRunning()
			MQ.TravelToMarkerQuest.Stop()
			if MQ.PlaymateRef != none
				MQ.TravelToMarkerPlaymateQuest.Stop()
			endif
		endif
		
		GeneralComments.Stop()
		PlayerRef.RemoveSpell(CloakSpell)
		
		Game.EnableFastTravel(FastTravelWasEnabled)
		GagTalk.SetValue(GagTalkOriginalSetting)
		UnregisterForUpdateGameTime()
		UnregisterForUpdate()
		MCM.SetNextPonyExpress()
		MQ.SetBlockEvents(false)
		CompleteAllObjectives()
		SendModEvent("dhlp-Resume")
		SendModEvent("SLTR_PonyEnd")
	EndEvent
EndState

State Startup
	Event OnBeginState()
		MQ.SetBlockEvents(true)
		NumSpokenTo = 0
		Merchant1 = none
		Merchant2 = none
		EndConflictingQuests()
		RegisterForModEvent("DDI_Quest_SigTerm", "DDITerminate")
		
		if MCM.ponyColor >= 3
			MCM.ponyColor = 0
		endif
	EndEvent
EndState

State Running
	Event OnBeginState()
		SendModEvent("dhlp-Suspend")
		PonyExpressEvent.SetValue(GetStage() / 10)
		violationMagnitude = 0
		MCM.UpdatePonyExpressCount()
		
		if PlayerRef.IsInInterior()
			MQ.Wait()
		else
			SetDestination()
			MQ.TravelToMarkerQuest.Start()
			if MQ.PlaymateRef != none
				MQ.TravelToMarkerPlaymateQuest.Start()
			endif
		endif
		
		GagTalkOriginalSetting = GagTalk.GetValue()
		GagTalk.SetValue(1); Disable gag talk limits during this quest
		FastTravelWasEnabled = Game.IsFastTravelEnabled()
		if FastTravelWasEnabled
			Game.EnableFastTravel(false)
			Debug.Notification("Fast travel will be disabled for this quest")
		endif
		
		PlayerRef.AddItem(GuideBook)
		if MCM.PonyExpressCount == 1; first time
			Debug.Messagebox("A copy of \"Guide for Pony Express Girls\" has been added to your inventory.  You'll receive a copy each time you do the quest (it will be removed afterwards).  It can answer questions that you might have.")
		endif
		if GetStage() == 10; Pick up a package from a merchant
			RegisterForSingleUpdateGameTime(4)
		elseif GetStage() == 20; Take a letter of credit to steward
			PlayerRef.AddItem(LetterOfCredit)
			RegisterForSingleUpdateGameTime(3)
		elseif GetStage() == 30; Sex with stable master
			RegisterForSingleUpdateGameTime(4)
		endif
		
		GeneralComments.Start()
		PlayerRef.AddSpell(CloakSpell, false)
		
		SetActive()
		RegisterForSingleUpdate(updateInterval)
		SendModEvent("SLTR_PonyStart")
	endEvent

	Event OnUpdateGameTime()
		SetStage(90); Failed
	EndEvent

	Function Complete()
		SetStage(100)
	EndFunction
EndState

State TooLate
	Event OnBeginState()
		RegisterForUpdate(30)
	EndEvent

	Event OnUpdate()
		MQ.DisplayWarning("Report back to your " + MQ.OwnerTitle + ", pony girl")
		violationMagnitude += 1
		MQ.ReactOnViolation(violationMagnitude)
	EndEvent

	Function Complete()
		SetStage(100)
	EndFunction
EndState

Event OnUpdate()
	RegisterForSingleUpdate(updateInterval)
	if PlayerRef.IsInCombat()
		violationMagnitude = 0
		return
	endif
	; No body clothing allowed
	if (PlayerRef.WornHasKeyword(KwBodyClothing) || PlayerRef.WornHasKeyword(KwBodyArmor))
		MQ.DisplayWarning("A pony girl must not wear body clothing")
		violationMagnitude += 1
		if violationmagnitude > 1
			MQ.ReactOnViolation(violationMagnitude - 1)
		else
			MQ.Hurt()
		endif
	endif
EndEvent

Event DDITerminate()
	RemoveQuestItems()
	SetStage(100)
EndEvent

Function KeepTail()
	SetTail(none)
EndFunction

Function RemoveQuestItems()
	PlayerRef.RemoveItem(GuideBook, 1, true)
	if PlayerRef.GetItemCount(CoinSack) > 0
		PlayerRef.RemoveItem(CoinSack)
	endif
	if PlayerRef.GetItemCount(GoodsSack) > 0
		PlayerRef.RemoveItem(GoodsSack)
	endif
	if PlayerRef.GetItemCount(GoodsSack) > 0
		PlayerRef.RemoveItem(GoodsSack)
	endif
EndFunction

Function SpokeToMerchant(Actor npc)
	HasPackage = true
	NumSpokenTo = NumSpokenTo + 1
	if NumSpokenTo >= 3
		return; Event never progresses beyond the third merchant
	endif
	npc.AddToFaction(SpokenToFaction)
	if Merchant1 == none
		Merchant1 = npc
	elseif Merchant2 == none
		Merchant2 = npc
	endif
	; Does this one have the package?
	if NumSpokenTo == 1
		HasPackage = (Utility.RandomInt(1, 10) == 1)
	elseif NumSpokenTo == 2
		HasPackage = (Utility.RandomInt(1, 10) <= 4)
	endif
EndFunction

Function SetDestination()
	WorldSpace here = PlayerRef.GetWorldSpace()
	if here == WhiterunWorld
		MQ.TravelMarker.MoveTo(WhiterunInnDest)
		MQ.TravelMarker.SetPosition(-136, -700, 69)
	elseif here == SolitudeWorld
		MQ.TravelMarker.MoveTo(SolitudeInnDest)
		MQ.TravelMarker.SetPosition(-35, -688, 0)
	elseif here == RiftenWorld
		MQ.TravelMarker.MoveTo(RiftenInnDest)
	elseif here == MarkarthWorld
		MQ.TravelMarker.MoveTo(MarkarthInnDest)
	elseif here == WindhelmWorld
		MQ.TravelMarker.MoveTo(WindhelmInnDest)
		MQ.TravelMarker.SetPosition(25, -3680, 320)
	endif
EndFunction