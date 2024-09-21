scriptName vkjDragonDeathEffect extends ActiveMagicEffect
{ Vibrate player strongly on dragon death if wearing vibrating devices }

Actor Property PlayerRef auto
vkjMQ Property MQ auto
zadLibs Property zlib auto
Quest Property KillDragonQuest auto

MQKillDragonScript killDragonScript
bool isAbsorbing
bool endVib


Event OnEffectStart(actor akTarget, actor akCaster)
	killDragonScript = KillDragonQuest as MQKillDragonScript
	RegisterForSingleUpdate(6)
EndEvent

Event OnUpdate()
	RegisterForSingleUpdate(6)
	if MQ.SuspendAll || !KillDragonQuest.IsRunning()
		return
	endif
	
	if endVib
		endVib = false
		zlib.StopVibrating(PlayerRef)
	endif

	if isAbsorbing
		if killDragonScript.bIsAbsorbing
			MQ.UpdateExposure(PlayerRef, 20)
		else
			; Dragon soul absorption ended
			isAbsorbing = false
			Debug.Notification("Your vibrating devices pulse with power")
			zlib.SetVibrating(PlayerRef, 120); Ensure that it doesn't end too soon
			endVib = true
			RegisterForSingleUpdate(30)
		endif
	else
		if killDragonScript.bIsAbsorbing
			; Dragon soul absorption has commenced
			if !PlayerRef.IsInCombat() && MQ.vibrateCheck(PlayerRef)
				isAbsorbing = true
				RegisterForSingleUpdate(11)
				Utility.Wait(5); Absorption effects take a few seconds to start
				; Get the player fired up
				if PlayerRef.GetFactionRank(MQ.SLAFaction) < 90
					zlib.Aroused.SetActorExposure(PlayerRef, 90)
				endif
				Debug.Notification("Your vibrating devices go wild!")
				zlib.VibrateEffect(PlayerRef, vibStrength=5, duration=120, teaseOnly=false, silent=true)
			endif
		endif
	endif
EndEvent