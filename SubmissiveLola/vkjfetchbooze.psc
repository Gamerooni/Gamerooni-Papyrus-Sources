Scriptname vkjFetchBooze extends Quest conditional

Potion Property Booze Auto
Potion[] Property PossibleItems Auto
int property RequestedItem auto conditional
int property StartingGold auto hidden
vkjMQ Property MQ Auto
vkjMCM Property MCM Auto
Actor Property PlayerRef Auto
ReferenceAlias property Owner auto
MiscObject Property Gold Auto
Scene Property ForcegreetScene auto
Keyword Property KwVampire auto
Keyword Property KwClothingHead auto
Keyword Property KwArmorHelm auto
Keyword Property KwClothingHands auto
Keyword Property KwArmorHands auto
Keyword Property KwClothingBody auto
Keyword Property KwArmorBody auto
bool Property CanStrip auto conditional
bool Property HadSex auto conditional
bool Property WasRaped auto conditional
bool Property VeryLate auto conditional
MusicType Property Music auto

bool NakedRun
Armor Dress
Armor Gloves
Armor Helm
bool gaveBooze
int GoldGiven

Function InitQuest()
	MQ.SetBlockEvents(true)
	CanStrip = MQ.CanStripItem(0x00000004)
	MQ.SexLab.TrackActor(PlayerRef, "PlayerSex")
	RegisterForModEvent("PlayerTrack_End", "PlayerSexEnd")
EndFunction

Function SetGold()
	StartingGold = MQ.PlayerRef.GetItemCount(Gold)

	; Calculate the item cost
	Potion drink = PossibleItems[RequestedItem]
	int cost = drink.GetGoldValue()
	int speechSkill = PlayerRef.GetActorValue("Speechcraft") as int
	if speechSkill > 100
		speechSkill = 100
	endif
	float priceFactor = Game.GetGameSettingFloat("fBarterMax") - (0.013 * speechSkill)
	int price = (cost * priceFactor) as int
	MQ.TestPrint("Value: " + cost + ", Price: " + price)

	; If the PC can't afford the item, add gold.
	price = (price * MCM.PriceFactor) as int; Inflate the price to account for barter mods
	if price > StartingGold
		GoldGiven = price - StartingGold
		MQ.GiveGoldToPlayer(GoldGiven)
		int ownerExpense = GoldGiven
		int ownerGold = MQ.FollowerItemCount(MQ.OwnerRef, Gold)
		if ownerExpense > ownerGold
			ownerExpense = ownerGold; Yes, if the owner is very poor, the player can receive more gold than the owner had.
		endif
		MQ.FollowerRemoveItem(Owner.GetActorReference(), Gold, ownerExpense)
	endif
EndFunction

Function StartRun(bool Naked = false)
	SetStage(5)
	SetGold()
	MQ.Wait()
	StartMusic()
	if Naked
		NakedRun = true
		MQ.MinimalReward()
		SendModEvent("dhlp-Suspend")
		
		Dress = MQ.StripItem(0x00000004)
		Gloves = MQ.StripItem(0x00000008)
		Helm = MQ.StripHelmet()
		
		SetObjectiveDisplayed(5)
	endif
	Utility.Wait(1)
	RegisterForSingleUpdate(12)
EndFunction

Event OnUpdateGameTime()
	if MCM.pWereWolf()
		RegisterForSingleUpdateGameTime(MQ.ScaledGameTime(0.25))
	elseif MQ.IsPlayerHavingSex() || MQ.PlayerRef.IsInCombat()
		RegisterForSingleUpdateGameTime(MQ.ScaledGameTime(0.1))
	elseif GetStage() == 5
		FailQuest()
		RegisterForSingleUpdateGameTime(MQ.ScaledGameTime(1.0)); Test for being very late (more than an extra hour)
	elseif !gaveBooze
		VeryLate = true
		SetObjectiveDisplayed(8, false)
		SetObjectiveDisplayed(9)
		MQ.DisplayWarning("Your " + MQ.OwnerTitle + " gave up waiting for you.")
		MQ.MoveNpcToPlayer(MQ.OwnerRef, 20)
		MQ.Follow()
	endif
EndEvent

Event OnUpdate()
	if Owner.GetActorReference().GetActorValue("WaitingForPlayer") == 0
		MQ.DisplayWarning("Don't make your " + MQ.OwnerTitle + " run with you.")
		FailQuest()
		return
	endif

	if NakedRun
		if GetStage() == 5
			bool violation = false
			if Dress && (PlayerRef.WornHasKeyword(KwClothingBody) || PlayerRef.WornHasKeyword(KwArmorBody))
				violation = true
			elseif Gloves && (PlayerRef.WornHasKeyword(KwClothingHands) || PlayerRef.WornHasKeyword(KwArmorHands))
				violation = true
			elseif Helm && (PlayerRef.WornHasKeyword(KwClothingHead) || PlayerRef.WornHasKeyword(KwArmorHelm))
				violation = true
			endif
			
			if violation
				MQ.PunishForViolation()
				MQ.DisplayWarning("You must run naked except for footwear")
			endif
		elseif GetStage() > 5
			if !IsObjectiveCompleted(5)
				SetObjectiveCompleted(5)
			endif
		endif
	endif

	if GetStage() < 10; No need for periodic checks after quest failed
		RegisterForSingleUpdate(12)
	endif
