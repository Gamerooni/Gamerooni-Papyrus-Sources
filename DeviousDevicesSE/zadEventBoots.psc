scriptName zadEventBoots extends zadBaseEvent

bool Function HasKeywords(actor akActor)
	Bool isWearingSafeShoes = akActor.GetWornForm(Armor.GetMaskForSlot(37)).HasKeyWordString("zad_eff_noTripping") 	
	if !libs.AllowGenericEvents(akActor, libs.zad_DeviousBoots)
		return false
	else
		return (akActor.WornHasKeyword(libs.zad_DeviousBoots) && !isWearingSafeShoes)
	endif
EndFunction

Function Execute(actor akActor)
	if (akActor == libs.PlayerRef)
		libs.NotifyPlayer("You trip over your heels...")
		libs.Trip(akActor)
	EndIf	
EndFunction