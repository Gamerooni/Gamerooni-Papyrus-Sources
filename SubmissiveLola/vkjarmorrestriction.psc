Scriptname vkjArmorRestriction extends Quest conditional

vkjMCM Property MCM Auto
SexLabFramework property SexLab auto

vkjMQ Property MQ Auto
Actor Property PlayerRef  Auto  
Keyword[] Property KwForbiddenKeywords Auto
Keyword[] Property KwList Auto
Keyword[] Property KwForbiddenLocations Auto
Location Property KolskeggrMine Auto
WorldSpace[] Property CityWorldSpaces Auto
Bool LocCheckType = false
Bool Property DragonPause Auto conditional
int Property DragonCooldown Auto
GlobalVariable property GlobalTest auto; vkjTest global
Quest Property QuestFitForAJarl auto
Quest Property QuestDiplomaticImmunity auto
Faction Property PlayerFaction Auto
Cell Property HjerimCell Auto
Scene Property ForcegreetScene Auto

int violationmagnitude = 0
int nudeTime = 48

Form[] PlaymateClothingForm ; Stores the Playmate's stripped clothing for redressing.

Auto State Disabled
	event onBeginState()
		UnregisterForUpdate()
	endEvent
EndState

function Ensure()
endFunction

function SetNudeTime(int timeSet = 48)
	nudeTime = timeSet
endFunction

function UpdateKeyWords()
	if (GetStage() == 10)
		Keyword[] kw
		; Default (NudeRule 0, Always)
		kw = new Keyword[2]
		kw[0] = KwList[0] ; ClothingBody
		kw[1] = KwList[5] ; ArmorCuirass
		KwForbiddenKeywords = kw
		LocCheckType = false
		
		; Note: Castles and Inns are always also Dwellings so there's no need to specifically check them
		if (MCM.NudeRule == 1); Safe Areas
			kw = new Keyword[5]
			kw[0] = MQ.LocList[0];  Player home
			kw[1] = MQ.LocList[2];  Town
			kw[2] = MQ.LocList[3];  City
			kw[3] = MQ.LocList[5];  Dwelling
			kw[4] = MQ.LocList[6];  Habitation
			KwForbiddenLocations = kw
			return
		endif
		if (MCM.NudeRule == 2); Inns & Player Home
			kw = new Keyword[2]
			kw[0] = MQ.LocList[0]
			kw[1] = MQ.LocList[1]
			KwForbiddenLocations = kw
			return
		endif
		if (MCM.NudeRule == 3); Home & Out of Town
			; Nudity is NOT enforced in these areas
			kw = new Keyword[4]
			kw[0] = MQ.LocList[2];  Town
			kw[1] = MQ.LocList[3];  City
			kw[2] = MQ.LocList[5];  Dwelling
			kw[3] = MQ.LocList[6];  Habitation
			KwForbiddenLocations = kw
			LocCheckType = true
		endif
		if (MCM.NudeRule == 4); Very Safe Areas
			kw = new Keyword[2]
			kw[0] = MQ.LocList[0];  Player home
			kw[1] = MQ.LocList[5];  Dwelling
			KwForbiddenLocations = kw
			return
		endif
		if (MCM.NudeRule == 5); Player Home Only
			kw = new Keyword[1]
			kw[0] = MQ.LocList[0]
			KwForbiddenLocations = kw
			return
		endif
		if (MCM.NudeRule == 6); 'Safe Areas & Wilderness' Everywhere but "Dungeons" (Aka any enemy lair)
			; Nudity is NOT enforced in these areas
			kw = new Keyword[1]
			kw[0] = MQ.LocList[9]
			KwForbiddenLocations = kw
			LocCheckType = true
		endif
		; If NudeRule is 7 (never), the Check() function handles this.
	endif
endFunction

State NoBodyArmor
	Event OnBeginState()
		DebugOutput("SLTR: Registering update no body armor")
		UpdateKeyWords()
		Ensure()
		RegisterForUpdate(20)
	endEvent

	function Ensure()
		if !Check()
			RemoveBodyArmor()
		endif
	endFunction
EndState

State Naked
	; This is the naked for 48 hours rule (quest stage 20).
	; It is not the same as the required nudity in designated areas rule (quest stage 10).
	Event OnBeginState()
		DebugOutput("SLTR: Registering update naked")
		Keyword[] kw = new Keyword[5]
		kw[0] = KwList[0] ; ClothingBody
		kw[1] = KwList[1] ; ArmorLight
		kw[2] = KwList[2] ; ArmorHeavy
		kw[3] = KwList[6] ; ClothingHands
		kw[4] = KwList[7] ; ClothingHead
		KwForbiddenKeywords = kw
		LocCheckType = false
		Ensure()
		
		RegisterForUpdate(24)
		if nudeTime > 0
			RegisterForSingleUpdateGameTime(nudeTime)
		endif
	endEvent

	Event OnUpdateGameTime()
		if (GetStage() == 20)
			Reset(); Needed to go to a lower stage number
			SetStage(10)
		endif
	EndEvent

	function Ensure()
		MQ.Strip()
	endFunction