EndEvent

Event PlayerSexEnd(Form FormRef, int tid)
	sslThreadController tc = MQ.SexLab.GetController(tid)
	sslBaseAnimation anim = tc.Animation
	if (tc.ActorCount > 1) && anim.HasTag("Sex"); groping/search scenes aren't sex
		HadSex = true
	endif
	if tc.IsVictim(PlayerRef)
		WasRaped = true
	endif
EndEvent

Function FailQuest()
	SetObjectiveFailed(RequestedItem * 10)
	SetObjectiveDisplayed(8)
	SetStage(10)
	Music.Remove()
EndFunction

Function GiveBooze(int _drinky = 0, bool reward = true, bool endQuest = true)
	gaveBooze = true
	Music.Remove()
	if GetStage() == 5
		MCM.UpdateTimesFetchedBooze()
	endif

	SetObjectiveCompleted(RequestedItem * 10)
	SetObjectiveDisplayed(5, false)

	int drinky = RequestedItem
	if (_drinky == 8); Blackbriar Private Reserve
		drinky = _drinky
		if reward
			MQ.LargeReward()
		endif
	elseif reward
		MQ.MediumReward()
	endif
		
	Potion myItem = PossibleItems[drinky]
	; If the owner requested Alto Wine, check if the player has the alternate version of Alto Wine.
	; (There are two types common Alto Wine with the exact same name in game.)
	if (drinky == 5) && (PlayerRef.GetItemCount(PossibleItems[6]) > 0)
		; Set the drink to be taken/consumed to the alt version if the player has one.
		; Otherwise, we assume the player has one of the default version bottles and keep that one set to be taken.
		myItem = PossibleItems[6]
	endif

	if Owner.GetActorReference().HasKeyword(KwVampire)
		PlayerRef.RemoveItem(myItem, 1)
	else
		PlayerRef.RemoveItem(myItem, 1, Owner.GetActorReference())
		Owner.GetActorReference().EquipItem(myItem); Make the owner consume the item.
	endif
	if RequestedItem == 1
		MCM.UpdateSweetrollCount()
	endif
	
	; Take back any leftover cash advance.
	if GoldGiven > 0
		int playerGold = MQ.PlayerRef.GetItemCount(Gold)
		if playerGold > StartingGold
			int leftover = playerGold - StartingGold
			if leftover > GoldGiven; player might have sold items
				leftover = GoldGiven - (GoldGiven / MCM.PriceFactor) as int
			endif
			if leftover > 0
				PlayerRef.RemoveItem(Gold, leftover, false, MQ.OwnerRef)
			endif
		endif
	endif
	
	; Compensate player expenses, within reason
	;int expense = StartingGold - MQ.PlayerRef.GetItemCount(Gold)
	;if expense > 0
	;	if expense > 50
	;		expense = 50
	;	endif
	;	MQ.GiveGoldToPlayer(expense, false, false)
	;	MQ.FollowerRemoveItem(Owner.GetActorReference(), Gold, expense)
	;endif
	
	if endQuest
		CompleteQuest()
		EndMe()
	endif
EndFunction

Function BuyBooze(Actor vendor)
	PlayerRef.AddItem(PossibleItems[RequestedItem], 1)
	if RequestedItem == 1; sweetroll
		PlayerRef.RemoveItem(Gold, 10)
		vendor.AddItem(Gold, 10)
	else
		PlayerRef.RemoveItem(Gold, 15)
		vendor.AddItem(Gold, 15)
	endif
EndFunction

Function Redress()
	if Dress != none
		PlayerRef.EquipItem(Dress, false, true)
	endif
	if Gloves != none
		PlayerRef.EquipItem(Gloves, false, true)
	endif
	if Helm != none
		PlayerRef.EquipItem(Helm, false, true)
	endif
EndFunction

Function StartMusic()
	Music.Add()
EndFunction

function GetPunished()
	MQ.PunishForViolation()
	SetStage(10)
	MQ.Punish()
	EndMe()
endFunction

function GetSpanked(int penalty)
	if (penalty > 0) && !WasRaped
		MQ.UpdateSubmissionScore(penalty)
	endif
	SetStage(10)
	MQ.Spank(MQ.OwnerRef, true)
	EndMe()
endFunction

function EndWithABang()
	Utility.Wait(2)
	MQ.FuckLoving(MQ.OwnerRef)
	CompleteQuest()
	EndMe()
endFunction

function EndMe()
	Music.Remove()
	if NakedRun
		SendModEvent("dhlp-Resume")
		Redress()
	endif
	MQ.SetBlockEvents(false)
	MCM.SetNextRunLolaRun()
	MQ.Follow()
	SetObjectiveDisplayed(8, false)
	SetObjectiveDisplayed(9, false)
	CompleteAllObjectives(); Ensure that all objectives are removed from the quest log
	Stop()
endFunction