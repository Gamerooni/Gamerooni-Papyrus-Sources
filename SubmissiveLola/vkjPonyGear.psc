Scriptname vkjPonyGear extends Quest Conditional

vkjMQ Property MQ Auto
vkjMCM Property MCM Auto
zadLibs property zlib Auto
Quest Property GagQuest Auto
Quest Property RopeQuest Auto
Actor Property PlayerRef Auto
Armor Property PonyAmulet Auto
Keyword Property KwInventoryDevice Auto
Keyword Property KwLockable Auto
Keyword Property KwBlockGeneric Auto
Keyword Property KwQuestItem Auto
Keyword Property KwHasPumps Auto
Keyword Property KwBodyClothing Auto
Keyword Property KwBodyArmor Auto
Bool Property ForcePrance Auto

int Property EquippedTail Auto Conditional; 0: no, 1: non-pony tail was equipped, 2: pony tail was equipped, 3: player already had a tail

Armor Amulet
Armor OldAmulet
Armor Bridle
Armor Boots
Armor Tail
Armor OldAnalPlug
Armor LegCuffs
Armor Harness
Armor OldLegCuffs
Armor OldHarness
Armor OldRing


Function SetTail(Armor a)
	Tail = a
EndFunction

Function EndConflictingQuests()
	; End the Gag quest, if it's running
	if GagQuest.IsRunning()
		GagQuest.SetStage(20)
	endif
	; And end the Rope quest, if it's running
	if RopeQuest.IsRunning()
		RopeQuest.SetStage(20)
	endif
EndFunction

bool Function IsWearingPonyTail()
	return PlayerRef.IsEquipped(MQ.xlib.zadx_HR_PlugPonyTail01Inventory) || PlayerRef.IsEquipped(MQ.xlib.zadx_HR_PlugPonyTail02Inventory) || PlayerRef.IsEquipped(MQ.xlib.zadx_HR_PlugPonyTail02BowInventory) || PlayerRef.IsEquipped(MQ.xlib.zadx_HR_PlugPonyTail03Inventory)
EndFunction

Function StripPlayer()
	; Amulet
	Amulet = PonyAmulet
	Armor a = PlayerRef.GetWornForm(0x00000020) as Armor
	OldAmulet = a
	if (a != none) && (a.HasKeyword(KwLockable) || a.HasKeyword(KwBlockGeneric) || a.HasKeyword(KwQuestItem))
		OldAmulet = none
		Amulet = none
	endif
	
	; Ring
	OldRing = PlayerRef.GetWornForm(0x00000040) as Armor

	; Completely strip player
	MQ.StripNoAnim()
	MQ.StripAccessories()
EndFunction

Function EquipTail()
	;float startLoadTime = Utility.GetCurrentRealTime()
	; Quest conditions prevent the quest from running if the PC is wearing a chastity belt, so no need to check for belts.
	Tail = none
	if IsWearingPonyTail()
		EquippedTail = 3
		return
	endif

	Armor a
	Armor ar = PlayerRef.GetWornForm(0x00040000) as Armor
	if ar != none
		a = zlib.GetWornDevice(PlayerRef, zlib.zad_DeviousPlugAnal)	
	endif
	if (a != none) && (a.HasKeyword(KwBlockGeneric) || a.HasKeyword(KwQuestItem) || ar.HasKeyword(KwBlockGeneric) || ar.HasKeyword(KwQuestItem))
		OldAnalPlug = none
	else
		if a != none
			OldAnalPlug = a
			if (ar.HasKeyword(KwLockable) || ar.HasKeyword(KwHasPumps))
				MQ.RemoveDD(PlayerRef, a, false)
			else
				PlayerRef.UnequipItem(a, false, true)
			endif
		endif
		Tail = MCM.PonyTailList.GetAt(MCM.tail) as Armor
		MQ.EquipDD(PlayerRef, Tail, zlib.zad_DeviousPlugAnal)
	endif
	EquippedTail = 0
	if Tail != none
		EquippedTail = 1
		if IsWearingPonyTail()
			EquippedTail = 2
		endif
	endif
	;MiscUtil.PrintConsole("SLTR: Tail equipped in " + (Utility.GetCurrentRealTime() - startLoadTime) + " seconds")
EndFunction

Function EquipGag()
	Armor a
	Armor ar = PlayerRef.GetWornForm(0x00004000) as Armor
	if ar != none
		a = zlib.GetWornDevice(PlayerRef, zlib.zad_DeviousGag)	
	endif
	if (a != none) && (a.HasKeyword(KwBlockGeneric) || a.HasKeyword(KwQuestItem) || ar.HasKeyword(KwBlockGeneric) || ar.HasKeyword(KwQuestItem))
		Bridle = none
	else
		if a != none
			if ar.HasKeyword(KwLockable)
				MQ.RemoveDD(PlayerRef, a, true)
			else
				PlayerRef.UnequipItem(a, false, true)
			endif
		endif
		Bridle = MCM.BridleList.GetAt(MCM.ponyColor) as Armor
		MQ.EquipDD(PlayerRef, Bridle, zlib.zad_DeviousGag)
	endif
