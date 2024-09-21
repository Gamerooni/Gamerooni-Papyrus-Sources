ScriptName zadShockVibEffect extends ActiveMagicEffect

; Libraries
zadLibs Property Libs Auto
SexlabFramework Property Sexlab Auto

Bool Property Terminate Auto
actor Property Target Auto


Function Maintenance()
	UnregisterForModEvent("DeviceVibrateEffectStop")
	RegisterForModEvent("DeviceVibrateEffectStop", "OnVibrateStop")
EndFunction



Event OnVibrateStop(string eventName, string argString, float argNum, form sender)
	libs.Log("OnVibrateStop("+argString+", "+Target.GetLeveledActorBase().GetName()+")")
	if Target && argString == Target.GetLeveledActorBase().GetName()
		if Target == libs.playerRef
			libs.NotifyPlayer("Your plugs jolt you with an electric shock!")
			libs.Log("zadShockVibEffect: ShockActor")
		Else
			libs.NotifyNPC(Target.GetName() + " squirms uncomfortably as the plugs within her let out a painful jolt!")
		EndIf
		libs.ShockEffect.RemoteCast(Target, Target, Target)
		libs.Aroused.UpdateActorExposure(Target, Utility.RandomInt(10,20) * -1)
	EndIf
EndEvent


Event OnEffectStart(Actor akTarget, Actor akCaster)
	if akTarget == libs.PlayerRef
		libs.Log("OnEffectStart(ShockVibEffect)")
		Target = akTarget
		Terminate = False
		Maintenance()
	EndIf
EndEvent


Event OnEffectFinish(Actor akTarget, Actor akCaster)
	Terminate = True
	libs.Log("OnEffectFinish(ShockVibEffect)")
EndEvent


Event OnCellAttach()
	if Target
		Maintenance()
	EndIf
EndEvent

Event OnLoad()
	if Target
		Maintenance()
	EndIf
EndEvent


Event OnUnload()
	UnregisterForModEvent("DeviceVibrateEffectStop")
EndEvent
