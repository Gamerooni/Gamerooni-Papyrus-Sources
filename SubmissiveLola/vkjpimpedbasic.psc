Scriptname vkjpimpedbasic extends Quest Conditional

ReferenceAlias property Dom auto
ReferenceAlias property Innkeeper Auto
vkjMQ property MQ auto
vkjMCM property MCM auto
Actor property p auto
Faction Property SexFaction auto
Faction Property ClientFaction auto
Scene Property ForcegreetScene auto

Location property DawnstarLoc auto
Location property MorthalLoc auto
GlobalVariable property NumClients auto
GlobalVariable property PayGoal auto
MiscObject Property Gold Auto
bool payWhore = false
int clientsServiced
int rpMadameBaseGold
int goldAtEndOfSex
Actor rpMadame
spell Property coolDownSpell Auto
Keyword Property KwCapital Auto
Keyword Property KwTown Auto
Keyword Property KwHabitation Auto
Keyword Property KwDwelling Auto
Keyword Property KwJail Auto
Bool Property IsReluctant Auto Conditional
Bool Property NextGoldIsPay Auto Conditional
Bool Property MustServiceInnkeeper Auto Conditional
Bool Property IsLovesick Auto Conditional

float updateInterval = 20.0
int violationmagnitude = -1
bool leftTown = false

int RP_previousClientCount
bool RP_HomeJobOnCD = false
int RP_HomeJobOwnerPaymentTotal = 0
Quest RPQuest
bool UseCuffs

Event PlayerSexEnd(Form FormRef, int tid)
	sslThreadController tc = MQ.SexLab.GetController(tid)
	Actor[] actors = tc.Positions
	int numactors = actors.Length
	Actor rpClient

	if MCM.useRadProstitution
		goldAtEndOfSex = p.GetItemCount(Gold)
		rpClient = vkjRadProInt.GetClient(MCM.RadProQuest)
		rpMadame = vkjRadProInt.GetMadame(MCM.RadProQuest)
		if rpMadame != none
			rpMadameBaseGold = rpMadame.GetItemCount(Gold)
		else
			rpMadameBaseGold = 100; shouldn't be needed, just being careful
		endif
		int rpTotalClients = vkjRadProInt.GetTotalClients(MCM.RadProQuest)
		if RP_previousClientCount != rpTotalClients
			; RMCW - if the previous client count stored is not the same as the new one, this must have been a client.
			; Note - this GlobalVariable is updated at the start of scene and we are checking at end so it is safe.
			RP_previousClientCount = rpTotalClients
		else
			; RMCW - we can cancel the rest of execution because user is using RP and client wasn't found.
			; This is also necessary for the AddToFaction below as I have not checked for rpClientFound in the if statement.
			return
		endif
	endif
	; RMCW - we know all the actors other than player are clients if not already returned
	
	; Radiant Prostitution
	if MCM.useRadProstitution
		; Check participants
		int i = 0
		While i < numactors
			If actors[i] != p
				rpClient.AddToFaction(ClientFaction) 
			Endif
			i += 1
		EndWhile
		
		UpdateClientCount(1)
		NextGoldIsPay = true; vkjProstPlayerAliasScript watches for this
		payWhore = false; Resetting this bool as a failsafe, in case player messed with the mod list during the quest.
		return; End this event check rather than using the basic check.
	endif
	; End Radiant Prostitution

	; Basic Prostitution
	if payWhore
		float f = 1.0
		sslBaseAnimation anim = tc.Animation
		if anim != none
			;Debug.messagebox("Vaginal: " + anim.HasTag("Vaginal") + ".  Anal: " + anim.HasTag("Anal") + ".  Oral: " + anim.HasTag("Oral"))
			if anim.HasTag("Rough") || anim.HasTag("Aggressive")
				f = 3.0
			elseif anim.HasTag("Lesbian") || anim.HasTag("Anal")
				f = 2.5
			elseif anim.HasTag("Vaginal") || anim.HasTag("Cowgirl")
				f = 2.0
			endif
		endif
		
		int myPay = MCM.v_whoreBasePay * f as int
		float tip = 1.0 
		if !IsReluctant
			tip += (Utility.RandomInt(0, 3) * 0.05);  A small tip to keep things interesting
		endif
		myPay = (myPay * tip) as int
		int domCut = (myPay * MCM.v_whoreDomCut) as Int
		
		Debug.Notification("You collected " + myPay + " gold.")
		NotifyOwnerCut(domCut)
		MQ.GiveGoldToPlayer((myPay - domCut), isSilent=true); Avoid double taxation
		MQ.OwnerRef.AddItem(Gold, domCut)
		payWhore = false
		UpdateClientCount(1)
		UpdatePayGoal(myPay)
	endif
