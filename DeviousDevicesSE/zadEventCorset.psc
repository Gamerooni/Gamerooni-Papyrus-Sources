scriptName zadEventCorset extends zadBaseEvent

bool Function HasKeywords(actor akActor)
	if !libs.AllowGenericEvents(akActor, libs.zad_DeviousCorset)
		return false
	else
		return (akActor.WornHasKeyword(libs.zad_DeviousCorset))
	endif
EndFunction

Function Execute(actor akActor)
	if (akActor == libs.PlayerRef)
		libs.NotifyPlayer("You find it hard to breathe in your tight corset.")
		libs.CatchBreath(akActor)
	EndIf	
EndFunction