EndState

Event OnUpdate()
	if MQ.DragonSpotted
		violationmagnitude = 0
		DragonCooldown = 1
		return
	endif
	
	if DragonCooldown > 0
		DragonCooldown = 0
		Debug.Notification("With the dragon gone, clothing restrictions are being enforced.")
		return
	endif
	
	If !Check() 
		MQ.DisplayWarning("You are wearing forbidden items")
		violationmagnitude += 1

		;Due to how unpredictable the borders of "location zones" are in Skyrim the first punishment shock won't lower submission score.
		;Sometimes what qualifies as a "civilized" area can be quite a distance away from the town/city itself.
		;Don't want to player to lose score due to be ambushed by Skyrim's clunky zoning setup.
		if violationmagnitude > 1
			MQ.ReactOnViolation(violationmagnitude - 1)
		else
			;MQ.Hurt() ;Actually, don't even punish on the first warning because it can occur immediately after entering a cell
		endif

		if MCM.StripOnNudeP
			Utility.Wait(1)
			MQ.StripOnNudityViolation()
		endif
	else 
		violationmagnitude = 0
	endif
	
EndEvent

; Return true if the clothing and location check passes.
bool function Check()
	int NudeRule = MCM.NudeRule ;Store the nude rule in a local int since it gets call so much in this function
	if MQ.SuspendAll || MCM.pWereWolf() || (QuestFitForAJarl.GetStage() == 10) || \
	(QuestDiplomaticImmunity.IsRunning() && (QuestDiplomaticImmunity.GetStage() >= 70))
		return true
	endif

	if MCM.ClothesOnly ;If light/heavy body armor and helmets is never allowed check to see player is wearing any.
		;                           ArmorHelm                            ArmorCuirass                           ClothingRich
		if PlayerRef.WornHasKeyword(KwList[4]) || PlayerRef.WornHasKeyword(KwList[5]) || PlayerRef.WornHasKeyword(KwList[3])
			return false
		endif
		; Check for enchanted body clothes (the old OnObjectEuipped() technique did not work in a quest script)
		if (PlayerRef.WornHasKeyword(KwList[0])); ClothingBody
			Armor bodyWear = PlayerRef.GetWornForm(0x00000004) as Armor
			if bodyWear
				if (bodyWear.HasKeyword(KwList[0])); I guess we're being extra careful in case player has 2 ClothingBody items.
					if (bodyWear.GetEnchantment())
						DebugOutput("SLTR: ENCHANTMENT!")
						return false
					endif
				endif
			endif
		endif
	endif
	
	; Check nudity markers
	bool ContinueCheck = true
	if NudeRule > 0
		if (PlayerRef.GetDistance(MCM.NudeMarker1) < MCM.NudeMarkerRadius1) || \
			(PlayerRef.GetDistance(MCM.NudeMarker2) < MCM.NudeMarkerRadius2) || \
			(PlayerRef.GetDistance(MCM.NudeMarker3) < MCM.NudeMarkerRadius3)
			ContinueCheck = false
		endif
	endif
	
	if NudeRule == 7; "Never"
		return ContinueCheck; Nudity markers still force nudity.
	endif

	Int iIndex = 0
	if ContinueCheck && (GetStage() == 10) && (NudeRule > 0); Nude Rule Type 0 has no areas where the clothing rule is not enforced.
		Location loc = PlayerRef.GetCurrentLocation()
		WorldSpace space = PlayerRef.GetWorldSpace() 
		
		; Set it to think we're in a non-enforced place by default to elminate a lot of redundant code.
		; This setting will get overruled if it turns out to be an enforced area.
		ContinueCheck = false
		
		; Let's actually check if we are in an enforced area now (or a not enforced area for Rule Type 3)
		Int lElement = KwForbiddenLocations.Length
		While iIndex < lElement
			if (loc != none) && loc.HasKeyword(KwForbiddenLocations[iIndex])
				; Don't enforce rules for home in unbought Hjerim 
				if (KwForbiddenLocations[iIndex] == MQ.LocList[0]) && (PlayerRef.GetParentCell() == HjerimCell) && \
				   (HjerimCell.GetFactionOwner() != PlayerFaction)
					; Do nothing
				elseif (NudeRule == 3 || NudeRule == 6) ; Nude Rule Type 3 and 6 check for areas where clothing rule is NOT enforced.
					; PlayerHome is also a Dwelling so it requires a specific check
					if !loc.HasKeyword(MQ.LocList[0])
						RedressPlaymate()
						return true
					endif
				else; All other Nude Rule Types check for areas where clothing rule is enforced.
					if loc != KolskeggrMine; Kolskeggr Mine is a Habitation but we don't want to treat it that way.
						ContinueCheck = true; Here's that overruling I was talking about.
						iIndex = 99
					endif
				endif
			endIf
			iIndex += 1
		EndWhile
		
		; Rule Type 4 also enforces nudity for walled cities
		if (NudeRule == 4) && !ContinueCheck
			int nCities = CityWorldSpaces.Length
			iIndex = 0
			While iIndex < nCities
				if space == CityWorldSpaces[iIndex]
					ContinueCheck = true
					iIndex = 99
				endif
				iIndex += 1
			EndWhile
		endif
		
		; Continue to checking if the player is wearing clothes if an enforced location.
		; This check breaks NudeRule Type 3 and 6's setup, so skip it if using that type.
		if (!ContinueCheck && NudeRule != 3 && NudeRule != 6)
			RedressPlaymate()
			return true
		endif
	endif

	Int iElement = KwForbiddenKeywords.Length
	iIndex = 0

	bool hasNudeOutfit = false
	if MCM.HasNudeOutfit && (GetStage() == 10)
		Armor bodyClothes = PlayerRef.GetWornForm(0x00000004) as Armor
		hasNudeOutfit = (bodyClothes != none) && (bodyClothes == MCM.NudeOutfit)
	endif

	While iIndex < iElement
		;Strip the Playmate
		if (MQ.PlaymateRef != none) && MCM.PlaymateCopiesNude && MQ.PlaymateRef.WornHasKeyword(KwForbiddenKeywords[iIndex])
			StripPlaymate()
			Utility.Wait(0.2) ;Give papyrus a little time to catch up, otherwise it will only strip one character at a time.
		endif

		if PlayerRef.WornHasKeyword(KwForbiddenKeywords[iIndex])
			Keyword thisKw = KwForbiddenKeywords[iIndex]
			if hasNudeOutfit && thisKw == KwList[0]; ClothingBody
				; Okay (wearing nude outfit)
			else
				return false
			endif
		endIf
		iIndex += 1
	EndWhile
	return true