EndEvent

; RMCW - For calculating owner payment after home job completion
Function Update_RP_HomeJobOwnerPaymentTotal()
	int homeJobPayment = vkjRadProInt.GetHomeJobPayment(MCM.RadProQuest)
	UpdatePayGoal(homeJobPayment)

	; Record owner share for later
	int ownerPayment = vkjRadProInt.GetHomeJobOwnerPayment(MCM.RadProQuest)
	RP_HomeJobOwnerPaymentTotal += ownerPayment
	;Debug.Notification("Your " + MQ.OwnerTitle + " will receive " + ownerPayment + " septims for your efforts.")

	; Reverse any gold sharing
	if MCM.OwnerGoldShare > 0
		int goldShared = ((homeJobPayment * MCM.OwnerGoldShare / 100.0) + 0.51) as int
		MQ.GiveGoldToPlayer(goldShared, true); bypasses gold sharing
		MQ.OwnerRef.RemoveItem(Gold, goldShared)
	endif
EndFunction

Event OnUpdate()
	RegisterForSingleUpdate(updateInterval)
	
	if MCM.OwnerIsRadProPimp && (RPQuest != none) && RPQuest.IsRunning() && !UI.IsMenuOpen("Dialogue Menu")
		MQ.MakeOwnerRadProPimp(false); PC has started the job
	endif

	; RMCW - Update payment to owner for if HomeJob completes
	if MCM.useRadProstitution 
		; We need to first check if HomeJobOnCD has ended, and if it has, set to false. 
		; This will cover resets and if it was on CD when this quest started, and if it is coming off cd during the quest after completion
		bool homeJobIsOnCD = vkjRadProInt.IsHomeJobOnCD(MCM.RadProQuest)
		if !homeJobIsOnCD
			RP_HomeJobOnCD = false
		elseif homeJobIsOnCD && RP_HomeJobOnCD == false
			; We know the homejob wasn't on cooldown, and it is now. This happens when you complete the quest. (homeJobIsOnCD is true)
			; We know that it wasn't on cooldown before (RP_HomeJobOnCD == false).
			; And the player may have failed the quest, but they will receive a lower reward. The owner will still get his full reward though.
			; So we have detected a job completion.
			Update_RP_HomeJobOwnerPaymentTotal()
			RP_HomeJobOnCD = true
		endif
		; NOTE!! The only downside here is if HomeJobCD is set 0, which it can be from MCM. It won't cause problems but owner won't get a cut.
	endif

	; Don't punish if the player is having sex or in combat.
	if MQ.SuspendAll || p.IsInFaction(SexFaction) || p.IsInCombat()
		return
	endif

	; This punishment will never kill the player, just in case a clumsy player fast travels out to some wilderness
	Location loc = p.GetCurrentLocation()
	if !loc.HasKeyword(KwDwelling) && !loc.HasKeyword(KwHabitation) && !loc.HasKeyword(KwJail)
		if !leftTown
			SetObjectiveCompleted(40,false)
			SetObjectiveDisplayed(40)
			leftTown = true
		else
			MQ.DisplayWarning("You must return to a civilized location until you've finished your whoring duties.")
		endif
		
		violationmagnitude += 1
		if violationmagnitude > 0
			MQ.Hurt()
			violationmagnitude = 1
		endif
	else
		if leftTown
			SetObjectiveCompleted(40)
			SetObjectiveDisplayed(40,false)
			leftTown = false
		endif
		violationmagnitude = -1
	endif
