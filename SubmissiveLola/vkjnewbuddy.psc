Scriptname vkjNewBuddy extends Quest  

vkjMQ Property MQ  Auto
Faction Property SlutClientFaction Auto
ReferenceAlias Property SexPartner Auto
ReferenceAlias Property Watcher Auto
Scene Property ForcegreetScene Auto

int violationMagnitude = 0

Function EndScene()
	ForcegreetScene.Stop()
EndFunction

Function Complete()
EndFunction

Function ExtendTimer()
	RegisterForSingleUpdateGameTime(1.0)
EndFunction

Auto State Disabled
	Event OnBeginState()
		MQ.MCM.SetNextFamous()
		MQ.SetBlockEvents(false)
		UnregisterForUpdateGameTime()
		UnregisterForUpdate()
		CompleteAllObjectives()
	endEvent
endState

State Running
	Event OnBeginState()
		MQ.SetBlockEvents(true)
		SetActive(true)
		violationMagnitude = 0
		RegisterForSingleUpdateGameTime(1.5)
	endEvent

	Event OnUpdateGameTime()
		GoToState("TooLate")
	endEvent

	function Complete()
		SetStage(20)
	endFunction
endState

State TooLate
	Event OnBeginState()
		RegisterForUpdate(30)
	endEvent

	Event OnUpdate()
		debug.notification("You have something to do, don't you?")
		violationMagnitude += 1
		MQ.ReactOnViolation(violationMagnitude)
		if violationMagnitude >= 3
			SetStage(19); Fail
		endif
	endEvent

	function Complete()
		if GetStage() != 19
			SetStage(20)
		endif
	endFunction
endState