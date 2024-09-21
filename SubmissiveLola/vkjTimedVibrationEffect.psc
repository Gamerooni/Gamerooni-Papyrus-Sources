ScriptName vkjTimedVibrationEffect extends ActiveMagicEffect

zadLibs Property zlib auto

Event OnEffectStart(actor akTarget, actor akCaster)
	;Debug.Notification("Vib Timer started with duration " + GetDuration())
EndEvent

Event OnEffectFinish(actor akTarget, actor akCaster)
	;Debug.Notification("Stop vibrating")
	zlib.StopVibrating(akTarget)
EndEvent