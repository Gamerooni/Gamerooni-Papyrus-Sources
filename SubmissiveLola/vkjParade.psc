Scriptname vkjParade extends Quest conditional

ReferenceAlias Property Dom auto
vkjMQ Property MQ auto
Actor Property P auto
ReferenceAlias Property Dest auto
Scene Property ParadeScene auto
int Property ViolationsCount auto conditional
Topic Property EndTopic auto
Quest Property GeneralComments auto
vkjPonyGear Property PonyGear auto
Spell Property CloakSpell auto
Faction Property WitnessFaction auto

ObjectReference Property WhiterunInnDoor auto
ObjectReference Property WhiterunHuntsmanDoor auto
ObjectReference Property WhiterunJorrvaskrDoor auto
ObjectReference Property WhiterunPalaceDoor auto
ObjectReference Property SolitudeInnDoor auto
ObjectReference Property SolitudeMarket auto
ObjectReference Property SolitudeBardDoor auto
ObjectReference Property SolitudePalaceDoor auto
ObjectReference Property SolitudeDourDoor auto
ObjectReference Property RiftenBunkhouseDoor auto
ObjectReference Property RiftenBreweryDoor auto
ObjectReference Property RiftenPalaceDoor auto
ObjectReference Property RiftenSlaveDoor auto
ObjectReference Property MarkarthInnDoor auto
ObjectReference Property MarkarthTempleDoor auto
ObjectReference Property MarkarthTreasuryDoor auto
ObjectReference Property MarkarthPalaceDoor auto

ObjectReference Property WhiterunInnDest auto
ObjectReference Property WhiterunHuntsmanDest auto
ObjectReference Property WhiterunJorrvaskrDest auto
ObjectReference Property WhiterunPalaceDest auto
ObjectReference Property SolitudeInnDest auto
ObjectReference Property SolitudeBardDest auto
ObjectReference Property SolitudePalaceDest auto
ObjectReference Property SolitudeDourDest auto
ObjectReference Property RiftenBunkhouseDest auto
ObjectReference Property RiftenBreweryDest auto
ObjectReference Property RiftenPalaceDest auto
ObjectReference Property MarkarthInnDest auto
ObjectReference Property MarkarthTempleDest auto
ObjectReference Property MarkarthTreasuryDest auto
ObjectReference Property MarkarthPalaceDest auto

Faction Property SexFaction auto
Keyword Property KwArmorBody auto
Keyword Property KwArmorLight auto
Keyword Property KwArmorHeavy auto
Keyword Property KwClothingBody auto
Keyword Property KwClothingHands auto
Keyword Property KwClothingHead auto
WorldSpace Property Whiterun auto
WorldSpace Property Solitude auto
WorldSpace Property Riften auto
WorldSpace Property Markarth auto
Quest Property HouseOfHorrorsQuest auto
Bool Property Redress auto
Bool Property HadBodyClothing auto
Spell Property SpeedBuffSpell auto
Bool Property IsPony auto conditional

int violationMagnitude
int stayedClose=2
bool firstCheck=true
GlobalVariable nextBSGlobal
float nextBS

Function Fragment_0(); Stage 0
	SendModEvent("dhlp-Suspend")
	SetDestination()

	int ponyChance = 33
	if MQ.LikesPony < 0
		ponyChance = 20
	elseif MQ.LikesPony > 0
		ponyChance = 50
	endif
	IsPony = Utility.RandomInt(1, 100) <= ponyChance
EndFunction

Function Fragment_1(); Stage 10
	GeneralComments.Start()
	P.AddSpell(CloakSpell, false)
	
	SetObjectiveDisplayed(0)
	SetObjectiveDisplayed(1)
EndFunction

Function Fragment_2(); Stage 20
	Cleanup()
	CompleteAllObjectives()
	Stop()
EndFunction

Event OnUpdate()
	; Don't punish the player for having sex or if the quest isn't on the parade stage.
	if (P.IsInFaction(SexFaction)) || (GetStage() != 10)
		return
	endif
	
	if P.IsInCombat()
		SetStage(20)
		return
	endif

	float dist = P.GetDistance(Dom.GetActorRef())
	;debug.notification("Dom distance is " + P.GetDistance(Dom.GetActorRef()))
	if ((dist > 400.0) && (dist < 5000.0))
		violationMagnitude += 1
		Debug.Notification("Stay close!")
	elseif P.WornHasKeyword(KwArmorLight) || P.WornHasKeyword(KwArmorHeavy)
		violationMagnitude += 1
		Debug.Notification("Do not wear armor!")
	elseif P.WornHasKeyword(KwClothingBody) || P.WornHasKeyword(KwClothingHands) || P.WornHasKeyword(KwClothingHead)
		violationMagnitude += 1
		Debug.Notification("Do not wear body, hand, or head clothing!")
	else
		violationMagnitude = 0
	endif
	
	if violationMagnitude > 0
		ViolationsCount += 1
		if violationMagnitude > 1; no penalty for the first warning
			MQ.PunishMinimal()
		endif
	endif
	if !firstCheck && stayedClose && (dist > 220.0) && (dist < 5000.0) && !P.IsInInterior(); skip check inside in case of door lag
		stayedClose -= 1; allow one failure
		if !stayedClose 
			SetObjectiveFailed(1)
		endif
	endif
	firstCheck = false
