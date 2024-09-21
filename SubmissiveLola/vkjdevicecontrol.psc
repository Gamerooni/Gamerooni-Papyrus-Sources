Scriptname vkjDeviceControl extends Quest  

vkjMCM Property MCM Auto
vkjMQ Property MQ Auto
Actor Property PlayerRef Auto
Armor Property Device Auto
Armor Property DeviceR Auto
Bool Property KeepDevice = false Auto
Keyword Property KwWornDevice Auto
Keyword Property KwWornDeviceAlt Auto
Keyword Property ExcludedRaceKeyword Auto

Int Property UpdateInterval Auto
Int Property MCMType = 0 Auto
Bool Property DragonPause Auto
int Property DragonCooldown Auto
Bool Property OwnerWasThreatened Auto
zadlibs property zlib auto

Event OnUpdate()
EndEvent

int violationmagnitude = 0

Function DelayViolation()
	violationmagnitude = -2
EndFunction

Auto State Disabled
	Event OnBeginState()
		UnregisterForUpdate()
		Keyword kwd = GetDDKeyword()
		Device = zlib.GetWornDevice(PlayerRef, kwd); The one we equipped in the past might have changed
		if Device != none
			if Device.HasKeyword(zlib.zad_DeviousCollar) && (Device.HasKeyword(zlib.zad_BlockGeneric) || Device.HasKeyword(zlib.zad_QuestItem))
				; Leave the collar alone
			else
				zlib.UnlockDevice(PlayerRef, Device, destroyDevice=true)
			endif
		endif
	EndEvent
EndState

Function Swapout()
	Keyword kwd = GetDDKeyword()
	Device = zlib.GetWornDevice(PlayerRef, kwd); The one we equipped in the past might have changed
	RegisterForSingleUpdate(UpdateInterval); restart the update cycle to allow maximum time for the swap
	zlib.UnlockDevice(PlayerRef, Device, destroyDevice=true)
	Utility.Wait(0.5)
	GetAndEquip()
Endfunction

Function GiveCollar()
	int i = MCM.collars
	int numCollars = MCM.collarForm.GetSize(); form doesn't include Random
	if i == numCollars
		i = Utility.RandomInt(0, (numCollars - 2)); skip custom
	endif
	Device = MCM.collarForm.GetAt(i) as armor
	PlayerRef.Additem(Device)
Endfunction

Function GetAndEquip()
	if MCMType > 0
		FormList newForm
		; Collars
		if MCMType == 1
			if PlayerRef.WornHasKeyword(KwWornDevice) || PlayerRef.WornHasKeyword(KwWornDeviceAlt)
				return
			endif

			int numCollars = MCM.collarForm.GetSize(); form doesn't include Random
			newForm = MCM.collarForm
			if MCM.collars == numCollars; random
				int rand = Utility.RandomInt(0, (numCollars - 2)); skip custom
				Device = newForm.GetAt(rand) as Armor
				Utility.Wait(0.5); Need to wait a split second because otherwise the randomizer sometimes makes duplicate items.
			else
				Device = newForm.GetAt(MCM.collars) as Armor
			endif
		endif
		; Gags
		if MCMType == 2
			int numGags = MCM.gagForm.GetSize(); form doesn't include Random
			newForm = MCM.gagForm
			if MCM.gags == numGags; random
				int rand = Utility.RandomInt(0, (numGags - 2)); skip custom
				Device = newForm.GetAt(rand) as Armor
				Utility.Wait(0.5)
			else
				Device = newForm.GetAt(MCM.gags) as Armor
			endif
		endif
		; Heavy Arm Restraints
		if MCMType == 3
			Device = MCM.aRestraintForm.GetAt(MCM.aRestraints) as Armor
		endif
		; Rope Harnesses
		if MCMType == 4
			newForm = MCM.RopeHarnessesList
			int numHarnesses = MCM.RopeHarnessesList.GetSize(); list doesn't include Random
			if MCM.RopeHarness == numHarnesses; random
				int rand = Utility.RandomInt(0, (numHarnesses - 1)); skip random
				Device = newForm.GetAt(rand) as Armor
				Utility.Wait(0.5)
			else
				Device = newForm.GetAt(MCM.RopeHarness) as Armor
			endif
		endif
		
	endif
	
	zlib.LockDevice(PlayerRef, Device)