EndEvent

Function InitQuest()
	if MCM.OwnerIsRadProPimp
		MQ.MakeOwnerRadProPimp(true)
		RPQuest = Quest.GetQuest("mf_Prostitute_SimpleJob")
	endif
	
	; Love Sickness bonus
	if MQ.IsLovesick()
		IsLovesick = true
		MQ.UpdateBonusProstQuota(25)
	endif
EndFunction

Function CheckInnkeeper()
	if !MCM.ServiceInnkeeper
		return
	elseif IsObjectiveCompleted(25)
		return; already serviced the innkeeper
	endif

	Actor npc = MQ.GetValidInnkeeper()
	if npc != none
		Innkeeper.ForceRefTo(npc)
		MustServiceInnkeeper = true
		SetObjectiveDisplayed(25)
	endif
EndFunction

Function BeginCooldown()
	if MCM.OwnerIsRadProPimp
		MQ.MakeOwnerRadProPimp(false)
	endif
	MCM.SetNextWhore()
	SetStage(20)
EndFunction

function endThisQuest()
	SetObjectiveCompleted(25, true)
	SetObjectiveCompleted(30, true)
	
	if NumClients.GetValue() > -4
		MQ.MediumReward()
		SetObjectiveDisplayed(35, false)
	else
		float bonus = Math.Abs(NumClients.GetValue()) / 2
		if bonus > 2.0
			bonus = 2.0
		endif
		MQ.UpdateSubmissionScore(3.0 + bonus)
	endif
	
	; Pay the owner the madame's cut
	if MCM.useRadProstitution
		PayRPCut()
	endif
	
	if MCM.ProstFee > 0
		int fee = MCM.ProstFee
		if p.GetCurrentLocation().HasKeyword(KwTown)
			fee = Math.Ceiling(fee / 2)
			if IsInCapital(); Adjustment for hold capitals that are towns
				fee = (fee * 1.5) as int
			endif
		endif
		MQ.FollowerRemoveItem(MQ.OwnerRef, Gold, fee)
	endif
	
	SetObjectiveDisplayed(25, false)
	SetObjectiveDisplayed(40, false)
	SetStage(15)
	UnRegisterForModEvent("PlayerTrack_End")
	UnRegisterForUpdate(); legacy from the old days when the quest would stay active after it "ends"
	
	if UseCuffs
		MQ.CuffsControl.SetStage(20)
	endif
endFunction

Function ServiceInnkeeper(actor myClient)
	MustServiceInnkeeper = false
	SetObjectiveCompleted(25)
	myClient.AddToFaction(ClientFaction)
	MQ.Fuck(myClient)
EndFunction

function basicWhoreSex(actor myClient)
	payWhore = true
	coolDownSpell.cast(myClient,myClient)
	myClient.AddToFaction(ClientFaction)
	MQ.Fuck(myClient)
endFunction

; Refresh the displayed number of clients you have left to fuck in the objectives menu.
Function UpdateClientCount(int nServiced)
	if MCM.ProstPayMode && (GetStage() == 5); in pay mode, working toward goal
		return
	endif

	if nServiced > 0
		int newVal = (NumClients.GetValue() as int) - nServiced
		NumClients.SetValue(newVal)
		MCM.UpdateClientCount(nServiced)
		clientsServiced += nServiced
	endif
	UpdateCurrentInstanceGlobal(NumClients)

	if MCM.ProstPayMode && (GetStage() == 10); in pay mode, bonus phase
		if NumClients.GetValue() <= -4
			SetObjectiveCompleted(35, true)
		endif
		return
	endif

	if NumClients.GetValue() <= 0
		if GetStage() != 10
			SetStage(10)
			SetObjectiveDisplayed(30, true)  ;Message = You're done. Talk to Owner.
			SetObjectiveDisplayed(35, true)  ;Message = (Optional) Keep going.
			SetObjectiveDisplayed(20, false) ;Message = 1 fuck left
			SetObjectiveDisplayed(10, false) ;Message = multiple fucks left.
			; Ensure that the count is zero now, for proper bonus counting
			NumClients.SetValue(0)
			UpdateCurrentInstanceGlobal(NumClients)
		else
			; Bonus whoring
			if NumClients.GetValue() <= -4
				SetObjectiveCompleted(35, true)
			endif
		endif
	elseif NumClients.GetValue() == 1
		SetObjectiveDisplayed(20, true, true)
		SetObjectiveDisplayed(10, false)
	else
		SetObjectiveDisplayed(20, false)
		SetObjectiveDisplayed(10, true, true)
	endif
