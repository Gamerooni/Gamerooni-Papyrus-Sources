Scriptname vkjOwnerCombatMonitor extends Quest 

vkjMQ Property MQ auto
Keyword Property KwPotion auto
Keyword Property KwRestoreHealth auto
Keyword Property KwRestoreMagicka auto
Keyword Property KwRestoreStamina auto
Message Property MsgUsedHealth auto
Message Property MsgUsedMagicka auto
Message Property MsgUsedStamina auto
GlobalVariable Property PotionsLeft auto

bool HaveHealthPotions
bool HaveMagickaPotions
bool HaveStaminaPotions

Function Fragment_0(); Quest startup
	Init()
EndFunction

Function Init()
	HaveHealthPotions = MQ.CombatPotions.GetItemCount(KwRestoreHealth) > 0
	HaveMagickaPotions = MQ.CombatPotions.GetItemCount(KwRestoreMagicka) > 0
	HaveStaminaPotions = MQ.CombatPotions.GetItemCount(KwRestoreStamina) > 0
	RegisterForSingleUpdate(10.0)
EndFunction

Event OnUpdate()
	if !IsRunning(); The event gets called if ANY update from other quests is triggered on the actor.
		return
	endif

	if !HaveHealthPotions && !HaveMagickaPotions && !HaveStaminaPotions
		return
	endif
	
	RegisterForSingleUpdate(10.0)
	
	if HaveHealthPotions && (MQ.OwnerRef.GetActorValuePercentage("Health") < 0.25)
		Potion pot = GetPotion(KwRestoreHealth)
		if pot != none
			UsePotion(pot, KwRestoreHealth)
			MsgUsedHealth.Show()
			return
		else
			HaveHealthPotions = false
		endif
	endif
	if HaveMagickaPotions && (MQ.OwnerRef.GetActorValuePercentage("Magicka") < 0.25)
		Potion pot = GetPotion(KwRestoreMagicka)
		if pot != none
			UsePotion(pot, KwRestoreMagicka)
			MsgUsedMagicka.Show()
			return
		else
			HaveMagickaPotions = false
		endif
	endif
	if HaveStaminaPotions && (MQ.OwnerRef.GetActorValuePercentage("Stamina") < 0.25)
		Potion pot = GetPotion(KwRestoreStamina)
		if pot != none
			UsePotion(pot, KwRestoreStamina)
			MsgUsedStamina.Show()
			return
		else
			HaveStaminaPotions = false
		endif		
	endif
EndEvent

Potion Function GetPotion(Keyword effect)
	Potion pot
	int nPotions = MQ.CombatPotions.GetItemCount(KwPotion)
	int i = 0
	While i < nPotions
		pot = MQ.CombatPotions.GetNthForm(0) as Potion
		if pot.HasKeyword(effect)
			return pot
		endif
		i += 1
	EndWhile
	return none
EndFunction

Function UsePotion(Potion pot, Keyword effect)
	MQ.OwnerRef.EquipItem(pot)
	MQ.CombatPotions.RemoveItem(pot, 1)
	
	int nLeft = MQ.CombatPotions.GetItemCount(effect)
	PotionsLeft.SetValue(nLeft)
	UpdateCurrentInstanceGlobal(PotionsLeft)
EndFunction