EndEvent

Function SetDestination()
	WorldSpace here = P.GetWorldSpace()
	int minDist = 3000
	int maxDist = 9500
	int[] valid = new int[5]
	int nValid
	int iDest
	float dist
	if here == Whiterun
		; Bannered Mare, Huntsman, Jorrvaskr, Palace
		dist = P.GetDistance(WhiterunInnDoor)
		if (dist > minDist) && (dist < maxDist)
			valid[nValid] = 0
			nValid += 1
		endif
		dist = P.GetDistance(WhiterunHuntsmanDoor)
		if (dist > minDist) && (dist < maxDist)
			valid[nValid] = 1
			nValid += 1
		endif
		dist = P.GetDistance(WhiterunJorrvaskrDoor)
		if (dist > minDist) && (dist < maxDist)
			valid[nValid] = 2
			nValid += 1
		endif
		dist = P.GetDistance(WhiterunPalaceDoor)
		if (dist > minDist) && (dist < maxDist)
			valid[nValid] = 3
			nValid += 1
		endif

		if nValid > 0
			iDest = valid[Utility.RandomInt(1, nValid) - 1]
		endif
		
		if iDest == 0
			MQ.TravelMarker.MoveTo(WhiterunInnDest)
		elseif iDest == 1
			MQ.TravelMarker.MoveTo(WhiterunHuntsmanDest)
			MQ.TravelMarker.SetPosition(-460, -1050, 64)
		elseif iDest == 2
			MQ.TravelMarker.MoveTo(WhiterunJorrvaskrDest)
		elseif iDest == 3
			MQ.TravelMarker.MoveTo(WhiterunPalaceDest)
		endif
	elseif here == Solitude
		; Inn, Market, Bard, Palace, Dour
		dist = P.GetDistance(SolitudeInnDoor)
		if (dist > minDist) && (dist < maxDist)
			valid[nValid] = 0
			nValid += 1
		endif
		dist = P.GetDistance(SolitudeMarket)
		if (dist > minDist) && (dist < maxDist)
			valid[nValid] = 1
			nValid += 1
		endif
		dist = P.GetDistance(SolitudeBardDoor)
		if (dist > minDist) && (dist < maxDist)
			valid[nValid] = 2
			nValid += 1
		endif
		dist = P.GetDistance(SolitudePalaceDoor)
		if (dist > minDist) && (dist < maxDist)
			valid[nValid] = 3
			nValid += 1
		endif
		dist = P.GetDistance(SolitudeDourDoor)
		if (dist > minDist) && (dist < maxDist)
			valid[nValid] = 4
			nValid += 1
		endif
		
		if nValid > 0
			iDest = valid[Utility.RandomInt(1, nValid) - 1]
		endif
		
		if iDest == 0
			MQ.TravelMarker.MoveTo(SolitudeInnDest)
		elseif iDest == 1
			MQ.TravelMarker.MoveTo(SolitudeMarket)
		elseif iDest == 2
			MQ.TravelMarker.MoveTo(SolitudeBardDest)
		elseif iDest == 3
			MQ.TravelMarker.MoveTo(SolitudePalaceDest)
		elseif iDest == 4
			MQ.TravelMarker.MoveTo(SolitudeDourDest)
			MQ.TravelMarker.SetPosition(-525, 1388, 17)
		endif
	elseif here == Riften
		; Bunkhouse, Brewery, Palace, Slave Market
		dist = P.GetDistance(RiftenBunkhouseDoor)
		if (dist > minDist) && (dist < maxDist)
			valid[nValid] = 0
			nValid += 1
		endif
		dist = P.GetDistance(RiftenBreweryDoor)
		if (dist > minDist) && (dist < maxDist)
			valid[nValid] = 1
			nValid += 1
		endif
		dist = P.GetDistance(RiftenPalaceDoor)
		if (dist > minDist) && (dist < maxDist)
			valid[nValid] = 2
			nValid += 1
		endif
		dist = P.GetDistance(RiftenSlaveDoor)
		if MQ.MCM.useSimpleSlavery && (dist > minDist) && (dist < maxDist)
			valid[nValid] = 3
			nValid += 1
		endif
		
		if nValid > 0
			iDest = valid[Utility.RandomInt(1, nValid) - 1]
		endif
		
		if iDest == 0
			MQ.TravelMarker.MoveTo(RiftenBunkhouseDest)
		elseif iDest == 1
			MQ.TravelMarker.MoveTo(RiftenBreweryDest)
		elseif iDest == 2
			MQ.TravelMarker.MoveTo(RiftenPalaceDest)
		elseif iDest == 3
			ObjectReference xMarker = (Game.GetFormFromFile(0x00025107, "SimpleSlavery.esp")) as ObjectReference; Center of hall
			MQ.TravelMarker.MoveTo(xMarker)
		endif
	elseif here == Markarth
		; Inn, Temple, Treasury, Palace
		dist = P.GetDistance(MarkarthInnDoor)
		if (dist > minDist) && (dist < maxDist)
			valid[nValid] = 0
			nValid += 1
		endif
		dist = P.GetDistance(MarkarthTempleDoor)
		if (dist > minDist) && (dist < maxDist)
			valid[nValid] = 1
			nValid += 1
		endif
		dist = P.GetDistance(MarkarthTreasuryDoor)
		if (HouseOfHorrorsQuest.IsRunning() && HouseOfHorrorsQuest.GetStage() == 0) && (dist > minDist) && (dist < maxDist)
			valid[nValid] = 2
			nValid += 1
		endif
		dist = P.GetDistance(MarkarthPalaceDoor)
		if (dist > minDist) && (dist < maxDist)
			valid[nValid] = 3
			nValid += 1
		endif
		
		if nValid > 0
			iDest = valid[Utility.RandomInt(1, nValid) - 1]
		endif
		
		if iDest == 0
			MQ.TravelMarker.MoveTo(MarkarthInnDest)
		elseif iDest == 1
			MQ.TravelMarker.MoveTo(MarkarthTempleDest)
		elseif iDest == 2
			MQ.TravelMarker.MoveTo(MarkarthTreasuryDest)
			MQ.TravelMarker.SetPosition(-5607, -1482, -16)
		elseif iDest == 3
			MQ.TravelMarker.MoveTo(MarkarthPalaceDest)
		endif
	endif
