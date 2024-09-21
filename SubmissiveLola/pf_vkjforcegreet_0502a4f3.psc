;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname PF_vkjForceGreet_0502A4F3 Extends Package Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(Actor akActor)
;BEGIN CODE
numTimes = 0
RegisterForSingleUpdate(3)
;StartMessage.Show()
if !MQ.SceneLocked 
	MQ.DisplayOwnerBeckons(StartMessage)
endif
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(Actor akActor)
;BEGIN CODE
if ShowDebug
	MiscUtil.PrintConsole("SLTR: PF_vkjForceGreet - End")
endif
numTimes = 99
UnregisterForUpdate()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Function OnUpdate()
	if ShowDebug
		MiscUtil.PrintConsole("SLTR: PF_vkjForceGreet - OnUpdate")
	endif

	if MQ.OwnerRef.IsInDialogueWithPlayer()
		; It appears that a competing force greeting can cause the On End event for the package to not trigger,
		; so detect if the force greeting *should* have finished and end these impatient-owner messages.
		;Debug.Notification("Forcing impatient-owner messages to stop")
		if ShowDebug
			MiscUtil.PrintConsole("SLTR: Forcing impatient-owner messages to stop")
		endif
		return
	endif

	if MQ.IsPlayerBusy(ignoreScene=true)
		if ShowDebug
			MiscUtil.PrintConsole("SLTR: PF_vkjForceGreet - Player is busy")
		endif
		RegisterForSingleUpdate(6)
		return
	endif
	
	; Player used fast travel (or got whisked away by another mod)
	if !MQ.PlayerRef.GetCurrentLocation().IsSameLocation(MQ.OwnerRef.GetCurrentLocation())
		if MQ.PlayerRef.GetDistance(MQ.OwnerRef) > 5000
			RegisterForSingleUpdate(5); Owner might still not catch the PC
			MQ.MoveNpcBehindPlayer(MQ.OwnerRef, 200)
			return
		endif
	endif
	
	if cyclesSkipped > 2
		cyclesSkipped = 0
		if numTimes == 0
			MQ.SendRunicCircleUpdate("Beckon")
			MQ.DisplayWarning("Your " + MQ.OwnerTitle + " beckons to you impatiently")
		elseif numTimes == 1
			MQ.SendRunicCircleUpdate("Beckon")
			MQ.DisplayWarning("Your " + MQ.OwnerTitle + " really wants to talk to you")
		elseif numTimes == 2
			MQ.SendRunicCircleUpdate("Beckon")
			MQ.DisplayWarning("Your " + MQ.OwnerTitle + " wants to talk to you.  NOW.")
		elseif numTimes == 3
			MQ.SendRunicCircleUpdate("Beckon")
			MQ.DisplayWarning("Your " + MQ.OwnerTitle + " is angry with you!")
			MQ.PunishMinimal()
			; Interrupt PC movement
			if MQ.PlayerRef.IsOnMount()
				MQ.PlayerRef.Dismount()
				Utility.Wait(2)
			else
				MQ.PlayerRef.SetDontMove(true)
				Utility.Wait(0.5)
				MQ.PlayerRef.SetDontMove(false)
			endif
			MQ.MoveNpcBehindPlayer(MQ.OwnerRef, 100)
			return
		endif
		numTimes += 1
	else
		cyclesSkipped += 1
	endif
	
	RegisterForSingleUpdate(3)
EndFunction

Message Property StartMessage Auto
vkjMQ Property MQ Auto
int numTimes = 0
int cyclesSkipped = 0
bool ShowDebug = false