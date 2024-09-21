Scriptname vkjBlindHoodControl extends Quest

vkjMCM Property MCM Auto
vkjMQ Property MQ Auto
Actor Property PlayerRef Auto
Armor Property Blindfold Auto Hidden
Keyword Property KwLockable Auto

Bool Property DragonPause Auto
int Property DragonCooldown Auto
Bool Property OwnerWasThreatened Auto

Event OnUpdate()
EndEvent

int violationmagnitude = 0

State Disabled
	Event OnBeginState()
		MCM.SetNextLightsOut()
		UnregisterForUpdate()
		PlayerRef.UnEquipItem(Blindfold, abSilent=true)
		PlayerRef.RemoveItem(Blindfold, 99, true)
	EndEvent
EndState

Function GetAndEquip()
	if MCM.blinds == MCM.blindForm.GetSize()
		MCM.blinds = 0
	endif
	Blindfold = MCM.blindForm.GetAt(MCM.blinds) as Armor
	PlayerRef.EquipItem(Blindfold, abSilent=true)
endfunction

Function FreePlayerBonds()
	violationmagnitude = 0
	Debug.Notification("Your " + MQ.OwnerTitle + " releases you from your blindfold")
	PlayerRef.UnEquipItem(Blindfold, abSilent=true)
EndFunction

Function RestorePlayerBonds()
	Debug.Notification("With the threat gone, you must wear your blindfold")
	GetAndEquip()
EndFunction

State Active
	Event OnBeginState()
		GetAndEquip()
		RegisterForSleep()
		RegisterForSingleUpdate(15)
		RegisterForSingleUpdateGameTime(24); Quest duration
	EndEvent

	Event OnUpdateGameTime()
		SetStage(20); End quest
	EndEvent

	Event OnUpdate()
		RegisterForSingleUpdate(15)
		
		if MQ.SuspendAll || MQ.IsPlayerHavingSex() || UI.IsMenuOpen("Dialogue Menu") || !Game.IsMenuControlsEnabled() || MCM.pWereWolf()
			violationmagnitude = 0
			return
		endif
		
		bool isDay = IsDay()
		
		if MQ.DragonSpotted
			violationmagnitude = 0
			DragonCooldown = 1
			return
		elseif DragonCooldown > 0
			DragonCooldown = 0
			if isDay
				if MQ.IsOwnerThreatened()
					OwnerWasThreatened = true
				else
					RestorePlayerBonds()
				endif
			endif
			return
		endif
		
		if !OwnerWasThreatened && MQ.OwnerRef.IsInCombat()
			if MQ.IsOwnerThreatened()
				OwnerWasThreatened = true
				if isDay
					FreePlayerBonds()
				endif
			endif
			RegisterForSingleUpdate(5)
			return
		elseif OwnerWasThreatened
			if MQ.OwnerRef.IsInCombat() || MQ.OwnerRef.IsBleedingOut()
				RegisterForSingleUpdate(5)
				return
			else; Threat has ended and owner has exited combat
				OwnerWasThreatened = false
				if isDay
					RestorePlayerBonds()
				endif
				return
			endif
		endif
		
		bool isWearingBlindfold = (PlayerRef.GetWornForm(0x02000000) != none)
		if !isWearingBlindfold && isDay
			if PlayerRef.WornHasKeyword(MQ.zlib.zad_DeviousHeavyBondage)
				MQ.DisplayWarning("You must wear your blindfold during the day")
				GetAndEquip()
			else
				HandleViolation("You must wear your blindfold during the day")
			endif
			
		elseif isWearingBlindfold && !isDay
			if !IsLockingBlindfold(); Player might be unable to remove a blindfold that got locked on
				HandleViolation("You must remove your blindfold at night")
			endif
		else 
			violationmagnitude = 0
		endif
	EndEvent
EndState

bool Function IsDay()
	float hour = vkjLib.GetHourOfDay()
	return (hour >= 7 && hour < 18); 7 AM to 6 PM
EndFunction

Function HandleViolation(string msg)
	MQ.DisplayWarning(msg)
	; Only punish after initial violation and warning
	if violationmagnitude > 0
		MQ.ReactOnViolation(violationmagnitude)
	endif
	violationmagnitude += 1
EndFunction

bool Function IsLockingBlindfold()
	Form item = PlayerRef.GetWornForm(0x02000000); slot 55
	if item != none
		Armor a = item as Armor
		if a.HasKeywordString("zad_Lockable")
			return true
		endif
	endif
	return false
EndFunction

Event OnSleepStart(float afSleepStartTime, float afDesiredSleepEndTime)
	; Reduce score for every hour slept if during the day (7 AM to 6 PM)
	float hour = vkjLib.GetHourOfDay()
	if hour >= 7 && hour < 18
		float hoursToSleep = (afDesiredSleepEndTime - afSleepStartTime) * 24.0
		float hoursLeftInDay = 18.0 - hour
		if hoursLeftInDay < hoursToSleep; Don't penalize sleeping time after daylight
			hoursToSleep = hoursLeftInDay
		endif
		hoursToSleep += 2.0
		MQ.UpdateSubmissionScore(-1.0 * hoursToSleep)
	endif
EndEvent

Function DragonDetected()
	if IsDay()
		FreePlayerBonds()
	endif
EndFunction