EndFunction

; Refresh the displayed client payment amount remaining in the objectives menu.
Function UpdatePayGoal(int pay)
	if !MCM.ProstPayMode
		return
	endif

	if pay > 0
		int newVal = (PayGoal.GetValue() as int) - pay
		PayGoal.SetValue(newVal)
		MCM.UpdateClientCount(1)
	endif
	UpdateCurrentInstanceGlobal(PayGoal)

	if PayGoal.GetValue() <= 0
		if GetStage() != 10
			SetStage(10)
			SetObjectiveDisplayed(30, true)  ;Message = You're done. Talk to Owner.
			SetObjectiveDisplayed(35, true)  ;Message = (Optional) Keep going.
			SetObjectiveDisplayed(15, false) ;Message = pay amount remaining.
			; Ensure that the count is zero now, for proper bonus counting.
			; For the bonus, we count clients, just as for client mode
			NumClients.SetValue(0)
			UpdateCurrentInstanceGlobal(NumClients)
		else
			; Bonus whoring
			if NumClients.GetValue() <= -4
				SetObjectiveCompleted(35, true)
			endif
		endif
	else
		SetObjectiveDisplayed(15, true, true); pay amount remaining
	endif
EndFunction

Function startQuest()
	if MCM.RequiredCuffs == 4
		UseCuffs = true
		SendModEvent("SLTR-StartQuest", "vkjCuffsControl")
	endif

	if !IsReluctant
		MQ.ClearHumiliation(); Scandalous behavior won't adversely affect a whore.
	else
		MQ.Humiliate(adjustment=(1 - MCM.Humiliation)); But a reluctant one gets one stack.
	endif

	if MCM.useRadProstitution 
		if MQ.RP_MadameFaction == none
			MQ.RP_MadameFaction = vkjRadProInt.GetMadameFaction(MCM.RadProQuest)
		endif
		; This is just for use in paying owner a generated cut at end of quest.
		RP_HomeJobOwnerPaymentTotal = 0
		RP_HomeJobOnCD = vkjRadProInt.IsHomeJobOnCD(MCM.RadProQuest)
		RP_previousClientCount = vkjRadProInt.GetTotalClients(MCM.RadProQuest)
	endif
	
	if MCM.OwnerIsRadProPimp
		MQ.MakeOwnerRadProPimp(true)
	endif
	SetObjectiveCompleted(30, false)
	
	int bonusQuota = MQ.GetBonusProstQuota()
	if MCM.ProstPayMode
		; Set pay target
		int payTarget
		if bonusQuota > 0; Make random chance harder if Lola earned a bonus quota
			payTarget = MCM.v_minclients + RandomIntHighestOfTwoRolls(0, MCM.v_randclients)
		else
			payTarget = MCM.v_minclients + Utility.RandomInt(0, MCM.v_randclients)
		endif
		
		if p.GetCurrentLocation().HasKeyword(KwTown)
			payTarget = Math.Ceiling(payTarget / 2)
			if IsInCapital(); Adjustment for hold capitals that are towns
				payTarget = (payTarget * 1.5) as int
			endif
		endif
		; Add bonus requirement
		if bonusQuota > 0
			payTarget += (payTarget * (bonusQuota / 100.0)) as int
		endif
		
		payTarget = Math.Ceiling(payTarget / 10) * 10; round to tens
		PayGoal.SetValue(payTarget)
		UpdateCurrentInstanceGlobal(PayGoal)
		UpdatePayGoal(0)
		NumClients.SetValue(0)
		UpdateCurrentInstanceGlobal(NumClients)
	else
		; Set client target
		int nClients
		if bonusQuota > 0; Make random chance harder if Lola earned a bonus quota
			nClients = MCM.v_minclients + RandomIntHighestOfTwoRolls(0, MCM.v_randclients)
		else
			nClients = MCM.v_minclients + Utility.RandomInt(0, MCM.v_randclients)
		endif
		; Adjustment for towns
		if p.GetCurrentLocation().HasKeyword(KwTown)
			nClients = Math.Ceiling(nClients / 2)
			; Adjustment for hold capitals that are towns
			if IsInCapital()
				nClients += 1
			endif
		endif
		; Minimum 2 clients
		if nClients < 2
			nClients = 2
		endif
		; Add bonus requirement
		if bonusQuota > 0
			int bonus = Math.Ceiling(nClients * bonusQuota / 100.0)
			nClients += bonus
		endif
		
		NumClients.SetValue(nClients)
		UpdateCurrentInstanceGlobal(NumClients)
		UpdateClientCount(0)
		PayGoal.SetValue(0)
		UpdateCurrentInstanceGlobal(PayGoal)
	endif
	MQ.ClearBonusProstQuota(); Clear it now that we've applied it.
	
	MustServiceInnkeeper = false
	CheckInnkeeper()

	MCM.UpdateTimesWhoredOut()
	RegisterForModEvent("PlayerTrack_End", "PlayerSexEnd")
	SetStage(5)
	RegisterForSingleUpdate(updateInterval)
