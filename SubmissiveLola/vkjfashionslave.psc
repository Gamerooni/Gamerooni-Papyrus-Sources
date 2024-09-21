Scriptname vkjFashionSlave extends Quest  

ReferenceAlias property Dom auto
vkjMQ property MQ auto
vkjMCM property MCM auto
zadlibs property zlib auto
Location property Solly auto
Worldspace property SoliWorld auto
actor property p auto
faction property SexFaction auto
Quest property DressQuest auto; The "Fit for a Jarl" vanilla side quest in Solitude
Quest Property RopeQuest Auto
vkjBoundForAJarl Property BoundForAJarl auto
Keyword property JailK auto
Keyword property KwClothingBody auto
Keyword property KwArmorBody auto
Armor property FashionDress auto hidden
Armor property FashionGloves auto hidden
Armor property FashionShoes auto hidden
Armor property FashionDressAlt auto hidden
Armor property FashionGlovesAlt auto hidden
Armor property FashionShoesAlt auto hidden
Armor property Dress auto hidden
Armor property Gloves auto hidden
Armor property Shoes auto hidden
Scene Property ForcegreetScene auto

int violationmagnitude = 0
int updateInterval = 15

;For now this event can only trigger for female players, being (as far as I know) the needed gear doesn't exist for males.

Event OnUpdate()
	if DressQuest.GetStage() == 10
		; End this quest if the player just started the "Fit for a Jarl" side quest.
		; This quest won't start if the modeling phase of "Fit for a Jarl" is active, so we know it just started.
		Debug.Notification("You are now free to wear the Radiant Raiment outfit.")
		endThisQuest()
		return
	endif

	RegisterForSingleUpdate(updateInterval)
	
	; Don't punish the player while having sex or in jail
	if MQ.SuspendAll || p.IsInFaction(SexFaction) || p.GetCurrentLocation().HasKeyword(JailK) || MQ.OwnerRef.IsInDialogueWithPlayer() || UI.IsMenuOpen("Dialogue Menu")
		return
	endif

	if p.IsInCombat()
		endThisQuest()
		return
	endif

	if (p.GetWorldSpace() != SoliWorld) && !p.GetCurrentLocation().HasKeyword(MQ.LocList[5])
		if BoundForAJarl.IsRunning()
			BoundForAJarl.FailQuest()
		endif
		endThisQuest()
		return
	endif

	if !IsWhoring()
		bool fail
		if (!IsDressCompliant() || !p.WornHasKeyword(zlib.zad_DeviousGloves) || !p.WornHasKeyword(zlib.zad_DeviousBoots))
			fail = true
			MQ.DisplayWarning("You must wear your fashion gear while in Solitude.")
		elseif p.WornHasKeyword(KwClothingBody) || p.WornHasKeyword(KwArmorBody)
			fail = true
			MQ.DisplayWarning("Do not hide your outfit under clothing or armor.")
		endif
		if fail
			violationmagnitude += 1
			if violationmagnitude > 1
				int i = 0
				while (i < violationmagnitude)
					MQ.Hurt()
					i += 1
				endWhile
			endif
		else
			violationmagnitude = 0
		endif
	else
		violationmagnitude = 0
	endif
endEvent

Event DDITerminate()
	endThisQuest()
EndEvent

Function StartUp()
	; End the Rope quest, if it's running.
	if RopeQuest.IsRunning()
		RopeQuest.SetStage(20)
	endif
EndFunction

bool function IsDressCompliant()
	return (p.WornHasKeyword(zlib.zad_DeviousSuit) || p.WornHasKeyword(zlib.zad_DeviousCorset) || p.WornHasKeyword(zlib.zad_DeviousHarness))
endfunction

function endThisQuest()
	if BoundForAJarl.IsRunning()
		BoundForAJarl.EndThisQuest()
	endif
	Redress(destroy = !MCM.KeepFashionSlaveOutfit)
	UnRegisterForUpdate()
	if !MQ.noRewardDress
		MQ.MediumReward()
		MQ.noRewardDress = true
	endif
	SendModEvent("SLTR_SolitudeFashionEnd")
	setStage(20)
