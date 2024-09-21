scriptName vkjPlayerKneelEffect extends ActiveMagicEffect

vkjMQ Property MQ auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
	if MQ.SceneLocked
		return
	endif
	
	if MQ.IsKneeling
		MQ.IsKneeling = false
		MQ.EndKneel()
	else
		MQ.IsKneeling = true
		MQ.PlayerKneel(false)
	endif
EndEvent