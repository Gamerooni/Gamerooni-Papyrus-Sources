Scriptname vkjTempleOfLove extends Quest  

vkjMQ Property MQ Auto
Actor Property PlayerRef Auto
ReferenceAlias Property SexPartner Auto
Quest Property GagQuest Auto
Scene Property ForcegreetScene Auto
Cell Property TempleCell Auto

int LateCount

Auto State Disabled
	Event OnBeginState()
		MQ.SetBlockEvents(false)
		MQ.MCM.SetNextTempleOfLove()
		UnregisterForUpdateGameTime()
		UnregisterForUpdate()
		CompleteAllObjectives()
	endEvent
EndState

State Startup
	Event OnBeginState()
		MQ.SetBlockEvents(true)
		; End the Gag quest, if it's running
		if GagQuest.IsRunning()
			GagQuest.SetStage(20)
		endif
		; Owner is aroused, anticipating the sex
		if MQ.OwnerRef.GetFactionRank(MQ.SLAFaction) < 40
			MQ.zlib.Aroused.SetActorExposure(MQ.OwnerRef, 40)
		else
			MQ.UpdateExposure(MQ.OwnerRef, 10)
		endif
	EndEvent
EndState

State Running
	Event OnBeginState()
		RegisterForSingleUpdateGameTime(2)
	EndEvent

	Event OnUpdateGameTime()
		GoToState("Late")
	EndEvent
EndState

State Sex
	Event OnBeginState()
		; Quest will complete when player sex ends
		MQ.SexLab.TrackActor(PlayerRef, "PlayerSex")
		RegisterForModEvent("PlayerTrack_End", "PlayerSexEnd")
		
		; Failsafe: Also register for an update to ensure that the quest really ends
		RegisterForSingleUpdate(180); plenty of time for a sex scene

		MQ.MediumReward()
		if GetStage() == 10
			SetObjectiveCompleted(10)
			MQ.Fuck(MQ.OwnerRef)
		else
			SetObjectiveCompleted(30)
			MQ.FuckThreeWayDom(SexPartner.GetReference() as Actor)
		endif
	EndEvent

	Event PlayerSexEnd(Form FormRef, int tid)
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
		if PlayerRef.GetParentCell() != TempleCell
			LateCount += 1
			if LateCount < 20
				Debug.Notification("Go to the Temple of Dibella with your " + MQ.OwnerTitle)
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