EndFunction

bool Function RemoveInCombat()
	return (MCMType == 2) || (MCMType == 3)
EndFunction

Function DragonDetected()
	if RemoveInCombat()
		FreePlayerBonds()
	endif
EndFunction

Keyword Function GetDDKeyword()
	if MCMType == 1
		return zlib.zad_DeviousCollar
	elseif MCMType == 2
		return zlib.zad_DeviousGag
	elseif MCMType == 3
		return zlib.zad_DeviousHeavyBondage
	elseif MCMType == 4
		return zlib.zad_DeviousHarness
	endif
EndFunction

string Function GetDeviceName()
	if Device != none
		string devName = Device.GetName()
		if devName != ""
			return devName
		endif
	endif
	if MCMType == 1
		return "Collar"
	elseif MCMType == 2
		return "Gag"
	elseif MCMType == 3
		return "Hand/Arm Restraint"
	elseif MCMType == 4
		return "Harness"
	endif
	return "restraint"
EndFunction

Function FreePlayerBonds()
	violationmagnitude = 0
	Debug.Notification("Your " + MQ.OwnerTitle + " releases you from your " + GetDeviceName())
	zlib.UnlockDevice(PlayerRef, Device)
EndFunction

Function RestorePlayerBonds()
	Debug.Notification("With the threat gone, you must wear your " + GetDeviceName())
	zlib.LockDevice(PlayerRef, Device)
EndFunction

State Active
	Event OnBeginState()
		GetAndEquip()
		RegisterForSingleUpdate(UpdateInterval)
	EndEvent

	Event OnUpdate()
		RegisterForSingleUpdate(UpdateInterval)
		if MQ.SuspendAll || MQ.IsPlayerHavingSex() || (PlayerRef.IsInFaction(zlib.zadAnimatingFaction)) || !Game.IsMovementControlsEnabled() || UI.IsMenuOpen("Dialogue Menu") || (PlayerRef.GetCurrentScene() != none) || MCM.pWereWolf()
			return
		endif
		
		if MQ.DragonSpotted
			violationmagnitude = 0
			DragonCooldown = 1
			return
		elseif DragonCooldown > 0
			DragonCooldown = 0
			if RemoveInCombat()
				if MQ.IsOwnerThreatened()
					OwnerWasThreatened = true
				else
					Debug.Notification("With the dragon gone, you must wear your " + GetDeviceName())
					zlib.LockDevice(PlayerRef, Device)
				endif
			endif
			return
		endif
			
		if RemoveInCombat()
			if !OwnerWasThreatened && MQ.OwnerRef.IsInCombat()
				if MQ.IsOwnerThreatened()
					OwnerWasThreatened = true
					FreePlayerBonds()
				endif
				RegisterForSingleUpdate(5)
				return
			elseif OwnerWasThreatened
				if MQ.OwnerRef.IsInCombat() || MQ.OwnerRef.IsBleedingOut()
					RegisterForSingleUpdate(5)
					return
				else; Threat has ended and owner has exited combat
					OwnerWasThreatened = false
					RestorePlayerBonds()
					return
				endif
			endif
		endif

		if MQ.GetStage() != 10
			GoToState("Disabled")
			Stop()
		endif

		if MQ.ForcegreetAllowed == 0
			return
		endIf

		if ExcludedRaceKeyword
			if PlayerRef.GetRace().HasKeyword(ExcludedRaceKeyword)
				return
			endif
		endif

		if PlayerRef.WornHasKeyword(KwWornDevice) || PlayerRef.WornHasKeyword(KwWornDeviceAlt)
			violationmagnitude = 0
			return
		endif

		GetAndEquip()

		if MCMType == 1; Collar
			string msg = "You feel something around your throat.  Your " + GetDeviceName() + " is again locked on!"
			if MQ.GetScore() < 50
				msg += "  Your heart sinks as you realize it will take more than escaping from a collar to evade your enslavement."
			else
				msg += "  You understand that it's best this way.  A slave should have a collar."
			endif
			Debug.MessageBox(msg)
		else
			MQ.DisplayWarning("You must wear your " + GetDeviceName())
		endif

		violationmagnitude += 1; With auto reequipping, punishment will now be very rare.
		if violationmagnitude > 1
			MQ.ReactOnViolation(violationmagnitude - 1)
		endif
	EndEvent
EndState