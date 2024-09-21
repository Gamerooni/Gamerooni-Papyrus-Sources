scriptName vkjCleanSweepEffect extends ActiveMagicEffect

vkjMQ Property MQ auto
Idle Property SweepIdle auto
vkjCleanSweep Property SweepQuest auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
	if SweepQuest.CanSweep()
		MQ.PlayerRef.PlayIdle(SweepIdle)
	else
		Debug.Notification("Don't keep your " + MQ.OwnerTitle + " waiting")
		Self.Dispel()
		return
	endif
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	if SweepQuest.CanSweep()
		SweepQuest.Swept()
		Debug.SendAnimationEvent(MQ.PlayerRef, "IdleForceDefaultState")
	endif
EndEvent