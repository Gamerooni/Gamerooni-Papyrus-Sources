Scriptname vkjBardPlay extends Quest Conditional

vkjMQ Property MQ Auto
Actor Property PlayerRef Auto
ReferenceAlias Property Bard1 Auto
ReferenceAlias Property Bard2 Auto
ReferenceAlias Property Bard3 Auto
Actor Property SexPartner Auto
Quest Property GagQuest Auto
Quest property FashionSlave auto
Scene Property ForcegreetScene Auto
Cell Property DestCell Auto
ObjectReference Property DestStage Auto
Idle Property Applaud1 Auto
Idle Property Applaud2 Auto
int Property SceneNum Auto Conditional
bool Property Has3Way Auto Conditional

int LateCount
int BardCount

Auto State Disabled
	Event OnBeginState()
		CompleteAllObjectives(); Ensure that all objectives are removed from the quest log
		MQ.MCM.SetNextBardPlay()
		MQ.SetBlockEvents(false)
		SendModEvent("dhlp-Resume")
		MQ.OwnerRef.ClearLookAt()
		(Bard1.GetReference() as Actor).ClearLookAt()
		(Bard2.GetReference() as Actor).ClearLookAt()
		(Bard3.GetReference() as Actor).ClearLookAt()
		UnregisterForUpdateGameTime()
		UnregisterForUpdate()
	endEvent
EndState

State Startup
	Event OnBeginState()
		if MQ.PlayerRef.GetActorBase().GetSex() == 0
			SetName("The Naughty Knave")
		endif
		MQ.SetBlockEvents(true)
		; End the Gag quest, if it's running
		if GagQuest.IsRunning()
			GagQuest.SetStage(20)
		endif
		; Owner is aroused, anticipating the sex
		if MQ.OwnerRef.GetFactionRank(MQ.SLAFaction) < 35
			MQ.zlib.Aroused.SetActorExposure(MQ.OwnerRef, 35)
		else
			MQ.UpdateExposure(MQ.OwnerRef, 10)
		endif
		
		SceneNum = Utility.RandomInt(1, 3)
	EndEvent
EndState

State Running
	Event OnBeginState()
		if FashionSlave.IsRunning()
			(FashionSlave as vkjFashionSlave).endThisQuest()
		endif
		RegisterForSingleUpdateGameTime(2)
		RegisterForSingleUpdate(10)
	EndEvent
	
	Event OnUpdate()
		; Force weather to pleasant for possible outside performance
		if !PlayerRef.GetParentCell().IsInterior()
			Weather.FindWeather(0).SetActive(false, true)
		else
			RegisterForSingleUpdate(10)
		endif
	EndEvent

	Event OnUpdateGameTime()
		GoToState("Late")
	EndEvent
EndState

State Finale
	Event OnBeginState()
		; Quest will complete when player sex ends
		MQ.SexLab.TrackActor(PlayerRef, "PlayerSex")
		RegisterForModEvent("PlayerTrack_End", "PlayerSexEnd")
		
		; Failsafe: Also register for an update to ensure that the quest really ends
		RegisterForSingleUpdate(180); plenty of time for a sex scene

		MQ.MediumReward()
		Applaud()
		if SexPartner == none
			MQ.Fuck(MQ.OwnerRef)
		else
			MQ.FuckThreeWayDom(SexPartner)
		endif
	EndEvent

	Event PlayerSexEnd(Form FormRef, int tid)
		Utility.Wait(1)
		MQ.Redress()
		
		; Improve reactions
		MQ.MakeNpcReactionFavorable(Bard1.GetReference() as Actor)
		MQ.MakeNpcReactionFavorable(Bard2.GetReference() as Actor)
		MQ.MakeNpcReactionFavorable(Bard3.GetReference() as Actor)
		if SexPartner != none
			int rank = SexPartner.GetRelationshipRank(PlayerRef)
			if rank < 1
				SexPartner.SetRelationshipRank(PlayerRef, 1)
			endif
		endif
		
		SetStage(100)
	EndEvent
	
	Event OnUpdate()
		; Force the quest to end
		SetStage(100)
	EndEvent
EndState

State Late
	Event OnBeginState()
		LateCount = 0
		RegisterForSingleUpdate(30)
	EndEvent
	
	Event OnEndState()
		UnregisterForUpdate()
	EndEvent

	Event OnUpdate()
		if (GetStage() == 20) && (PlayerRef.GetParentCell() != DestCell)
			LateCount += 1
			if LateCount < 20
				Debug.Notification("Go to the Bards College with your " + MQ.OwnerTitle)
			else
				MQ.UpdateSubmissionScore(-5)
				SetStage(90)
				return
			endif
		endif
		if (GetStage() == 30) && (PlayerRef.GetDistance(DestStage) > 400)
			LateCount += 1
			if LateCount < 20
				Debug.Notification("Go to the amphitheater outside the Bards College")
			else
				MQ.UpdateSubmissionScore(-5)
				SetStage(90)
				return
			endif
		endif
		RegisterForSingleUpdate(30)
	EndEvent
EndState

Event PlayerSexEnd(Form FormRef, int tid)
EndEvent

Function StripPlayer()
	MQ.OwnerRef.SetLookAt(PlayerRef)
	(Bard1.GetReference() as Actor).SetLookAt(PlayerRef)
	(Bard2.GetReference() as Actor).SetLookAt(PlayerRef)
	(Bard3.GetReference() as Actor).SetLookAt(PlayerRef)
	SendModEvent("dhlp-Suspend")
	MQ.Strip()
	Utility.Wait(2)
	Applaud()
EndFunction

Function Invite(Actor bard, bool sex)
	BardCount += 1
	SetObjectiveDisplayed(10+BardCount, false)
	if BardCount == 1
		Bard1.ForceRefTo(bard)
		SetObjectiveDisplayed(12)
	elseif BardCount == 2
		Bard2.ForceRefTo(bard)
		SetObjectiveDisplayed(13)
	elseif BardCount == 3
		Bard3.ForceRefTo(bard)
		SetStage(20)
	endif
	
	if sex
		SexPartner = bard
		Has3Way = true
	endif
EndFunction

Function Applaud()
	(Bard1.GetReference() as Actor).PlayIdle(Applaud1)
	(Bard2.GetReference() as Actor).PlayIdle(Applaud2)
	(Bard3.GetReference() as Actor).PlayIdle(Applaud1)
EndFunction