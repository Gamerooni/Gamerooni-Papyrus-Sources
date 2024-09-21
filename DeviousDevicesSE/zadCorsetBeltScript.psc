Scriptname zadCorsetBeltScript extends zadEquipScript  

Function OnEquippedPre(actor akActor, bool silent=false)
	if !silent
		if akActor == libs.PlayerRef
			libs.NotifyActor("You step in to the corset, pulling it up until the belt presses against your body. You then pull the corset around your waist before securing it tightly against your body. This causes the belt to press further against your body, offering a tight fit", akActor, true)
		Else
			libs.NotifyActor(GetMessageName(akActor) +" steps in to the corset and pulls it up until the belt presses against their body. Then they pull the corset around their waist before securing it tightly.", akActor, true)
		EndIf	
	EndIf
	Parent.OnEquippedPre(akActor, silent)
EndFunction


int Function OnEquippedFilter(actor akActor, bool silent=false)
	if akActor == none
		akActor == libs.PlayerRef
	EndIf
	if ! akActor.IsEquipped(deviceRendered)		
		if akActor.WornHasKeyword(libs.zad_DeviousHarness)
			MultipleItemFailMessage("Harness")
			return 2
		Endif
		if akActor.WornHasKeyword(libs.zad_DeviousCorset)
			MultipleItemFailMessage("Corset")
			return 2
		Endif
		if akActor.WornHasKeyword(libs.zad_DeviousBelt)
			MultipleItemFailMessage("Belt")
			return 2
		Endif
	Endif
	return 0
EndFunction

Function OnEquippedPost(actor akActor)
	libs.Log("RestraintScript OnEquippedPost ChastityCorset")
EndFunction