endFunction

function RemoveBodyArmor()
	Game.ForceThirdPerson()
	
	Armor BodyWear = PlayerRef.GetWornForm(0x00000004) as Armor
	if !BodyWear
		return
	endif
	if (BodyWear.HasKeyword(KwList[0]) || BodyWear.HasKeyword(KwList[5]))
		PlayerRef.UnequipItem(BodyWear)
	endif
	
endFunction

Function DragonDetected()
	Debug.Notification("You may wear your armor again")
EndFunction

; Removes the Playmate's clothes and stores them in a formlist index for manual redressing.
function StripPlaymate()
	if MQ.PlaymateRef == none
		return
	endif
	Actor PlaymateRef = MQ.PlaymateRef

	;Don't strip if the Playmate is wearing their special exception outfit or boots.
	if ((MCM.HasPMOutfit && PlaymateRef.IsEquipped(MCM.PMOutfit)) || (MCM.HasPMBoots && PlaymateRef.IsEquipped(MCM.PMBoots)))
		return
	endif
	
	bool doAnim = !(PlaymateRef.WornHasKeyword(MQ.zlib.zad_DeviousHeavyBondage) || PlaymateRef.WornHasKeyword(Keyword.GetKeyword("zbfWornYoke")))
	PlaymateClothingForm = SexLab.StripActor(PlaymateRef, none, doAnim)
	
	Armor Shoes = PlaymateRef.GetWornForm(0x00000080) as Armor
	if (Shoes != None) && (!Shoes.HasKeyword(MQ.zlib.zad_DeviousBoots))
		PlaymateRef.UnequipItem(Shoes, false, true)
	endif

	utility.wait(0.1)
	;If the playmate has a special outfit set and at least one copy in their inventory equip it
	if (MCM.HasPMOutfit && PlaymateRef.GetItemCount(MCM.PMOutfit) > 0)
		PlaymateRef.EquipItem(MCM.PMOutfit, false, false)
	endif
	;If the playmate has special shoes set and at least one copy in their inventory equip it
	if (MCM.HasPMBoots && PlaymateRef.GetItemCount(MCM.PMBoots) > 0)
		PlaymateRef.EquipItem(MCM.PMBoots, false, false)
	endif
endFunction

;Manually redresses the Playmate if the player leaves a clothing forbidden area while outdoors (NPCs auto redress when switching indoor areas).
;In other words reminds the Playmate to put their armor back, rather than permanently prancing around naked until you enter an indoor location.
function RedressPlaymate()
	if MQ.PlaymateRef == none
		return
	endif

	;If the playmate has been stripped but the player is now in a clothing permitted area try to redress the playmate.
	if PlaymateClothingForm.Length > 0 ;.Length && PlaymateClothingForm[0] ;If the Playmate has a reserved list of stripped clothing.
		Int iIndex = 0
		Actor PlaymateRef = MQ.PlaymateRef
		While iIndex < PlaymateClothingForm.Length
			PlaymateRef.EquipItem(PlaymateClothingForm[iIndex] as Armor, false, false)
			utility.wait(0.1) ;Pace out the redressing to reduce lag.
			iIndex += 1
		EndWhile
		PlaymateClothingForm = none
	endif 
	;End redress playmate check
endFunction

Function DebugOutput(string str)
	if GlobalTest.GetValue() > 0
		Debug.Notification(str)
	endif
EndFunction