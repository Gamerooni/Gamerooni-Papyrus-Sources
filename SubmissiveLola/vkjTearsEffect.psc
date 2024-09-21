ScriptName vkjTearsEffect extends ActiveMagicEffect

vkjMQ Property MQ auto
int mag

Event OnEffectStart(actor akTarget, actor akCaster)
	MQ.ApplyTears(GetMagnitude() as int)
	mag = GetMagnitude() as int; We have to store this because with Skyrim, nothing is ever simple.  When OnEffectFinish fires, GetMagnitude() is zero.
EndEvent

Event OnEffectFinish(actor akTarget, actor akCaster)
	MQ.RemoveTears(mag)
EndEvent