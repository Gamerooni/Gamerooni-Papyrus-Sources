Scriptname vkjHomeCooking extends Quest conditional

vkjMQ Property MQ auto
Actor Property PlayerRef auto
ReferenceAlias property Owner auto
Scene Property ForcegreetScene auto
FormList Property FoodList auto
int Property DesiredFood auto conditional; The index into FoodList
Bool Property HadFood auto conditional
int Property Success auto conditional; 0=Failed, 1=veg soup, 2=other stew, 3=desired meal
Bool Property Failed auto conditional

Function Fragment_0(); Stage 0
	Quest __temp = self as Quest
	vkjHomeCooking kmyQuest = __temp as vkjHomeCooking
	kmyQuest.MQ.SetBlockEvents(true)
	
	int roll = Utility.RandomInt(1, 100)
	if roll <= 60
		DesiredFood = 0
	elseif roll <= 85
		DesiredFood = 1
	else
		DesiredFood = 2
	endif
	
	HadFood = PlayerRef.GetItemCount(FoodList.GetAt(DesiredFood)) > 0
EndFunction

Function Fragment_5(); Stage 5
	Quest __temp = self as Quest
	vkjHomeCooking kmyQuest = __temp as vkjHomeCooking
	kmyQuest.ForcegreetScene.Stop()
	SetObjectiveDisplayed(10)
	kmyQuest.ResetTimeLimit()
EndFunction

Function Fragment_10(); Stage 10
	Quest __temp = self as Quest
	vkjHomeCooking kmyQuest = __temp as vkjHomeCooking
	SetObjectiveFailed(10)
	SetObjectiveDisplayed(20)
EndFunction

Function Fragment_20(); Stage 20
	Stop()
EndFunction


Event OnUpdateGameTime()
	if MQ.MCM.pWereWolf()
		RegisterForSingleUpdateGameTime(MQ.ScaledGameTime(0.5))
	elseif MQ.IsPlayerHavingSex() || PlayerRef.IsInCombat()
		RegisterForSingleUpdateGameTime(MQ.ScaledGameTime(0.1))
	else
		SetObjectiveFailed(10)
		SetObjectiveDisplayed(20)
		SetStage(10)
	endif
EndEvent


Function GiveFood()
	SetObjectiveCompleted(10)
	RemoveMeal()

	if Success == 3
		MQ.MediumReward()
	elseif Success == 2
		MQ.MinimalReward()
	endif
	
	MQ.MCM.UpdateTimesCooked()
	EndMe()
EndFunction

; Remove the meal.  Assumes that CheckFood() was run and so a valid meal IS in inventory.
Function RemoveMeal()
	int index = 0
	if Success == 3
		index = DesiredFood
	elseif Success == 1
		index = FoodList.GetSize() - 1
	elseif Success == 2
		int i = FoodList.GetSize() - 2; skip veg soup
		While i >= 0
			if PlayerRef.GetItemCount(FoodList.GetAt(i)) > 0
				index = i
				i = -1
			endif
			i -= 1
		EndWhile
	endif

	Potion meal = FoodList.GetAt(index) as Potion
	PlayerRef.RemoveItem(meal, 1, Owner.GetActorReference())
	Owner.GetActorReference().EquipItem(meal); Have owner consume the food.
EndFunction

Function GetPunished()
	MQ.UpdateSubmissionScore(-5)
	MQ.Spank(MQ.OwnerRef, punish=true, reward=false)
	EndMe(true)
EndFunction

Function EndMe(bool isFail = false)
	MQ.SetBlockEvents(false)
	Failed = isFail
	CompleteAllObjectives(); Ensure that all objectives are removed from the quest log.
	CompleteQuest()
	Stop()
EndFunction

Function ResetTimeLimit()
	RegisterForSingleUpdateGameTime(MQ.ScaledGameTime(1.0))
EndFunction

Function RemoveOldFood()
	int quantity = PlayerRef.GetItemCount(FoodList.GetAt(DesiredFood))
	PlayerRef.RemoveItem(FoodList.GetAt(DesiredFood), quantity)
	HadFood = 0
EndFunction

Function CheckFood(); Find what valid food is in PC inventory.
	if PlayerRef.GetItemCount(FoodList.GetAt(DesiredFood)) > 0
		Success = 3
	elseif PlayerRef.GetItemCount(FoodList) - PlayerRef.GetItemCount(FoodList.GetAt(FoodList.GetSize() - 1)) > 0
		Success = 2
	elseif PlayerRef.GetItemCount(FoodList.GetAt(FoodList.GetSize() - 1)) > 0
		Success = 1
	else
		Success = 0
	endif
EndFunction