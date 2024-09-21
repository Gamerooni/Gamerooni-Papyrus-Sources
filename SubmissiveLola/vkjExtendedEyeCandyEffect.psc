scriptName vkjExtendedEyeCandyEffect extends ActiveMagicEffect
;Forces the player to remain nude for a period of time.

vkjMQ property MQ auto
Keyword[] property KwArmor auto
Actor P
Quest property DragonQuest auto
Spell property NudityCooldownSpell auto
Spell property ExtendedEyeCandySpell auto

int myObjective
int violationMagnitude = 0
bool dragonCooldown

Event OnEffectStart(actor akTarget, actor akCaster)
	if MQ.IsObjectiveDisplayed(107)
		myObjective = 107
	elseif MQ.IsObjectiveDisplayed(108)
		myObjective = 108
	elseif MQ.IsObjectiveDisplayed(109)
		myObjective = 109
	elseif MQ.IsObjectiveDisplayed(110)
		myObjective = 110
	endif

	MQ.SetObjectiveDisplayed(111, true)
	P = MQ.PlayerRef
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
	
	if P.WornHasKeyword(KwArmor[0]) || P.WornHasKeyword(KwArmor[1]) || P.WornHasKeyword(KwArmor[2]) || P.WornHasKeyword(KwArmor[3]) || P.WornHasKeyword(KwArmor[4])
		Warn()
		if violationMagnitude == 0
			violationMagnitude = 1
		endif
		MQ.ReactOnViolation(violationMagnitude)
		if MQ.MCM.StripOnNudeP
			Utility.Wait(1)
			MQ.StripOnNudityViolation()
		endif
	else 
		violationMagnitude = 0
	endif
EndEvent

Function Warn()
	Debug.Notification("You must remain naked for your " + MQ.OwnerTitle + "'s pleasure.")
EndFunction

Event OnEffectFinish(actor akTarget, actor akCaster)
	MQ.SetObjectiveCompleted(myObjective, true)
	MQ.SetObjectiveDisplayed(myObjective, false)
	MQ.SetObjectiveCompleted(111, true)
	MQ.SetObjectiveDisplayed(111, false)
	NudityCooldownSpell.Cast(P, P)
	SendModEvent("SLTR_EyeCandyEnd")
EndEvent