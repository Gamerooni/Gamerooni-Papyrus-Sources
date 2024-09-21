Scriptname vkjBringGold extends Quest  conditional

vkjMCM Property MCM Auto
vkjMQ Property MQ  Auto  
ReferenceAlias property Owner auto

Message Property MsgReturnToDom  Auto  
bool property IsFailed auto conditional
GlobalVariable Property GlobalDailyGold  Auto  
MiscObject Property Gold  Auto  
Quest Property TrickQuest  Auto  
GlobalVariable Property SpecialTrickToPerform  Auto  
Keyword Property KwTrickRequest  Auto  

int violationmagnitude = 0
bool payUp = false

Function Complete()
EndFunction

Auto State Disabled
	Event OnBeginState()
		CompleteAllObjectives()
		UnregisterForUpdateGameTime()
		UnregisterForUpdate()
	EndEvent
endState

State Running
	Event OnBeginState()
		MCM.SetNextBringGold(); Unlike other quests, do this at the start so it will trigger early enough in the day.
		IsFailed = false
		payUp = false
		violationmagnitude = 0
		
		if GlobalDailyGold.GetValue() > MCM.v_debtcap
			GlobalDailyGold.SetValue(MCM.v_debtcap)
			UpdateCurrentInstanceGlobal(GlobalDailyGold)
		endif

		SetObjectiveDisplayed(10)
		SetObjectiveDisplayed(30, false); Hide "Pay Up" objective message in Journal.

		float hour = vkjLib.GetHourOfDay()
		RegisterForSingleUpdateGameTime(20 - hour); Make the first update (message to pay now) appear at approximately 8 PM game time.
	EndEvent

	Event OnUpdateGameTime()
		if payUp
			GoToState("Failed")
		else
			if MQ.SuspendAll
				RegisterForSingleUpdateGameTime(24); Delay payment one full day.
				MCM.SetNextBringGold(); And push out the next payment.
			else
				payUp = true; Set flag so next GameTime update will cause the quest to be failed.
				SetObjectiveDisplayed(30, true)
				RegisterForSingleUpdateGameTime(2); You get two hours to pay up.  After 10 PM game time your owner gets pissed.
			endif
		endif
	EndEvent

	Function Complete()
		RemoveGold()
		SetObjectiveCompleted(10)
		MQ.MediumReward()
		SetStage(10)
		SetObjectiveDisplayed(30, false); Hide "Pay Up" objective message in Journal.
	EndFunction
endState

State Failed
	Event OnBeginState()
		SetObjectiveFailed(10)
		SetObjectiveDisplayed(20)
		IsFailed = true
		RegisterForUpdate(20)
		SetObjectiveDisplayed(30, false); Hide "Pay Up" objective message in Journal.
	EndEvent

	Event OnUpdate()
		MsgReturnToDom.Show()
		if MQ.CanPunishPlayerOnUpdate()
			violationmagnitude += 1
			MQ.ReactOnViolation(violationmagnitude)
		endif
	EndEvent

	Function Complete()
		RemoveGold()
		MQ.PunishForViolation()
		MQ.Punish()
		SetStage(10)
	EndFunction
endState

Function RemoveGold()
	int amount = GlobalDailyGold.GetValue() as int
	Actor player = Game.GetPlayer()
	int playerGold = player.GetGoldAmount()

	if playergold < amount
		player.RemoveItem(Gold, playerGold, false, MQ.OwnerRef)
		MCM.UpdateGoldGiven(playerGold)
		GlobalDailyGold.SetValue(Math.Floor(amount - amount * 0.5)) 
	else
		player.RemoveItem(Gold, amount, false, MQ.OwnerRef)
		MCM.UpdateGoldGiven(amount)
		GlobalDailyGold.SetValue(CalcNewValue(playerGold, amount))
	endIf
EndFunction

int Function CalcNewValue(int playerGold, int lastPayment)
	float newPayment = lastPayment

	if newPayment < 0.2 * playerGold ;  This factor was originally 0.1
		newPayment += lastPayment * (Utility.RandomInt(1, 10) * MCM.v_interest)
	endif
		
	if newPayment > MCM.v_debtcap
		newPayment = MCM.v_debtcap
	endif
	return (Math.Floor(newPayment / 5.0 + 0.5) * 5.0) as int; round to the nearest 5
EndFunction

Function StartAnalExam()
	Utility.Wait(2)
	SpecialTrickToPerform.SetValue(3)
	KwTrickRequest.SendStoryEvent() 
EndFunction