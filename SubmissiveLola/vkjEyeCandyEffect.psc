scriptName vkjEyeCandyEffect extends ActiveMagicEffect
;Forces the player to remain nude for a period of time.

vkjMQ property MQ auto
Keyword[] property K auto
Actor P
vkj_qDragonAssaulted property DragonQuest auto
Spell property NudityCooldownSpell auto
Spell property ExtendedEyeCandySpell auto

int myObjective
int violationmagnitude = 0
bool dragonCooldown

Event OnEffectStart(actor akTarget, actor akCaster)
	;myObjective = 106 + GetMagnitude() as int; formerly used to display different durations (no longer used)
	myObjective = 107
	MQ.SetObjectiveCompleted(myObjective, false)
	MQ.SetObjectiveDisplayed(myObjective, true)
	P = MQ.PlayerRef
	SendModEvent("SLTR_EyeCandyStart")
	RegisterForUpdate(12)
EndEvent

Event OnUpdate()
	if !MQ.IsRunning() || MQ.SuspendAll
		return
	endif

	; Suspend if a dragon is detected
	if MQ.DragonSpotted
		dragonCooldown = true
		return
	elseif dragonCooldown
		dragonCooldown = false
		Warn()
		return
	endif
	
	if P.WornHasKeyword(K[0]) || P.WornHasKeyword(K[1]) || P.WornHasKeyword(K[2]) || P.WornHasKeyword(K[3]) || P.WornHasKeyword(K[4])
		Warn()
		if violationmagnitude == 0
			violationmagnitude = 1
		endif
		MQ.ReactOnViolation(violationmagnitude)
		if MQ.MCM.StripOnNudeP
			Utility.Wait(1)
			MQ.StripOnNudityViolation()
		endif
	else 
		violationmagnitude = 0
	endif
EndEvent

Function Warn()
	MQ.DisplayWarning("You must remain naked for your " + MQ.OwnerTitle + "'s pleasure.")
EndFunction

Event OnEffectFinish(actor akTarget, actor akCaster)
	if MQ.MCM.ExtendedEyeCandy
		P.AddSpell(ExtendedEyeCandySpell)
	else
		MQ.SetObjectiveCompleted(myObjective, true)
		MQ.SetObjectiveDisplayed(myObjective, false)
		NudityCooldownSpell.Cast(P, P)
		SendModEvent("SLTR_EyeCandyEnd")
	endif
EndEvent