endFunction

bool function IsWhoring()
	; The forced prostitution quest must be active and not completed
	if (Quest.GetQuest("vkjPimpedBasic")).GetStage() != 5
		return false
	endif
	; With Radiant Prostitution, player must actually be on the job
	if MCM.useRadProstitution
		return (Quest.GetQuest("mf_Prostitute_SimpleJob")).IsRunning()
	endif
	return true
endfunction

Function HobbleUp()
	if MCM.FashionBody == 0; hobble dress
		if !p.WornHasKeyword(zlib.zad_DeviousSuit)
			Dress = p.GetWornForm(0x00000004) as Armor
			FashionDress = MCM.FashionDressesList.GetAt(MCM.dress) as Armor
			zlib.LockDevice(p, FashionDress)
			Utility.Wait(0.1)
		else
			FashionDressAlt = zlib.GetWornDevice(p, zlib.zad_DeviousSuit)
		endif
	elseif MCM.FashionBody == 1
		if !p.WornHasKeyword(zlib.zad_DeviousCorset)
			Dress = p.GetWornForm(0x00000004) as Armor
			p.UnequipItem(Dress)
			FashionDress = MCM.CorsetsList.GetAt(MCM.Corset) as Armor
			zlib.LockDevice(p, FashionDress)
			Utility.Wait(0.1)
		else
			FashionDressAlt = zlib.GetWornDevice(p, zlib.zad_DeviousCorset)
		endif
	elseif MCM.FashionBody == 2
		if !p.WornHasKeyword(zlib.zad_DeviousHarness)
			Dress = p.GetWornForm(0x00000004) as Armor
			p.UnequipItem(Dress)
			FashionDress = MCM.BodyHarnessesList.GetAt(MCM.BodyHarness) as Armor
			zlib.LockDevice(p, FashionDress)
			Utility.Wait(0.1)
		else
			FashionDressAlt = zlib.GetWornDevice(p, zlib.zad_DeviousHarness)
		endif
	endif
	
	if !p.WornHasKeyword(zlib.zad_DeviousGloves)
		Gloves = p.GetWornForm(0x00000008) as Armor
		FashionGloves = MCM.FashionGlovesList.GetAt(MCM.gloves) as Armor
		zlib.LockDevice(p, FashionGloves)
		Utility.Wait(0.1)
	else
		FashionGlovesAlt = zlib.GetWornDevice(p, zlib.zad_DeviousGloves)
	endif
	
	if !p.WornHasKeyword(zlib.zad_DeviousBoots)
		Shoes = p.GetWornForm(0x00000080) as Armor
		FashionShoes = MCM.FashionShoesList.GetAt(MCM.shoes) as Armor
		zlib.LockDevice(p, FashionShoes)
		Utility.Wait(0.1)
	else
		FashionShoesAlt = zlib.GetWornDevice(p, zlib.zad_DeviousBoots)
	endif
	
	SendModEvent("SLTR_SolitudeFashionStart")
	RegisterForModEvent("DDI_Quest_SigTerm", "DDITerminate")
	RegisterForSingleUpdate(updateInterval)
EndFunction

