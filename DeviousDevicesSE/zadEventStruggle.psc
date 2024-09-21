scriptName zadEventStruggle extends zadBaseEvent

Float EventCooldown = 0.0

bool Function HasKeywords(actor akActor)
	; don't play the animation in combat
	if akActor.IsInCombat() 
		return false
	Endif
	if Utility.GetCurrentRealTime() < Eventcooldown || akActor.IsWeaponDrawn()
		Return False
	Else	 
		; no wrist restraints for now. I will add them later! Make sure to give them priority!
		return (akActor.WornHasKeyword(libs.zad_Lockable) && !akActor.WornHasKeyword(libs.zad_DeviousHeavyBondage))
	EndIf
EndFunction

Function Execute(actor akActor)
	if libs.IsAnimating(akActor)
		return
	EndIf
	; If Papyrus had dynamic arrays, I wouldn't have to write ugly code like this...Meh!
	String[] struggleStrings = new String[50]  ; increment that in case there will ever be more than 50 struggle anims!
	int len = 0
	If akActor.WornHasKeyword(libs.zad_DeviousGag) || akActor.WornHasKeyword(libs.zad_DeviousCollar)
		struggleStrings[len] = "ft_struggle_gag_1"
		len += 1
	EndIf
	If akActor.WornHasKeyword(libs.zad_DeviousBlindfold)
		struggleStrings[len] = "ft_struggle_blindfold_1"
		len += 1
	EndIf
	If akActor.WornHasKeyword(libs.zad_DeviousBoots)
		struggleStrings[len] = "ft_struggle_boots_1"
		len += 1
	EndIf
	If (akActor.WornHasKeyword(libs.zad_DeviousGloves) || akActor.WornHasKeyword(libs.zad_DeviousSuit)) && !akActor.WornHasKeyword(libs.zad_DeviousStraitJacket)
		struggleStrings[len] = "ft_struggle_gloves_1"
		len += 1
	EndIf
	If akActor.WornHasKeyword(libs.zad_DeviousHood)
		struggleStrings[len] = "ft_struggle_head_1"
		len += 1
	EndIf
	If akActor.WornHasKeyword(libs.zad_DeviousBelt)
		if Utility.RandomInt(1,2) == 1
			struggleStrings[len] = "DDChastityBeltStruggle01"
		else
			struggleStrings[len] = "DDChastityBeltStruggle02"
		endif
			len += 1
	EndIf
	If akActor.WornHasKeyword(libs.zad_DeviousArmbinderElbow)
		if akActor.WornHasKeyword(libs.zad_DeviousHobbleSkirt) && !akActor.WornHasKeyword(libs.zad_DeviousHobbleSkirtRelaxed)
			if Utility.RandomInt(1,2) == 1
				struggleStrings[len] = "DDHobElbStruggle01"
			else
				struggleStrings[len] = "DDHobElbStruggle02"
			endif
			len += 1
		else
			int rnd = Utility.RandomInt(1,5)
			if rnd == 1
				struggleStrings[len] = "DDRegElbStruggle01"
			elseif rnd == 2
				struggleStrings[len] = "DDRegElbStruggle02"
			elseif rnd == 3
				struggleStrings[len] = "DDRegElbStruggle03"
			elseif rnd == 4
				struggleStrings[len] = "DDRegElbStruggle04"
			elseif rnd == 5
				struggleStrings[len] = "DDRegElbStruggle05"
			endif
			len += 1
		endif
	endif
	If (akActor.WornHasKeyword(libs.zad_DeviousArmbinder) || akActor.WornHasKeyword(libs.zad_DeviousStraitJacket)) && !akActor.WornHasKeyword(libs.zad_DeviousArmbinderElbow)
		if akActor.WornHasKeyword(libs.zad_DeviousHobbleSkirt) && !akActor.WornHasKeyword(libs.zad_DeviousHobbleSkirtRelaxed)
			if Utility.RandomInt(1,2) == 1
				struggleStrings[len] = "DDHobArmbStruggle01"
				len += 1
			else
				struggleStrings[len] = "DDHobArmbStruggle02"
				len += 1
			endif
		else
			int rnd = Utility.RandomInt(1,5)
			if rnd == 1
				struggleStrings[len] = "DDRegArmbStruggle01"
			elseif rnd == 2
				struggleStrings[len] = "DDRegArmbStruggle02"
			elseif rnd == 3
				struggleStrings[len] = "DDRegArmbStruggle03"
			elseif rnd == 4
				struggleStrings[len] = "DDRegArmbStruggle04"
			elseif rnd == 5
				struggleStrings[len] = "DDRegArmbStruggle05"
			endif
			len += 1
		endif
	endif
	
	
	; sanity check
	If len == 0
		return
	EndIf
	Eventcooldown = Utility.GetCurrentRealTime() + 300 ; add a 5 min real time cooldown
	bool[] cameraState = libs.StartThirdPersonAnimation(akActor, struggleStrings[Utility.RandomInt(0, (len - 1) )], true)
	Utility.Wait(5)
	libs.Pant(libs.PlayerRef)
	Utility.Wait(5)
	libs.EndThirdPersonAnimation(akActor, cameraState, true)
	libs.SexlabMoan(libs.PlayerRef)
EndFunction