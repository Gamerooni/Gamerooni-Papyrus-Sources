scriptName zadEventDrip extends zadBaseEvent

bool Function HasKeywords(actor akActor)
	if !libs.AllowGenericEvents(akActor, libs.zad_DeviousBelt)
		return false
	else
		return (akActor.WornHasKeyword(libs.zad_DeviousBelt) )
	endif
EndFunction

Function Execute(actor akActor)
	libs.Moan(akActor)
	libs.NotifyPlayer("You feel a bit of lubrication run down your leg.")
	if akActor.WornHasKeyword(libs.zad_DeviousPlugVaginal)
		libs.SexLab.AddCum(libs.playerref, Vaginal = true, Oral = false, Anal = false)	
	EndIf
EndFunction
