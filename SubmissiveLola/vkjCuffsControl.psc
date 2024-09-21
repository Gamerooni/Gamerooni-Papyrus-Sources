Scriptname vkjCuffsControl extends Quest  

vkjMCM Property MCM Auto
vkjMQ Property MQ Auto
Actor Property PlayerRef Auto
Keyword Property KwTown Auto
Keyword Property KwCity Auto
Int Property UpdateInterval=15 auto
zadlibs Property zlib auto

Armor ArmCuffs
Armor LegCuffs

Function Fragment_0(); Stage 0
	SetStage(10)
EndFunction

Function Fragment_1(); Stage 10
	GoToState("Active")
EndFunction

Function Fragment_2(); Stage 20
	GoToState("Disabled")
	CompleteAllObjectives()
	Stop()
EndFunction

Event DDITerminate()
	SetStage(20)
EndEvent

Auto State Disabled
	Event OnBeginState()
		MQ.ClearDailyBonusForCuffs()
		UnregisterForUpdate()
		UnregisterForModEvent("DDI_Quest_SigTerm")
		UnequipDevices()
	EndEvent
	
	Event OnUpdate()
	EndEvent
EndState

State Active
	Event OnBeginState()
		RegisterForSingleUpdate(UpdateInterval)
		RegisterForModEvent("DDI_Quest_SigTerm", "DDITerminate")
		EquipDevices()
	EndEvent

	Event OnUpdate()
		RegisterForSingleUpdate(UpdateInterval)
		if MQ.SuspendAll || MQ.IsPlayerHavingSex() || (PlayerRef.IsInFaction(zlib.zadAnimatingFaction)) || !Game.IsMovementControlsEnabled() || UI.IsMenuOpen("Dialogue Menu") || (PlayerRef.GetCurrentScene() != none) || MCM.pWereWolf()
			return
		endif
		
		if MQ.GetStage() != 10
			GoToState("Disabled")
			Stop()
		endif

		; Only required in towns
		Location loc = PlayerRef.GetCurrentLocation()
		if (loc == none) || (!loc.HasKeyword(KwTown) && !loc.HasKeyword(KwCity))
			return
		endif

		if (MCM.RequiredCuffs == 1) && PlayerRef.WornHasKeyword(zlib.zad_DeviousArmCuffs) 
			return			
		elseif (MCM.RequiredCuffs == 2) && PlayerRef.WornHasKeyword(zlib.zad_DeviousLegCuffs)
			return			
		elseif (MCM.RequiredCuffs == 3) && PlayerRef.WornHasKeyword(zlib.zad_DeviousArmCuffs) && PlayerRef.WornHasKeyword(zlib.zad_DeviousLegCuffs)
			return				
		endif
		
		if MCM.RequiredCuffs == 1
			Debug.Notification("You must wear arm cuffs.")
		elseif MCM.RequiredCuffs == 2 
			Debug.Notification("You must wear leg cuffs.")
		elseif MCM.RequiredCuffs == 3
			Debug.Notification("You must wear arm & leg cuffs.")
		endif
		
		EquipDevices()
	EndEvent
EndState


Function UnequipDevices()
	if PlayerRef.WornHasKeyword(zlib.zad_DeviousArmCuffs)
		UnequipDevice(zlib.zad_DeviousArmCuffs, ArmCuffs)
	endif
	if PlayerRef.WornHasKeyword(zlib.zad_DeviousLegCuffs)
		UnequipDevice(zlib.zad_DeviousLegCuffs, LegCuffs)
	endif
	ArmCuffs = none
	LegCuffs = none
EndFunction

; We only unequip the cuffs that we previously equipped, so players can't change cuff settings to get free device removal.
Function UnequipDevice(Keyword kwd, Armor device)
	Armor curDevice = zlib.GetWornDevice(PlayerRef, kwd); The one we equipped in the past might have changed.
	if device == curDevice
		zlib.UnlockDevice(PlayerRef, device, destroyDevice=true)
	endif
EndFunction

Function Swap()
	RegisterForSingleUpdate(UpdateInterval); Restart the update cycle to allow maximum time for the swap.
	UnequipDevices()
	EquipDevices()
EndFunction

Function EquipDevices()
	if (MCM.RequiredCuffs == 1 || MCM.RequiredCuffs == 3 || MCM.RequiredCuffs == 4) && !PlayerRef.WornHasKeyword(zlib.zad_DeviousArmCuffs) 
		ArmCuffs = MCM.ArmCuffsList.GetAt(MCM.ArmCuffs) as Armor
		zlib.LockDevice(PlayerRef, ArmCuffs)
	endif
	if (MCM.RequiredCuffs == 2 || MCM.RequiredCuffs == 3 || MCM.RequiredCuffs == 4) && !PlayerRef.WornHasKeyword(zlib.zad_DeviousLegCuffs)
		LegCuffs = MCM.LegCuffsList.GetAt(MCM.LegCuffs) as Armor
		zlib.LockDevice(PlayerRef, LegCuffs)
	endif
EndFunction