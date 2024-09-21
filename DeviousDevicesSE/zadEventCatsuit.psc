Scriptname zadEventCatsuit extends zadBaseLinkedEvent  

bool Function HasKeywords(actor akActor)
	if !libs.AllowGenericEvents(akActor, libs.zad_DeviousSuit)
		return false
	elseif !akActor.WornHasKeyword(libs.zad_DeviousSuit)
		return false
	else
		string s = ""
		armor a = libs.GetWornDevice(akActor, libs.zad_DeviousSuit)
		if a
			; no keyword specifically for catsuits.
			s = a.GetName()
			if StringUtil.Find(s, "cat") != -1
				return true
			endif
		endif		
		return false
	endif
EndFunction

Function Execute(actor akActor)
	int weathertype = CheckWeather() ;-1: No classification 0: Pleasant 1: Cloudy 2: Rainy 3: Snow
	if weathertype == 0
		libs.NotifyPlayer("The sun on your suit makes you sweat even more.")
	elseif weathertype == 2
		libs.NotifyPlayer("The rain just glides off your suit onto the ground.")
	else
		if Utility.RandomInt(1,2) == 1
			libs.NotifyPlayer("Like a second skin, your suit hugs every part of your body.")
		Else
			libs.NotifyPlayer("The suit causes you to sweat uncontrollably")
		EndIf
	endif
EndFunction

int Function CheckWeather()
	if libs.PlayerRef.IsInInterior() ;not foolproof but fine for text events?
		Weather conditions = Weather.GetCurrentWeather()
		return conditions.GetClassification()
	endIf
EndFunction