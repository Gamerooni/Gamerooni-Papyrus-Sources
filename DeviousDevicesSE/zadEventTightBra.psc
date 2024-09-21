scriptName zadEventTightBra extends zadBaseEvent

bool Function HasKeywords(actor akActor)
	if !libs.AllowGenericEvents(akActor, libs.zad_DeviousBra)
		return false
	else
		return (akActor.WornHasKeyword(libs.zad_DeviousBra) )
	endif
EndFunction

Function Execute(actor akActor)
	libs.Moan(akActor)
	if libs.Aroused.GetActorExposure(akActor) >= libs.ArousalThreshold("Horny")
		libs.NotifyPlayer("Your hard nipples rub uncomfortably against the cold steel of the Chastity Bra.")
		libs.UpdateExposure(akActor, 0.10)
	else
		libs.NotifyPlayer("Your Chastity Bra uncomfortably restricts your movements.")
	EndIf	
EndFunction