EndFunction

Function EquipBoots()
	Boots = none
	Armor a = zlib.GetWornDevice(PlayerRef, zlib.zad_DeviousBoots)
	if (a == none)
		Boots = MCM.PonyBootList.GetAt(MCM.ponyColor) as Armor
		MQ.EquipDD(PlayerRef, Boots, zlib.zad_DeviousBoots)
	endif
EndFunction

Function EquipLegCuffs()
	OldLegCuffs = none
	Armor a
	Armor ar = PlayerRef.GetWornForm(0x00800000) as Armor
	if ar != none
		a = zlib.GetWornDevice(PlayerRef, zlib.zad_DeviousLegCuffs)	
	endif
	if (a != none) && (a.HasKeyword(KwBlockGeneric) || a.HasKeyword(KwQuestItem) || ar.HasKeyword(KwBlockGeneric) || ar.HasKeyword(KwQuestItem))
		LegCuffs = none
	else
		if a != none
			OldLegCuffs = a
			if ar.HasKeyword(KwLockable)
				MQ.RemoveDD(PlayerRef, a, false)
			else
				PlayerRef.UnequipItem(a, false, true)
			endif
		endif
		if MCM.PonyPrance || ForcePrance
			LegCuffs = MCM.PrancingCuffsList.GetAt(MCM.ponyColor) as Armor
		else
			LegCuffs = MCM.PonyCuffsList.GetAt(MCM.ponyColor) as Armor
		endif
		MQ.EquipDD(PlayerRef, LegCuffs, zlib.zad_DeviousLegCuffs)
	endif
EndFunction

Function EquipHarness()
	OldHarness = none
	Armor a
	Armor ar = PlayerRef.GetWornForm(0x10000000) as Armor
	if ar != none
		a = zlib.GetWornDevice(PlayerRef, zlib.zad_DeviousHarness)	
	endif
	if (a != none) && (a.HasKeyword(KwBlockGeneric) || a.HasKeyword(KwQuestItem) || ar.HasKeyword(KwBlockGeneric) || ar.HasKeyword(KwQuestItem))
		Harness = none
	else
		if a != none
			OldHarness = a
			if ar.HasKeyword(KwLockable)
				MQ.RemoveDD(PlayerRef, a, false)
			else
				PlayerRef.UnequipItem(a, false, true)
			endif
		endif
		Harness = MCM.BodyHarnessesList.GetAt(MCM.ponyColor) as Armor
		MQ.EquipDD(PlayerRef, Harness, zlib.zad_DeviousHarness)
	endif
EndFunction

Function EquipAmulet()
	; Amulet was set during StripPlayer()
	if Amulet != none
		PlayerRef.EquipItem(Amulet, true, true)
	endif
EndFunction

Function EquipGear()
	; Completely strip player
	StripPlayer()
	
	; Gag
	EquipGag()
	
	; Boots
	EquipBoots()
	
	; Tail
	EquipTail()
	
	; Leg Cuffs
	EquipLegCuffs()
	
	; Harness
	EquipHarness()
	
	; Amulet
	EquipAmulet()
EndFunction

Function UnequipGear(bool redress)
	UnregisterForUpdate()
	UnregisterForUpdateGameTime()

	if Amulet != none
		PlayerRef.UnequipItem(Amulet, false, true)
		PlayerRef.RemoveItem(Amulet, 1, true)
		if OldAmulet != none
			PlayerRef.EquipItem(OldAmulet, false, true)
		endif
	endif
	if OldRing != none
		PlayerRef.EquipItem(OldRing, false, true)
	endif
	
	if Bridle != none
		MQ.RemoveDD(PlayerRef, Bridle, true)
	endif

	if Boots != none
		MQ.RemoveDD(PlayerRef, Boots, true)
	endif
	
	if (Tail != none) && EquippedTail < 3
		MQ.RemoveDD(PlayerRef, Tail, true)
		Utility.Wait(0.5)
		EquipItem(OldAnalPlug, zlib.zad_DeviousPlugAnal)
	endif
	
	if LegCuffs != none
		MQ.RemoveDD(PlayerRef, LegCuffs, true)
		Utility.Wait(0.5)
		EquipItem(OldLegCuffs, zlib.zad_DeviousLegCuffs)
	endif
	
	if Harness != none
		MQ.RemoveDD(PlayerRef, Harness, true)
		Utility.Wait(0.5)
		EquipItem(OldHarness, zlib.zad_DeviousHarness)
	endif
	
	if redress
		MQ.Redress()
	endif
EndFunction

Function EquipItem(Armor a, Keyword kwd=none)
	if a == none
		return
	endif
	if a.HasKeyword(KwLockable) || a.HasKeyword(KwInventoryDevice) 
		MQ.EquipDD(PlayerRef, a, kwd)
	else
		PlayerRef.EquipItem(a, false, true)
	endif
EndFunction