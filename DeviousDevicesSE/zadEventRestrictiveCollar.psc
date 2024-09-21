scriptName zadEventRestrictiveCollar extends zadBaseEvent

bool Function HasKeywords(actor akActor)
	if !libs.AllowGenericEvents(akActor, libs.zad_DeviousCollar)
		return false
	elseif !akActor.WornHasKeyword(libs.zad_DeviousCollar)
		return false
	else
		string s = ""
		armor a = libs.GetWornDevice(akActor, libs.zad_DeviousCollar)
		if a
			; no keyword specifically for Restrictive collars.
			s = a.GetName()
			if StringUtil.Find(s, "Restrictive") != -1
				return true
			endif
		endif		
		return false
		;return (akActor.WornHasKeyword(libs.zad_DeviousCollar) && akActor.IsEquipped(libs.collarPosture) )
	endif
EndFunction

Function Execute(actor akActor)
	libs.Moan(akActor)
	if Utility.RandomInt(1,2) == 1
		libs.NotifyPlayer("Your neck feels sore from the strict posture imposed upon you.")
	Else
		libs.NotifyPlayer("Your strict collar prevents you from looking down.")
	EndIf
EndFunction