EndFunction

Function NotifyOwnerCut(int amount)
	Debug.Notification("Your " + MQ.OwnerTitle + " gets " + amount + " gold as " + MQ.OwnerPronounPosObj() + " cut.")
EndFunction

; Pay the owner the "madame's" cut (innkeeper gets nothing)
Function PayRPCut()
	if MQ.OwnerRef == rpMadame
		return; Owner is the RP madame and already got the cut
	endif

	int ownerCut = 0
	if rpMadame != none
		; The amount that the innkeeper's gold recently increased is assumed to be the madame's cut
		ownerCut = rpMadame.GetItemCount(Gold) - rpMadameBaseGold
		if ownerCut > 0
			rpMadame.RemoveItem(Gold, ownerCut)
		endif
		; RMCW - let's add the payment for the home job here. If we need to guess below it is going to end up a bit too high
		ownerCut += RP_HomeJobOwnerPaymentTotal
		RP_HomeJobOwnerPaymentTotal = 0
	endif
	
	if ownerCut <= 0; Madame not found (unlikely) or madame's gold is messed up.  Make a guess.
		ownerCut = Math.Floor((clientsServiced * 60) * vkjRadProInt.GetMadameCut(MCM.RadProQuest))
	endif
	
	MQ.OwnerRef.AddItem(Gold, ownerCut)
	NotifyOwnerCut(ownerCut)
EndFunction

Function Pay(int payment)
	NextGoldIsPay = false
	UpdatePayGoal(payment)
	; Reverse any gold sharing
	Utility.Wait(1); Wait for gold sharing to finish
	int goldShared = goldAtEndOfSex + payment - p.GetItemCount(Gold)
	if goldShared > 0
		MQ.GiveGoldToPlayer(goldShared, true); bypasses gold sharing
		MQ.OwnerRef.RemoveItem(Gold, goldShared)
	endif
EndFunction

; Return true if player is in a decent-sized capital
bool Function IsInCapital()
	p.GetCurrentLocation().HasKeyword(KwCapital) && !p.IsInLocation(MorthalLoc) && !p.IsInLocation(DawnstarLoc)
EndFunction

; Roll the random integer twice and return the higher of the two results.
int Function RandomIntHighestOfTwoRolls(int min, int max)
	int r1 = Utility.RandomInt(min, max)
	int r2 = Utility.RandomInt(min, max)
	if r2 > r1
		return r2
	endif
	return r1
EndFunction