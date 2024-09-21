Scriptname vkjDragonAssaulted extends Quest  

Function DropRestrictions()
	if MQ.SuspendAll
		return
	endif

	if MQ.DragonSpotted; we've already seen the dragon
		MQ.DragonDetected()
		return
	endif

	Debug.Notification("It's a dragon!")
	MQ.DragonDetected()
	;AlertSound.Play(MQ.PlayerRef)
	
	if ArmorRestriction.GetStage() > 0
		ArmorRestriction.DragonDetected()
	endif
	if EnoughAction.GetStage() == 10
		EnoughAction.DragonDetected()
	endif
	if CarelessHands.GetStage() == 10
		CarelessHands.DragonDetected()
	endif
	if LightsOut.GetStage() == 10
		LightsOut.DragonDetected()
	endif
	if ShutUp.GetStage() == 10
		ShutUp.DragonDetected()
	endif
	If PonyExpress.IsRunning() && PonyExpress.GetStage() < 80
		PonyExpress.SetStage(110)
	endif
	
	SendModEvent("SLTR_DragonAttack"); notify any extensions
EndFunction

Sound Property AlertSound Auto
vkjMQ Property MQ Auto
vkjArmorRestriction Property ArmorRestriction Auto  
vkjDeviceControl Property ShutUp Auto  
vkjDeviceControl Property EnoughAction Auto
vkjDeviceControl Property CarelessHands Auto
vkjBlindHoodControl Property LightsOut Auto
Quest Property PonyExpress Auto