EndFunction

Function StartParade()
	MQ.SetBlockEvents(true)
	MQ.zlib.DisableEventProcessing(); no vibrations during the walk
	
	; Temporarily disable Body Search
	Form aForm = Game.GetFormFromFile(0x000012D2, "BodySearch.esp")
	if aForm != none
		nextBSGlobal = aForm as GlobalVariable
		nextBS = nextBSGlobal.GetValue()
		nextBSGlobal.SetValue(10000); Delay any approaches.
		Quest.GetQuest("_BS_BodySearchQuest").Stop(); Stop any active approach (this does not stop the mod).
	endif

	float speed = P.GetActorValue("SpeedMult")
	float buff = 0.0
	if speed < 80.0
		buff = 80.0 - speed
	endif
	if buff > 0.0
		SpeedBuffSpell.SetNthEffectMagnitude(0, buff)
		P.AddSpell(SpeedBuffSpell, false)
	endif
	
	RegisterForUpdate(2.5)
EndFunction

Function StopParade()
	GeneralComments.Stop()
	P.RemoveSpell(CloakSpell)

	Dom.GetActorReference().Say(EndTopic)
	int reward = 0
	if ViolationsCount == 0
		reward += 2
	elseif ViolationsCount >= 3
		reward -= 1
	endif
	if stayedClose
		SetObjectiveCompleted(1)
		reward += 1
	endif
	MQ.UpdateSubmissionScore(reward)
	SetObjectiveDisplayed(0, false)
	SetObjectiveDisplayed(1, false)
	CompleteAllObjectives(); Ensure that all objectives are removed from the quest log

	MQ.SetBlockEvents(false)
	if HadBodyClothing
		MQ.Humiliate(adjustment=1)
	endif
	MQ.MCM.UpdateTimesParaded()
	MQ.MCM.SetNextWRWalk()
	
	if nextBSGlobal != none
		nextBSGlobal.SetValue(nextBS)
	endif
EndFunction

Function PonyGirl()
	PonyGear.Start()
	PonyGear.ForcePrance = true
	PonyGear.EquipGear()
EndFunction

Function Cleanup()
	ParadeScene.Stop()
	MQ.SetBlockEvents(false)
	MQ.zlib.EnableEventProcessing()
	P.RemoveSpell(SpeedBuffSpell)
	if Redress
		MQ.Redress()
	endif
	if PonyGear.IsRunning()
		PonyGear.UnequipGear(true)
		PonyGear.Stop()
	endif
	SendModEvent("dhlp-Resume")
EndFunction