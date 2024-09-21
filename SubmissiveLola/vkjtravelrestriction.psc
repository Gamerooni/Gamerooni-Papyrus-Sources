Scriptname vkjTravelRestriction extends Quest  

vkjMCM Property MCM Auto
GlobalVariable Property waitTime Auto
int dayThirds
vkjMQ Property MQ Auto
Actor Property PlayerRef  Auto  
LocationAlias property StoredLocation Auto
Keyword Property KeywordHold Auto  

Event OnUpdate()
EndEvent

int violationmagnitude = 0

Auto State Disabled
	Event OnBeginState()
		UnregisterForUpdate()
		CompleteAllObjectives()
	EndEvent
EndState


State Active
	Event OnBeginState()
		RegisterForUpdate(10)
		
		int getDays = MCM.v_tMinDays + utility.randomint(0,MCM.v_tRandDays)
		waitTime.SetValue(getDays)
		
		UpdateCurrentInstanceGlobal(waitTime)
		dayThirds = 3
		RegisterForUpdateGameTime(24)
	EndEvent

	Event OnUpdateGameTime()
		dayThirds -= 1
		if dayThirds < 1
			waitTime.SetValue(waitTime.GetValue() - 1)
			if waitTime.GetValue() < 1
				UnRegisterForUpdateGameTime()
				SetStage(20)
			else
				displayDays()
				dayThirds = 3
			endif
		endif
	EndEvent

	Event OnUpdate()
		if MQ.GetStage() != 10
			GoToState("Disabled")
			Stop()
		endif

		If !PlayerRef.GetCurrentLocation().IsSameLocation(StoredLocation.GetLocation(), KeywordHold)  
			debug.notification("You are forbidden to travel")
			violationmagnitude += 1
			MQ.ReactOnViolation(violationmagnitude)
		else 
			violationmagnitude = 0
		endif
	EndEvent
EndState

function displayDays()
	debug.notification("You have " + waitTime.GetValue() as int + " days left before you can leave this hold.")
endfunction
