Scriptname vkjRadProInt

Quest Function GetRPQuest() Global
	return Quest.GetQuest("mf_Prostitute_SimpleJob")
EndFunction

Actor Function GetClient(Quest q) Global
	if q == none
		q = GetRPQuest()
	endif
	mf_SimpleJobQuestScript rpQuest = q as mf_SimpleJobQuestScript
	ReferenceAlias RP_SexClient_Alias = rpQuest.akclientRef
	If RP_SexClient_Alias
		return RP_SexClient_Alias.GetActorReference()
	endif
	return none
EndFunction
		
Actor Function GetMadame(Quest q) Global
	if q == none
		q = GetRPQuest()
	endif
	mf_SimpleJobQuestScript rpQuest = q as mf_SimpleJobQuestScript
	return rpQuest.Handler.akMadame
EndFunction

float Function GetMadameCut(Quest q) Global
	if q == none
		q = GetRPQuest()
	endif
	mf_SimpleJobQuestScript rpQuest = q as mf_SimpleJobQuestScript
	return (rpQuest.Handler.HandlerConfig.BaseGoldMadameCut as int) / 100
EndFunction

Faction Function GetMadameFaction(Quest q) Global
	if q == none
		q = GetRPQuest()
	endif
	mf_SimpleJobQuestScript rpQuest = q as mf_SimpleJobQuestScript
	return rpQuest.Handler.MadameFaction as Faction
EndFunction

Function AddWorkingClothes(Quest q, Armor a) Global
	if q == none
		q = GetRPQuest()
	endif
	mf_SimpleJobQuestScript rpQuest = q as mf_SimpleJobQuestScript
	rpQuest.Handler.HandlerConfig.WorkingClothes.AddForm(a)
EndFunction

int Function GetTotalClients(Quest q) Global
	if q == none
		q = GetRPQuest()
	endif
	mf_SimpleJobQuestScript rpQuest = q as mf_SimpleJobQuestScript
	return rpQuest.Handler.TotalClients.GetValueInt()
EndFunction

bool Function IsHomeJobOnCD(Quest q) Global
	if q == none
		q = GetRPQuest()
	endif
	mf_SimpleJobQuestScript rpQuest = q as mf_SimpleJobQuestScript
	return (rpQuest.Handler.HandlerConditional.HomeJobOnCD == 1)
EndFunction

int Function GetHomeJobOwnerPayment(Quest q) Global
	if q == none
		q = GetRPQuest()
	endif
	mf_SimpleJobQuestScript rpQuest = q as mf_SimpleJobQuestScript
	
	float PERF = rpQuest.Handler.HandlerConditional.PerformanceRewardMod
	float QM = 3.0 * rpQuest.Handler.HandlerConfig.HomeDeliveryQuestModifier
	int playerWasPaid = rpQuest.Handler.CalcReward(QM, PERF)
	float madameCut = rpQuest.Handler.HandlerConfig.BaseGoldMadameCut
	float playerCut = 100.0 - madameCut
	float madameWasPaid = (playerWasPaid / playerCut) * 100
	return (madameWasPaid * 0.9) as int; 10% reduction on leftover
EndFunction

int Function GetHomeJobPayment(Quest q) Global
	if q == none
		q = GetRPQuest()
	endif
	mf_SimpleJobQuestScript rpQuest = q as mf_SimpleJobQuestScript
	
	float PERF = rpQuest.Handler.HandlerConditional.PerformanceRewardMod
	float QM = 3.0 * rpQuest.Handler.HandlerConfig.HomeDeliveryQuestModifier
	int playerWasPaid = rpQuest.Handler.CalcReward(QM, PERF)
	return playerWasPaid
EndFunction