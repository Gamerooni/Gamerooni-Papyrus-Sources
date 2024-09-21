Scriptname vkjFeedme extends Quest conditional

formlist Property FoodList Auto
ingredient property Salty auto

vkjMQ Property MQ  Auto
ReferenceAlias property Owner auto
Scene Property ForcegreetScene  Auto  
Bool Property iFailed Auto Conditional

Event OnUpdateGameTime()
	if MQ.MCM.pWereWolf()
		RegisterForSingleUpdateGameTime(MQ.ScaledGameTime(0.5))
	elseif MQ.IsPlayerHavingSex() || MQ.PlayerRef.IsInCombat()
		RegisterForSingleUpdateGameTime(MQ.ScaledGameTime(0.1))
	else
		SetObjectiveFailed(10)
		SetObjectiveDisplayed(20)
		SetStage(10)
	endif
endEvent

function GiveFood()
	SetObjectiveCompleted(10)
	
	int mealIndex = RemoveMeal()
	if mealIndex < 2
		MQ.MinimalReward()
	else
		MQ.MediumReward()
	endif

	MQ.MCM.UpdateTimesCooked()	
	EndMe()
endFunction

; Return the index of the meal
int Function RemoveMeal()
	int i = 0
	Potion meal
	while i < 12
		meal = FoodList.GetAt(i) as Potion
		if MQ.PlayerRef.GetItemCount(meal) > 0
			MQ.PlayerRef.RemoveItem(meal, 1, Owner.GetActorReference())
			Owner.GetActorReference().EquipItem(meal) ;Make the Mistress/Master consume the food.
			return i
		endif
		i += 1
	endwhile
	return 99
EndFunction

function GetSalty()
	if MQ.PlayerRef.GetItemCount(Salty) < 1
		MQ.PlayerRef.AddItem(Salty, 1)
	endif
endFunction

function GetPunished()
	MQ.PunishForModerate()
	Utility.Wait(3)
	MQ.Punish()
	EndMe(true)
endFunction

function EndMe(bool isFail = false)
	MQ.SetBlockEvents(false)
	MQ.MCM.SetNextStewing()
	iFailed = isFail
	;MQ.Follow(); Not needed because waiting was removed in vkj_z0804ED22, vkj_z0804ED23, and vkj_z0804ED25
	CompleteAllObjectives(); Ensure that all objectives are removed from the quest log
	CompleteQuest()
	Stop()
endFunction

Function ResetTimeLimit()
	RegisterForSingleUpdateGameTime(MQ.ScaledGameTime(2.0))
EndFunction