Function Swap()
	if FashionDress != none
		if p.WornHasKeyword(zlib.zad_DeviousSuit)
			zlib.UnlockDevice(p, FashionDress, destroyDevice=true)
		endif
		if p.WornHasKeyword(zlib.zad_DeviousCorset)
			zlib.UnlockDevice(p, FashionDress, destroyDevice=true)
		endif
		if p.WornHasKeyword(zlib.zad_DeviousHarness)
			zlib.UnlockDevice(p, FashionDress, destroyDevice=true)
		endif

		if MCM.FashionBody == 0; hobble dress
			FashionDress = MCM.FashionDressesList.GetAt(MCM.dress) as Armor
			zlib.LockDevice(p, FashionDress)
		elseif MCM.FashionBody == 1
			FashionDress = MCM.CorsetsList.GetAt(MCM.Corset) as Armor
			zlib.LockDevice(p, FashionDress)
		elseif MCM.FashionBody == 2
			FashionDress = MCM.BodyHarnessesList.GetAt(MCM.BodyHarness) as Armor
			zlib.LockDevice(p, FashionDress)
		endif
	endif
	
	if FashionGloves != none
		if p.WornHasKeyword(zlib.zad_DeviousGloves)
			zlib.UnlockDevice(p, FashionGloves, destroyDevice=true)
		endif
		FashionGloves = MCM.FashionGlovesList.GetAt(MCM.gloves) as Armor
		zlib.LockDevice(p, FashionGloves)
		;zlib.SetLockManipulated(p, zlib.zad_DeviousGloves)
	endif
	
	if FashionShoes != none
		if p.WornHasKeyword(zlib.zad_DeviousBoots)
			zlib.UnlockDevice(p, FashionShoes, destroyDevice=true)
		endif
		FashionShoes = MCM.FashionShoesList.GetAt(MCM.shoes) as Armor
		zlib.LockDevice(p, FashionShoes)
	endif
EndFunction

; "Alt" items are devices pre-equipped by the player at the start of the event.
; (Obsolete) They will be unequipped at the end (if not blocking or quest items) but never destroyed.
; (New) They will be left alone.  The player might want to keep wearing pre-equipped devices (or they might involuntary, so no free removal).
Function Redress(bool destroy = true)
	if FashionDress != none
		zlib.UnlockDevice(p, FashionDress, destroyDevice=destroy)
		ReequipItem(Dress)
	;elseif FashionDressAlt != none && IsGenericDevice(FashionDressAlt)
	;	zlib.UnlockDevice(p, FashionDressAlt)
	;	ReequipItem(Dress)
	endif
	
	if FashionGloves != none
		zlib.UnlockDevice(p, FashionGloves, destroyDevice=destroy)
		ReequipItem(Gloves)
	;elseif FashionGlovesAlt != none && IsGenericDevice(FashionGlovesAlt)
	;	zlib.UnlockDevice(p, FashionGlovesAlt)
	;	ReequipItem(Gloves)
	endif
	
	if FashionShoes != none
		zlib.UnlockDevice(p, FashionShoes, zlib.GetRenderedDevice(FashionShoes), destroyDevice=destroy)
		ReequipItem(Shoes)
	;elseif FashionShoesAlt != none && IsGenericDevice(FashionShoesAlt)
	;	zlib.UnlockDevice(p, FashionShoesAlt)
	;	ReequipItem(Shoes)
	endif
EndFunction

; Unlock and unequip the outfit.
Function Unlock()
	if FashionDress != none
		zlib.UnlockDevice(p, FashionDress)
	elseif FashionDressAlt != none && IsGenericDevice(FashionDressAlt)
		zlib.UnlockDevice(p, FashionDressAlt)
	endif
	
	if FashionGloves != none
		zlib.UnlockDevice(p, FashionGloves)
	elseif FashionGlovesAlt != none && IsGenericDevice(FashionGlovesAlt)
		zlib.UnlockDevice(p, FashionGlovesAlt)
	endif
	
	if FashionShoes != none
		zlib.UnlockDevice(p, FashionShoes, zlib.GetRenderedDevice(FashionShoes))
	elseif FashionShoesAlt != none && IsGenericDevice(FashionShoesAlt)
		zlib.UnlockDevice(p, FashionShoesAlt)
	endif
EndFunction

Bool Function IsGenericDevice(Armor a)
	if a.HasKeyword(zlib.zad_BlockGeneric) || a.HasKeyword(zlib.zad_QuestItem)
		return false
	endif
	Armor aRendered = zlib.GetRenderedDevice(FashionDressAlt)
	return !aRendered.HasKeyword(zlib.zad_BlockGeneric) && !aRendered.HasKeyword(zlib.zad_QuestItem)
EndFunction

Function ReequipItem(Armor a)
	if a != none
		Utility.Wait(0.5)
		p.EquipItem(a, abSilent=true)
	endif
EndFunction