scriptName zadEventGloves extends zadBaseEvent

bool Function HasKeywords(actor akActor)
	if !libs.AllowGenericEvents(akActor, libs.zad_DeviousGloves)
		return false
	else
		return (akActor.WornHasKeyword(libs.zad_DeviousGloves) )
	endif
EndFunction

Function Execute(actor akActor)
	if (akActor == libs.PlayerRef)
		libs.Moan(akActor)
		libs.NotifyPlayer("A sudden loss of grip reminds you of the gloves you are wearing.")
	endif
EndFunction
