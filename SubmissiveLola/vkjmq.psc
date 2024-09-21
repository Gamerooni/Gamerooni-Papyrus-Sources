Scriptname vkjMQ extends Quest Conditional

vkjMCM Property MCM Auto
vkjSex property sexquest auto
Quest Property PlaymateSexQuest auto
zbfSlaveActions property zazActions auto
zadLibs property zlib auto
zadxLibs property xlib auto
DialogueFollowerScript property FollowerQuest auto
bool property UseEFF auto

Message Property MsgMayAskForService Auto
Message Property LateMsg Auto; "return immediately", currently not used
Message Property ShoppingHelpMsg Auto
Message Property PlaymateWillPunishMsg Auto
Scene Property KneelScene  Auto  
Bool Property SceneLocked  Auto  Conditional
Bool Property WasBought Auto Conditional; Bought as a slave
Bool Property WasPaid Auto Conditional; Agreed to contract enslavement in exchange for gold
int Property HowAcquired Auto; 0=Unknown, -1=SS, -2=PW, 1=Gold, 2=Resubmitted, 5=Follower Asked, 10=Not Expecting, 11=Expecting, 12=Forceful, 13=Seductive, 14=Convince Me
Bool Property IsKneeling  Auto  Conditional
Scene Property AnalExamScene  Auto 
Scene Property OwnerDoNothingScene Auto
GlobalVariable property GameDaysPassed auto
GlobalVariable property GlobalZazWhipTime auto
Weapon Property WeaponCane Auto
Weapon Property Fists Auto
MiscObject Property Gold Auto
MiscObject Property Lockpick Auto
MiscObject Property DeadWeight Auto
Armor Property CollarTag Auto
Armor Property BareSkin Auto
Armor Property FunBlindfold Auto
FormList Property QuestItems Auto
FormList Property KeyList Auto
FormList Property ConfessionNPCs Auto
FormList Property ExcludedPotions Auto

GlobalVariable Property Timescale Auto
GlobalVariable property slaveContract auto
bool property IsKept Auto conditional
bool property IsKeptForever Auto conditional;  Only used for dialog
float property LastDailyUpdate auto
Location Property OldLoc Auto
bool Property LastLocWasInterior Auto conditional

int property ForcegreetAllowed auto conditional 
bool property IsBreaking auto conditional
bool property IsSubmissive auto conditional
bool property IsVerySubmissive auto conditional
bool property IsInsanelySubmissive auto conditional
bool property IsRebellious auto conditional
Quest Property GagQuest  Auto
Quest Property IdleCommentsQuest Auto
Quest Property EnoughActionQuest Auto
Quest Property PlaymateQuest Auto
Quest Property RoadTripQuest Auto
Quest Property DanceCommentsQuest Auto
Quest Property CombatPotionManager Auto
Quest Property TravelToMarkerQuest Auto
Quest Property TravelToMarkerPlaymateQuest Auto
vkjTrick Property TrickQuest Auto
Quest Property GeneralDialog Auto
vkjMessageFormat Property MessageQuest Auto
vkjCuffsControl Property CuffsControl auto

bool property NoMoreP = false Auto Conditional; Disables pee content.
bool property noRewardDress = false Auto; Disables submission score rewards for "Fashion Slave". Resets every day cycle.

ReferenceAlias Property Owner Auto
ReferenceAlias Property Title Auto
ReferenceAlias Property TitleAlt Auto
Actor Property OwnerRef Auto
Actor Property Master Auto 
Actor Property Mistress Auto 
Actor Property LordOrLady Auto 
String Property OwnerTitle Auto
String Property OwnerTitleAlt Auto
String Property CollarInscription Auto
Actor Property BuyerRef Auto 
Actor Property PlaymateRef Auto 
ReferenceAlias Property Playmate Auto
ReferenceAlias Property Watcher Auto
GlobalVariable Property LastOwnerID auto
Faction Property FormerOwnerFaction auto
Faction Property FormerScoreFaction auto
Faction Property HumiliationFaction auto
Faction Property FavorableFaction auto
Faction Property UnfavorableFaction auto
Faction Property WhoreClientFaction auto
Faction Property SlutFaction auto
Faction Property CurrentHireling auto
Faction Property PotentialHireling auto
Faction Property VampireFedFaction auto
Faction Property SubmittedToActorFaction auto
Faction Property HousecarlFaction auto
vkjPonyExpress Property PonyExpressQuest auto
vkjParade Property ParadeQuest auto

Spell Property ZapSpell Auto
Spell Property OwnerCooldownSpell Auto
Spell Property SexCooldownSpell Auto
Spell Property BloodDrainSpell Auto
Spell Property RedSpell Auto
Spell Property TimedVibrationSpell Auto
Spell Property SpeechReductionSpell Auto
FormList Property HumiliationSpells Auto
MagicEffect Property HumiliationEffect Auto
MagicEffect Property EyeCandyEffect Auto
zbfSlaveControl Property zazSlaveControl  Auto  
SexLabFramework property SexLab auto
Actor Property PlayerRef  Auto  

bool property IsOwnerHorny Auto Conditional 
bool property IsOwnerAtMaxArousal Auto Conditional 
bool property IsOwnerPoor Auto Conditional 
bool property IsOwnerVampire Auto Conditional
bool property IsPlaymateVampire Auto Conditional
bool property IsOverburdened Auto conditional
bool property MayAskForService Auto Conditional 
bool property BlockEvents Auto Conditional; If true, an event like the Whiterun parade is in progress.  Don't start anything else.
bool property SuspendAll Auto Hidden Conditional; If true, no events will be started and active events will not be enforced.  This is toggled by the player.
bool property PauseGoldSharing Auto; If true, stops vkjPlayerAliasScript from sharing player gold with owner.
bool property Success Auto Conditional;  Just-in-time results calculated for various dialog lines
bool property CanBeTaught Auto Conditional; Whether the player can learn the skill to be taught as selected in the MCM
bool property NoWhipping Auto; An emergency setting to change whippings to spankings.  It's intentionally not in the MCM.
bool property ShowCombatThreat Auto; Manual setting to display the owner's threat level
bool property NoCollarSwap Auto Conditional; Prevent asking owner for a different collar
bool property NoContractExtension Auto Conditional; Prevent asking owner for a contract extension
bool property EnslavedFromDFC Auto Conditional; Devious Followers Continued initiated enslavement to this mod
bool property IsDFCEnslaved Auto Conditional; Devious Followers Continued enslavement is active
bool property PlaymateIsAvailable Auto Conditional; PlaymateRef is set and is not waiting
bool property SlutsIsRunning Auto Conditional; The SLUTS quest is active
bool property IsLovesick Auto Conditional

Keyword[] Property LocList Auto

GlobalVariable Property GlobalTimesSubmitted Auto  
Keyword Property StoryPeriodicEventKeyword Auto 
GlobalVariable Property GlobalSubmissionScore Auto; Mods should use the UpdateSubmissionScore function rather than updating this directly.
GlobalVariable Property GlobalPace Auto
Faction Property SLAFaction Auto  
Faction Property HavingSexFaction Auto 
Faction Property RP_MadameFaction Auto
Faction Property InnkeeperFaction Auto
Faction Property NoTavernFaction Auto
Faction Property InnServerFaction Auto
Spell Property AbilityDefence Auto; "Inspired Service"
Spell Property AbilityInsanity Auto; "Passionate Devotion"
Spell Property AbilityUnhindered Auto; "Unhindered Slave"
Spell Property UnarmedDamageBuff Auto

Spell Property SpankedBuff Auto
MagicEffect Property SpankedBuffEffect Auto
Spell Property SpankedDebuff Auto; Do not cast directly; use GiveSpankedDebuff().
Spell Property WhippedBuff Auto
MagicEffect Property WhippedBuffEffect Auto
Spell Property WhippedDebuff Auto; Do not cast directly; use GiveWhippedDebuff().
Spell Property WhippedMinorDebuff Auto; Do not cast directly; use GiveWhippedMinorDebuff().
Spell Property DomWhipBuffSpell Auto; A minor health regeneration buff the dom gets whenever a very submissive player begs to be whipped.

potion[] Property Booze Auto

Idle Property IdleDef  Auto  
Idle Property IdleKneeling  Auto
Idle Property IdleWipeBrow  Auto
Idle Property IdleFlauntAss  Auto  
Idle Property IdleShowVagina  Auto
Idle[] Property I_Dances Auto; Cicero, Snake, Sexy, SexyAJ, Belly, Groove, ShakeAss, SephyDisco, Funky
FormList Property TdfDances Auto; Dances from TDF Prostitution
Spell Property DanceBoost  Auto     
Quest Property DetectDragonQuest  Auto
bool Property DragonSpotted Auto
ObjectReference Property ClothesPrankContainer Auto
ObjectReference Property CombatPotions auto
ObjectReference Property StolenGoods auto
ObjectReference Property TemporaryStorage auto
ObjectReference Property TravelMarker auto
bool Property ClothesPrankedLastTime Auto Conditional
bool Property ClothesPrankGaveHint Auto Conditional
bool Property ClothesPrankGaveClothes Auto Conditional
Keyword Property KwVampire Auto
int Property FriendlyFireCount Auto Conditional
int Property BleedoutCount Auto Conditional
int Property BonusProstQuota Auto Hidden; (Percent)  Do not set this directly.  Use the Update and Clear functions.
bool Property CanPretendLick Auto Conditional
Weapon Property LastHomeBeatingToy Auto
int Property HomeBeatingToyCount Auto Conditional
Scene Property WhipSceneReversed Auto
Location Property BlackreachLocation Auto
bool Property ReportHitsOnPlayer Auto
int Property NumPlayerHits auto
int Property ServeReason1=-1 auto
int Property ServeReason2=-1 auto
int Property NextServeReasonScore=20 auto

int property TimesServiceIsRequired = 0 auto
int property TimesSexIsRequired = 0 auto
int property FailedOfferingService auto Conditional; 0: okay, 1: didn't offer service enough, 2: didn't offer sex enough, 3: low daily net score
float dailyScore = 999.0; Net unscaled score points earned during the current service day
float dailyBonusForCuffs

GlobalVariable property SexualityDOM Auto; 0: Females (block males), 1: Males (block females), 2: Either
GlobalVariable property SexualityPC Auto
GlobalVariable property TestMode Auto
GlobalVariable Property GlobalNumber auto
FormList Property QuestList auto;  Major quests that might be active and must stop when enslavement ends.  Mutually exclusive with TaskList.
FormList Property TaskList auto;  Short-term quests like Run Lola Run that the player must complete.  Mutually exclusive with QuestList.
FormList Property CleanupQuestList auto;  Long-term unnamed quests like vkjAmrorRestriction, or utility quests.  They should end when enslavement does.
FormList Property RunicCircleSpells auto; All spell variations for the Runic Circle effect.  They should be removed when enslavement ends.

int Property LastTrophySlaveScene auto;  Used by Trophy Slave quest
int Property HadPanicAttack Auto Conditional;  Used by vkjMQAboutRealSlave talk.  0=hasn't happened, 1=scared, 2=angry, 3=happy.
int Property LastNewBuddyChoice Auto Conditional;  0=not recorded, 1=lick, 2=oral, 3=sex, 4=spank.
int Property PlaymateSexDelayed auto Conditional

Sound Property SoundServiceFailed auto
Sound Property CoinSound auto
Sound Property AchievementSound auto
Sound Property DanceMusic auto
Sound Property DanceMusicCustom auto
Topic Property TopicThatsEnough auto
Topic Property DanceComments auto
Topic Property WhippingCommentsNegative auto
Topic Property WhippingCommentsPositive auto
Topic Property WhippingCommentsAuction auto
Topic Property WhippingEyeCandyComments auto
Topic Property WhippingCommentsExhorting auto
Topic Property TopicBigTrouble auto
Topic Property RejectTopic auto

int Property LikesPony auto conditional; -1=dislikes, 0=neutral, 1=likes

;Stores the player's original name for if they ask for it back later.
;xJoeBobx is a stupid name for failsafe detection no one would possibly use.
string oldname = "xJoeBobx"

bool keptPermanently = false
bool awardedKeptPet = false
bool warnedNoSpankAnims = false
bool warnedNoFeedAnims = false
int eventsskipped = 0
int playmateSexHeartbeatsSkipped
int vibEventsSkipped = 0
int thoughtTicks = 0
int lastThought = -1
float timeOfLastService = 0.0
float timeSuspended
bool toldToMasturbate = false
float ownerExpenseLevel = 0.0
float eventPeriod = 20.0
float playerTimeScale = 20.0; Best determination of player's time scale setting when not affected by mods that reduce it for dialog.
bool isSlave = false
bool isOwnerRobed
int checkCounter
int dragonCooldown = 2
bool wasSuspendedBeforeSS
bool dhlpSuspendedEvents; True if BlockEvents was set to true because another mod sent DHLP-Suspend.
bool dhlpSuspended; True if any mod sent DHLP-Suspend.
Form dhlpSuspendedBy
bool stripForLick
bool ownerWatchesSex
bool hiredWithEnslavement
bool useReverseWhippingScene
bool doNotPunishOwnerBleedout
int th0 = -25
int th1 = 20
int th2 = 50
int th3 = 80
int th4 = 99
int maxscore = 100

Form[] PlayerClothesForm
Armor Shoes
Armor Shield
Spell SpellLeft
Spell SpellRight
Weapon WeaponLeft
Weapon WeaponRight
Weapon WeaponRight2; If a bow is WeaponRight, this would be a melee weapon.
int[] SlotsToUnequipOnKneel
Armor[] ArmorUnequippedOnKneel
Ammo EquippedArrows
Ammo UnequippedArrows
Weapon UnequippedBow
Armor WornAnalPlug
Armor WornVaginalPlug
Idle WhippedIdleOverride; Used by scripts to force use of this idle for the next whipping.
bool[] ActiveTears;  3 elements.  Tracks which of the 3 tear levels are currently applied.
bool LocIsInterior
bool PlaymateWillNotPunishThisTime
Spell RunicCircleSpell; The active Runic Circle spell, if any.
bool lrgExcludedFists
bool hasHumiliationThoughts
bool hasLovesickThoughts

Keyword KwNoStrip
Keyword KwZbfGag
Keyword KwZbfPermitOral
Keyword KwZbfYoke

Keyword KwBeastRace
Keyword KwPotion
Keyword KwRestoreHealth

Keyword KwInn
Keyword KwTown
Keyword KwCity
Keyword KwCapital
Keyword KwHasInn
Keyword KwHabitation
Keyword KwDwelling
Keyword KwDungeon
Keyword KwGuild
Keyword KwMine

Keyword KwClothing
Keyword KwLightArmor
Keyword KwHeavyArmor
Keyword KwClothingBody
Keyword KwArmorBody


Event OnInit()
	Maintenance()
EndEvent

Event OnPlayerLoadGame()
EndEvent

Event OnUpdate()
EndEvent

Function CheckDeviceControl()
EndFunction

Function Maintenance()
	if !MCM.CheckDDVersion()
		Debug.Notification("Submissive Lola requires Devious Devices 5.2 or higher.")
	endif

	playerTimeScale = Timescale.GetValue()
	LoadKeywords()
	
	if !isSlave
		return
	endif
	
	RegisterForEvents()
	
	if !GeneralDialog.IsRunning(); for versions prior to Sept. 2022
		GeneralDialog.Start()
	endif
	
	CheckDeviceControl()
	
	MCM.SpankedHardPerk.SetNthEntryValue(0, 0, MCM.SpankedXpRate)
	MCM.WhippedHardPerk.SetNthEntryValue(0, 0, MCM.WhippedXpRate)
	UpdateSpeechReductionRate()

	if OwnerTitle != ""
		Master.GetActorBase().SetName(OwnerTitle)
	endif
	ChangeOwnerTitleAlt(OwnerTitleAlt); even if null, it's needed for an ongoing game where this wasn't set
	
	if MessageQuest.IsRunning()
		(MessageQuest as vkjMessageFormat).Init(); Reload message formatting when the game is loaded.
	elseif MCM.useIWW; Failsafe (this shouldn't happen)
		MessageQuest.Start()
	endif
	
	if (MCM.CustomConfessions > 0) || (MCM.ThoughtsInterval > 0)
		Utility.Wait(6.0); Give other mods a chance for critical maintenance
		if !JContainers.isInstalled()
			Debug.MessageBox("Custom thoughts or confessions are enabled in the Submissive Lola MCM, but JContainers is not installed or an old version is installed.\n\nThese features will be deactivated.")
			MCM.CustomConfessions = 0
			MCM.ThoughtsInterval = 0
		endif
	endif

	if MCM.ThoughtsInterval > 0
		thoughtTicks = (MCM.ThoughtsInterval * 3) - 2; Display a thought soon after starting the game, but not immediately
		if !ThoughtsExist()
			Debug.MessageBox("Thoughts are enabled in the MCM (\"Thoughts display interval\" is greater than zero) but Thoughts.json does not exist in Data\\Interface\\Lola.  This setting will be changed to 0.")
			MCM.ThoughtsInterval = 0
		endif
	endif
	
	if MayAskForService && !SuspendAll
		DisplayMayAskForService()
	endif
EndFunction

Auto State Disabled
	Event OnBeginState()
		UnregisterForUpdate()
		UnregisterForUpdateGameTime()
		SetObjectiveDisplayed(1, false)
		SetObjectiveDisplayed(6, false)
		SetObjectiveDisplayed(7, false)
		SetObjectiveDisplayed(11, false)
		int i = 100
		while i <= 110
			SetObjectiveDisplayed(i, false)
			i += 1
		endwhile
		CompleteAllObjectives(); Ensure that all objectives are removed from the quest log
	EndEvent
EndState

State Running
	Event OnBeginState()
		SendModEvent("dhlp-Resume"); Might have been suspended during the enslavement process
		
		if MCM.ForceContractDays > 0
			slaveContract.SetValue(MCM.ForceContractDays)
			MCM.ForceContractDays = 0
		else
			if (MCM._Contract == 8); Randomize the contract to 3 days, 5 days, 1 week, 2 weeks, or 1 month.
				int serveTime = Utility.RandomInt(1,5)
				slaveContract.SetValue(MCM.Contract[serveTime])
			else
				slaveContract.SetValue(MCM.Contract[MCM._Contract])
			endif
		endif

		if slaveContract.GetValue() > 0
			;RewardForContract(slaveContract.GetValue() as int)
			GetContractLeft()
		endif
		
		BlockEvents = false
		
		vkjDeviceControl devControl = (self as Quest) as vkjDeviceControl
		devControl.GoToState("Active")
		devControl.Device = zlib.GetWornDevice(PlayerRef, zlib.zad_DeviousCollar)

		LastDailyUpdate = GameDaysPassed.GetValue()
		RegisterForSingleUpdate(eventPeriod)
		RegisterForUpdateGameTime(24)
	EndEvent

	Event OnUpdate()
		RegisterForSingleUpdate(eventPeriod)

		if !isSlave; Stop the race condition where BeginSlavery() is still executing
			RegisterForSingleUpdate(2); This should only trigger once
			return
		endif
		
		if MCM.NoDismissing && !OwnerRef.IsPlayerTeammate()
			FollowerQuest.SetFollower(OwnerRef)
			Hurt()
			OwnerRef.Say(RejectTopic)
			Utility.Wait(2)
		endif
		
		IsLovesick = IsLovesick()
		UpdatePlaymateAvailability()

		if (!OwnerRef.IsPlayerTeammate()) || (OwnerRef.GetActorValue("WaitingForPlayer") != 0) || OwnerRef.IsDisabled() || OwnerRef.IsInFaction(HavingSexFaction)
			ForcegreetAllowed = 0
			return
		else
			ForcegreetAllowed = 1
		endif
		
		; Friendly fire occurred in combat
		if (FriendlyFireCount + BleedoutCount > 0) && !PlayerRef.IsInCombat() && !IsPlayerBusy()
			if !Game.IsMovementControlsEnabled()
				; Locked controls is assumed to be combat defeat, so clear the event.
				FriendlyFireCount = 0
				BleedoutCount = 0
			elseif FriendlyFireCount > 0
				if (BleedoutCount > 0) && CanPunishOwnerBleedout()
					doNotPunishOwnerBleedout = (BonusProstQuota == 100); Stop the force greetings after the limit is reached
					Quest.GetQuest("vkjOwnerBleedoutPunishment").Start(); The quest will reset BleedoutCount to 0.
				endif
				Quest qFriendlyFire = Quest.GetQuest("vkjFriendlyFire")
				if !qFriendlyFire.IsRunning()
					qFriendlyFire.Start(); The quest will reset FriendlyFireCount to 0, and chain to bleedout punishment if appropriate.
					return
				else
					(qFriendlyFire as vkjFriendlyFire).AddPunishmentDays()
					qFriendlyFire.RegisterForSingleUpdateGameTime(5); Set to maximum time for repeat offense.
					Debug.Notification(OwnerTitle + " extends the time for binding your hands.")
					FriendlyFireCount = 0
				endif
			elseif BleedoutCount > 0
				if CanPunishOwnerBleedout()
					doNotPunishOwnerBleedout = (BonusProstQuota == 100); Stop the force greetings after the limit is reached
					Quest.GetQuest("vkjOwnerBleedoutPunishment").Start(); The quest will reset BleedoutCount to 0.
					Quest.GetQuest("vkjOwnerBleedoutPunishmentIntro").Start(); The force greeting into vkjOwnerBleedoutPunishment
					return
				else
					BleedoutCount = 0; No punishment, so clear it
				endif
			endif
		endif
		
		int ownerArousal = OwnerRef.GetFactionRank(SLAFaction)
		int ownerArousalThreshold = MCM.GetArousalThreshold()
		IsOwnerHorny = (ownerArousal > ownerArousalThreshold)
		IsOwnerAtMaxArousal = (OwnerRef.GetFactionRank(SLAFaction) > 99) && (ownerArousalThreshold < 101)
		if IsOwnerHorny
			OwnerRef.DispelSpell(SexCooldownSpell)
		endif
		UpdateOverburdened(); sets IsOverburdened

		if SuspendAll || BlockEvents
			MayAskForService = false
		else
			bool oldval = MayAskForService
			MayAskForService = 24.0 * (GameDaysPassed.GetValue() - timeOfLastService) > MCM.Frequency
			if MayAskForService && (MayAskForService != oldval)
				DisplayMayAskForService()
				eventsskipped = 0
			endif
		endif
		
		bool playerIsInAction = (PlayerRef.IsInCombat() || PlayerRef.IsWeaponDrawn() || PlayerRef.IsSneaking() || PlayerRef.IsSwimming())

		if SuspendAll && MCM.AllowSexDuringSuspend && !playerIsInAction
			int sexChance = ((ownerArousal - ownerArousalThreshold) / (100 - ownerArousalThreshold)) * 100
			if (Utility.RandomInt(0,99) < sexChance) && !IsPlayerBusy()
				sexquest.start()
				return
			endif
		endif
		
		if SuspendAll; End of event handling during Suspend All -------------------------------------------------------
			return
		endif
		
		; Dragon detection
		if PlayerRef.IsInInterior() || MCM.noDragonMercy
			DragonSpotted = false
			dragonCooldown = 0
		else
			if DragonSpotted && (dragonCooldown > 0)
				dragonCooldown -= 1
				if dragonCooldown == 0
					DragonSpotted = false
				endif
			endif
			DetectDragonQuest.Start(); keep polling, even if spotted
		endif

		if playerIsInAction
			return
		endif
		
		if EnslavedFromDFC && !BlockEvents && (slaveContract.GetValue() == 0.0) && (GlobalSubmissionScore.GetValue() >= MCM.KeptBelowThreshold)
			Quest.GetQuest("vkjReturnToDFC").Start()
			return
		endif
		
		bool playerIsBusy = IsPlayerBusy()
		Location loc = PlayerRef.GetCurrentLocation()
		
		;If the owner is horny and your arousal is too low, time to troll you into the mood for sex if you're wearing vibrating devices.
		;Also a 5% chance the owner may just decide to trigger your vibrators even if (s)he is not horny just because you should always be horny.
		vibEventsSkipped += 1
		if !BlockEvents && (vibEventsSkipped > 15) && vibrateCheck(PlayerRef) && (IsOwnerHorny || Utility.RandomInt(1,100) <= 5) && \
		  (PlayerRef.GetFactionRank(SLAFaction) < MCM.g_piercings.GetValue())
			if (!SuspendAll || MCM.AllowSexDuringSuspend) && !playerIsBusy && ((loc == none) || !loc.HasKeyword(KwDungeon))
				vibEventsSkipped = 0
				vibrateWithPlaymate()
			endif
		endif
		
		if (Utility.RandomInt(0,99) < MCM.drunkowner)
			BoozeCheck()
		endif
		
		SlutsIsRunning = (MCM.SlutsQuest != none) && MCM.SlutsQuest.IsRunning()
		OncePerMinuteCheck()
		
		; Owner poverty calculation
		IsOwnerPoor = false
		if MCM.OwnerPoverty > 0
			int deficit = MCM.OwnerPoverty - FollowerItemCount(OwnerRef, Gold)
			if (deficit > 0) && MCM.PoorOwnerTakesGold
				int availableGold = PlayerRef.GetItemCount(Gold) - MCM.PlayerExpenseGold
				if availableGold < deficit
					deficit = availableGold
					if deficit < 0
						deficit = 0
					endif
				endif
				TakeGoldFromPlayer(deficit)
			endif
			IsOwnerPoor = FollowerItemCount(OwnerRef, Gold) < MCM.OwnerPoverty
		endif
		
		; Determine owner expenses based on most expensive area seen today
		if (loc != none) && (ownerExpenseLevel < 1.5) && loc.HasKeyword(KwHasInn)
			if loc.HasKeyword(KwCity)
				ownerExpenseLevel = 1.5
			elseif (ownerExpenseLevel < 1.0) && loc.HasKeyword(KwCapital)
				ownerExpenseLevel = 1.0
			elseif loc.HasKeyword(KwTown)
				ownerExpenseLevel = 0.5
			endif
		endif
		
		; Punish for failing daily service goals
		if !BlockEvents && (FailedOfferingService > 0)
			Quest.GetQuest("vkjOwnerComment").Start()
			return
		endif
		
		if IsOwnerAtMaxArousal && !BlockEvents && !playerIsBusy && !IsPlayerInConversation(); Intentionally recheck for conversation.
			sexquest.Start()
			return
		endif

		if MayAskForService && !BlockEvents; No point running this check unless MayAskForService is true.
			int pace = GlobalPace.GetValue() as int; Default value for pace is 8.
			if (eventsskipped < pace)
				if !playerIsBusy
					eventsskipped += 1
				elseif (PlayerRef.GetSitState()!=0) || PlayerRef.IsOnMount()
					eventsskipped += 1; PC is "busy" (shouldn't be interrupted), but not with anything very important, so owner boredom increases.
				endif
			elseif !playerIsBusy; Owner got bored and PC is not busy, so it's time for some fun.
				eventsskipped = 0
				MayAskForService = false
				timeOfLastService = GameDaysPassed.GetValue()
				if MCM.BoredomPenalty > 0.0
					UpdateSubmissionScore(-1.0 * MCM.BoredomPenalty)
				endif
				StoryPeriodicEventKeyword.SendStoryEvent() 
			endif
		endif

		; Owner poverty actions
		if IsOwnerPoor && !BlockEvents
			if MCM.PoorOwnerForcesProst && (GlobalSubmissionScore.GetValue() >= MCM.ProstThreshold) && !EnoughActionQuest.IsRunning() && (loc != none) && (loc.HasKeyword(KwCity) || loc.HasKeyword(KwCapital))
				if !MCM.ProstitutionQuest.IsRunning()
					MCM.ProstitutionQuest.Start()
					return
				elseif MCM.ProstitutionQuest.GetStage() == 15;  Completed but during cooldown
					MCM.ProstitutionQuest.SetStage(20);  Force early shutdown
					Utility.Wait(2)
					MCM.ProstitutionQuest.Start()
					return
				endif
			endif
		endif
		
		; Check for Time to Relax
		if !BlockEvents && !playerIsBusy && (IsOverburdened || (IsOwnerPoor && MCM.PoorOwnerForcesReturn && !PlayerRef.IsInInterior())) && IsTimeToRelax(loc)
			if !IsPlayerInConversation(); Intentionally recheck for conversation.
				EnoughActionQuest.Start()
				return
			endif
		endif
		
		; Playmate Wants Sex (this should be near the end of heartbeat processing, since it can kick off the playmate sex quest, which blocks events).
		Utility.Wait(0.5); If we just started an event, give it a chance to update BlockEvents.
		if PlaymateIsAvailable && !playerIsBusy && !BlockEvents && (MCM.PlaymateSex == 1 || MCM.PlaymateSex == 3 || MCM.PlaymateSex == 4) && !PlaymateRef.IsInFaction(HavingSexFaction)
			if PlaymateRef.GetFactionRank(SLAFaction) >= MCM.PlaymateWantsSex
				if PlaymateSexDelayed == 0
					playmateSexHeartbeatsSkipped = 0
					PlaymateSexQuest.Start()
				else
					playmateSexHeartbeatsSkipped += 1
					if playmateSexHeartbeatsSkipped >= 9; about 3 minutes, maybe longer if Lola had to perform service to the owner
						playmateSexHeartbeatsSkipped = 0
						PlaymateSexQuest.Start()
					endif
				endif
			endif
		endif
		
		; Thoughts
		if MCM.ThoughtsInterval > 0
			thoughtTicks += 1
			if !PlayerRef.IsInCombat() && (thoughtTicks >= (MCM.ThoughtsInterval * 3)); update cycle is 20 seconds
				thoughtTicks = 0
				DisplayThought()
			endif
		endif
	endEvent
	
	Event OnUpdateGameTime()
		if !OwnerRef.IsPlayerTeammate() || SuspendAll
			return
		endif
		
		LastDailyUpdate = GameDaysPassed.GetValue()
		IsOwnerVampire = OwnerRef.HasKeyword(KwVampire)
		IsPlaymateVampire = (PlaymateRef != none) && PlaymateRef.HasKeyword(KwVampire)
		noRewardDress = false

		MCM.UpdateDaysSubmitted()
		if (GlobalTimesSubmitted.GetValue() as int) == 1
			MCM.CurrentDaysSubmitted = MCM.DaysSubmitted
		else
			MCM.CurrentDaysSubmitted = MCM.CurrentDaysSubmitted + 1
		endif

		if MCM.ScoreDecay > 0
			DecaySubmissionScore(MCM.ScoreDecay as float)
		endif

		if CuffsControl.IsRunning()
			if dailyBonusForCuffs > 0.0
				Debug.Notification("You wore your cuffs all day.")
				UpdateSubmissionScore(dailyBonusForCuffs)
			endif
			ResetDailyBonusForCuffs()
		endif

		UpdateRequiredService()
		
		if slaveContract.GetValue() > 0 && slaveContract.GetValue() < 9000
			if FailedOfferingService > 0
				Debug.Notification("Because of your poor service, contract time did not decrease.")
			else
				SetContractDays(slaveContract.GetValue() - 1)
			endif
		endif
		
		; Owner Expenses
		if (MCM.OwnerExpenses + MCM.OwnerExpensePercent > 0) && (ownerExpenseLevel > 0)
		
			int expenses = (ownerExpenseLevel * MCM.OwnerExpenses) as int
			int ownerGold = FollowerItemCount(OwnerRef, Gold)
			
			; Tax the owner some additional expenses if a percent rate has been set in MCM.
			int IRS = ((MCM.OwnerExpensePercent / 100.0) * (ownerGold - expenses)) as int
			if (IRS > 0)
				expenses += IRS
			endif
			
			ownerExpenseLevel = 0.0
			if ownerGold >= expenses
				FollowerRemoveItem(OwnerRef, Gold, expenses)
			else
				FollowerRemoveItem(OwnerRef, Gold, ownerGold)
				int deficit = expenses - ownerGold
				TakeGoldFromPlayer(deficit)
			endif
		endif
		
		; Player Allowance
		if MCM.Allowance > 0
			if (FailedOfferingService > 0) || GlobalSubmissionScore.GetValue() < 0.0
				Debug.Notification(OwnerTitle + " withholds your allowance because of your poor service.")
			else
				int goldGiven = MCM.Allowance + (MCM.AllowanceBonus * GetScore()) as int
				if goldGiven < 0
					goldGiven = 0
				endif
				int ownerGold = FollowerItemCount(OwnerRef, Gold); Get this again because expenses could have changed it
				if MCM.RestrictAllowance && ((ownerGold - MCM.Allowance) < MCM.OwnerPoverty)
					; Owner will not go below the povety setting
					goldGiven = ownerGold - MCM.OwnerPoverty
					if goldGiven < 0
						goldGiven = 0
					endif
				endif
				if goldGiven > 0
					TransferGoldToPlayer(goldGiven, true, true)
					Debug.Notification("Your " + OwnerTitle + " gives you " + goldGiven + " gold for your allowance.")
				else
					Debug.Notification("Your " + OwnerTitle + " lacks enough gold to give you an allowance.")
				endif
			endif
		endif
	EndEvent
	
	Event OnSleepStop(bool interrupted)
		if !SuspendAll && !interrupted && PlayerRef.GetCurrentLocation().HasKeyword(KwInn)
			; Smooth the results so that the event will never trigger for two sleeps in an inn in a row unless the chance is over 50.
			if (Utility.RandomInt(1, 100) <= MCM.ClothesPrankChance) && (!ClothesPrankedLastTime || (MCM.ClothesPrankChance > 50))
				DoHideClothesPrank()
			else
				ClothesPrankedLastTime = false
			endif
		endif
	EndEvent
	
	Function CheckDeviceControl()
		vkjDeviceControl devControl = (self as Quest) as vkjDeviceControl
		if (devControl.GetState() == "Disabled")
			devControl.GoToState("Active")
		endif
	EndFunction
EndState

Function UpdatePlaymateAvailability()
	PlaymateIsAvailable = (PlaymateRef != none) && PlaymateRef.IsPlayerTeammate() && (PlaymateRef.GetActorValue("WaitingForPlayer") == 0) && \
							(PlayerRef.GetDistance(PlaymateRef) < 2500)
EndFunction

Function OwnerWillPunishThisTime()
	PlaymateWillNotPunishThisTime = true
EndFunction

bool Function WillPlaymatePunish(bool showMessage=true)
	if PlaymateWillNotPunishThisTime
		PlaymateWillNotPunishThisTime = false
		return false
	endif
	
	UpdatePlaymateAvailability()
	if PlaymateIsAvailable && (Utility.RandomInt(1,100) <= MCM.PlaymatePunishes)
		if showMessage
			PlaymateWillPunishMsg.Show()
		endif
		return true
	endif
	return false
EndFunction

bool Function IsTimeToRelax(Location loc)
	if EnoughActionQuest.IsRunning() || PlayerRef.WornHasKeyword(zlib.zad_DeviousHobbleSkirt) || IsNearNudityMarker(); markers are often outside playerhomes
		return false
	endif
	
	if loc == none
		return true
	endif

	if loc.HasKeyword(KwCity) || loc.HasKeyword(KwTown) || loc.HasKeyword(KwDungeon) || loc.HasKeyword(KwDwelling) || loc.HasKeyword(KwGuild) || loc.HasKeyword(KwMine) || PlayerRef.IsInLocation(BlackreachLocation)
		return false
	endif
	
	return true
EndFunction

Function TakeGoldFromPlayer(int amount)
	if PauseGoldSharing || (amount <= 0)
		return
	endif
	
	int playerGold = PlayerRef.GetItemCount(Gold)
	if playerGold == 0
		return
	endif
	int goldTaken = amount
	if playerGold < amount
		goldTaken = playerGold
	endif
	PlayerRef.RemoveItem(Gold, goldTaken, true, OwnerRef)
	CoinSound.Play(PlayerRef)
	Debug.Notification("Your " + OwnerTitle + " takes " + goldTaken + " gold from you.")
EndFunction

Function GiveGoldToPlayer(int amount, bool isSilent = false, bool playSound = false)
	bool goldSharingWasPaused = PauseGoldSharing
	PauseGoldSharing = true
	PlayerRef.AddItem(Gold, amount, isSilent)
	Utility.Wait(1.0)
	PauseGoldSharing = goldSharingWasPaused
	if playSound
		CoinSound.Play(PlayerRef)
	endif
EndFunction

Function TransferGoldToPlayer(int amount, bool isSilent = false, bool playSound = false)
	FollowerRemoveItem(OwnerRef, Gold, amount)
	GiveGoldToPlayer(amount, isSilent, playSound)
EndFunction

Function GetContractLeft()
	int daysLeft = slaveContract.GetValue() as int
	if (daysLeft > 1) && (daysLeft < 1000)
		debug.notification("You have " + daysLeft + " days left to serve")
	elseif daysLeft <= 1
		debug.notification("You have 1 day left to serve")
	endif
EndFunction

Function SetContractDays(float days)
	slaveContract.SetValue(days)
	if (slaveContract.GetValue() < 0.0001)
		SetObjectiveDisplayed(7)
	else
		if IsObjectiveDisplayed(7)
			SetObjectiveDisplayed(7, false)
		endif
		GetContractLeft()
	endif
EndFunction

Function ExtendContractForGold(int weeks)
	GiveGoldToPlayer(weeks * MCM.ContractGoldPerWeek, false, true); For simplicity, this is free gold (not taken from the owner).
	ExtendContract(weeks * 7)
EndFunction

Function ExtendContract(int days)
	SetContractDays(slaveContract.GetValue() + days)
EndFunction

function RequestService()
	MCM.UpdateServiceOffered()
	if TimesServiceIsRequired > 0
		TimesServiceIsRequired -= 1
	endif
	KneelScene.Stop()
	ForcegreetAllowed = 1
	eventsskipped = 0
	MayAskForService = false
	timeOfLastService = GameDaysPassed.GetValue()
	StoryPeriodicEventKeyword.SendStoryEvent()
	UpdateDFResistance(1.0)
endFunction

Function ResetDailyUpdate()
	UnregisterForUpdateGameTime()
	RegisterForUpdateGameTime(24)
	LastDailyUpdate = GameDaysPassed.GetValue()
	TimesServiceIsRequired = MCM.v_ServMinTimes + Utility.RandomInt(0, MCM.v_ServRandTimes)
	TimesSexIsRequired = MCM.SexMinTimes
	dailyScore = 0.0
EndFunction

; Return true if the PC is talking or in a scene, or if the owner is in a scene.
bool Function IsPlayerInConversation()
	return UI.IsMenuOpen("Dialogue Menu") || OwnerRef.IsInDialogueWithPlayer() || PlayerRef.GetCurrentScene() != none || OwnerRef.GetCurrentScene() != none
EndFunction

bool Function IsPlayerBusy(bool ignoreScene = false)
	if UI.IsMenuOpen("Dialogue Menu") || OwnerRef.IsInDialogueWithPlayer() || !Game.IsLookingControlsEnabled() || !Game.IsMovementControlsEnabled() || PlayerRef.IsInCombat() || PlayerRef.IsSneaking() || PlayerRef.IsInFaction(HavingSexFaction) || PlayerRef.IsSwimming() || PlayerRef.IsWeaponDrawn() || (PlayerRef.GetSitState()!=0) || MCM.pWereWolf()|| PlayerRef.IsArrested() || PlayerRef.IsTrespassing() || PlayerRef.IsOnMount() || zlib.IsVibrating(PlayerRef)
		return true
	endif
	if !PlayerRef.IsInInterior() && (Math.abs(PlayerRef.GetPositionZ() - OwnerRef.GetPositionZ()) > 320.0); steep slope or different vertical tier
		return true
	endif
	if !ignoreScene && ((PlayerRef.GetCurrentScene() != none) || (OwnerRef.GetCurrentScene() != none))
		return true
	endif
	return false
EndFunction

bool Function IsPlayerHavingSex()
	return PlayerRef.IsInFaction(HavingSexFaction)
EndFunction

bool Function CanPunishPlayerOnUpdate()
	if UI.IsMenuOpen("Dialogue Menu") || OwnerRef.IsInDialogueWithPlayer() || !Game.IsLookingControlsEnabled() || !Game.IsMovementControlsEnabled() || PlayerRef.IsInCombat() || PlayerRef.IsInFaction(HavingSexFaction) || MCM.pWereWolf() || PlayerRef.IsArrested() || PlayerRef.IsTrespassing()
		return false
	endif
	return true
EndFunction

Function ReactOnViolation(int magnitude)
	int i = 0
	while (i < magnitude)
		PunishForViolation()
		Utility.Wait(0.25)
		i += 1
	endWhile
	return
EndFunction

Function Test()
	;float startLoadTime = Utility.GetCurrentRealTime()
	;ApplyTears(1)
	;MiscUtil.PrintConsole("Tears applied in " + (Utility.GetCurrentRealTime() - startLoadTime) + " seconds")
	;Utility.Wait(5)
	;startLoadTime = Utility.GetCurrentRealTime()
	;RemoveTears(1)
	;MiscUtil.PrintConsole("Tears removed in " + (Utility.GetCurrentRealTime() - startLoadTime) + " seconds")
	
	;OwnerTakesCombatPotions(6)
	;CombatPotions.Activate(PlayerRef)
	
	;TimedVibrationSpell.SetNthEffectDuration(0, 3)
	;TimedVibrationSpell.Cast(PlayerRef, PlayerRef)
	;vibratePlayer(pow = 5, min = 60, max = 60, tease = true)
	
	;StoryPeriodicEventKeyword.SendStoryEvent()
	
	;MiscUtil.PrintConsole("Is Lovesick: " + StorageUtil.GetIntValue(PlayerRef, "LVSK_IsLovesick", 0))
	;MiscUtil.PrintConsole("Love sickness = " + StorageUtil.GetFloatValue(PlayerRef, "LVSK_Euphoria", 0.0))
	;int handle = ModEvent.Create("LVSK_Boost")
	;ModEvent.PushString(handle, "Lola Test")
	;ModEvent.PushFloat(handle, 100.0)
	;ModEvent.PushInt(handle, 0)
	;ModEvent.Send(handle)
	
	;Armor collar = (MCM.collarForm.GetAt(MCM.collars) as Armor)
    ;ObjectReference tmpORef = PlayerRef.placeAtMe(collar, abInitiallyDisabled = true)
	;(tmpORef as zadCollarScript).StruggleScene(PlayerRef)
    ;tmpORef.delete()
	
	;FuckLoving(OwnerRef)
	;sslBaseAnimation[] anims = SexLab.GetAnimationsByTags(2, "Headpats", TagSuppress="Sex")
	;SexlabDomNoStrip(anims, OwnerRef, PlayerRef, false)
	
	;vkjPonyGear qp = Quest.GetQuest("vkjPonyGear") as vkjPonyGear
	;qp.Start()
	;qp.EquipGear()
	;Utility.Wait(4)
	;qp.UnequipGear(true)
	;qp.Stop()

	;FuckWithTags(OwnerRef, "Vaginal,Doggy,Rough")
	Humiliate()
EndFunction

Function Wait()
	OwnerRef.SetActorValue("WaitingForPlayer", 1)
EndFunction

Function Follow()
	OwnerRef.SetActorValue("WaitingForPlayer", 0)
EndFunction

function PlayInspection()
	PlayerPose(zlib.DD_FT_Inspection)
endfunction

function PlayerPose(Idle pose)
	if PlayerRef.WornHasKeyword(zlib.zad_DeviousYoke) || PlayerRef.WornHasKeyword(KwZbfYoke); Alternate kneel for in a yoke
		Debug.SendAnimationEvent(PlayerRef, "ZapYokePose06")
	elseif PlayerRef.WornHasKeyword(zlib.zad_DeviousHeavyBondage); Alternate kneel for when hands are bound
		Debug.SendAnimationEvent(PlayerRef, "ZapArmbPose06")
	elseif !PlayerRef.WornHasKeyword(zlib.zad_DeviousYokeBB); Breast Yoke has no kneeling animation for now
		PlayerRef.PlayIdle(pose)
	endif
endfunction

Bool Function CanPose()
	if PlayerRef.WornHasKeyword(zlib.zad_DeviousHeavyBondage); Yokes are assumed to also have this keyword
		return false
	elseif PlayerRef.WornHasKeyword(KwZbfYoke)
		return false
	endif
	return true
EndFunction

function PlayShowArs()
	;Game.SetPlayerAIDriven()
	Debug.SendAnimationEvent(PlayerRef, "ZapStandShowArs")
endFunction

; If called from a topic script, the topic flag should be OnEnd with very short response text or the sound play function can hang.
; Using the OnPlayerDance mod event circumvents this problem.
Function PlayerDance(bool buffOwner = false, actor target = none, bool sexAtEnd = true, bool strip = false, int duration = -1)
	if strip
		StripNoAnim()
		Utility.Wait(1)	
	endif

	int danceTime = duration
	if danceTime == -1
		danceTime = MCM.DanceDuration
	endif

	Idle danceIdle = SelectDance()

	if danceIdle == I_Dances[0]; The lame Cicero dance
		danceTime = 7
	endif
	
	Actor observer = OwnerRef
	if (target != none) && (target != OwnerRef)
		observer = target
		ActorFacePlayer(observer)
		observer.SetLookAt(PlayerRef)
		Watcher.ForceRefTo(observer)
		if sexAtEnd
			ownerWatchesSex = true
		endif
	endif
	;MoveNpcToPlayer(observer, 100.0); Actually, no.  If the NPC was behind a counter or stall, it could have the NPC standing on it.
	if (observer == OwnerRef) && (OwnerRef.GetDistance(PlayerRef) > 200.0); Instead of the above, only move the owner (if owner is the target)
		MoveNpcToPlayer(OwnerRef, 100.0)
	endif
	Utility.Wait(0.2)
	ActorFacePlayer(OwnerRef)
	OwnerRef.SetLookAt(PlayerRef)
	OwnerDoNothingScene.Start()

	if IsKneeling
		EndKneel()
	endif
	bool wasHoldingItems = (PlayerRef.GetEquippedWeapon() != none) || (PlayerRef.GetEquippedWeapon(true) != none) || (PlayerRef.GetEquippedShield() != none)
	if wasHoldingItems
		UnequipHands()
	endif
	
	int musInstanceID = 0
	if MCM.DanceMusicOption == 1
		musInstanceID = DanceMusic.Play(PlayerRef)
	elseif MCM.DanceMusicOption == 2
		musInstanceID = DanceMusicCustom.Play(PlayerRef)
	endif

	PlayerRef.PlayIdle(danceIdle)
	Game.ForceThirdPerson()
	Game.DisablePlayerControls(False, True, True, False, True, True, True, True)
	if danceTime < 8
		WaitEndOnCombat(danceTime)
	else
		DanceCommentsQuest.Start()
		if !WaitEndOnCombat(10)
			ActorFacePlayer(observer)
			bool clapOnly = (!sexAtEnd && (target != none)) || observer.IsChild()
			if clapOnly
				Debug.SendAnimationEvent(observer, "IdleApplaud2")
			else
				observer.Say(DanceComments); first comment after 10 seconds
			endif
			if danceTime >= 25
				if !WaitEndOnCombat(15)
					ActorFacePlayer(OwnerRef)
					if clapOnly
						Debug.SendAnimationEvent(observer, "IdleApplaud2")
					else
						; second comment after 15 more seconds
						if sexAtEnd && (observer != OwnerRef)
							observer.Say(DanceComments)
						else
							OwnerRef.Say(DanceComments)
						endif
					endif
					WaitEndOnCombat(danceTime - 25)
				endif
			else
				WaitEndOnCombat(danceTime - 10)
			endif
		endif
		DanceCommentsQuest.Stop()
	endif

	OwnerDoNothingScene.Stop()
	observer.ClearLookAt()
	OwnerRef.ClearLookAt()
	Watcher.Clear()
	Game.EnablePlayerControls(); This must be before StopDancing
	StopDancing(PlayerRef, (danceIdle != I_Dances[0]))
	if MCM.DanceMusicOption > 0
		Sound.StopInstance(musInstanceID)
	endif
	MCM.UpdateTimesDanced()
	
	if strip
		Redress()
	endif
	if wasHoldingItems
		ReequipHands()
	endif
	
	if buffOwner
		Debug.Notification("Your " + OwnerTitle + " has been emboldened by your sexy dance.")
		DanceBoost.Cast(OwnerRef, OwnerRef)
	endif
	if sexAtEnd && (target != none) && !PlayerRef.IsInCombat()
		Fuck(target)
	else
		int val = 5
		if PlayerIsClothed()
			val = 10
		endif
		UpdateExposure(observer, val)
	endif
EndFunction

Idle Function SelectDance()
	int nDances = 0
	Idle[] Dances = new Idle[30]

	; Zaz dances.  The "Cicero Joke Dance" is at index 0, for ZAP 7 users.
	if MCM.DanceSnake
		Dances[nDances] = I_Dances[1] as Idle
		nDances += 1
	endif
	if MCM.DanceSexy
		Dances[nDances] = I_Dances[2] as Idle
		nDances += 1
	endif
	if MCM.DanceSexyAJ
		Dances[nDances] = I_Dances[3] as Idle
		nDances += 1
	endif
	if MCM.DanceBelly
		Dances[nDances] = I_Dances[4] as Idle
		nDances += 1
	endif
	if MCM.DanceGroove
		Dances[nDances] = I_Dances[5] as Idle
		nDances += 1
	endif
	if MCM.DanceShakeAss
		Dances[nDances] = I_Dances[6] as Idle
		nDances += 1
	endif
	if MCM.DanceSephyDisco
		Dances[nDances] = I_Dances[7] as Idle
		nDances += 1
	endif
	if MCM.DanceFunky
		Dances[nDances] = I_Dances[8] as Idle
		nDances += 1
	endif
	
	; TDF dances
	if MCM.DanceBoPeep
		Dances[nDances] = TdfDances.GetAt(0) as Idle
		nDances += 1
	endif
	if MCM.DanceCyberThunderCider
		Dances[nDances] = TdfDances.GetAt(1) as Idle
		nDances += 1
	endif
	if MCM.DanceDoubleLariat
		Dances[nDances] = TdfDances.GetAt(2) as Idle
		nDances += 1
	endif
	if MCM.DanceEvenEvenEven
		Dances[nDances] = TdfDances.GetAt(3) as Idle
		nDances += 1
	endif
	if MCM.DanceGalaxias
		Dances[nDances] = TdfDances.GetAt(4) as Idle
		nDances += 1
	endif
	if MCM.DanceHurlyBurly
		Dances[nDances] = TdfDances.GetAt(5) as Idle
		nDances += 1
	endif
	if MCM.DanceKissMe
		Dances[nDances] = TdfDances.GetAt(6) as Idle
		nDances += 1
	endif
	if MCM.DanceLilyLilyBurningNight
		Dances[nDances] = TdfDances.GetAt(7) as Idle
		nDances += 1
	endif
	if MCM.DanceMassaraBlueJeans
		Dances[nDances] = TdfDances.GetAt(8) as Idle
		nDances += 1
	endif
	if MCM.DanceMeguMeguFire
		Dances[nDances] = TdfDances.GetAt(9) as Idle
		nDances += 1
	endif
	if MCM.DanceMosaicRoll
		Dances[nDances] = TdfDances.GetAt(10) as Idle
		nDances += 1
	endif
	if MCM.DanceSweetDevil
		Dances[nDances] = TdfDances.GetAt(11) as Idle
		nDances += 1
	endif
		
	if nDances == 0
		return I_Dances[0]; Cicero
	endif

	int nDance = Utility.RandomInt(0, (nDances - 1))
	MiscUtil.PrintConsole("Playing dance " + Dances[nDance])
	return Dances[nDance]
EndFunction

Function StopDancing(Actor act, bool doAnim = true)
	act.PlayIdle(IdleDef)
	if doAnim && MCM.StopDancingWipeBrow
		act.PlayIdle(IdleWipeBrow)
	endif
EndFunction

Function ResetAnim()
	PlayerRef.PlayIdle(IdleDef)
	Game.SetPlayerAIDriven(false)
EndFunction

Function PlayerKneel(bool canUseFix = true)
	if canUseFix && MCM.kneelFix
		PlayerFaceActor(OwnerRef)
	endif
	UnequipArmorOnKneel()
	HighHeelsOff()
	PlayerKneelBasic()
EndFunction

Function PlayerKneelBasic()
	if MCM.UseAlternateKneel
		PlayerPose(zlib.DD_FT_CollarMe)
	else
		PlayerPose(IdleKneeling)
	endif
EndFunction

Function EndKneel()
	PlayerRef.PlayIdle(IdleDef)
	Game.SetPlayerAIDriven(false)
	IsKneeling = false
	ReequipArmorAfterKneel()
	HighHeelsOn()
EndFunction

Function KneelAwhile(float duration)
	PlayerKneel()
	Utility.Wait(duration)
	EndKneel()
EndFunction

; Copied (with minor changes) from SexLab's sslActorAlias script, with thanks and credit to Ashal.
; High Heels effect will be removed if player is female and the "Clear High Heel's Height" option is enabled in SexLab.
Function HighHeelsOff()
	; Suppress High Heels
	if SexLab.Config.RemoveHeelEffect && (PlayerRef.GetActorBase().GetSex() == 1) && PlayerRef.GetWornForm(0x00000080)
		; Remove NiOverride High Heels
		if SexLab.Config.HasNiOverride && NiOverride.HasNodeTransformPosition(PlayerRef, false, true, "NPC", "internal")
			float[] pos = NiOverride.GetNodeTransformPosition(PlayerRef, false, true, "NPC", "internal")
			pos[0] = -pos[0]
			pos[1] = -pos[1]
			pos[2] = -pos[2]
			NiOverride.AddNodeTransformPosition(PlayerRef, false, true, "NPC", "SexLab.esm", pos)
			NiOverride.UpdateNodeTransform(PlayerRef, false, true, "NPC")
		endif
		; Remove HDT High Heels
		Spell HDTHeelSpell = SexLab.Config.GetHDTSpell(PlayerRef)
		if HDTHeelSpell
			PlayerRef.RemoveSpell(HDTHeelSpell)
		endif
	endif
EndFunction

; Copied (with minor changes) from SexLab's sslActorAlias script, with thanks and credit to Ashal.
; High Heels effect will be restored if player is female and the "Clear High Heel's Height" option is enabled in SexLab.
Function HighHeelsOn()
	; Add back high heel effects
	if SexLab.Config.RemoveHeelEffect && (PlayerRef.GetActorBase().GetSex() == 1)
		; HDT High Heel
		Spell HDTHeelSpell = SexLab.Config.GetHDTSpell(PlayerRef)
		if HDTHeelSpell && PlayerRef.GetWornForm(0x00000080) && !PlayerRef.HasSpell(HDTHeelSpell)
			PlayerRef.AddSpell(HDTHeelSpell)
		endif
		; NiOverride High Heels
		if SexLab.Config.HasNiOverride && NiOverride.RemoveNodeTransformPosition(PlayerRef, false, true, "NPC", "SexLab.esm")
			NiOverride.UpdateNodeTransform(PlayerRef, false, true, "NPC")
		endif
	endif
EndFunction

; Temporarily unequip player-specified armor slots (if any) during kneeling
Function UnequipArmorOnKneel()
	ArmorUnequippedOnKneel = new Armor[3]
	if (SlotsToUnequipOnKneel.Length > 0) && (SlotsToUnequipOnKneel[0] > 0)
		Armor thisArmor
		int i = 0
		while (i < 3) && (SlotsToUnequipOnKneel[i] > 0)
			thisArmor = PlayerRef.GetWornForm(SlotsToUnequipOnKneel[i]) as Armor
			if thisArmor != None
				ArmorUnequippedOnKneel[i] = thisArmor
				PlayerRef.UnequipItem(thisArmor, false, true)
			endif			
			i += 1
		endwhile
	endif
	
	if MCM.KneelUnequipArrows && (EquippedArrows != none) && PlayerRef.WornHasKeyword(Keyword.GetKeyword("VendorItemArrow"))
		UnequippedArrows = EquippedArrows
		PlayerRef.UnequipItem(EquippedArrows, false, true)
		Weapon weap = PlayerRef.GetEquippedWeapon()
		if (weap != none) && weap.HasKeyword(Keyword.GetKeyword("WeapTypeBow"))
			UnequippedBow = weap
			PlayerRef.UnequipItem(weap, false, true)
		endif
	else
		UnequippedArrows = none
		UnequippedBow = none
	endif
EndFunction

; Reequip any items that were unequipped by UnequipArmorOnKneel().
; Assumption: The player did not somehow lose the items while kneeling.
Function ReequipArmorAfterKneel()
	if (ArmorUnequippedOnKneel.Length > 0)
		int i = 0
		while i < 3
			if ArmorUnequippedOnKneel[i] != None
				PlayerRef.EquipItem(ArmorUnequippedOnKneel[i], false, true)
			endif
			i += 1
		endwhile
	endif
	
	if MCM.KneelUnequipArrows
		if UnequippedBow != none
			PlayerRef.EquipItem(UnequippedBow, false, true)
		endif
		if UnequippedArrows != none
			PlayerRef.EquipItem(UnequippedArrows, false, true)
		endif
	endif
EndFunction

Function SetEquippedArrows(Ammo arrows)
	EquippedArrows = arrows
EndFunction

Function SetSlotsToUnequipOnKneel(int[] slots)
	SlotsToUnequipOnKneel = slots
EndFunction

Function LickFeet(Actor partner)
	Game.ForceThirdPerson()
	Game.SetPlayerAIDriven()
	Game.DisablePlayerControls(True, True, True, False, True, False, True)
	
	StartLick(partner)
	Utility.Wait(10)
	EndLick(partner)
	
	Game.EnablePlayerControls()
EndFunction

Function StartLick(Actor partner)
	if partner.GetSitState() >= 3
		partner.PlayIdle(IdleDef)
	endif

	MoveNpcToPlayer(partner, 75.00)
	ActorFacePlayer(partner)
	partner.SetLookAt(PlayerRef)

	if stripForLick
		FastStripSkipShoes()
	endif

	if PlayerRef.WornHasKeyword(zlib.zad_DeviousYoke) || PlayerRef.WornHasKeyword(KwZbfYoke); Alternate kneel for in a yoke
		Debug.SendAnimationEvent(PlayerRef, "ZapYokePose08")
	elseif PlayerRef.WornHasKeyword(zlib.zad_DeviousHeavyBondage); Alternate kneel for when hands are bound
		Debug.SendAnimationEvent(PlayerRef, "ZapWriPose08")
	else
		Debug.SendAnimationEvent(PlayerRef, "ZapLickFeet")
	endif
EndFunction

Function EndLick(Actor partner)
	partner.ClearLookAt()
	ResetAnim()
	if stripForLick
		stripForLick = false
		Redress()
	endif
EndFunction

Function LickFeetDelayed(Quest q)
	(q as vkjTrick).End()
	Utility.Wait(5)
	q.Start()
	(q as vkjTrick).TrickToPerform = -1; indicates a delayed action
EndFunction

Function MoveNpc(ObjectReference npc, float offset, float angleOffset=0.0, float faceOffset=0.0)
	float angleZ = npc.getAngleZ()
	float x = npc.GetPositionX() + offset * math.sin(angleZ + angleOffset)
	float y = npc.GetPositionY() + offset * math.cos(angleZ + angleOffset)
	npc.SetPosition(x, y, npc.GetPositionZ())
	npc.SetAngle(npc.GetAngleX(), npc.GetAngleY(), angleZ + faceOffset)
EndFunction

Function MoveNpcToPlayer(ObjectReference npc, float offset=75.0, float angleOffset=0.0, float faceOffset=0.0)
	if PlayerRef.GetParentCell() != npc.GetParentCell()
		npc.MoveTo(PlayerRef);  Get the owner in the same cell first
	endif
	
	float angleZ = PlayerRef.getAngleZ()
	float x = PlayerRef.GetPositionX() + offset * math.sin(angleZ + angleOffset)
	float y = PlayerRef.GetPositionY() + offset * math.cos(angleZ + angleOffset)
	npc.SetPosition(x, y, PlayerRef.GetPositionZ())
	npc.SetAngle(PlayerRef.GetAngleX(), PlayerRef.GetAngleY(), angleZ + 180 + faceOffset)
EndFunction

Function MoveNpcBehindPlayer(ObjectReference npc, float offset)
	if PlayerRef.GetParentCell() != npc.GetParentCell()
		npc.MoveTo(PlayerRef);  Get the owner in the same cell first
	endif
	
	float angleZ = PlayerRef.getAngleZ()
	float x = PlayerRef.GetPositionX() - offset * math.sin(angleZ)
	float y = PlayerRef.GetPositionY() - offset * math.cos(angleZ)
	npc.SetPosition(x, y, PlayerRef.GetPositionZ())
	npc.SetAngle(PlayerRef.GetAngleX(), PlayerRef.GetAngleY(), angleZ)
EndFunction

Function ActorFacePlayer(ObjectReference npc)
	float zOffset = npc.GetHeadingAngle(PlayerRef)
	npc.SetAngle(npc.GetAngleX(), npc.GetAngleY(), npc.GetAngleZ() + zOffset)
EndFunction

Function PlayerFaceActor(Actor npc)
	float zOffset = PlayerRef.GetHeadingAngle(npc)
	if Math.abs(zOffset) > 15.0
		; Setting the angle makes the camera snap to the new angle, so only do it if needed
		PlayerRef.SetAngle(PlayerRef.GetAngleX(), PlayerRef.GetAngleY(), PlayerRef.GetAngleZ() + zOffset)
	endif
EndFunction

; Same as actor.GetWornForm() but eliminates log errors from casting none to Armor if the item is not present
Armor Function GetWornArmor(Actor act, int slotMask)
	Armor a
	Form itemForm = act.GetWornForm(slotMask)
	if itemForm != none
		a = itemForm as Armor
	endif
	return a
EndFunction

Function DoStripAnimation(Actor act)
	int gender = act.GetActorBase().GetSex()
	Debug.SendAnimationEvent(act, "Arrok_Undress_G"+gender)
EndFunction

Function StripBody(Actor act, bool doAnim=false)
	if doAnim
		DoStripAnimation(act)
	endif
	act.UnequipItemSlot(32)
EndFunction

Function StripAll()
	Strip()
	StripAccessories()
EndFunction

function Strip()
	Game.ForceThirdPerson()
	UnequipHands()
	
	PlayerClothesForm = SexLab.StripActor(PlayerRef, none, DoStripAnim())
	
	; Make the player strip non-DD footwear, which for some reason it was not in some cases (looking at you, Whiterun Parade)
	Shoes = PlayerRef.GetWornForm(0x00000080) as Armor
	if (Shoes != None) && (!Shoes.HasKeyword(zlib.zad_DeviousBoots))
		PlayerRef.UnequipItem(Shoes, false, true)
	endif
	StripHelmet()
endFunction

bool Function DoStripAnim()
	bool doAnim
	if PlayerIsClothed(); Don't do the animation if the player already isn't wearing any clothes.
		doAnim = !(PlayerRef.WornHasKeyword(zlib.zad_DeviousHeavyBondage) || PlayerRef.WornHasKeyword(KwZbfYoke))
	endif
	return doAnim
EndFunction

Function StripNoAnim()
	Game.ForceThirdPerson()
	UnequipHands()
	if PlayerIsClothed()
		PlayerClothesForm = SexLab.StripActor(PlayerRef, none, false)
		Shoes = PlayerRef.GetWornForm(0x00000080) as Armor
		if (Shoes != None) && (!Shoes.HasKeyword(zlib.zad_DeviousBoots))
			PlayerRef.UnequipItem(Shoes, false, true)
		endif
		StripHelmet()
	else
		PlayerClothesForm = none
	endif
EndFunction

Function FastStrip()
	UnequipHands()
	if PlayerIsClothed()
		PlayerClothesForm = SexLab.StripActor(PlayerRef, none, false)
		Shoes = PlayerRef.GetWornForm(0x00000080) as Armor
		if (Shoes != None) && (!Shoes.HasKeyword(zlib.zad_DeviousBoots))
			PlayerRef.UnequipItem(Shoes, false, true)
		endif
	endif
EndFunction

Function FastStripSkipShoes()
	UnequipHands()
	if PlayerIsClothed()
		PlayerClothesForm = SexLab.StripActor(PlayerRef, none, false)
		Shoes = none
	endif
EndFunction

Function StripOnNudityViolation()
	UnequipWeapons()
	SexLab.StripActor(PlayerRef, none, DoStripAnim())
	ReequipWeapons()
EndFunction

bool Function PlayerIsClothed()
	return PlayerRef.WornHasKeyword(KwClothing) || PlayerRef.WornHasKeyword(KwLightArmor) || PlayerRef.WornHasKeyword(KwHeavyArmor)
EndFunction

Function StripAccessories()
	StripItem(0x00000020);  Necklace
	StripItem(0x00000040);  Ring
	StripItem(0x00020000);  Slot 47 - Backpack
	StripItem(0x00400000);  Slot 52
	StripItem(0x01000000);  Slot 54
	StripItem(0x40000000);  Slot 60
	StripItem(0x50000000);  Slot 61 - FX01
EndFunction

Function UnequipHands()
	UnequipWeapons()
	if PlayerRef.IsWeaponDrawn()
		PlayerRef.SheatheWeapon()
	endif
	UnequipSpells()
EndFunction

Function UnequipWeapons()
	WeaponRight = PlayerRef.GetEquippedWeapon()
	if WeaponRight != none
		PlayerRef.UnequipItem(WeaponRight, false, true)
	endif
	WeaponLeft = PlayerRef.GetEquippedWeapon(true)
	if WeaponLeft != none
		PlayerRef.UnequipItem(WeaponLeft, false, true)
	endif
	WeaponRight2 = PlayerRef.GetEquippedWeapon()
	if WeaponRight2 != none
		PlayerRef.UnequipItem(WeaponRight2, false, true)
	endif
	Shield = PlayerRef.GetEquippedShield()
	if Shield != none
		PlayerRef.UnequipItem(Shield, false, true)
	endif
EndFunction

Function UnequipSpells()
	SpellLeft = PlayerRef.GetEquippedSpell(0)
	SpellRight = PlayerRef.GetEquippedSpell(1)
	
	if SpellLeft != none
		PlayerRef.UnequipSpell(SpellLeft, 0)
	endif
	if SpellRight != none
		PlayerRef.UnequipSpell(SpellRight, 1)
	endif
EndFunction

Function ReequipSpells()
	if SpellLeft != none
		PlayerRef.EquipSpell(SpellLeft, 0)
		SpellLeft = none
	endif
	if SpellRight != none
		PlayerRef.EquipSpell(SpellRight, 1)
		SpellRight = none
	endif
EndFunction

Function ReequipHands()
	ReequipSpells()
	ReequipWeapons()
EndFunction

Function ReequipWeapons()
	if WeaponRight2 != none
		PlayerRef.EquipItem(WeaponRight2, false, true)
		Utility.Wait(0.25)
	endif
	if WeaponRight != none
		PlayerRef.EquipItem(WeaponRight, false, true)
	endif
	if WeaponLeft != none
		PlayerRef.EquipItem(WeaponLeft, false, true)
	endif
	if Shield != none
		PlayerRef.EquipItem(Shield, false, true)
	endif
EndFunction

Function ActorUnequipSpells(Actor npc)
	Spell aSpell = npc.GetEquippedSpell(0)
	if aSpell != none
		npc.UnequipSpell(aSpell, 0)
	endif
	aSpell = npc.GetEquippedSpell(1)
	if aSpell != none
		npc.UnequipSpell(aSpell, 1)
	endif
EndFunction

; Any "helmet" type piece of a equipment that has one of the forbidden clothing/armor keywords gets stripped.
Armor Function StripHelmetSlot(int mySlot)
	Armor Helm = PlayerRef.GetWornForm(mySlot) as Armor
	if Helm != none && (Helm.HasKeyword(KwClothing) || Helm.HasKeyword(KwLightArmor) || Helm.HasKeyword(KwHeavyArmor))
		if (Helm.HasKeyword(zlib.zad_Lockable) || Helm.HasKeyword(KwNoStrip) || Helm.HasKeyword(zlib.zad_BlockGeneric) || Helm.HasKeyword(zlib.zad_QuestItem))
			return none
		endif	
		PlayerRef.UnequipItem(Helm, false, true)
		return Helm
	endif
	return none
EndFunction

; Strip hair and circlet slots if a helmet or hat is found.  This does NOT strip a circlet.
Armor Function StripHelmet()
	Armor circlet = StripHelmetSlot(0x00001000)
	Armor helm = StripHelmetSlot(0x00000002)
	if helm != none
		return helm
	endif
	return circlet
EndFunction

function autoEquip(armor myItem)
	if PlayerRef.GetItemCount(myItem) > 0
		PlayerRef.EquipItem(myItem,false,true)
	endif
endFunction

function Redress()
	Game.ForceThirdPerson()
	SexLab.UnstripActor(PlayerRef,PlayerClothesForm)
	if (Shoes != None) && PlayerRef.GetItemCount(Shoes) > 0
		PlayerRef.EquipItem(Shoes,false,true)
		Shoes = None
	endif
	ReequipHands()
endFunction

Armor Function StripItem(int slotMask)
	Armor a = PlayerRef.GetWornForm(slotMask) as Armor
	if (a == None) || (a.HasKeyword(zlib.zad_Lockable) || a.HasKeyword(KwNoStrip) || a.HasKeyword(zlib.zad_BlockGeneric) || a.HasKeyword(zlib.zad_QuestItem))
		return none
	endif
	PlayerRef.UnequipItem(a, false, true)
	return a
EndFunction

bool Function CanStripItem(int slotMask)
	Armor a = PlayerRef.GetWornForm(slotMask) as Armor
	if (a == None) || (a.HasKeyword(zlib.zad_Lockable) || a.HasKeyword(KwNoStrip) || a.HasKeyword(zlib.zad_BlockGeneric) || a.HasKeyword(zlib.zad_QuestItem))
		return false
	endif
	return true
EndFunction

Function SetShoes(Armor a)
	Shoes = a
EndFunction

Function EquipDD(Actor act, Armor dd, Keyword kw = none)
	if dd != none
		zlib.LockDevice(act, dd)
	endif
EndFunction

Function RemoveDD(Actor act, Armor dd, bool destroy = false)
	zlib.UnlockDevice(act, dd, destroyDevice=destroy)
EndFunction

Function RemoveDDByKeyword(Actor act, Keyword kw, bool destroy = false)
	zlib.UnlockDeviceByKeyword(act, kw, destroy)
EndFunction

function Pee()
	Game.ForceThirdPerson()
	Game.SetPlayerAIDriven()
	Game.DisablePlayerControls(True, True, True, False, True, False, True)

	string sex	
	if GetMySex(PlayerRef) == 0
		sex = "M"
	else
		sex = "F"
	endif
	Debug.SendAnimationEvent(PlayerRef, "ZazF20TX" + sex + "0" + Utility.Randomint(1, 6))
	Utility.Wait(10)
	PlayerRef.PlayIdle(IdleDef)
	Game.SetPlayerAIDriven(false)
	Game.EnablePlayerControls()
endFunction

function TouchSelf()
	Game.ForceThirdPerson()
	;Game.SetPlayerAIDriven()
	;Game.DisablePlayerControls(True, True, True, False, True, False, True)

	if GetMySex(PlayerRef) == 0
		Debug.SendAnimationEvent(PlayerRef, "Aroused_Male_Idle" + utility.randomInt(1,2))
		Utility.Wait(2)
	else
		;Debug.SendAnimationEvent(PlayerRef, "Aroused_Idle" + utility.randomInt(1,2))
		PlayerRef.PlayIdle(IdleShowVagina)
		Utility.Wait(10)
	endif
	OwnerRef.Say(TopicThatsEnough)
	Utility.Wait(1)
	PlayerRef.PlayIdle(IdleDef)
	OwnerRef.PlayIdle(IdleDef)
	MediumReward()

	;Game.SetPlayerAIDriven(false)
	;Game.EnablePlayerControls()
endFunction

sslBaseAnimation[] Function GetSpankingAnims()
	string suppressTags = ""
	if (MCM.SpankingAnimLimit == 1) && !PlayerRef.IsInInterior(); Allow furniture only in interiors
		suppressTags = "Furniture,Chair"
	elseif (MCM.SpankingAnimLimit == 2) && !PlayerRef.GetCurrentLocation().HasKeyword(KwDwelling); Only in buildings
		suppressTags = "Furniture,Chair"
	endif

	sslBaseAnimation[] anims = SexLab.GetAnimationsByTags(2, "Spanking,Spank", TagSuppress=suppressTags, RequireAll=false)

	if anims.Length == 0
		anims = SexLab.GetAnimationsByTag(2, "Sex")
		if !warnedNoSpankAnims
			warnedNoSpankAnims = true
			Debug.MessageBox("You do not have any spanking animations installed (with a \"Spanking\" or \"Spank\" tag), so generic sex will play.  The mod page has links to spanking animations.")
		endif
	endif
	
	return anims
EndFunction

; Spank or whip player as punishment
Function Punish()
	; If player has spanked buff, do spanking
	if PlayerRef.HasMagicEffect(SpankedBuffEffect)
		UpdateSubmissionScore(-5); Whipping has -5 score built in
		Spank(OwnerRef, true)
		return
	endif
	; If player has whipped buff, do whipping
	if PlayerRef.HasMagicEffect(WhippedBuffEffect)
		WhipPlayer(true)
		return
	endif	

	if Utility.RandomInt(0,100) < 33
		UpdateSubmissionScore(-5); Whipping has -5 score built in
		Spank(OwnerRef, punish=true, reward=false)
	else
		WhipPlayer(true)
	endif
EndFunction

; NPC will spank the player.
; If SpecialPunishment is true, do not add punishment days.
; If reward is false and punish is false, it's a neutral spanking with no buff, debuff, or TimesSpanked increment.
; The reward parameter is ignored if punish=true.
Function Spank(Actor spanker, bool punish = false, bool specialPunishment = false, bool reward = true)
	if reward && MCM.BlindfoldFun && (FunBlindfold == none) && ((spanker == OwnerRef) || (spanker == PlaymateRef)) && (PlayerRef.GetWornForm(0x02000000) == none)
		FunBlindfold = MCM.GetFunBlindfold()
		PlayerRef.EquipItem(FunBlindfold, abSilent=true)
	endif
	
	Actor dom = spanker
	bool playmatePunishes 
	if spanker == OwnerRef
		playmatePunishes = Punish && WillPlaymatePunish()
		if playmatePunishes
			dom = PlaymateRef
			Watcher.ForceRefTo(OwnerRef)
		elseif PlaymateIsAvailable
			Watcher.ForceRefTo(PlaymateRef)
		endif
	else; Spanker could be an NPC
		Watcher.ForceRefTo(OwnerRef)
	endif

	sslBaseAnimation[] anims = GetSpankingAnims()
	SexlabDomNoStrip(anims, dom, PlayerRef)
	bool useSTA = (Quest.GetQuest("_STA_SpankingQuest") != none)

	if punish
		DamagePlayerHealth(50, 50)
		GiveSpankedDebuff()
		UpdateExposure(dom, 5); spanker gains arousal
		if !useSTA
			UpdateExposure(PlayerRef, -10); spankee loses arousal
		endif
		UpdateDFResistance(2.0)
		MCM.UpdateTimesSpankedPunish()
		if !specialPunishment
			TryToAddPunishmentDays()
		endif
		if (spanker == OwnerRef) || (spanker == PlaymateRef)
			UpdateRunicCircle("Spank")
		endif
	else
		if reward
			SpankedBuff.Cast(PlayerRef, PlayerRef)
			MCM.UpdateTimesSpankedReward()
		endif
		UpdateExposure(dom, 10); spanker gains arousal
		if !useSTA
			UpdateExposure(PlayerRef, 10); spankee gains arousal
		endif
		UpdateDFResistance(1.0)
	endif

	int i = 60
	While PlayerRef.IsInFaction(HavingSexFaction) && (i > 0); Wait for spanking to end.
		i -= 1
		Utility.Wait(1.0)
	EndWhile

	if punish
		GiveSpankedDebuff()
		DamagePlayerHealth(50, 50)
		if (spanker == OwnerRef) || (spanker == PlaymateRef)
			UpdateRunicCircle("Reset")
		endif
	endif
	if playmatePunishes
		MCM.CheckPlaymatePunAchievement()
	endif

	Watcher.Clear()	
	SendModEvent("_STA_SpankBasicAss"); Spank That Ass mod event
EndFunction

Function WhipPlayer(bool Punish = false, bool SpecialPunishment = false)
	; If SpecialPunishment is true, do not update score or add punishment days, and do not have owner say the whipping topic.
	; SpecialPunishment is true for the "exit" punishment when asking to be set free, motivation, and for the service failure punishment.
	if NoWhipping
		Spank(OwnerRef, Punish, SpecialPunishment)
		return
	endif
	
	Actor dom = OwnerRef
	bool playmatePunishes = (Punish || SpecialPunishment) && WillPlaymatePunish()
	if playmatePunishes
		dom = PlaymateRef
		Watcher.ForceRefTo(OwnerRef)
	elseif PlaymateIsAvailable
		Watcher.ForceRefTo(PlaymateRef)
	endif

	SendModEvent("dhlp-Suspend")
	PlayerRef.AddToFaction(HavingSexFaction)
	dom.AddToFaction(HavingSexFaction)
	
	Utility.Wait(0.1)
	bool wasClothed = PlayerRef.WornHasKeyword(KwClothingBody) || PlayerRef.WornHasKeyword(KwArmorBody)
	if !Punish && MCM.BlindfoldFun && (FunBlindfold == none) && (PlayerRef.GetWornForm(0x02000000) == none)
		FunBlindfold = MCM.GetFunBlindfold()
		PlayerRef.EquipItem(FunBlindfold, abSilent=true)
	endif	
	Strip()
	Utility.Wait(1)
	
	if !Punish && !PlayerRef.WornHasKeyword(zlib.zad_DeviousHeavyBondage)
		PlayerRef.PlayIdle(GetWhippedRewardIdle(PlayerRef))
	else
		PlayerPose(GetWhippedIdle())
	endif
	WhippedIdleOverride = none
	
	Float whippingDuration
	if Punish
		whippingDuration = MCM.WhipPunishDuration
		MCM.UpdateTimesWhippedPunish()
		UpdateDFResistance(4.0)
		UpdateRunicCircle("Whip")
	else
		whippingDuration = MCM.WhipRewardDuration
		MCM.UpdateTimesWhippedReward()
		UpdateDFResistance(2.0)
	endif
	
	; Handle NFF "Weapons only in Combat" setting
	bool isInNffWeaponFaction = false
	Faction nffWeaponFaction
	Form nffWeapFacForm = (Game.GetFormFromFile(0x0020DAE9, "nwsFollowerFramework.esp"))
	if nffWeapFacForm != none
		nffWeaponFaction = nffWeapFacForm as Faction
		isInNffWeaponFaction = dom.IsInFaction(nffWeaponFaction)
		if isInNffWeaponFaction
			dom.RemoveFromFaction(nffWeaponFaction)
		endif
	endif
	
	AddDefeatLRGExclusions()

	String caneModel = WeaponCane.GetModelPath()
	WeaponCane.SetModelPath(MCM.GetWhipWeaponModel())
	float caneSpeed = WeaponCane.GetSpeed()
	WeaponCane.SetSpeed(caneSpeed * MCM.WhipSpeed / 100.0)
	int caneDamage = WeaponCane.GetBaseDamage()
	WeaponCane.SetBaseDamage(1)
	WeaponCane.SetCritDamage(0); Being cautious; it should be zero anyway.
	
	float zazDialogType = zazActions.zbfSlaveDialogueType.GetValue()
	zazActions.zbfSlaveDialogueType.SetValue(-1); suppress whipping dialog

	float angleZ = PlayerRef.GetAngleZ()
	if useReverseWhippingScene
		angleZ += 180.0
	endif
	dom.MoveTo(PlayerRef, 80.0 * Math.Sin(angleZ), 80.0 * Math.Cos(angleZ), 0.0, false)
	dom.PlayIdle(IdleDef)
	
	ActorUnequipSpells(dom)
	Armor domShield = dom.GetEquippedShield()
	if domShield != none
		dom.UnequipItem(domShield, false, true)
	endif
	if Punish && MCM.UseRedGlow && !playmatePunishes
		dom.EquipSpell(RedSpell, 1)
	endif
	
	; Ensure that player health is at least a minimal level, so whipping doesn't end too quickly
	float health = PlayerRef.GetActorValue("Health")
	if health < 70.0
		PlayerRef.RestoreActorValue("Health", (70.0 - health))
	endif
	
	Scene zazScene = zazActions.WhipScene
	if useReverseWhippingScene
		zazActions.WhipScene = WhipSceneReversed
	endif
	ActorBase PlayerBase = PlayerRef.GetBaseObject() as ActorBase
	bool wasEssential = PlayerRef.IsEssential()
	PlayerBase.SetEssential(true)
	ReportHitsOnPlayer = true
	zazActions.WhipPlayer(dom, afMinHealth=20.0)
	Utility.Wait(4)
	if dom.GetEquippedShield()
		if domShield == none; NFF has a setting to only equip weapons & shields in combat, so it might have just been equipped.
			domShield = dom.GetEquippedShield()
		endif
		dom.UnequipItem(domShield, false, true)
	endif
	if playmatePunishes
		OwnerRef.Say(WhippingCommentsExhorting)
	endif
	zazActions.SetWhipTimeOut(whippingDuration)
	int i = 8
	While zazActions.WhipScene.IsPlaying()
		if !Punish
			if MCM.GentleRewardWhipping
				; Swap in & out naked clothing to remove whipping decals
				PlayerRef.EquipItem(BareSkin, abSilent=true)
				PlayerRef.UnequipItem(BareSkin, abSilent=true)
			endif
			i += 1
			if i == 16
				i = 0
				zlib.SexlabMoan(PlayerRef, 100)
			endif
		endif
		Utility.Wait(0.5)
	EndWhile
	if !Punish && MCM.GentleRewardWhipping
		ClearPlayerBodyDecals()
	endif
	if FunBlindfold != none
		PlayerRef.RemoveItem(FunBlindfold, abSilent=true)
		FunBlindfold = none
	endif
	PlayerBase.SetEssential(wasEssential)
	zazActions.WhipScene = zazScene
	useReverseWhippingScene = false

	dom.UnequipItem(WeaponCane)
	dom.RemoveItem(WeaponCane, 1)
	WeaponCane.SetModelPath(caneModel)
	WeaponCane.SetSpeed(caneSpeed)
	WeaponCane.SetBaseDamage(caneDamage)
	zazActions.zbfSlaveDialogueType.SetValue(zazDialogType)
	dom.SetDontMove(false); Failsafe if ZAP whipping glitches
	
	if isInNffWeaponFaction
		dom.AddToFaction(nffWeaponFaction)
	endif
	
	RemoveDefeatLRGExclusions()
	
	bool canRedress = true
	if Punish
		if !SpecialPunishment
			UpdateSubmissionScore(-5)
			TryToAddPunishmentDays()
			if wasClothed && !PlayerRef.HasMagicEffect(EyeCandyEffect) && (Utility.RandomInt(1,100) <= MCM.WhippedEyeCandyChance)
				canRedress = false
				TrickQuest.MakeEyeCandy(0)
				OwnerRef.Say(WhippingEyeCandyComments)
			else
				OwnerRef.Say(WhippingCommentsNegative)
			endif
		endif
		GiveWhippedDebuff()
		UpdateExposure(OwnerRef, 5); owner gains arousal
		UpdateExposure(PlayerRef, -20); PC loses arousal
		if MCM.UseRedGlow && !playmatePunishes
			OwnerRef.UnequipSpell(RedSpell, 1)
			OwnerRef.RemoveSpell(RedSpell)
		endif
		UpdateRunicCircle("Reset")
		
		Debug.SendAnimationEvent(PlayerRef, "BleedoutStart")
		Utility.Wait(3)
		Debug.SendAnimationEvent(PlayerRef, "BleedoutStop")
	else
		UpdateSubmissionScore(1)
		Debug.Notification("Your " + OwnerTitle + " looks more invigorated.")
		DomWhipBuffSpell.Cast(dom, dom)
		WhippedBuff.Cast(PlayerRef, PlayerRef)
		UpdateExposure(dom, 10); owner gains arousal
		UpdateExposure(PlayerRef, 10); PC gains arousal
		
		Utility.Wait(1)
		OwnerRef.Say(WhippingCommentsPositive)
	endif
	
	PlayerRef.PlayIdle(IdleDef)
	if canRedress
		Redress(); was ReequipHands()
	else
		ReequipHands()
	endif
	PlayerRef.RemoveFromFaction(HavingSexFaction)
	dom.RemoveFromFaction(HavingSexFaction)
	if domShield != none
		dom.EquipItem(domShield, false, true)
	endif
	if playmatePunishes
		MCM.CheckPlaymatePunAchievement()
	endif
	Watcher.Clear()
	SendModEvent("dhlp-Resume")
EndFunction

Function PlaymateWhipPlayer()
	UpdateSubmissionScore(1)

	vkjPlaymate PlaymateScr = PlaymateQuest as vkjPlaymate
	ActorWhipPlayer(PlaymateRef, MCM.WhipRewardDuration, doStrip = true, dhlpSuspend = true, weaponModel = "", reverse = true, \
			beforeTopic = PlaymateScr.WhipCommentsBefore, afterTopic = PlaymateScr.WhipCommentsAfter)
	
	MCM.UpdateTimesWhippedReward()
	UpdateDFResistance(2.0)
	DomWhipBuffSpell.Cast(PlaymateRef, PlaymateRef)
	WhippedBuff.Cast(PlayerRef, PlayerRef)
	UpdateExposure(PlayerRef, 10); PC gains arousal
EndFunction

Function ActorWhipPlayer(Actor npc, float duration, bool doStrip = true, bool dhlpSuspend = false, string weaponModel = "", bool reverse = false, Topic beforeTopic = none, Topic afterTopic = none, bool faceAway=true)
	if dhlpSuspend
		SendModEvent("dhlp-Suspend")
	endif
	PlayerRef.AddToFaction(HavingSexFaction)
	npc.AddToFaction(HavingSexFaction)
	
	Utility.Wait(0.1)
	if doStrip
		Strip()
		Utility.Wait(1)
	endif
	
	ActorUnequipSpells(npc)
	if reverse
		PlayerRef.PlayIdle(GetWhippedRewardIdle(PlayerRef, faceAway=faceAway))
	else
		PlayerPose(GetWhippedIdle())
	endif
	WhippedIdleOverride = none
	if (npc == OwnerRef) || (npc == PlaymateRef)
		UpdateRunicCircle("Whip")
	endif

	String caneModel = WeaponCane.GetModelPath()
	if weaponModel != ""
		WeaponCane.SetModelPath(weaponModel)
	else
		WeaponCane.SetModelPath(MCM.GetWhipWeaponModel())
	endif
	float caneSpeed = WeaponCane.GetSpeed()
	WeaponCane.SetSpeed(caneSpeed * MCM.WhipSpeed / 100.0)
	int caneDamage = WeaponCane.GetBaseDamage()
	WeaponCane.SetBaseDamage(1)
	WeaponCane.SetCritDamage(0); Being cautious; it should be zero anyway.
	float zazDialogType = zazActions.zbfSlaveDialogueType.GetValue()
	zazActions.zbfSlaveDialogueType.SetValue(-1); suppress whipping dialog

	float angleZ = PlayerRef.GetAngleZ()
	if useReverseWhippingScene
		angleZ += 180.0
	endif
	npc.MoveTo(PlayerRef, 80.0 * Math.Sin(angleZ), 80.0 * Math.Cos(angleZ), 0.0, false)
	
	if beforeTopic != none
		Utility.Wait(1)
		npc.Say(beforeTopic)
	endif
	
	; Handle NFF "Weapons only in Combat" setting
	bool isInNffWeaponFaction = false
	Faction nffWeaponFaction
	Form nffWeapFacForm = (Game.GetFormFromFile(0x0020DAE9, "nwsFollowerFramework.esp"))
	if nffWeapFacForm != none
		nffWeaponFaction = nffWeapFacForm as Faction
		isInNffWeaponFaction = npc.IsInFaction(nffWeaponFaction)
		if isInNffWeaponFaction
			npc.RemoveFromFaction(nffWeaponFaction)
		endif
	endif
	
	AddDefeatLRGExclusions()
	
	; Ensure that player health is at least a minimal level, so whipping doesn't end too quickly
	float health = PlayerRef.GetActorValue("Health")
	if health < 70.0
		PlayerRef.RestoreActorValue("Health", (70.0 - health))
	endif
	
	Scene zazScene = zazActions.WhipScene
	if useReverseWhippingScene
		zazActions.WhipScene = WhipSceneReversed
	endif
	ActorBase PlayerBase = PlayerRef.GetBaseObject() as ActorBase
	bool wasEssential = PlayerRef.IsEssential()
	PlayerBase.SetEssential(true)
	ReportHitsOnPlayer = true
	zazActions.WhipPlayer(npc, afMinHealth=20.0)
	Utility.Wait(4)
	zazActions.SetWhipTimeOut(duration)
	While zazActions.WhipScene.IsPlaying()
		Utility.Wait(0.2)
	EndWhile
	PlayerBase.SetEssential(wasEssential)
	zazActions.WhipScene = zazScene
	useReverseWhippingScene = false

	npc.UnequipItem(WeaponCane)
	npc.RemoveItem(WeaponCane, 1)
	WeaponCane.SetModelPath(caneModel)
	WeaponCane.SetSpeed(caneSpeed)
	WeaponCane.SetBaseDamage(caneDamage)
	zazActions.zbfSlaveDialogueType.SetValue(zazDialogType)
	npc.SetDontMove(false); Failsafe if ZAP whipping glitches
	
	if isInNffWeaponFaction
		npc.AddToFaction(nffWeaponFaction)
	endif
	
	RemoveDefeatLRGExclusions()

	UpdateExposure(npc, 10)
	if afterTopic != none
		Utility.Wait(1)
		npc.Say(afterTopic)
	endif
	
	PlayerRef.PlayIdle(IdleDef)
	if (npc == OwnerRef) || (npc == PlaymateRef)
		UpdateRunicCircle("Reset")
	endif
	if doStrip
		Redress(); was ReequipHands()
	endif
	PlayerRef.RemoveFromFaction(HavingSexFaction)
	OwnerRef.RemoveFromFaction(HavingSexFaction)
	if dhlpSuspend
		SendModEvent("dhlp-Resume")
	endif
EndFunction

Function ClearPlayerBodyDecals()
	PlayerRef.EquipItem(BareSkin, abSilent=true)
	PlayerRef.UnequipItem(BareSkin, abSilent=true)
	PlayerRef.RemoveItem(BareSkin, 99, abSilent=true)
EndFunction

Function OverrideWhippedIdle(Idle pose)
	WhippedIdleOverride = pose
EndFunction

Idle Function GetWhippedIdle()
	if WhippedIdleOverride != none
		return WhippedIdleOverride
	endif
	
	int nPoses = MCM.WhippingPoses.GetSize()
	if nPoses > 0
		int i = Utility.RandomInt(0, (nPoses - 1))
		return MCM.WhippingPoses.GetAt(i) as Idle
	endif

	; Use default pose
	if zlib.DD_FT_Inspection != none
		return zlib.DD_FT_Inspection
	else
		return IdleKneeling
	endif
EndFunction

Idle Function GetWhippedRewardIdle(Actor act, bool faceAway=true)
	int nPoses = MCM.WhippingPosesReward.GetSize()
	if nPoses > 0
		if faceAway; Turn the actor around
			Game.SetPlayerAIDriven()
			ZbfUtil.PlaceRelative(zazActions.MarkerPlayer, PlayerRef, 80.0, 180.0)
			PlayerRef.PathToReference(zazActions.MarkerPlayer, 1.0)
			Game.SetPlayerAIDriven(false)
		endif
		; Get the pose
		useReverseWhippingScene = true
		int i = Utility.RandomInt(0, (nPoses - 1))
		return MCM.WhippingPosesReward.GetAt(i) as Idle
	endif
	; Use default pose
	return IdleFlauntAss
EndFunction

; If the Dynamic Defeat LRG Patch is present, exclude the punishment cane (and fists).
Function AddDefeatLRGExclusions()
	Form lrgForm = Game.GetFormFromFile(0x808, "SexLabDefeat_LRG_Patch.esp")
	if lrgForm == none
		return
	endif

	FormList lrgList = lrgForm as FormList
	lrgList.AddForm(WeaponCane)
	lrgExcludedFists = lrgList.HasForm(Fists)
	if !lrgExcludedFists
		lrgList.AddForm(Fists); Add fists too for power attacks.
	endif
EndFunction

Function RemoveDefeatLRGExclusions()
	Form lrgForm = Game.GetFormFromFile(0x808, "SexLabDefeat_LRG_Patch.esp")
	if lrgForm == none
		return
	endif

	FormList lrgList = lrgForm as FormList
	;;;lrgList.RemoveAddedForm(WeaponCane); I can't imagine any situation where a wimpy cane would be used for combat defeat.
	if !lrgExcludedFists
		lrgList.RemoveAddedForm(Fists)
	endif
EndFunction

Function GiveSpankedDebuff()
	MCM.SpankedHardPerk.SetNthEntryValue(0, 0, MCM.SpankedXpRate)
	PlayerRef.DispelSpell(SpankedBuff)
	CastDebuff(SpankedDebuff)
EndFunction

Function GiveWhippedDebuff()
	MCM.WhippedHardPerk.SetNthEntryValue(0, 0, MCM.WhippedXpRate)
	PlayerRef.DispelSpell(WhippedBuff)
	CastDebuff(WhippedDebuff)
EndFunction

Function GiveWhippedMinorDebuff()
	MCM.WhippedHardPerk.SetNthEntryValue(0, 0, (MCM.WhippedXpRate / 2.0))
	PlayerRef.DispelSpell(WhippedBuff)
	CastDebuff(WhippedMinorDebuff)
EndFunction

Function CastDebuff(Spell debuffSpell);  For applying debuff spells to the PC that apply SlaveTats tears
	int tearsIndex = GetTearsLevel(debuffSpell) - 1
	if ActiveTears[tearsIndex]
		; The PC already has this effect.  If we recast the spell, the game handles that as a dispel and a new cast.
		; SlaveTats would spend several seconds removing the tears while concurrently adding them back.  Very bad.
		; To avoid this, mark the tears as not present and preemptively dispel the spell.  The tears won't be removed.
		; Next, mark the tears as present and cast the spell.  The tears won't be re-applied.
		; Result:  SlaveTats won't try to remove or add tears when the net effect is simply extending spell duration.
		ActiveTears[tearsIndex] = false
		PlayerRef.DispelSpell(debuffSpell)
		Utility.Wait(1.0); Give vkjTearsEffect OnEffectFinish time to execute.
		ActiveTears[tearsIndex] = true
	endif
	debuffSpell.Cast(PlayerRef, PlayerRef)
EndFunction

Function PlayerWasHit(ObjectReference akAggressor, Form akSource)
	NumPlayerHits += 1
EndFunction

; Add contract days after a punishment, if appropriate
Function TryToAddPunishmentDays(int multiple = 1)
	int handle = ModEvent.Create("SLTR_TryToAddPunishmentDays")
	ModEvent.PushFloat(handle, (MCM.PunishmentDays * multiple) as float)
	ModEvent.PushFloat(handle, slaveContract.GetValue())
	ModEvent.Send(handle)

	if (MCM.PunishmentDays > 0) && CanAddContractDays()
		SetContractDays(slaveContract.GetValue() + (MCM.PunishmentDays * multiple))
	endif
EndFunction

Function AddContractDays(int days)
	if CanAddContractDays()
		SetContractDays(slaveContract.GetValue() + days)
	endif
EndFunction

bool Function CanAddContractDays()
	return ((slaveContract.GetValue() > 0) && (slaveContract.GetValue() < 9000) && !keptPermanently)
EndFunction

Function SetNextServeReasonScore()
	float score = GetScore()
	if score < 20
		NextServeReasonScore = 20
	elseif score < 50
		NextServeReasonScore = 50
	elseif score < 70
		NextServeReasonScore = 70	
	elseif score < 85
		NextServeReasonScore = 85
	else
		NextServeReasonScore = 101
	endif
EndFunction

bool Function CanProstitute()
	return (GlobalSubmissionScore.GetValue() >= MCM.ProstThreshold)
EndFunction

bool Function CanTakeHealingPotions()
	return (MCM.UseCombatPotions && (CombatPotions.GetItemCount(KwPotion) < 6) && PlayerHasHealingPotions())
EndFunction

bool Function PlayerHasHealingPotions()
	return (PlayerRef.GetItemCount(KwRestoreHealth) > 0)
EndFunction

Function UpdateBonusProstQuota(int amount)
	BonusProstQuota += amount
	if BonusProstQuota > 100
		BonusProstQuota = 100
	endif
EndFunction

int Function GetBonusProstQuota()
	return BonusProstQuota
EndFunction

Function ClearBonusProstQuota()
	BonusProstQuota = 0
	doNotPunishOwnerBleedout = false
EndFunction

bool Function CanPunishOwnerBleedout()
	if doNotPunishOwnerBleedout
		return false
	endif
	if (MCM.BleedoutDays > 0) && CanAddContractDays()
		return true
	elseif (MCM.BleedoutProstQuota > 0) && (MCM.BleedoutProstQuota < 100) && CanProstitute()
		return true
	elseif (MCM.BleedoutPotions > 0) && CanTakeHealingPotions()
		return true
	endif
	return false
EndFunction

; Send mod event for Devious Followers Continued resistance loss
Function UpdateDFResistance(float severity)
	Float baseLoss = MCM.DFBaseResistLoss
	SendModEvent("DF-ResistanceLoss", "", baseLoss * severity)
EndFunction

; Duration is real seconds, not standard DD vibration time (which varies with processor speed)
int Function vibratePlayer(int pow = 4, int min = 10, int max = 15, bool tease = true)
	Debug.Notification("Your " + OwnerTitle + " activates your vibration devices.")
	int vibTime = (MCM.VibDuration * (Utility.RandomInt(min,max))) as int
	TimedVibrationSpell.SetNthEffectDuration(0, vibTime)
	TimedVibrationSpell.Cast(PlayerRef, PlayerRef)
	return zlib.VibrateEffect(PlayerRef, pow, 120, teaseOnly=tease, silent=true)
EndFunction

; Duration is real seconds, not standard DD vibration time (which varies with processor speed)
int Function vibrateNPC(actor npc, int pow = 4, int dur = 20, bool tease = true)
	int vibTime = (MCM.VibDuration * dur) as int
	TimedVibrationSpell.SetNthEffectDuration(0, vibTime)
	TimedVibrationSpell.Cast(npc, npc)
	return zlib.VibrateEffect(npc, pow, 120, true, true)
EndFunction

int Function vibrateFixedTime(actor act, int pow = 4, int seconds = 20, bool tease = true)
	TimedVibrationSpell.SetNthEffectDuration(0, seconds)
	TimedVibrationSpell.Cast(act, act)
	return zlib.VibrateEffect(act, pow, 120, true, true)
EndFunction

; Duration is real seconds, not standard DD vibration time (which varies with processor speed)
int Function vibrateWithPlaymate(int pow = 4, int min = 20, int max = 30, bool tease = true)
	Debug.Notification("Your " + OwnerTitle + " activates your vibration devices.")
	int vibTime = (MCM.VibDuration * (Utility.RandomInt(min,max))) as int
	if PlaymateIsAvailable
		SendVibrateNPC(PlaymateRef, 4, vibTime)
	endif
	TimedVibrationSpell.SetNthEffectDuration(0, vibTime)
	TimedVibrationSpell.Cast(PlayerRef, PlayerRef)
	return zlib.VibrateEffect(PlayerRef, pow, 120, teaseOnly=tease, silent=true)
EndFunction

Function SendVibrateNPC(actor npc, int pow = 4, int dur = 20, bool teaseOnly = true)
	int handle = ModEvent.Create("SLTRVibrateNPC")
	ModEvent.PushForm(handle, npc)
	ModEvent.PushInt(handle, pow)
	ModEvent.PushInt(handle, dur)
	ModEvent.PushBool(handle, teaseOnly)
	ModEvent.Send(handle)
EndFunction

bool function vibrateCheck(actor act)
	if zlib.IsVibrating(act)
		return false
	endif
	if act.WornHasKeyword(zlib.zad_EffectLively) || act.WornHasKeyword(zlib.zad_EffectVeryLively)
		return true
	endIf
	return false
endFunction

Function vibratePlayerBoundEdging(bool extraLong = false)
	Armor device
	if !PlayerRef.WornHasKeyword(zlib.zad_DeviousHeavyBondage)
		device = MCM.aRestraintForm.GetAt(MCM.aRestraints) as Armor
		zlib.LockDevice(PlayerRef, device)
	endif

	UpdateExposure(PlayerRef, 20); Give the victim an initial boost.
	int dur = (60 * MCM.ForcedVibDuration) as int
	if extraLong
		dur = (100 * MCM.ForcedVibDuration) as int
	endif
	vibratePlayer(5, dur, dur, true)
	
	if device != none
		zlib.UnlockDevice(PlayerRef, device)
	endif
EndFunction

Function vibratePlayerToOrgasm(bool extraLong = false)
	; Get the victim fired up
	if PlayerRef.GetFactionRank(SLAFaction) < 60
		zlib.Aroused.SetActorExposure(PlayerRef, 60)
	endif
	
	int dur = (60 * MCM.ForcedVibDuration) as int
	if extraLong
		dur = (100 * MCM.ForcedVibDuration) as int
	endif
	int orgasms = vibratePlayer(5, dur, dur, false)
	if orgasms < 1
		Debug.Notification("No orgasm?  Your " + OwnerTitle + " gives you more stimulation.")
		zlib.VibrateEffect(PlayerRef, 5, 20, false, true)
	endif
	; Arousal is zero after that performance
	zlib.Aroused.SetActorExposure(PlayerRef, 0)
EndFunction

Function vibratePlayerToOneOrgasm(int arousalBoost = 0)
	if PlayerRef.GetFactionRank(SLAFaction) < arousalBoost
		zlib.Aroused.SetActorExposure(PlayerRef, arousalBoost)
	endif
	Game.DisablePlayerControls(True, True, True, False, True, True, True, True)
	; DD vibration stops if the PC enters a scene, such as a force greeting from an approach mod
	SendModEvent("dhlp-Suspend")
	PlayerRef.AddToFaction(HavingSexFaction)
	RegisterForModEvent("DeviceActorOrgasm", "OnDeviceOrgasmStopVibe")
	zlib.VibrateEffect(PlayerRef, 5, 60, teaseOnly=false, silent=true)
	UnregisterForModEvent("DeviceActorOrgasm")
	PlayerRef.RemoveFromFaction(HavingSexFaction)
	SendModEvent("dhlp-Resume")
	Game.EnablePlayerControls()
EndFunction

float Function GetTimeScaleFactor()
	float timefac = Timescale.GetValue()
	if (timefac <= 1.0) || UI.IsMenuOpen("Dialogue Menu");  Some mods mess with timescale during dialog
		timefac = playerTimeScale
	else
		timefac = 20.0
	endif
	return timefac
EndFunction

Function Feeding(Actor partner)
	Utility.Wait(2.5)
	partner.AddToFaction(VampireFedFaction)
	int dur = MCM.VampireCooldown * 3600 / (GetTimeScaleFactor() as int)
	BloodDrainSpell.SetNthEffectDuration(0, dur)
	BloodDrainSpell.Cast(PlayerRef, PlayerRef)

	sslBaseAnimation[] anims = SexLab.GetAnimationsByTags(2, "Feeding")
	if (anims.Length == 0)
		if !warnedNoFeedAnims
			warnedNoFeedAnims = true
			Debug.MessageBox("You do not have any vampiric feeding animations installed (with a \"Feeding\" tag), so general oral sex will play.")
		endif
		oralSex(partner, PlayerRef)
		return
	endif
	
	if MCM.VampireFeedingOption == 0
		SexlabDomNoStrip(anims, partner, PlayerRef)
	else
		actor[] sexActors = new actor[2]
		sexActors[0] = PlayerRef
		sexActors[1] = partner
		SexLab.StartSex(sexActors, anims)
	endif
EndFunction

Function SexlabDomNoStrip(sslBaseAnimation[] anims, Actor dom, Actor sub, bool stripSub=true)
	sslThreadModel thread = SexLab.NewThread(30.0)
    thread.AddActor(sub)
    thread.AddActor(dom)
    thread.DisableUndressAnimation(dom)

	int i = 33
	bool[] slots = new bool[33]
	while i > 0
		i -= 1
		slots[i] = false
	endWhile
	thread.SetStrip(dom, slots)
	if !stripSub
		thread.SetStrip(sub, slots)
	endif
 
	thread.DisableRagdollEnd(sub)
    thread.DisableRedress(sub)
	thread.DisableBedUse(true)
    thread.SetAnimations(anims)
  
	thread.StartThread()
EndFunction

function Masturbate()
	actor[] sexActors = new actor[1]
	sexActors[0] = PlayerRef
	
	string mySupress = "M,Estrus" ;Exclude male masturbation animations by default....
	if GetMySex(PlayerRef) == 0
		mySupress = "F,Estrus" ;...unless the player is male. In which case switch to excluding female masturbation animations.
	endif
	
	ownerWatchesSex = true
	toldToMasturbate = true
	sslBaseAnimation[] anims = SexLab.GetAnimationsByTags(1, "Solo,Masturbation", mySupress, false)
	SexLab.StartSex(sexActors, anims)
endFunction

function EndSexQuest()
	if sexquest.IsRunning()
		sexquest.setstage(20)
	endif
endFunction

; A quick and easy script call to make a NPC (usually the owner) fuck the player.
function Fuck(Actor partner)
	randFuckTag(partner, PlayerRef); This is a submission fetish mod, so put the player in the submissive role, then let's find an animation.
endFunction

; Check to see if an actor is wearing a gag that does not permit oral sex.
bool Function IsOralBlocked(actor act)
	if act.WornHasKeyword(zlib.zad_PermitOral) || act.WornHasKeyword(KwZbfPermitOral)
		return false
	elseif act.WornHasKeyword(zlib.zad_DeviousGag) || act.WornHasKeyword(KwZbfGag)
		return true
	endif
	return false
EndFunction

;The "GetActorBase().GetSex()" call is used so much in this script let's streamline it.
int Function GetMySex(actor A, bool useSexLab=true)
	int gender = A.GetActorBase().GetSex()
	if useSexLab
		gender = SexLab.GetGender(A)
		if (gender > 1); should only happen if actor A is a creature -> should never happen
			gender = A.GetActorBase().GetSex()
		endif
	endif
	return gender
endFunction

; Check to see if an actor is male or if the strap-on sex setting wins.
bool function maleOrStrap(actor act)
	if (GetMySex(act) == 0) || \
	   ((act == OwnerRef) && (Utility.RandomInt(1,100) <= MCM.v_StrapOn)) || \
	   ((act == PlaymateRef) && (Utility.RandomInt(1,100) <= MCM.PlaymateStrapOn))
		return true
	endIf
	return false
endFunction

; Create a specific type of sex act event based on the genders of the "dominant" and the "submissive" character.
function randFuckTag(Actor dom, Actor sub)
	int domGen = GetMySex(dom)
	int subGen = GetMySex(sub)
	
	; Chance that oral sex will be performed, assuming the submissive character isn't gagged.
	if !IsOralBlocked(sub) && !sub.WornHasKeyword(zlib.zad_DeviousHeavyBondage)
		if (dom == OwnerRef) && (sub == PlayerRef)
			if (Utility.RandomInt(1,100) <= MCM.LikesOral)
				oralSex(dom, sub)
				return
			endif
		elseif Utility.RandomInt(1,100) <= 33
			oralSex(dom, sub)
			return
		endif
	endif

	if (sub.WornHasKeyword(zlib.zad_DeviousBelt)) && (!sub.WornHasKeyword(zlib.zad_PermitAnal))
		if (!IsOralBlocked(sub))
			; Force oral sex if belted and anal is blocked
			oralSex(dom, sub)
			return
		else; All holes are blocked by devices
			bool allBlocked = true
			if (dom == OwnerRef) && (sub == PlayerRef); Owner might be able to free up Lola enough for sex.
				if GagQuest.IsRunning()
					; Swap to a ring gag and use oral sex.
					Armor ringGag = MCM.GetRingGag()
					(GagQuest as vkjDeviceControl).Device = ringGag
					zlib.SwapDevices(PlayerRef, ringGag, zlib.zad_DeviousGag, destroyDevice = true, genericonly = true)
					oralSex(dom, sub)
					return
				else
					; Try to unlock devices with PC's or owner's keys.
					if sub.WornHasKeyword(zlib.zad_DeviousHood) && ReleaseDeviceByKeyword(PlayerRef, zlib.zad_DeviousHood)
						oralSex(dom, sub)
						return
					elseif ReleaseDeviceByKeyword(PlayerRef, zlib.zad_DeviousGag)
						oralSex(dom, sub)
						return
					endif
					if ReleaseDeviceByKeyword(PlayerRef, zlib.zad_DeviousBelt)
						allBlocked = false
					endif
				endif
			endif
			if allBlocked
				if sub == PlayerRef
					if dom == OwnerRef
						; Just in case SexLab fails with PC in full chastity, make the owner sexually satisfied to stop sex demands.
						zlib.Aroused.SetActorExposure(OwnerRef, 10)
						IsOwnerHorny = false
						IsOwnerAtMaxArousal = false
					endif
				else
					; Instead of the 3 lines below, just let SexLab do its best.
					;Debug.Notification("All of " + sub.GetBaseObject().GetName() + "'s holes are blocked.")
					;EndSexQuest()
					;return
				endif
			endif
		endif
	endif

	Actor A = sub ; A and B will be used to streamline the sex positions used once a sex keyword tag is settled on.
	Actor B = dom
	String mySex = "sex"

	if (domGen == 0) && (subGen == 0)
		; If both characters are male the dom performs anal sex on the sub
		mySex = "Anal"
	elseif (subGen == 1) && (maleOrStrap(dom) || sub.WornHasKeyword(zlib.zad_DeviousHeavyBondage))
		; The sub is female and the dom male (or female with strap-on)
		if ((dom == OwnerRef) && (sub == PlayerRef) && (Utility.RandomInt(1,100) <= MCM.v_likesAnal)) || sub.WornHasKeyword(zlib.zad_DeviousBelt)
			mySex = "Anal"
		else
			mySex = "Vaginal"
			if (dom == OwnerRef) && (domGen == 0) && (Utility.RandomInt(1,100) <= 50)
				; Weight male dom on female sub animations toward doggy
				mySex += ",Doggystyle"
			endif
		endif
	elseif (domGen == 1) && (subGen == 1); FF
		if (dom == PlaymateRef) && (sub == PlayerRef) && (MCM.PlaymateStrapOn < 0) && (Utility.RandomInt(1,100) <= Math.abs(MCM.PlaymateStrapOn))
			; The PC will use a strap-on on the playmate.  The playmate goes in the receiving position.
			A = dom
			B = sub
			mySex = "Vaginal"
		else
			; If both characters are female then a lesbian sex act is performed.
			; The sub is listed first since most lesbian animations have that as the more submissive role.
			A = sub
			B = dom
			mySex = "Lesbian,FF"
		endif
	elseif domGen == 1 && subGen == 0; Femdom
		if (dom == OwnerRef) && (Utility.RandomInt(1,100) <= MCM.v_likesAnal)
			mySex = "Anal"
		elseif (dom == PlaymateRef) && (Utility.RandomInt(1,100) <= MCM.PlaymateStrapOn)
			mySex = "Anal"
		else
			; A cowgirl animation places the female in a relatively dominant role.
			; Sub is listed second since Sexlab usually assumes the 1st slot is the female character in hetero sex.
			A = dom
			B = sub
			mySex = "Cowgirl,Vaginal"; GetAnimationsForTwoByTags() requires all tags if they have vaginal or anal, and Mistress doesn't want it in the ass.
		endif
	endif
	
	GenericFuck(A, B, mySex)
endFunction

function oralSex(Actor dom, Actor sub)
	int domGen = GetMySex(dom)
	int subGen = GetMySex(sub)

	if !IsOralBlocked(sub)
		if domGen == 1; Female dom gets fingered or her pussy licked.
			if subGen == 0
				GenericFuck(dom, sub, "Cunnilingus,Hands")
			else
				GenericFuck(sub, dom, "Cunnilingus")
			endif
		else; Otherwise, assume the dom is male and give him a BJ.
			GenericFuck(sub, dom, "Blowjob")
		endif
	else
		GenericFuck(sub, dom, "Sex")
	endif
endFunction

function GenericFuck(Actor first, Actor second, string tags)
	EndSexQuest()
	if (first == PlayerRef) || (second == PlayerRef)
		if (first == OwnerRef) || (second == OwnerRef)
			SexCooldownSpell.Cast(OwnerRef, OwnerRef)
		elseif (first == PlaymateRef) || (second == PlaymateRef)
			SexCooldownSpell.Cast(PlaymateRef, PlaymateRef)
		endif
	endif

	actor[] sexActors = new actor[2]
	sexActors[0] = first
	sexActors[1] = second

	sslBaseAnimation[] anims = GetAnimationsForTwoByTags(tags, "", sexActors[0], sexActors[1])
	SexLab.StartSex(sexActors, anims)
endFunction

Function FuckLoving(Actor partner)
	FuckWithTagsAndBackup(partner, "Loving")
EndFunction

Function FuckWithTagsAndBackup(Actor partner, string tags, bool PlayerSwap = false, string altTags = "", string suppressTags = "", int requiredAnims = 1)
	EndSexQuest()
	if partner == OwnerRef
		SexCooldownSpell.Cast(OwnerRef, OwnerRef)
	elseif partner == PlaymateRef
		SexCooldownSpell.Cast(PlaymateRef, PlaymateRef)
	endif
	
	actor[] sexActors = new actor[2]
	if (PlayerSwap)
		sexActors[0] = partner
		sexActors[1] = PlayerRef
	else
		sexActors[0] = PlayerRef
		sexActors[1] = partner
	endif

	sslBaseAnimation[] anims = GetAnimationsForTwoByTags(tags, suppressTags, sexActors[0], sexActors[1])
	if anims.Length > requiredAnims
		SexLab.StartSex(sexActors, anims)
	else
		; Try backup tags
		anims = GetAnimationsForTwoByTags(altTags, suppressTags, sexActors[0], sexActors[1])
		if anims.Length > 0
			SexLab.StartSex(sexActors, anims)
		else
			randFuckTag(sexActors[0], sexActors[1])
		endif
	endif
EndFunction

function FuckWithTags(Actor partner, string tags, bool PlayerSwap = false)
	EndSexQuest()
	if partner == OwnerRef
		SexCooldownSpell.Cast(OwnerRef, OwnerRef)
	elseif partner == PlaymateRef
		SexCooldownSpell.Cast(PlaymateRef, PlaymateRef)
	endif
	
	actor[] sexActors = new actor[2]
	if (PlayerSwap)
		sexActors[0] = partner
		sexActors[1] = PlayerRef
	else
		sexActors[0] = PlayerRef
		sexActors[1] = partner
	endif

	sslBaseAnimation[] anims = GetAnimationsForTwoByTags(tags, "", sexActors[0], sexActors[1])
	if anims.Length > 0
		SexLab.StartSex(sexActors, anims)
	else
		randFuckTag(sexActors[0], sexActors[1])
	endif
endFunction

sslBaseAnimation[] Function GetAnimationsForTwoByTags(string tags, string suppressTags, Actor actor1, Actor actor2)
	int sex1 = GetMySex(actor1)
	int sex2 = GetMySex(actor2)
	bool requireAllTags = false
	string preRoughTags = ""
	bool maleDom = ((actor1 == PlayerRef) && (sex2 == 0))  ||  ((actor2 == PlayerRef) && (sex1 == 0))
	int i

	; Check for rough sex
	bool useRough = false
	if ((actor1 == OwnerRef) || (actor2 == OwnerRef)) && ((actor1 == PlayerRef) || (actor2 == PlayerRef))
		if StringUtil.Find(tags, "Loving") < 0
			useRough = UseRoughSex()
		endif
	endif
	string suppress = "Bound,Binding,Furniture,Feeding,Grope,Groping,Spanking,Spank"
	if StringUtil.Find(tags, "Boobjob") < 0
		suppress += ",Boobjob"
	endif
	if StringUtil.Find(tags, "Breast") < 0
		suppress += ",Breast"
	endif
	bool hasRough = (StringUtil.Find(tags, "Rough") >= 0)
	if !hasRough && !useRough
		suppress += ",Rough,Aggressive"
	endif
	
	if StringUtil.Find(tags, "Lesbian") < 0;  Lesbian sex can't be rough (no animations).
		bool hasMultipleTags = (StringUtil.Find(tags, ",") >= 0)
		if hasRough && hasMultipleTags
			; Multiple tags with Rough should be used as-is, requiring all tags.
			requireAllTags = true
		elseif (hasRough || useRough)
			if hasMultipleTags
				; This case is awkward.  We're not requiring all tags because multiple tags (not including Rough) were passed in.
				; We can't append "Rough" because that would just make the animation lookup less specific.
				; All we can do is not suppress Rough, so there's a chance at least for a rough animation.
			else
				if !hasRough
					preRoughTags = tags
					tags += ",Rough"
				endif
				requireAllTags = true
			endif
		endif
	elseif useRough
		; Lesbian rough sex animations don't exist, but we can switch to the "MF" tag to use "soft rough" sex
		; where the dom uses a strap-on to take the sub like a man would.  This will ignore the strap-on setting.
		tags = "MF,Rough"; Actually, add Rough and require all tags for true rough sex.
		requireAllTags = true
		hasRough = true
		suppress += ",Blowjob"
	endif
	if StringUtil.Find(tags, "Cowgirl") < 0; Only use Cowgirl sex positions in certain femdom animations.
		suppress += ",Cowgirl"
	endif	
	if maleDom
		suppress += ",Missionary"; Missionary is too equal ground for a male dom.
	else
		suppress += ",Blowjob"; No blowjobs if the dom is female
	endif
	if StringUtil.Find(tags, "Cunnilingus") >= 0
		if sex1 + sex2 == 2; FF
			suppress += ",MF"
		else
			suppress += ",Lesbian,FF"
		endif
	endif
	if StringUtil.Find(tags, "Vaginal,Doggy") == 0; exclude anal doggystyle
		suppress += ",Anal"
	elseif StringUtil.Find(tags, "Anal,Doggy") == 0; exclude vaginal doggystyle
		suppress += ",Vaginal"
	endif
	
	suppress += "," + suppressTags
	
	; August 2024.  New requirement.  Handles tag sets like "Cowgirl,Vaginal".
	if (StringUtil.Find(tags, "Vaginal") >= 0) || (StringUtil.Find(tags, "Anal") >= 0)
		requireAllTags = true
	endif

	sslBaseAnimation[] anims = SexLab.GetAnimationsByTags(2, tags, suppress, requireAllTags)
	;MiscUtil.PrintConsole(anims.Length + " anims for " + tags + " suppressing " + suppress)
	;MiscUtil.PrintConsole(anims)
	; Rough anims should also include aggressive ones since the pool of rough ones is so small.
	if (StringUtil.Find(tags, "Rough") >= 0)
		; Replace Rough with Aggressive, get a second set, then merge them.
		string aggressiveTags = ""
		string[] roughTags = StringUtil.Split(tags, ",")
		i = roughTags.Length
		While i > 0
			i -= 1
			if roughTags[i] != "Rough"
				if aggressiveTags == ""
					aggressiveTags = roughTags[i]
				else
					aggressiveTags += "," + roughTags[i]
				endif
			endif
		EndWhile
		aggressiveTags += ",Aggressive"
		sslBaseAnimation[] aggressiveAnims = SexLab.GetAnimationsByTags(2, aggressiveTags, suppress, true)
		anims = MergeAnimLists(anims, aggressiveAnims)
	endif
	
	; Some animations use only Doggy OR Doggystyle, so search for both.
	bool hasDoggy
	bool hasDoggystyle
	string[] allTags = StringUtil.Split(tags, ",")
	i = allTags.Length
	While i > 0
		i -= 1
		if allTags[i] == "Doggy"
			hasDoggy = true
		elseif allTags[i] == "Doggystyle"
			hasDoggystyle = true
		endif
	EndWhile
	if (hasDoggy && !hasDoggystyle) || (!hasDoggy && hasDoggystyle)
		string dogTags = ""; Like the name
		i = allTags.Length
		While i > 0
			i -= 1
			if allTags[i] == "Doggy"
				allTags[i] = "Doggystyle"
			elseif allTags[i] == "Doggystyle"
				allTags[i] = "Doggy"
			endif
			if dogTags != ""
				dogTags += ","
			endif
			dogTags += allTags[i]
		EndWhile
		
		sslBaseAnimation[] dogAnims = SexLab.GetAnimationsByTags(2, dogTags, suppress, true)
		anims = MergeAnimLists(anims, dogAnims)
	endif
	
	if anims.Length == 0; Handle the unusual case that no animations matched the tags
		suppress = suppressTags + "Furniture"
		if CanPose()
			suppress += ",Bound,Binding"
		endif
		if !useRough
			suppress += ",Rough,Aggressive"
		endif
		
		; Try Oral if Cunnilingus had no matches.
		if StringUtil.Find(tags, "Cunnilingus") >= 0
			string oralSuppress = suppress
			if sex1 + sex2 == 2; FF
				oralSuppress += ",MF,Blowjob"
			else
				oralSuppress += ",Lesbian,FF"
				if !maleDom
					oralSuppress += ",Blowjob"				
				endif
			endif
			anims = SexLab.GetAnimationsByTags(2, "Oral", oralSuppress)
			if anims.Length > 0
				return anims
			endif
		endif
		
		anims = SexLab.GetAnimationsByTags(2, "Sex", suppress)
		if anims.Length == 0
			SexLab.GetAnimationsByTags(2, "Sex", "")
		endif
	endif

	return anims
EndFunction

sslBaseAnimation[] function MergeAnimLists(sslBaseAnimation[] List1, sslBaseAnimation[] List2)
	int Count = List2.Length
	int i = List2.Length
	while i
		i -= 1
		Count -= ((List1.Find(List2[i]) != -1) as int)
	endWhile
	;MiscUtil.PrintConsole("New anims in list 2: " + Count)
	sslBaseAnimation[] Output = sslUtility.IncreaseAnimation(Count, List1)
	;MiscUtil.PrintConsole("Output start: " + Output)
	i = List2.Length
	while i && Count
		i -= 1
		;MiscUtil.PrintConsole("Testing " + List2[i])
		if List1.Find(List2[i]) == -1
			Count -= 1
			Output[List1.Length + Count] = List2[i]; This was wrong in sslUtility:  Output[Count] = List2[i]
			;iscUtil.PrintConsole("Adding at " + (List1.Length + Count) + ": " + List2[i])
		endIf
	endWhile
	return Output
EndFunction

Bool Function UseRoughSex()
	float score = GlobalSubmissionScore.GetValue()
	float chance0 = MCM.v_roughSexChance; Percent chance at score 0
	float chance100 = MCM.v_roughSexChance100; Percent chance at score 100
	float chance = 0.0; Derived percent chance
	
	if score < 0.0
		return true; Always rough for a rebellious slave
	endif
	
	chance = chance0 + ((score / 100.0) * (chance100 - chance0))
	return (Utility.RandomFloat(0.0, 100.0) <= chance)
EndFunction

function FuckThreeWay(Actor partner1, Actor partner2, Actor partner3)
	EndSexQuest()

    actor[] sexActors = new actor[3]
    sexActors[0] = partner3
    sexActors[1] = partner2
    sexActors[2] = partner1
	
	; Build a gender based sex tag
	int femCount = partner1.GetActorBase().GetSex() + partner2.GetActorBase().GetSex() + partner3.GetActorBase().GetSex()
	string sexTag
	if femCount == 0
		sexTag = "MMM"
	elseif femCount == 1
		sexTag = "MMF,FMM"
	elseif femCount == 2
		sexTag = "MFF,FFM"
	elseif femCount == 3
		sexTag = "FFF"
	endif
	
	; For 3-ways with one male third party, place the man in the male position rather than the female owner.
	if (femCount == 2) && (partner1 == OwnerRef) && (partner1.GetActorBase().GetSex() == 1) && (partner2.GetActorBase().GetSex() == 0)
		sexActors[1] = partner1
		sexActors[2] = partner2		
	endif

	sslBaseAnimation[] anims = SexLab.GetAnimationsByTags(3, sexTag, "Rough,Aggressive,Bound,Binding,Grope,Groping", false)
	if anims.Length == 0	
		MiscUtil.PrintConsole("No animations found tagged with " + sexTag)
		if femCount == 3
			; Try a 3-way with 2 females.  Owner is already in the male slot.
			anims = SexLab.GetAnimationsByTags(3, "MFF,FFM", "Rough,Aggressive,Bound,Binding,Grope,Groping", false)
		endif
		if anims.Length == 0	
			anims = SexLab.GetAnimationsByTags(3, "Sex", "Rough,Aggressive,Bound,Binding,Grope,Groping", false)
		endif
	elseif femCount == 0 || femCount == 3
		; Randomize positions for variety for the few available FFF or MMM animations.
		int n = 2
		While n > 0
			int index = Utility.RandomInt(0, n)
			if index < n
				Actor act = sexActors[n]
				sexActors[n] = sexActors[index]
				sexActors[index] = act
			endif
			n -= 1
		EndWhile
	endif
    SexLab.StartSex(sexActors, anims)
endFunction

function FuckThreeWayDom(Actor partner)
	FuckThreeWay(OwnerRef, partner, PlayerRef)
endFunction

function SetNewName()
	if (!MCM.NickNameMode)
		oldname = PlayerRef.GetBaseObject().GetName()
		PlayerRef.GetBaseObject().SetName("Lola")
	endif
endFunction

function ReturnOldName()
	if oldname != "xJoeBobx"
		PlayerRef.GetBaseObject().SetName(oldname)
	endif
endFunction

Function BeginSlavery()
	if isSlave
		return
	endif
	
	SetNewName()
	if (MCM.NoZazEnslave == false) && !EnslavedFromDFC
		ZazSlaveControl.EnslaveActor(PlayerRef, "vkj_lola")
	endif
	timeOfLastService = (GameDaysPassed.GetValue() - 0.08)
	MCM.UpdateTimesSubmitted()
	MCM.CurrentDaysSubmitted = 0
	
	OwnerRef = Owner.GetActorReference()
	StorageUtil.SetFormValue(self, "OwnerRef", OwnerRef)
	if OwnerRef.GetActorBase().GetSex() == 0; Don't use SexLab gender for this
		OwnerTitle = "Master"
		TitleAlt.ForceRefTo(Master)
	else
		OwnerTitle = "Mistress"
		TitleAlt.ForceRefTo(Mistress)
	endif
	zlib.Aroused.UpdateActorOrgasmDate(OwnerRef)
	UpdateOwnerCarryWeight()
	ownerExpenseLevel = 0.0
	OwnerSexuality()
	PCSexuality()
	IsOwnerVampire = OwnerRef.HasKeyword(KwVampire)
	if OwnerRef.IsInFaction(PotentialHireling)
		hiredWithEnslavement = !OwnerRef.IsInFaction(CurrentHireling)
		if hiredWithEnslavement
			OwnerRef.AddToFaction(CurrentHireling)
		endif
	endif
	InitActiveTears()
	
	IdleCommentsQuest.Start()
	GeneralDialog.Start()
	if MCM.useIWW
		MessageQuest.Start()
	endif
	if OwnerRef.IsInFaction(HousecarlFaction)
		MCM.CheckHousecarlAchievement()
	endif
	if OwnerRef.IsInFaction(FormerOwnerFaction)
		MCM.CheckResubmissionAchievement()
		float formerScore = OwnerRef.GetFactionRank(FormerScoreFaction)
		float score = formerScore
		if score < 0.0
			score = 0.0
		endif
		
		; Reduce score for leaving.
		if (score / 2.0) > (score - 20)
			score = score / 2.0
		else
			score -= 20.0
		endif
		; Reduce score for having had another master.
		if OwnerRef.GetFormID() != LastOwnerID.GetValue()
			score -= 10.0
			if (formerScore >= 10.0) && (score < 5.0)
				score = 5.0
			endif
			if score < 0.0
				score = 0.0
			endif
		endif
		
		GlobalSubmissionScore.SetValue(score)
	else
		GlobalSubmissionScore.SetValue(0)
		LikesPony = 0; Reset PC attitude for this owner
		int diff = MCM.OwnerStartingGold - FollowerItemCount(OwnerRef, Gold)
		if diff > 0
			OwnerRef.AddItem(Gold, diff)
		endif
	endif

	ServeReason1 = -1
	ServeReason2 = -1
	SetNextServeReasonScore()
	UpdateSubmittedToActorFaction(OwnerRef, 10)
	
	MCM.ResetCooldowns()
	if WasBought && (MCM.NextTrophySlaveCD > 0.0)
		MCM.NextTrophySlave.SetValue(Utility.GetCurrentGameTime() + 7.0)
	endif
	
	MCM.ButtToyCount = 0; reset for each owner
	UpdateRequiredService(true)
	MCM.GlobalDailyGold.SetValue(200)
	
	if MCM.collarBuffs
		PlayerRef.AddSpell(UnarmedDamageBuff, false)
	endif
	if MCM.DragonVib
		PlayerRef.AddSpell(MCM.DragonDeathSpell, false)
	endif
	if MCM.SpeechReductionRate > 0.0
		PlayerRef.AddSpell(SpeechReductionSpell, false)
		UpdateSpeechReductionRate()
	endif
	if MCM.UseCombatPotions
		CombatPotionManager.Start()
	endif
	
	RegisterForEvents()
	
	isSlave = true
	LogAndPrint("SLTR: Started enslavement to " + OwnerRef.GetBaseObject().GetName())
	SendModEvent("SLTR Start")
EndFunction

Function EndSlavery()
	if !isSlave
		return
	endif

	; Prepare exit mod event:  Event SLTR_Exit(string initiatingEvent, Form ownerActor, float score, float daysEnslaved)
	int handle = ModEvent.Create("SLTR Exit")
	string initiatingEvent = "Strong Hand"
	float exitScore = GlobalSubmissionScore.GetValue()
	if EnslavedFromDFC
		initiatingEvent = "SLTR DF Entry"
		exitScore = (Quest.GetQuest("vkjReturnToDFC") as vkjReturnToDFC).Score
		MCM.RestoreKeptThresholds()
	endif
	ModEvent.PushString(handle, initiatingEvent)
	ModEvent.PushForm(handle, OwnerRef)
	ModEvent.PushFloat(handle, exitScore)
	ModEvent.PushFloat(handle, MCM.CurrentDaysSubmitted as float)
	
	EmptyCombatPotions(PlayerRef)

	SexLab.UntrackActor(OwnerRef, "OwnerSex")
	if PlaymateRef != none
		SexLab.UntrackActor(PlaymateRef, "PlaymateSex")
	endif
	UnregisterForAllModEvents()
	isSlave = false
	WasBought = false
	TimesServiceIsRequired = 0
	TimesSexIsRequired = 0
	dailyScore = 0.0
	FailedOfferingService = 0
	if (MCM.NoZazEnslave == false) && !EnslavedFromDFC
		ZazSlaveControl.FreeSlave(PlayerRef, "vkj_lola")
	endif
	ClothesPrankContainer = none
	
	MCM.SetDisableKeptSettings(false)
	if MCM.useRadProstitution && OwnerIsInnkeeper()
		MakeOwnerRadProPimp(false)
	endif
	OwnerRef.AddToFaction(FormerOwnerFaction)
	OwnerRef.SetFactionRank(FormerScoreFaction, GlobalSubmissionScore.GetValue() as int)
	LastOwnerID.SetValue(OwnerRef.GetFormID())
	if hiredWithEnslavement
		OwnerRef.RemoveFromFaction(CurrentHireling)
	endif
	OwnerCooldownSpell.Cast(OwnerRef, OwnerRef); Spells expire when the NPC changes cells so this might not last long
	string ownerName = OwnerRef.GetBaseObject().GetName()
	OwnerRef = none
	StorageUtil.SetFormValue(self, "OwnerRef", OwnerRef)
	Master.GetActorBase().SetName("Master")
	SetPlaymate(none)
	SetLastHomeBeatingToy(none)
	BleedoutCount = 0
	ClearBonusProstQuota()
	
	((self as Quest) as vkjDeviceControl).GoToState("Disabled"); Unequip collar
	if PlayerRef.WornHasKeyword(zlib.zad_kw_InflatablePlugAnal); Owner takes back the inflatable plug, since it was for a game.
		zlib.UnlockDeviceByKeyword(PlayerRef, zlib.zad_kw_InflatablePlugAnal, destroyDevice=true)
	endif

	; Dispel spells
	UpdateSubmissionEffects(0)
	TrickQuest.DispelEyeCandy()
	if MCM.AddKneelSpell
		MCM.AddKneelSpell = false
		PlayerRef.RemoveSpell(MCM.KneelSpell)
	endif
	PlayerRef.RemoveSpell(UnarmedDamageBuff)
	PlayerRef.RemoveSpell(MCM.DragonDeathSpell)
	PlayerRef.RemoveSpell(SpeechReductionSpell)
	PlayerRef.RemoveSpell(RunicCircleSpell)

	IdleCommentsQuest.Stop()
	GeneralDialog.Stop()
	if MCM.useIWW
		MessageQuest.Stop()
	endif
	(Quest.GetQuest("vkjOwnerCombatMonitor")).Stop(); Just a precaution.  It shouldn't be necessary.
	if MCM.UseCombatPotions
		CombatPotionManager.Stop(); potions should have already been flushed
	endif
	StopQuests(); Stop any active quests
	PlayerRef.RemoveItem(QuestItems, 1, true)
	PlayerRef.RemoveItem(DeadWeight, 999, true)
	GlobalSubmissionScore.SetValue(0)
	
	BlockEvents = false
	SuspendAll = false

    ModEvent.Send(handle)
	
	LogAndPrint("SLTR: Ended enslavement to " + ownerName)
EndFunction

bool Function IsDhlpSuspended()
	return dhlpSuspended
EndFunction

string Function GetDhlpSuspendedBy()
	if dhlpSuspendedBy == none
		return ""
	endif
	string name = dhlpSuspendedBy.GetName()
	if name == ""
		name = "(no name)"
	endif
	return dhlpSuspendedBy.GetFormID() + ": " + name
EndFunction

Event OnDhlpSuspend(string eventName, string strArg, float numArg, Form sender)
	dhlpSuspended = true
	dhlpSuspendedBy = sender
	if (sender != self); suspend from another mod
		; Stop new events from starting during DHLP-Suspend
		if !BlockEvents
			BlockEvents = true
			dhlpSuspendedEvents = true
		endif
	endif
EndEvent

Event OnDhlpResume(string eventName, string strArg, float numArg, Form sender)
	dhlpSuspended = false
	dhlpSuspendedBy = none
	if (sender != self); resume from another mod
		if dhlpSuspendedEvents
			BlockEvents = false
			dhlpSuspendedEvents = false		
		endif
	endif
EndEvent

Event DDITerminate()
	if isSlave
		Debug.Notification("Submissive Lola is suspending all events")
		SuspendAll(true)
	endif
EndEvent

; Simple Slavery start
Event SSEntry(string eventName, string argStr, float argNum, form sender)
	if !isSlave
		return
	endif
	bool hasFSV = (Game.GetModByName("Follower Slavery Mod.esp") != 255)
	
	FriendlyFireCount = 0
	wasSuspendedBeforeSS = SuspendAll
	SuspendAll(true)
	
	UpdateRunicCircle("None")
	if CuffsControl.IsRunning()
		CuffsControl.UnequipDevices()
	endif
	
	StopTasks()
	StopQuestByName("vkjRoadTrip")
	StopQuestByName("vkjTravelRestriction")

	Utility.Wait(1)
	ObjectReference cocMarker = (Game.GetFormFromFile(0x0003CF59, "SimpleSlavery.esp")) as ObjectReference
	;ObjectReference centerMarker = (Game.GetFormFromFile(0x00025107, "SimpleSlavery.esp")) as ObjectReference
	TravelMarker.MoveTo(cocMarker)
	TravelMarker.SetPosition(-830, -268, 64)
	TravelMarker.SetAngle(0, 0, 172)
	OwnerRef.MoveTo(cocMarker)
	TravelToMarkerQuest.Start()
	
	if (PlaymateRef != none) && !hasFSV
		;PlaymateRef.Disable()
		;TravelToMarkerPlaymateQuest.Start()
		Utility.Wait(1.0)
		PlaymateRef.MoveTo(cocMarker)
		PlaymateRef.SetActorValue("WaitingForPlayer", 1)
	endif
EndEvent

Event SSOnPlatform(string eventName, string argStr, float argNum, form sender)
	TravelMarker.SetPosition(-1402, -60, 64)
	TravelMarker.SetAngle(0, 0, 0)
EndEvent

; Simple Slavery end
Event SSExit(Form sender, string outcome)
	;Debug.MessageBox("SSLV: " + outcome)
	if !isSlave
		return
	endif
	bool hasFSV = (Game.GetModByName("Follower Slavery Mod.esp") != 255)
	
	if (PlaymateRef != none) && !hasFSV
		;PlaymateRef.Enable()
		;TravelToMarkerPlaymateQuest.Stop()
		PlaymateRef.SetActorValue("WaitingForPlayer", 0)
		PlaymateRef.EvaluatePackage()
	endif
	TravelToMarkerQuest.Stop()

	if (outcome == "Lola") || (outcome == "DF") || (outcome == "Freed")
		if !wasSuspendedBeforeSS && SuspendAll
			SuspendAll(false)
		endif
		(MCM.MainQuest as vkjDeviceControl).DelayViolation()
		Follow()
		if outcome == "Freed"
			MoveNpcToPlayer(OwnerRef, 120)
		endif
	else
		; Enslaved to another mod
		StopQuests()
		SuspendAll(true)
		if (PlaymateRef != none) && !hasFSV
			PlaymateRef.SetActorValue("WaitingForPlayer", 1)
			Debug.Notification(PlaymateRef.GetBaseObject().GetName() + " will wait for you at the slave market.")
		endif
		Wait(); Owner waits in the slave market
		Debug.Notification("Your " + OwnerTitle + " will wait for you at the slave market.")
	endif
EndEvent

Event OfferedSexToMaster(Form sender, Form actorMaster, bool offerAccepted)
	;Debug.Notification("OfferedSexToMaster: " + (actorMaster as Actor).GetFormID() + ".  Accepted: " + offerAccepted)
	if (OwnerRef == (actorMaster as Actor)) && offerAccepted
		UpdateTimesSexIsRequired(-1)
	endif
EndEvent

Event OnVibrateNPC(Form npc, int pow, int dur, bool teaseOnly)
	Actor act = npc as Actor
	if act.GetSitState() >= 3
		Debug.SendAnimationEvent(act, "IdleForceDefaultState")	
		Utility.Wait(0.1)
	endif
	vibrateNPC(act, pow, dur, teaseOnly)
EndEvent

Function SendPlayerDance(float delay = -1.0, bool buffOwner = false, actor target = none, bool sexAtEnd = true, bool strip = false, int duration = -1)
	float delayVal = delay
	if delayVal < 0
		delayVal = MCM.DanceDelay
	endif
	int handle = ModEvent.Create("SLTRPlayerDance")
	ModEvent.PushFloat(handle, delayVal)
	ModEvent.PushBool(handle, buffOwner)
	ModEvent.PushForm(handle, target)
	ModEvent.PushBool(handle, sexAtEnd)
	ModEvent.PushBool(handle, strip)
	ModEvent.PushInt(handle, duration)
	ModEvent.Send(handle)
EndFunction

Event OnPlayerDance(float delay, bool buffOwner, Form target, bool sexAtEnd, bool strip, int duration)
	if (target != none) && (target as Actor != OwnerRef)
		Watcher.ForceRefTo(target as Actor)
	else
		Watcher.ForceRefTo(OwnerRef)
	endif
	Utility.Wait(delay)
	PlayerDance(buffOwner, target as Actor, sexAtEnd, strip, duration)
EndEvent

Function SendRunicCircleUpdate(string glowState1, float delay=2.0, string glowState2="Reset")
	int handle = ModEvent.Create("SLTRRunicCircleUpdate")
	ModEvent.PushString(handle, glowState1)
	ModEvent.PushFloat(handle, delay)
	ModEvent.PushString(handle, glowState2)
	ModEvent.Send(handle)
EndFunction

; For asynchronous updates, perform the specified runic circle update for the given delay, then update to the second dlow state (usually "Reset").
Event OnRunicCircleUpdate(string glowState1, float delay, string glowState2)
	UpdateRunicCircle(glowState1)
	Utility.Wait(delay)
	UpdateRunicCircle(glowState2)
EndEvent

Function RegisterForEvents()
	if MCM.ClothesPrankChance > 0
		RegisterForSleep()
	endif
	
	RegisterForModEvent("dhlp-Suspend", "OnDhlpSuspend")
	RegisterForModEvent("dhlp-Resume", "OnDhlpResume")
	
	RegisterForModEvent("SSLV Entry", "SSEntry")
	RegisterForModEvent("SSLV Exit", "SSExit")
	RegisterForModEvent("SSLV On Platform", "SSOnPlatform")
	
	RegisterForModEvent("SLTR-TrySuspend", "SLTR_TrySuspend")
	RegisterForModEvent("SLTR-Suspend", "SLTR_Suspend")
	RegisterForModEvent("SLTR-Resume", "SLTR_Resume")
	RegisterForModEvent("SLTR-StartQuest", "SLTR_StartQuest")
	
	RegisterForModEvent("PlayerOfferedSexToMaster", "OfferedSexToMaster")
	RegisterForModEvent("SLTRVibrateNPC", "OnVibrateNPC")
	
	RegisterForModEvent("SLTRPlayerDance", "OnPlayerDance")
	RegisterForModEvent("SLTRRunicCircleUpdate", "OnRunicCircleUpdate")

	RegisterForModEvent("DDI_Quest_SigTerm", "DDITerminate")
	
	SexLab.TrackActor(OwnerRef, "OwnerSex")
	RegisterForModEvent("OwnerSex_End", "OwnerSexEnd")
	if PlaymateRef != none
		SexLab.TrackActor(PlaymateRef, "PlaymateSex")
		RegisterForModEvent("PlaymateSex_End", "PlaymateSexEnd")
	endif
	
	SexLab.TrackActor(PlayerRef, "PlayerSex")
	RegisterForModEvent("PlayerSex_Start", "PlayerSexStart")
	;RegisterForModEvent("PlayerOrgasmEnd", "OnPlayerOrgasmEnd")
	RegisterForModEvent("PlayerTrack_End", "PlayerSexEnd"); was RegisterForModEvent("PlayerSex_End", "PlayerSexEnd")
EndFunction

function OwnerSexuality()
	if MCM.OwnerSexuality == 0; All NPCs
		SexualityDOM.SetValue(2)
	elseif MCM.OwnerSexuality == 1; Males
		SexualityDOM.SetValue(1)	
	elseif MCM.OwnerSexuality == 2; Females
		SexualityDOM.SetValue(0)
	endif
endFunction

function PCSexuality()
	if MCM.PCSexuality == 0; All NPCs
		SexualityPC.SetValue(2)
	elseif MCM.PCSexuality == 1; Males
		SexualityPC.SetValue(1); exclude females
	elseif MCM.PCSexuality == 2; Females
		SexualityPC.SetValue(0); exclude males
	endif
endFunction

bool Function PlayerCanHaveSexWith(Actor npc)
	return (SexualityPC.GetValue() as int) != npc.GetActorBase().GetSex()
EndFunction

bool Function PlayerCanHaveSexWithGender(int gender)
	return (SexualityPC.GetValue() as int) != gender
EndFunction

; "Hot switch" to another current follower as owner without exiting and reentering enslavement.
Function SwitchOwner(Actor newOwner, bool transferItems)
	(Quest.GetQuest("vkjTravelToMarker")).Stop()
	; Transfer
	if transferItems
		OwnerRef.RemoveItem(Gold, OwnerRef.GetItemCount(Gold), true, newOwner)
		OwnerRef.RemoveItem(Lockpick, OwnerRef.GetItemCount(Lockpick), true, newOwner)
		int i = 0
		While i < 3
			Form ddKey = KeyList.GetAt(i)
			OwnerRef.RemoveItem(ddKey, OwnerRef.GetItemCount(ddKey), true, newOwner)
			i += 1
		EndWhile
	endif
	
	; Old owner
	if !OwnerRef.IsInFaction(SubmittedToActorFaction)
		UpdateSubmittedToActorFaction(OwnerRef, 10)
	endif
	SexLab.UntrackActor(OwnerRef, "OwnerSex")
	OwnerRef.AddToFaction(FormerOwnerFaction)
	OwnerRef.SetFactionRank(FormerScoreFaction, GlobalSubmissionScore.GetValue() as int)
	LastOwnerID.SetValue(OwnerRef.GetFormID())
	IdleCommentsQuest.Stop()
	string oldOwnerName = OwnerRef.GetBaseObject().GetName()
	
	; New owner
	OwnerRef = newOwner
	Owner.ForceRefTo(newOwner)
	StorageUtil.SetFormValue(self, "OwnerRef", OwnerRef)
	Master.GetActorBase().SetName("Master"); clear any custom title
	if OwnerRef.GetActorBase().GetSex() == 0; Don't use SexLab gender for this
		OwnerTitle = "Master"
		Title.ForceRefTo(Master)
		TitleAlt.ForceRefTo(Master)
	else
		OwnerTitle = "Mistress"
		Title.ForceRefTo(Mistress)
		TitleAlt.ForceRefTo(Mistress)
	endif
	OwnerSexuality()
	IsOwnerVampire = OwnerRef.HasKeyword(KwVampire)
	UpdateOwnerCarryWeight()
	IdleCommentsQuest.Start()
	SexLab.TrackActor(OwnerRef, "OwnerSex")
	RegisterForModEvent("OwnerSex_End", "OwnerSexEnd")
	HowAcquired = 0
	
	LogAndPrint("SLTR: Switched owner from " + oldOwnerName + " to " + newOwner.GetBaseObject().GetName())
	SendModEvent("SLTR_OwnerChanged")
EndFunction

Function ChangeOwnerTitle(string newTitle)
	OwnerTitle = newTitle
	Master.GetActorBase().SetName(newTitle); We will always use the Master actor for custom titles
	Title.ForceRefTo(Master)
EndFunction

Function ChangeOwnerTitleAlt(string newTitle)
	OwnerTitleAlt = newTitle
	if OwnerTitleAlt != ""
		LordOrLady.GetActorBase().SetName(OwnerTitleAlt)
		TitleAlt.ForceRefTo(LordOrLady)
	else; needed for any ongoing game where this wasn't set
		if OwnerTitle != ""
			TitleAlt.ForceRefTo(Master)
		else
			TitleAlt.ForceRefTo(Title.GetReference())
		endif
	endif
EndFunction

Function DamagePlayerHealth(int amount, int minHealth = 50)
	int pain = amount
	int health = Math.Floor(PlayerRef.GetActorValue("Health"))
	if health <= minHealth
		pain = 0
	elseif (health - pain) < minHealth
		pain = health - minHealth
	endif

	ActorBase PlayerBase = PlayerRef.GetBaseObject() as ActorBase
	bool wasEssential = PlayerRef.IsEssential()
	PlayerBase.SetEssential(true)
	PlayerRef.DamageActorValue("Health", pain);  Inflict the exact amount of damage desired
	PlayerBase.SetEssential(wasEssential)
EndFunction

Function HurtAndStagger(int dur)
	Hurt()
	Debug.SendAnimationEvent(PlayerRef, "BleedoutStart")
	
	float duration = dur
	While duration > 0.0
		Utility.Wait(0.25)
		duration -= 0.25
		ZapSpell.Cast(PlayerRef, PlayerRef)
	EndWhile
	
	Debug.SendAnimationEvent(PlayerRef, "BleedoutStop")
EndFunction

; Inflict non-lethal stagger & pain on player
Function Hurt(float fraction = 1.0)
	int pain = (MCM.ShockStrength * fraction) as int
	if pain < 5
		pain = 5
	endif
	int minHealth = 20
	if PlayerRef.IsInCombat(); uncommon
		pain = (pain / 2) as int
		minHealth = 100
	endif
	
	DamagePlayerHealth(pain, minHealth)
	PlayerRef.DamageActorValue("Magicka", MCM.ShockMagickaLoss)
	ZapSpell.Cast(PlayerRef, PlayerRef);  Stagger but with zero damage
	if Game.UsingGamepad()
		Game.ShakeController(0.5, 0.5, 1.0)
	endif

	if MCM.ArousalLossOnZap != 0
		UpdateExposure(PlayerRef, -1 * MCM.ArousalLossOnZap)
	endif
EndFunction

Function HurtTwice()
	Hurt()
	; Pause to be sure that player health updates before the next shock so we don't accidentally kill.
	; Also, the delay makes it more apparent that it's two shocks for a bad slave.
	Utility.Wait(1.0)
	Hurt()
EndFunction

function Kill(); No longer used
	PlayerRef.GetActorBase().SetEssential(false); Avoid infinite death scene for PC set to essential
	While true
		ZapSpell.Cast(PlayerRef, PlayerRef)
		PlayerRef.DamageActorValue("Health", 25)
		Utility.Wait(0.25);  Prolong this slightly for a better death scene.
	EndWhile
endFunction

function PunishForDemanding()
	UpdateSubmissionScore(-10)
endFunction

function PunishForViolation()
	Hurt()
	UpdateSubmissionScore(-5); was -10
endFunction

function PunishForSevere()
	HurtTwice()
	UpdateSubmissionScore(-15)
endFunction

function PunishMinimal()
	Hurt(0.5)
	UpdateSubmissionScore(-1)
endFunction

function PunishForMinor()
	Hurt()
	UpdateSubmissionScore(-3)
endFunction

function PunishForModerate()
	Hurt()
	UpdateSubmissionScore(-5)
endFunction

function PunishForWalkAway()
	Hurt()
	;UpdateSubmissionScore(-5)
	UpdateSubmissionScore(-2); Try to soften the penalty for interrupted dialog that is not actually a walkaway
endFunction

function MinimalReward()
	UpdateSubmissionScore(1)
endFunction

function SmallReward()
	UpdateSubmissionScore(2)
endFunction

function MediumReward()
	UpdateSubmissionScore(3)
endFunction

function LargeReward()
	UpdateSubmissionScore(5)
endFunction

function SexReward()
	UpdateSubmissionScore(2)
endFunction

Function RewardForContract(int days)
	int score = 20; Life contract
	if Days < 140
		score = Days / 7
	endif
	UpdateSubmissionScore(score)
EndFunction

Function Disrespectful(int scoreLoss=0)
	if scoreLoss < 0
		UpdateSubmissionScore(scoreLoss)
	endif
	Hurt()
	Debug.Notification(OwnerTitle + " thinks that's disrespectful")
EndFunction

function BoozeCheck()
	;Randomly pick one of the booze types from the list. This creates a random rate of consumption by only allow one type to be checked for every check call.
	int i = utility.randomint(0,Booze.Length - 1)
	
	;Owner wants YOUR booze first.
	;Give the player a break and don't swipe the last bottle of Honningbrew or Black-Briar Mead since those are used by the Revelers encounter.
	bool canTake = true
	if PlayerRef.GetItemCount(Booze[i]) == 1 && (Booze[i].GetName() == "Honningbrew Mead" || Booze[i].GetName() == "Black-Briar Mead")
		canTake = false
	endif
	if (canTake && PlayerRef.GetItemCount(Booze[i]) > 0 && PlayerRef.GetDistance(OwnerRef) < 1000)
		PlayerRef.Removeitem(Booze[i],1,true,OwnerRef)
		FollowerEquipItem(OwnerRef, Booze[i], false, true)
		MCM.UpdateBoozeLost()
		Debug.Notification("Your " + OwnerTitle + " has taken a bottle of " + Booze[i].GetName() + " from you")
	;Otherwise settle for her/his own stash
	elseif FollowerItemCount(OwnerRef, Booze[i]) > 0
		FollowerEquipItem(OwnerRef, Booze[i], false, true)
	endif
endfunction

; Special handling for daily score decay.
; The decay amount is not subject to normal scaling (unless the MCM scaling option is enabled) and it cannot reduce score to below 0.
Function DecaySubmissionScore(float val)
	float ss = GlobalSubmissionScore.GetValue()
	float prevScore = ss

	if ss > 0
		float factor = 1.0
		if MCM.ScaleScoreDecay
			factor = GetScoreScalingFactor(ss)
		endif

		ss -= val * factor
		if ss < 0.0
			ss = 0.0
		endif
	endif
	GlobalSubmissionScore.SetValue(ss)
	Debug.Notification("Your " + OwnerTitle + " forgets some of your submissiveness.  Score: " +  vkjLib.Round(ss, 3))
	UpdateSubmissionEffects(ss)
	BroadcastScoreChange(val, (ss - prevScore))
EndFunction

float Function GetScoreScalingFactor(float score)
	; The scaling factor gradually reduces as submission score increases.
	; This slows submission gain above a score of 50.
	; The scaling is capped at 1.0 so that early gains are not crazy high.
	; It is also kept from approaching zero, so gains at high scores are still tangible.

	float scaling = 0.02 * (maxscore - score)
	if scaling > 1.0
		scaling = 1.0
	elseif scaling < 0.0333
		scaling = 0.0333
	endif

	; Have pity on the player.  
	; Regardless of how low the MCM growth factor is, don't let the total factor go below 0.0333.
	; If the MCM growth factor is 50%, this will start helping the player at scores above 80.

	float factor = scaling * MCM.v_subG
	if factor < 0.0333
		factor = 0.0333
	endif
	
	return factor
EndFunction

float Function GetScore()
	return GlobalSubmissionScore.GetValue()
EndFunction

function UpdateSubmissionScore(float val)
	float ss = GlobalSubmissionScore.GetValue()
	float prevScore = ss

	if val < 0.0
		if ss < 0.0
			ss += val * MCM.v_resistG * 1.25;  Rebellious slaves get an increased penalty
		else
			ss += val * MCM.v_resistG
		endif

		; Can't fall below the lower limit, but if you would have, you get hurt (again).
		if ss < th0
			ss = th0
			Hurt()
		endif
		dailyScore += val * MCM.v_resistG
	else
		float factor = GetScoreScalingFactor(ss)
		ss += val * factor
		if ss > maxscore
			ss = maxscore
		endif
		dailyScore += val * MCM.v_subG
	endif

	GlobalSubmissionScore.SetValue(ss)
	Debug.Notification("Submission: " + vkjLib.Round(ss, 3))
	MCM.ScoreChanged()
	UpdateSubmissionEffects(ss)
	UpdateSpeechReductionRate()
	BroadcastScoreChange(val, (ss - prevScore))
endFunction

Function UpdateSubmissionEffects(float ss)
	IsRebellious = ss < 0
	IsBreaking = ss > th1
	IsSubmissive = ss > th2
	IsVerySubmissive = ss > th3
	IsInsanelySubmissive = ss > th4

	; Submission buffs
	PlayerRef.RemoveSpell(AbilityUnhindered)
	PlayerRef.RemoveSpell(AbilityDefence)
	PlayerRef.RemoveSpell(AbilityInsanity)

	if MCM.AllowBuffs
		if IsSubmissive
			PlayerRef.AddSpell(AbilityUnhindered, false)
		endif
		; Combat buffs are one or the other, not both.
		if IsInsanelySubmissive
			PlayerRef.AddSpell(AbilityInsanity, false)
		elseif IsVerySubmissive 
			PlayerRef.AddSpell(AbilityDefence, false)
		endif
	endif

	; Kept Pet checks
	if IsKept && !MCM.KeptForever && !keptPermanently 
		if ss < MCM.KeptThreshold
			IsKept = false;  Pet is freed because the score dropped below the current threshold
		endif
	else
		if ss >= MCM.KeptThreshold
			IsKept = true
			if MCM.KeptForever
				keptPermanently = true;  Pet will be kept forever
				IsKeptForever = true
			endif
		endif
	endif
EndFunction

Function BroadcastScoreChange(float rawVal, float scaledVal)
	int handle = ModEvent.Create("SLTR_ScoreChanged")
	ModEvent.PushFloat(handle, rawVal)
	ModEvent.PushFloat(handle, scaledVal)
	ModEvent.Send(handle)
EndFunction

; Return a submissiveness description based on the score thresholds
string Function GetSubmissionTitle()
	float score = GlobalSubmissionScore.GetValue()
	if score >= th4
		return "Ideal Slave";  "Insanely Submissive" is too long and will overlap the label on the MCM
	elseif score >= th3
		return "Very Submissive"
	elseif score >= th2
		return "Submissive"
	elseif score >= th1
		return "Trained"
	elseif score >= 0
		return "Obedient"
	else
		return "Rebellious"
	endif
	return "Unknown"
EndFunction

int Function GetSubmissionRank()
	float score = GlobalSubmissionScore.GetValue()
	if score >= th4
		return 4
	elseif score >= th3
		return 3
	elseif score >= th2
		return 2
	elseif score >= th1
		return 1
	elseif score >= 0
		return 0
	else
		return -1
	endif
EndFunction

float Function GetSubmissionScore()
	return GlobalSubmissionScore.GetValue()
EndFunction

Function SetBlockEvents(bool val)
	if !SuspendAll; Nothing should change BlockEvents while events are suspended (setting it to false would be especially bad).
		BlockEvents = val
	endif
EndFunction

; Allows read-only access to this value
bool Function GetIsKeptPermanently()
	return keptPermanently
EndFunction

; A joke "achievement" one-time message
Function KeptPetAchievement()
	if !awardedKeptPet
		awardedKeptPet = true
		;Debug.Notification("Achievement Unlocked:  Kept Pet")
		MCM.KeptPetAchievement()
	endif
EndFunction

Function UpdateRequiredService(bool silent=false)
	; Suspend during SLUTS run
	if RoadTripQuest.GetStage() == 20
		TimesServiceIsRequired = 0
		TimesSexIsRequired = 0
		return
	endif

	; Check today's compliance
	if !SuspendAll
		if (TimesServiceIsRequired > 0) || (TimesSexIsRequired > 0) || (dailyScore < MCM.MinDailyScore)
			SoundServiceFailed.Play(PlayerRef)
			int penalty = 0
			if TimesServiceIsRequired > 0
				FailedOfferingService = 1
				Debug.Notification("You failed to offer service enough.")
				penalty += 3 * TimesServiceIsRequired
			endif
			if TimesSexIsRequired > 0
				FailedOfferingService = 2
				Debug.Notification("You failed to offer sex enough.")
				penalty += 3 * TimesSexIsRequired
			endif
			if dailyScore < MCM.MinDailyScore
				FailedOfferingService = 3
				Debug.Notification("Your service failed to please your " + OwnerTitle + ".")
				int dailyScorePenalty = (MCM.MinDailyScore - dailyScore) as int
				if dailyScorePenalty > 10
					dailyScorePenalty = 10
				endif
				penalty += dailyScorePenalty
			endif
			UpdateSubmissionScore(-1 * penalty)
		else
			FailedOfferingService = 0
			if !silent
				Debug.Notification("You successfully served your " + OwnerTitle + " today.")
			endif
		endif
	endif

	; Calculate the next day's required service
	TimesServiceIsRequired = MCM.v_ServMinTimes + Utility.RandomInt(0, MCM.v_ServRandTimes)
	TimesSexIsRequired = MCM.SexMinTimes
	dailyScore = 0.0
EndFunction

Function UpdateTimesServiceIsRequired(int val)
	TimesServiceIsRequired += val
EndFunction

Function UpdateTimesSexIsRequired(int val)
	TimesSexIsRequired += val
EndFunction

; Return the name of the first short-term quest (like Run Lola Run) that is active, or an empty string if none.
String Function GetActiveTask()
	int i = TaskList.GetSize()
	While i > 0
		i -= 1
		Quest q = TaskList.GetAt(i) as Quest
		If q.IsRunning()
			if q.GetName() == ""
				Debug.MessageBox("Error: Quest " + q.GetID() + " in vkjTaskList has no name.")
			endif
			return q.GetName()
		EndIf
	EndWhile
	return ""
EndFunction

; Return the name of the first long-term quest (like Tomb Raider) that is active, or an empty string if none.
String Function GetActiveQuest()
	int i = QuestList.GetSize()
	While i > 0
		i -= 1
		Quest q = QuestList.GetAt(i) as Quest
		If q.IsRunning()
			if q.GetName() == ""
				Debug.MessageBox("Error: Quest " + q.GetID() + " in vkjQuestList has no name.")
			endif
			return q.GetName()
		EndIf
	EndWhile
	return ""
EndFunction

Function ShowActiveTask(bool popup=false)
	string task = GetActiveTask()
	if task != ""
		if popup
			Debug.MessageBox("Finish " + task)
		else
			Debug.Notification("Finish " + task)
		endif
	endif
EndFunction

Function UpdateSpeechReductionRate()
	float score = GlobalSubmissionScore.GetValue()
	if score < 0.0
		score = 0.0
	endif
	int speechPenalty = (score * MCM.SpeechReductionRate) as int; round down
	; If you change the magnitude of an ability spell that has already been added to an actor, the actor will not receive those changes.
	if PlayerRef.HasSpell(SpeechReductionSpell)
		PlayerRef.RemoveSpell(SpeechReductionSpell)
	endif
	if speechPenalty > 0.0
		SpeechReductionSpell.SetNthEffectMagnitude(0, speechPenalty as float)
		PlayerRef.AddSpell(SpeechReductionSpell, false)
	endif
EndFunction

; Owner just ended a sex animation
Event OwnerSexEnd(Form FormRef, int tid)
	;Debug.MessageBox("Actor " + (FormRef as Actor).getDisplayname() + " just ended an animation.")
	sslThreadController tc = SexLab.GetController(tid)
	sslBaseAnimation anim = tc.Animation
	;Debug.MessageBox("IsSexual = " + anim.IsSexual)
	bool isVictim = tc.IsVictim(OwnerRef)

	; Ensure that owner is fully satisfied after sex.  Counters raging arousal around an often-naked slave.
	if (anim != None && anim.IsSexual() && !isVictim && !anim.HasTag("Spanking") && !anim.HasTag("Spank"))
		zlib.Aroused.SetActorExposure(OwnerRef, 0)
		IsOwnerHorny = false
		IsOwnerAtMaxArousal = false
		if zlib.Aroused.GetActorDaysSinceLastOrgasm(OwnerRef) > 0.1
			zlib.Aroused.UpdateActorOrgasmDate(OwnerRef); Some sex animations, especially FF, don't register an orgasm
		endif
	endif
EndEvent

; Playmate just ended a sex animation
Event PlaymateSexEnd(Form FormRef, int tid)
	sslThreadController tc = SexLab.GetController(tid)
	sslBaseAnimation anim = tc.Animation
	bool isVictim = tc.IsVictim(PlaymateRef)

	; Ensure that playmate is fully satisfied after sex.
	if (anim != None && anim.IsSexual() && !isVictim && !anim.HasTag("Spanking") && !anim.HasTag("Spank"))
		zlib.Aroused.SetActorExposure(PlaymateRef, 0)
		if zlib.Aroused.GetActorDaysSinceLastOrgasm(PlaymateRef) > 0.1
			zlib.Aroused.UpdateActorOrgasmDate(PlaymateRef); Some sex animations, especially FF, don't register an orgasm
		endif
	endif
EndEvent

; Player just started a sex animation
Event PlayerSexStart(Form FormRef, int tid)
	;Debug.MessageBox("Actor " + (FormRef as Actor).getDisplayname() + " just started an animation.")
	sslThreadController tc = SexLab.GetController(tid)
	sslBaseAnimation anim = tc.Animation
	;Debug.MessageBox("Anim: " + anim.Name + " Tags: " + anim.GetTags())
	
	if ownerWatchesSex
		ActorFacePlayer(OwnerRef)
		OwnerRef.SetLookAt(PlayerRef)
		OwnerDoNothingScene.Start()
	endif
	
	; Remove and later replace non-locking plugs for more realistic sex
	if !PlayerRef.WornHasKeyword(zlib.zad_DeviousBelt)
		if (MCM.RemovePlugsForSex == 1) || \
		   ((MCM.RemovePlugsForSex == 2) && tc.HasActor(OwnerRef)) || \
		   ((MCM.RemovePlugsForSex == 3) && (tc.GetHighestPresentRelationshipRank(PlayerRef) >= 4))
			if anim.HasTag("Anal") && PlayerRef.WornHasKeyword(zlib.zad_DeviousPlugAnal)
				Armor plug = PlayerRef.GetWornForm(0x00040000) as Armor
				if (plug != none) && !plug.HasKeyword(zlib.zad_Lockable) && !plug.HasKeyword(zlib.zad_HasPumps) && !plug.HasKeyword(zlib.zad_BlockGeneric) && !plug.HasKeyword(zlib.zad_QuestItem)
					WornAnalPlug = plug
					PlayerRef.UnequipItem(plug, abSilent = true)
				endif
			endif
			if anim.HasTag("Vaginal") && PlayerRef.WornHasKeyword(zlib.zad_DeviousPlugVaginal)
				Armor plug = PlayerRef.GetWornForm(0x08000000) as Armor
				if (plug != none) && !plug.HasKeyword(zlib.zad_Lockable) && !plug.HasKeyword(zlib.zad_HasPumps) && !plug.HasKeyword(zlib.zad_BlockGeneric) && !plug.HasKeyword(zlib.zad_QuestItem)
					WornVaginalPlug = plug
					PlayerRef.UnequipItem(plug, abSilent = true)
				endif
			endif
		endif
	endif

	; Don't allow player to masturbate
	if MCM.denyMasturbation && !toldToMasturbate && isSlave && !SuspendAll
		if (tc.ActorCount == 1) && (anim.HasTag("Solo") || anim.HasTag("Masturbation"))
			Debug.Notification("Your collar becomes warm")
			Utility.Wait(6); Let the player get warmed up
			ZapSpell.Cast(PlayerRef, PlayerRef)
			tc.EndAnimation(true)
			UpdateExposure(PlayerRef, 10); player ends up more frustrated
			SexLab.PickVoice(PlayerRef).Moan(PlayerRef, 50, true)
			Debug.Notification("You're more frustrated than when you started")
		endif
	endif
	
	toldToMasturbate = false
EndEvent

Event OnPlayerOrgasmEnd(string eventName, string argString, float argNum, form sender)
EndEvent

Event OnDeviceOrgasmStopVibe(String eventname, string character_name, float argNum, Form Sender)
	zlib.StopVibrating(PlayerRef)
EndEvent

; Player just ended a sex animation
Event PlayerSexEnd(Form FormRef, int tid)
	;Debug.MessageBox("Actor " + (FormRef as Actor).getDisplayname() + " just ended an animation.")
	sslThreadController tc = SexLab.GetController(tid)
	sslBaseAnimation anim = tc.Animation
	bool isVictim = tc.IsVictim(PlayerRef)
	
	if ownerWatchesSex
		ownerWatchesSex = false
		OwnerRef.ClearLookAt()
		OwnerDoNothingScene.Stop()
	endif
	
	; Replace any plugs
	if WornAnalPlug != none
		PlayerRef.EquipItem(WornAnalPlug, abSilent = true)
		WornAnalPlug = none
	endif
	if WornVaginalPlug != none
		PlayerRef.EquipItem(WornVaginalPlug, abSilent = true)
		WornVaginalPlug = none
	endif

	; Arousal adjustment for sex with owner
	if (tc.HasActor(OwnerRef) || tc.HasActor(PlaymateRef)) && !isVictim && isSlave && \
		(anim != None) && anim.IsSexual() && !anim.HasTag("Spanking") && !anim.HasTag("Spank")
		bool isRough = anim.HasTag("Rough") || anim.HasTag("Aggressive")
		; Determine satisfaction
		int satisfaction = MCM.PlayerSexSatisfaction; sex with owner only
		if tc.HasActor(PlaymateRef)
			if !tc.HasActor(OwnerRef)
				satisfaction = MCM.SexWithPlaymateSatisfaction; sex with playmate only
			else
				satisfaction = ((MCM.PlayerSexSatisfaction + MCM.SexWithPlaymateSatisfaction) / 2) as int; 3-way
			endif
		endif
		if isRough
			satisfaction = MCM.RoughSexSatisfaction; use instead of normal satisfaction
		endif
		;if tc.HasActor(OwnerRef) && PlayerRef.WornHasKeyword(zlib.zad_DeviousBelt) && !PlayerRef.WornHasKeyword(zlib.zad_PermitVaginal) && !PlayerRef.WornHasKeyword(zlib.zad_PermitAnal)
		;	satisfaction = -10; Chastity just makes the situation worse for sex with the owner.
		;endif
		; Set an exposure value (rather than updating) to avoid scaling by exposure rate, so players will get what they expect.
		UpdateExposure(PlayerRef, -satisfaction)
		if satisfaction >= 0
			if zlib.Aroused.GetActorDaysSinceLastOrgasm(PlayerRef) > 0.04
				zlib.Aroused.UpdateActorOrgasmDate(PlayerRef); Some sex animations, especially FF, don't register an orgasm
			endif
		endif
	endif
	
	if FunBlindfold != none
		PlayerRef.RemoveItem(FunBlindfold, abSilent=true)
		FunBlindfold = none
	endif
EndEvent

; Set an exposure value (rather than updating) to avoid scaling by exposure rate, so players will get what they expect.
Function UpdateExposure(Actor who, int delta)
	int newExposure = who.GetFactionRank(zlib.Aroused.slaExposure) + delta
	zlib.Aroused.SetActorExposure(who, newExposure)
EndFunction

bool Function CanSuspend()
	return (GetActiveTask() == "")
EndFunction

Event SLTR_TrySuspend(string eventName, string argStr, float argNum, form sender)
	if SuspendAll
		MiscUtil.PrintConsole("Sub Lola received SLTR-TrySuspend, but events were already suspended.")
	elseif CanSuspend()
		MiscUtil.PrintConsole("Sub Lola received SLTR-TrySuspend.  Suspending events.")
		SuspendAll(true)
	else
		MiscUtil.PrintConsole("Sub Lola received SLTR-TrySuspend but could not suspend events.")
	endif
EndEvent

Event SLTR_Suspend(string eventName, string argStr, float argNum, form sender)
	if SuspendAll
		MiscUtil.PrintConsole("Sub Lola received SLTR-Suspend, but events were already suspended.")
		return
	endif

	MiscUtil.PrintConsole("Sub Lola received SLTR-Suspend.  Suspending events.")
	StopTasks()
	SuspendAll(true)
EndEvent

Event SLTR_Resume(string eventName, string argStr, float argNum, form sender)
	if SuspendAll
		MiscUtil.PrintConsole("Sub Lola received SLTR-Resume.  Resuming event processing.")
		SuspendAll(false)
	else
		MiscUtil.PrintConsole("Sub Lola received SLTR-Resume, but events had not been suspended.")
	endif
EndEvent

Event SLTR_StartQuest(string eventName, string argStr, float argNum, form sender)
	if argStr == ""
		return
	endif
	Quest q = Quest.GetQuest(argStr)
	if !q.IsRunning()
		MiscUtil.PrintConsole("SLTR-StartQuest: Starting quest " + argStr)
		q.Start()
	endif
EndEvent

Function SuspendAll(bool suspend)
	if suspend == SuspendAll
		return
	endif
	SuspendAll = suspend
	BlockEvents = suspend
	if suspend
		timeSuspended = GameDaysPassed.GetValue()
		MayAskForService = false
		DragonSpotted = false
		UpdateRunicCircle("Suspend")
	else
		float gameHoursSuspended = (GameDaysPassed.GetValue() - timeSuspended) / 24.0
		if gameHoursSuspended >= 2.0
			; Pass all daily service requirements
			TimesServiceIsRequired = 0
			TimesSexIsRequired = 0
			dailyScore = 999.0
		endif
		UpdateRunicCircle("Enslaved")
	endif
EndFunction

Function StopTasks()
	; Stop any active tasks (but not long-term quests)
	int i = TaskList.GetSize()
	While i > 0
		i -= 1
		Quest q = TaskList.GetAt(i) as Quest
		If q.IsRunning()
			if q.GetName() == "Pony Express"
				q.SetStage(110)
			else
				q.CompleteQuest()
				q.Stop()
			endif
		EndIf
	EndWhile
EndFunction

Function StopQuests()
	; Stop any active quests
	int i = QuestList.GetSize()
	While i > 0
		i -= 1
		Quest q = QuestList.GetAt(i) as Quest
		if q.IsRunning()
			if q.getID() == "vkjShaveHead"
				(q as vkjShaveHead).Restore()
			endif
			q.CompleteQuest()
			q.Stop()
		endif
	EndWhile
	
	; Clean up any special quests
	i = CleanupQuestList.GetSize()
	While i > 0
		i -= 1
		Quest q = CleanupQuestList.GetAt(i) as Quest
		if q.IsRunning()
			q.CompleteQuest()
			q.Stop()
		endif
	EndWhile
EndFunction

Function CalcWearClothesSuccess()
	Success = Utility.RandomInt(1, 100) > (OwnerRef.GetFactionRank(SLAFaction) + MCM.EyeCandyRejectChance)
EndFunction

Function SayBigTrouble()
	OwnerRef.Say(TopicBigTrouble)
EndFunction

bool Function OwnerIsInnkeeper()
	return OwnerRef.IsInFaction(InnkeeperFaction)
EndFunction

Function MakeOwnerRadProPimp(bool makePimp)
	if makePimp
		OwnerRef.AddToFaction(InnkeeperFaction)
		OwnerRef.AddToFaction(NoTavernFaction)
	else
		OwnerRef.RemoveFromFaction(InnkeeperFaction)
		OwnerRef.RemoveFromFaction(NoTavernFaction)
	endif
EndFunction

string Function OwnerPronoun()
	String pronoun = "he"
	if OwnerRef.GetActorBase().GetSex() == 1
		pronoun = "she"
	endif
	return pronoun
EndFunction

string Function OwnerPronounObj()
	String pronoun = "him"
	if OwnerRef.GetActorBase().GetSex() == 1
		pronoun = "her"
	endif
	return pronoun
EndFunction

string Function OwnerPronounPosObj()
	String pronoun = "his"
	if OwnerRef.GetActorBase().GetSex() == 1
		pronoun = "her"
	endif
	return pronoun
EndFunction

string Function OwnerPronounPos()
	String pronoun = "his"
	if OwnerRef.GetActorBase().GetSex() == 1
		pronoun = "hers"
	endif
	return pronoun
EndFunction

Function DoHideClothesPrank()
	; Find the container to hide the clothes
	ObjectReference[] boxes = new ObjectReference[50]
	Cell inn = PlayerRef.GetParentCell()
	int iBoxes = 0
	int iContainers = inn.GetNumRefs(28); Containers
	bool isExcluded
	While (iContainers > 0) && iBoxes < 49
		iContainers -= 1
		ObjectReference box = inn.GetNthRef(iContainers, 28)
		
		; Check normally inaccessible containers.  They can't be passed in as a list because they aren't persistent.
		isExcluded = false
		int boxID = box.GetFormID()
		if (boxID == 0x00093F79) || (boxID == 0x00093F7A) || (boxID == 0x00093F7B) || (boxID == 0x00093C77); Sleeping Giant Inn
			isExcluded = true
		elseif (boxID == 0x000D4AB2) || (boxID == 0x000D4AAD) || (boxID == 0x000D4AAE) || (boxID == 0x000D4AAF); Winking Skeever
			isExcluded = true
		endif

		if !isExcluded && box.IsEnabled() && !box.IsLocked() && (box.GetItemCount(Gold) == 0); Containers with gold are invalid.
			string boxName = box.GetDisplayName()
			if (boxName != "") && (boxName != "Chest") && (boxName != "Pot") && (StringUtil.Find(boxName, "Satchel") < 0)
				boxes[iBoxes] = box
				iBoxes += 1
			endif
		endif
	EndWhile
	
	if iBoxes == 0
		MiscUtil.PrintConsole("Sub Lola: No valid container to hide clothes in")
		return
	endif

	ClothesPrankContainer = boxes[Utility.RandomInt(0, (iBoxes - 1))]
	bool hidClothes = false
	
	; Move all player clothing to the container
	int iItem = PlayerRef.GetNumItems()
	While (iItem > 0)
		iItem -= 1
		Form item = PlayerRef.GetNthForm(iItem)
		if item.GetType() == 26; Armor
			if (item.HasKeyword(KwClothing) || item.HasKeyword(KwLightArmor) || item.HasKeyword(KwHeavyArmor)) && !IsQuestItem(item)
				hidClothes = true
				PlayerRef.RemoveItem(item, PlayerRef.GetItemCount(item), true, ClothesPrankContainer)
			endif
		endif
	EndWhile

	if hidClothes
		; Make the player the container owner or the clothes will be treated as stolen
		ClothesPrankContainer.SetActorOwner(PlayerRef.GetActorBase())
		ClothesPrankedLastTime = true
		ClothesPrankGaveHint = false
		ClothesPrankGaveClothes = false
		Humiliate()
		Debug.MessageBox("While you were sleeping, your " + OwnerTitle + " hid all your clothes!  Look for them in a container in this inn.")
	else
		ClothesPrankContainer = none
	endif
EndFunction

Function ClothesPrankGiveHint()
	ClothesPrankGaveHint = true
	UpdateSubmissionScore(-1)
	Debug.MessageBox("Your clothes are hidden in a " + ClothesPrankContainer.GetDisplayName())
EndFunction

Function ClothesPrankGiveClothes()
	ClothesPrankGaveClothes = true
	UpdateSubmissionScore(-3)
	ClothesPrankContainer.Activate(PlayerRef)
EndFunction

; An item is assumed to be a quest item if it's a reference
bool Function IsQuestItem(Form item)
	return (item as ObjectReference != none)
EndFunction

Function CheckCanBeTaught()
	CanBeTaught = PlayerRef.GetActorValue(MCM.GetSkillTaught()) < 90
EndFunction

Function IncreaseSkill()
	Game.IncrementSkill(MCM.GetSkillTaught())
EndFunction

Function ClearHumiliation()
	int i = HumiliationSpells.GetSize()
	While i > 0
		i -= 1
		PlayerRef.RemoveSpell(HumiliationSpells.GetAt(i) as Spell)
	EndWhile
EndFunction

Function Humiliate(Actor npc=none, int adjustment=0)
	Humiliation(npc)

	if MCM.Humiliation == 0
		return
	endif

	int humiliationLevel = MCM.Humiliation - 1; 0 in the MCM is no humiliation, so adjust for form list index.
	humiliationLevel += adjustment
	if humiliationLevel == 0
		return
	elseif humiliationLevel > 4
		humiliationLevel = 4; There's a bonus level 5 spell, so 4 is max.
	endif
	
	; Clear any existing humiliation effect before reapplying
	ClearHumiliation()
	
	Spell s = HumiliationSpells.GetAt(humiliationLevel) as Spell
	PlayerRef.AddSpell(s, false)
EndFunction

Function Humiliation(Actor npc)
	if npc == none
		return
	endif

	; Relationship rank might change.  Currently NOT implemented (concept needs more thought).
	int rank = npc.GetRelationshipRank(PlayerRef)
	if (rank >= 1) && (rank <= 2) && (Utility.RandomInt(0,99) < MCM.RelationshipLossChance); Rank can decrease as low as 0, but only if not an ally.
		npc.SetRelationshipRank(PlayerRef, rank - 1)
		MiscUtil.PrintConsole("SLTR: " + npc.GetBaseObject().GetName() + " relationship is now " + (rank - 1))
	endif
	if (rank == 0) && (Utility.RandomInt(0,99) < (-1 * MCM.RelationshipLossChance)); Rank can increase from 0 to 1 if setting is negative.
		npc.SetRelationshipRank(PlayerRef, rank + 1)
		MiscUtil.PrintConsole("SLTR: " + npc.GetBaseObject().GetName() + " relationship is now " + (rank + 1))
	endif

	SetNpcReaction(npc)

	if npc.IsInFaction(UnfavorableFaction)
		npc.AddToFaction(HumiliationFaction)
	else
		npc.RemoveFromFaction(HumiliationFaction)
	endif
	
	if ParadeQuest.IsRunning() && ParadeQuest.HadBodyClothing
		npc.AddToFaction(ParadeQuest.WitnessFaction)
	elseif PonyExpressQuest.IsRunning()
		npc.AddToFaction(PonyExpressQuest.WitnessFaction)	
	endif
EndFunction

Function SetNpcReaction(Actor npc)
	if npc.IsInFaction(FavorableFaction)
		return
	endif

	int rank = npc.GetRelationshipRank(PlayerRef)
	if npc.IsInFaction(WhoreClientFaction)
		rank += 1
	endif
	if npc.IsInFaction(SlutFaction)
		rank -= 1
	endif
	
	; Check for improvement in relationship.  Previous relationship rank was stored as the UnfavorableFaction rank.
	if npc.IsInFaction(UnfavorableFaction) && (npc.GetFactionRank(UnfavorableFaction) < rank)
		npc.RemoveFromFaction(UnfavorableFaction); reset and redo the roll
	endif

	if !npc.IsInFaction(UnfavorableFaction)
		if rank >= 4
			npc.SetFactionRank(FavorableFaction, rank)
		elseif rank <= -4
			npc.SetFactionRank(UnfavorableFaction, rank)
		else
			int chance = 8; 1 in 8 will be favorable
			chance -= rank*2; 2 to 14
			if Utility.RandomInt(1, chance) == 1
				npc.SetFactionRank(FavorableFaction, rank)
			else
				npc.SetFactionRank(UnfavorableFaction, rank)
			endif
		endif
	endif
EndFunction

Function UpdateSubmittedToActorFaction(Actor act, int val)
	if act.IsInFaction(SubmittedToActorFaction)
		int subRank = act.GetFactionRank(SubmittedToActorFaction) + val
		if subRank > 100
			subRank = 100
		elseif subRank < 1
			subRank = 1
		endif
		act.SetFactionRank(SubmittedToActorFaction, subRank)
	else
		act.SetFactionRank(SubmittedToActorFaction, val)
	endif
EndFunction

Function MakeNpcReactionFavorable(Actor npc)
	if npc.IsInFaction(UnfavorableFaction)
		npc.RemoveFromFaction(UnfavorableFaction)
	endif
	int rank = 1
	if npc.IsInFaction(FavorableFaction)
		rank = npc.GetFactionRank(FavorableFaction) + 1
	endif
	npc.SetFactionRank(FavorableFaction, rank)
EndFunction

Function ForceStartProstitution()
	vkjPimpedBasic prostitutionQuest = Quest.GetQuest("vkjPimpedBasic") as vkjPimpedBasic
	if prostitutionQuest.IsRunning()
		prostitutionQuest.SetStage(20);  Force early shutdown
		Utility.Wait(2)
	endif
	prostitutionQuest.Start()
EndFunction

Function SetOldLoc(Location akOldLoc)
	OldLoc = akOldLoc
	LastLocWasInterior = LocIsInterior
	;Debug.Notification("Last loc was interior: " + LastLocWasInterior)
	LocIsInterior = PlayerRef.IsInInterior()
EndFunction

bool Function IsLovesick()
	;Form loveSicknessEffect = Game.GetFormFromFile(0x00000D65, "Love Sickness.esp")
	;return ((loveSicknessEffect != none) && PlayerRef.HasMagicEffect(LoveSicknessEffect as MagicEffect))
	return StorageUtil.GetIntValue(PlayerRef, "LVSK_IsLovesick", 0) == 1
EndFunction

Function UpdateOwnerCarryWeight()
	OwnerRef.RemoveItem(DeadWeight, 999)
	OwnerRef.AddItem(DeadWeight, MCM.OwnerCarryReduction)
EndFunction

Function UpdateCombatPotionCount()
	int nPotions = CombatPotions.GetItemCount(KwPotion)
	GlobalNumber.SetValue(nPotions)
	UpdateCurrentInstanceGlobal(GlobalNumber)
EndFunction

Function EmptyCombatPotions(ObjectReference dest)
	CombatPotions.RemoveAllItems(dest, true, true)
EndFunction

Function MarkAsStolen(Form anItem, int count = 1, ObjectReference source, ObjectReference dest)
	source.RemoveItem(anItem, count, true, StolenGoods)
	StolenGoods.RemoveAllItems(dest, true, true)
EndFunction

; Transfer up to 6 restore health potions to the owner's combat potions pouch.
; Take the most valuable potions, marking them as stolen.  Return true if any potions are actually taken.
; Potentially CPU intensive, increasing with player inventory size.
bool Function OwnerTakesCombatPotions(int max)
	Potion[] potions = new Potion[6]
	int[] values = new int[6]
	int nPotions = 0
	; Find player's best restore health potions
	int i = PlayerRef.GetNumItems()
	While i > 0
		i -= 1
		Form aForm = PlayerRef.GetNthForm(i)
		Potion pot = aForm as Potion
		if pot && !pot.IsPoison() && !pot.IsFood() && pot.HasKeyword(KwRestoreHealth) && !ExcludedPotions.HasForm(aForm)
			int val = pot.GetGoldValue()
			int qty = PlayerRef.GetItemCount(aForm); These are unique forms, so we need the potion quantity.
			int k = qty
			While k > 0
				if nPotions == 0
					values[0] = val
					potions[0] = pot
					nPotions = 1
				else
					if nPotions < 6
						values[nPotions] = val
						potions[nPotions] = pot
						if val > values[nPotions - 1]
							int j = nPotions
							While (j > 0) && (val > values[j - 1])
								values[j] = values[j - 1]
								potions[j] = potions[j - 1]
								j -= 1
							EndWhile
							values[j] = val
							potions[j] = pot
						endif
						nPotions += 1
					elseif val > values[5]
						int j = 5
						While (j > 0) && (val > values[j])
							values[j] = values[j - 1]
							potions[j] = potions[j - 1]
							j -= 1
						EndWhile
						values[j] = val
						potions[j] = pot
					endif
				endif
				k -= 1
			EndWhile
		endif
	EndWhile
	
	; Move the potions being taken to trigger the removed-item notification.  Use the StolenGoods container to mark them as stolen.
	int numberToTake = 6 - CombatPotions.GetItemCount(KwPotion)
	if numberToTake > max
		numberToTake = max
	endif
	if numberToTake > nPotions
		numberToTake = nPotions
	endif

	if numberToTake > 0
		i = 0
		While i < numberToTake
			PlayerRef.RemoveItem(potions[i], 1, false, StolenGoods)
			i += 1
		EndWhile
		StolenGoods.RemoveAllItems(CombatPotions, true, true)
		return true
	endif
	return false
EndFunction

Function InitActiveTears()
	ActiveTears = new bool[3]
EndFunction

bool Function ApplyTears(int level); return true if tears were applied
	if MCM.UseTearTats && !ActiveTears[level - 1]
		ActiveTears[level - 1] = SlaveTats.simple_add_tattoo(PlayerRef, "Tears", ("Tears " + level), last = true, silent = true, alpha=MCM.SlaveTatAlpha)
		if !ActiveTears[level - 1]
			Debug.Notification("SlaveTats could not apply Tears " + level)
		endif
	endif
	return ActiveTears[level - 1]
EndFunction

bool Function RemoveTears(int level); return true if tears were removed
	bool removedTears
	if MCM.UseTearTats && ActiveTears[level - 1]
		ActiveTears[level - 1] = false
		removedTears = SlaveTats.simple_remove_tattoo(PlayerRef, "Tears", ("Tears " + level), last = true, silent = true)
	endif
	return removedTears
EndFunction

Function RemoveAllTears(bool notify=false)
	if MCM.UseTearTats
		bool hadTears
		if notify
			Debug.Notification("Removing tears...")
		endif
		int i = 0
		While i < 3
			if ActiveTears[i]
				RemoveTears(i + 1)
				hadTears = true
			endif
			i += 1
		EndWhile
		if notify
			if hadTears
				Debug.Notification(PlayerRef.GetActorBase().GetName() + "'s tears are gone.")
			else
				Debug.Notification("Done.  " + PlayerRef.GetActorBase().GetName() + " had no tears to remove.")
			endif
		endif
	endif
EndFunction

Function NoMoreTears(bool notify=false)
	RemoveAllTears(notify)
	MCM.UseTearTats = false
EndFunction

Function ReapplyTears()
	Debug.Notification("Reapplying tears...")
	int i = 0
	While i < 3
		if ActiveTears[i]
			if RemoveTears(i + 1)
				ApplyTears(i + 1)
			endif
		endif
		i += 1
	EndWhile
	Debug.Notification("Done reapplying tears.")
EndFunction

Function DemoTears(); assumes that no tears are active
	int i = 1
	While i <= 3
		Debug.Notification("Tears " + i + "...")
		ApplyTears(i)
		Utility.Wait(1)
		RemoveTears(i)
		i += 1
	EndWhile
	Debug.Notification("Done.")
EndFunction

int Function HighestTearsLevel()
	if MCM.UseTearTats
		int i = 3
		While i > 0
			if ActiveTears[i - 1]
				return i
			endif
			i -= 1
		EndWhile
		return 0
	endif
	return -1
EndFunction

int Function GetTearsLevel(Spell aSpell)
	return aSpell.GetNthEffectMagnitude(aSpell.GetNumEffects() - 1) as int;  The last effect is always tears.
EndFunction

Function DisplayMayAskForService()
	if MessageQuest.IsRunning()
		MessageQuest.DisplayOfferService(MsgMayAskForService)
	else
		MsgMayAskForService.Show()
	endif
EndFunction

Function DisplayOwnerBeckons(Message msg)
	if PlayerRef.GetDistance(OwnerRef) > 300.0
		SendRunicCircleUpdate("Beckon")
	endif
	
	if MessageQuest.IsRunning()
		MessageQuest.DisplayOwnerBeckons(msg)
	else
		msg.Show()
	endif
EndFunction

Function DisplayWarning(string text)
	if MessageQuest.IsRunning()
		MessageQuest.DisplayWarning(text)
	else
		Debug.Notification(text)
	endif
EndFunction

Function DisplayThought()
	;float startLoadTime = Utility.GetCurrentRealTime()
	int data = JValue.readFromFile("Data/Interface/Lola/Thoughts.json")
	if data == 0
		Debug.Notification("Cannot read Data/Interface/Lola/Thoughts.json")
		return
	endif
	
	float score = GlobalSubmissionScore.GetValue()
	string range = "<0"
	if score >= th4
		range = "99+"
	elseif score >= th3
		range = "80-99"
	elseif score >= th2
		range = "50-80"
	elseif score >= th1
		range = "20-50"
	elseif score >= 0
		range = "0-20"
	endif
	
	if IsLovesick && !hasLovesickThoughts
		int thoughtsLS = JValue.solveObj(data, ".HumiliationLS.All")
		hasLovesickThoughts = (JArray.count(thoughtsLS) > 1); Setting this once will speed the process.
		JValue.zeroLifetime(thoughtsLS)
	endif
	
	; Priority: Humiliation > Prostitution > General
	string category = ".General." + range
	if IsLovesick && hasLovesickThoughts
		category = ".GeneralLS." + range
	endif
	if Quest.GetQuest("vkjPimpedBasic").IsRunning()
		category = ".Prostitution." + range
		if IsLovesick && hasLovesickThoughts
			category = ".ProstitutionLS." + range
		endif
	endif
	if PlayerRef.HasMagicEffect(HumiliationEffect)
		if !hasHumiliationThoughts
			int thoughtsHum = JValue.solveObj(data, ".Humiliation.All")
			hasHumiliationThoughts = (JArray.count(thoughtsHum) > 1); Setting this once will speed the process.
			JValue.zeroLifetime(thoughtsHum)
		endif
		if hasHumiliationThoughts
			category = ".Humiliation.All"; no range for this one
			if IsLovesick && hasLovesickThoughts
				category = ".HumiliationLS.All"
			endif
		endif
	endif
	
	int thoughts = JValue.solveObj(data, category)
	int nThoughts = JArray.count(thoughts)
	;MiscUtil.PrintConsole("Cat: " + category + ", thoughts: " + nThoughts)
	if nThoughts > 0
		int iThought = Utility.RandomInt(0, nThoughts - 1)
		While (nThoughts > 1) && (iThought == lastThought)
			iThought = Utility.RandomInt(0, nThoughts - 1)
		EndWhile
		lastThought = iThought
		string thoughtStr = JArray.getStr(thoughts, iThought)
		if thoughtStr != ""
			if MessageQuest.IsRunning()
				MessageQuest.DisplayThought(thoughtStr)
			else
				Debug.Notification(thoughtStr)
			endif
		endif
	else
		Debug.Notification("Nothing found in Thoughts.json for " + category)
	endif
	JValue.zeroLifetime(thoughts)
	JValue.zeroLifetime(data)
	;MiscUtil.PrintConsole("Sub Lola: Thoughts loaded in " + (Utility.GetCurrentRealTime() - startLoadTime) + " seconds")
EndFunction

; The player intentionally squeezed the butt toy while it was not fully inflated
Function SqueezedToy()
	if !SuspendAll && (OwnerRef.GetActorValue("WaitingForPlayer") == 0)
		Debug.Notification("You can't resist the toy.  " + OwnerRef.GetActorBase().GetName() + " smiles.")
	endif
	UpdateSubmissionScore(1)
EndFunction

bool Function IsOwnerThreatened()
	if OwnerRef.IsBleedingOut()
		return true
	endif
	
	if OwnerRef.IsInCombat()
		Actor foe = OwnerRef.GetCombatTarget()
		if (foe != none) && (foe != PlayerRef)
			float ownerDamageResist = 0.12 * (OwnerRef.GetActorValue("DamageResist")) / 100.0
			if ownerDamageResist > 0.9
				ownerDamageResist = 0.9
			endif
			float ownerThreat = OwnerRef.GetActorValue("Health") / (1.0 - ownerDamageResist)
			if IsOwnerVampire
				ownerThreat *= 1.25
			elseif isOwnerRobed; don't stack bonuses
				ownerThreat *= 1.33
			endif
			
			float foeDamageResist = 0.12 * (foe.GetActorValue("DamageResist")) / 100.0
			if foeDamageResist > 0.9
				foeDamageResist = 0.9
			endif
			float foeThreat = foe.GetActorValue("Health") / (1.0 - foeDamageResist)
			if foe.HasKeyword(KwVampire)
				foeThreat *= 1.5
			endif
			
			if ShowCombatThreat
				Debug.Notification("Owner Threat Level " + (foeThreat / ownerThreat))
			endif

			return ((foeThreat / ownerThreat) >= MCM.CombatMercyLevel)
		endif
	endif
	
	return false
EndFunction

Function OncePerMinuteCheck()
	checkCounter -= 1
	if checkCounter <= 0
		checkCounter = 3; Check every minute (3 update cycles)
		; Check for enchanted body clothes on owner, presumed to be mage robes
		isOwnerRobed = false
		if (OwnerRef.WornHasKeyword(KwClothingBody))
			Form bodyWear = OwnerRef.GetWornForm(0x00000004)
			if bodyWear
				if ((bodyWear as Armor).GetEnchantment())
					isOwnerRobed = true
				endif
			endif
		endif
		; DFC
		Quest dfQuest = Quest.GetQuest("_DFlow")
		IsDFCEnslaved = (dfQuest != none) && (dfQuest.GetStage() == 100)
		; Time scale
		float timefac = Timescale.GetValue()
		if !UI.IsMenuOpen("Dialogue Menu") && (timefac > 1.0) && (timefac <= 20.0)
			playerTimeScale = timefac
		endif		
	endif
EndFunction

Function DragonDetected()
	DragonSpotted = true
	dragonCooldown = 2
EndFunction

Function ForceEndScene()
    Scene curScene = PlayerRef.GetCurrentScene()
    if curScene != none
        curScene.Stop()
    endif
	curScene = OwnerRef.GetCurrentScene()
    if curScene != none
        curScene.Stop()
    endif
EndFunction

Function SetPlaymate(Actor act)
	if act != none
		if act == PlaymateRef
			Debug.Notification("Error in vkjMQ SetPlaymate: Attempt to set same playmate")
			return
		endif
		if !PlaymateQuest.IsRunning()
			PlaymateQuest.Start()
		endif
		vkjPlaymate PlaymateScr = PlaymateQuest as vkjPlaymate
		PlaymateScr.Playmate.ForceRefTo(act)
		PlaymateScr.PlaymateRef = act
		Playmate.ForceRefTo(act)
		SexLab.TrackActor(PlaymateRef, "PlaymateSex")
		RegisterForModEvent("PlaymateSex_End", "PlaymateSexEnd")
	else
		if PlaymateQuest.IsRunning()
			SexLab.UntrackActor(PlaymateRef, "PlaymateSex")
			vkjPlaymate PlaymateScr = PlaymateQuest as vkjPlaymate
			PlaymateScr.Playmate.Clear()
			PlaymateScr.PlaymateRef = none
			PlaymateQuest.Stop()
			Playmate.Clear()
		endif
	endif
	PlaymateRef = act
	StorageUtil.SetFormValue(self, "Playmate", act)
	UpdatePlaymateAvailability()
	IsPlaymateVampire = PlaymateRef.HasKeyword(KwVampire)
	SendModEvent("SLTR_PlaymateChanged")
EndFunction

Function SetStripForLick(bool val)
	stripForLick = val
EndFunction

Function OwnerWillWatchSex()
	ownerWatchesSex = true
EndFunction

Function UpdateOverburdened()
	float iw = PlayerRef.GetActorValue("InventoryWeight")
	float cw = PlayerRef.GetActorValue("CarryWeight")
	; The extreme hobble dress makes carry weight negative, so don't consider the PC to be overburdened unless carry weight is above 0.
	IsOverburdened = (cw > 0.0) && (iw > (cw * MCM.v_overburdened))
	if IsOverburdened && (MCM.OverburdenBonus > 0) && !PlayerRef.WornHasKeyword(KwClothingBody) && !PlayerRef.WornHasKeyword(KwArmorBody)
		IsOverburdened = (iw - MCM.OverburdenBonus) > (cw * MCM.v_overburdened)
	endif
EndFunction

Function UpdateRunicCircle(string glowState); None, Enslaved, Suspend, Punish, Beckon, Reset.
	if !MCM.UseRunicGlow
		return
	endif

	int iSpell
	if (glowState == "None") || (glowState == "")
		PlayerRef.RemoveSpell(RunicCircleSpell)
		RunicCircleSpell = none
		return
	elseif glowState == "Enslaved"
		iSpell = MCM.GlowOnEnslaved
	elseif glowState == "Suspend"
		iSpell = MCM.GlowOnSuspend
	elseif glowState == "Spank"
		iSpell = MCM.GlowOnSpank
	elseif glowState == "Whip"
		iSpell = MCM.GlowOnWhip
	elseif glowState == "Beckon"
		iSpell = MCM.GlowOnBeckon
	elseif glowState == "Reset"
		if SuspendAll
			iSpell = MCM.GlowOnSuspend
		else
			iSpell = MCM.GlowOnEnslaved
		endif
	else
		Debug.Notification("SLTR: Invalid UpdateRunicCircle state " + glowState)
		return
	endif
	
	; MCM Runic Circle glow options:  0 - None, 1 - Dim, 2 - Dim Glowing, 3 - Bright, 4 Bright Glowing
	; The RunicCircleSpells form list is arranged this way, with the female versions before the male versions.
	if iSpell == 0
		if RunicCircleSpell != none
			PlayerRef.RemoveSpell(RunicCircleSpell)
		endif
		RunicCircleSpell = none
		return
	endif
	iSpell = (iSpell - 1) * 2
	if PlayerRef.GetActorBase().GetSex() == 0
		iSpell += 1
	endif
	Spell newSpell = RunicCircleSpells.GetAt(iSpell) as Spell
	if newSpell != RunicCircleSpell
		if RunicCircleSpell != none
			PlayerRef.RemoveSpell(RunicCircleSpell)
		endif
		RunicCircleSpell = newSpell
		PlayerRef.AddSpell(RunicCircleSpell, false)
	endif
EndFunction

bool Function IsNearNudityMarker()
	if (PlayerRef.GetDistance(MCM.NudeMarker1) < MCM.NudeMarkerRadius1) || \
		(PlayerRef.GetDistance(MCM.NudeMarker2) < MCM.NudeMarkerRadius2) || \
		(PlayerRef.GetDistance(MCM.NudeMarker3) < MCM.NudeMarkerRadius3)
		return true
	endif
	return false
EndFunction

Function SetLastHomeBeatingToy(Weapon toy)
	if (toy != none) && (toy == LastHomeBeatingToy)
		HomeBeatingToyCount += 1
	else
		HomeBeatingToyCount = 0
	endif
	LastHomeBeatingToy = toy
EndFunction

float Function ScaledGameTime(float hours)
	return hours * playerTimeScale / 20.0
EndFunction

Function ClearDailyBonusForCuffs()
	dailyBonusForCuffs = 0.0
EndFunction

Function ResetDailyBonusForCuffs()
	dailyBonusForCuffs = 0.0
	if MCM.RequiredCuffs == 3
		dailyBonusForCuffs = 2.0
	elseif MCM.RequiredCuffs > 0
		dailyBonusForCuffs = 1.0
	endif
EndFunction

; Remove an item from the PC or follower.
Function RemoveItem(Actor who, Form item, int quantity = 1)
	if who == PlayerRef
		PlayerRef.RemoveItem(item, quantity, true)
	elseif (who == OwnerRef) || (who == PlaymateRef)
		FollowerRemoveItem(who, item, quantity)
	endif
EndFunction

Function ShowOwnerUnlockMessage(Actor who, string deviceName)
	string how = "."
	if who == PlayerRef
		how = " using your keys."
	elseif who == OwnerRef
		how = " using " + OwnerPronounPosObj() + " keys."
	endif
	Debug.Notification(OwnerRef.GetBaseObject().GetName() + " unlocks the " + deviceName + how)
EndFunction

; Owner will attempt to unlock a device on the PC, owner, or playmate using keys from the PC or owner.
bool Function ReleaseDevice(Actor act, Armor device, Keyword deviceKwd, bool silent=false, bool destroy=false)
	if ((deviceKwd == zlib.zad_DeviousPlugVaginal) || (deviceKwd == zlib.zad_DeviousPlugAnal)) && act.WornHasKeyword(zlib.zad_DeviousBelt)
		if !silent
			Debug.Notification("A chastity belt blocks the plug.")
		endif
		return false
	endif

	bool succeeded
	ObjectReference tmpObjRef = PlayerRef.placeAtMe(device, abInitiallyDisabled = true)
	zadEquipScript deviceInstance = tmpObjRef as zadEquipScript
	Armor deviceR = deviceInstance.deviceRendered
	Key deviceKey = deviceInstance.deviceKey
	if (deviceKey == none) && (act == PlayerRef) && (deviceInstance.CutDeviceEscapeChance < 25)
		Debug.Notification("This " + deviceInstance.deviceName + " has no lock.  Struggle free on your own.")
		tmpObjRef.Delete()
		return false
	endif
	
	int nKeys = deviceInstance.NumberOfKeysNeeded
	if act == PlayerRef
		nKeys += MCM.ExtraKeys
	endif
	;MiscUtil.PrintConsole("Key: " + deviceKey + ", Need: " + nKeys + ", Have: " + FollowerItemCount(OwnerRef, deviceKey))

	; DD's UnlockDevice function does not check the rendered device for blocking keywords.
	if device.HasKeyword(zlib.zad_BlockGeneric) || device.HasKeyword(zlib.zad_QuestItem) || deviceR.HasKeyword(zlib.zad_BlockGeneric) || deviceR.HasKeyword(zlib.zad_QuestItem)
		if !silent
			Debug.Notification(OwnerRef.GetBaseObject().GetName() + " cannot remove the " + deviceInstance.deviceName + ".")
		endif
		tmpObjRef.Delete()
		return false
	endif

	if (nKeys == 0) || (deviceKey == none); Keyless device
		; Destroy inflatable plugs (which don't actually inflate for NPCs).  Everything else will come off easily with assistance.
		bool destroyThis = destroy || (deviceR.HasKeyword(zlib.zad_DeviousPlug) && deviceR.HasKeyword(zlib.zad_HasPumps))
		destroyThis = destroyThis || (deviceInstance.CutDeviceEscapeChance >= 25); Destroy easily cuttable items (presumably rope).
		if zlib.UnlockDevice(act, device, deviceR, deviceKwd, destroyThis)
			succeeded = true
			if !silent
				string outcome = "."
				if destroyThis
					outcome = ", but it was ruined."
				endif
				Debug.Notification(OwnerRef.GetBaseObject().GetName() + " removed the " + deviceInstance.deviceName + outcome)
			endif
		else
			Debug.Notification(OwnerRef.GetBaseObject().GetName() + " was not able to remove the " + deviceInstance.deviceName + " .")
		endif
		tmpObjRef.Delete()
		return succeeded
	endif

	Actor whoHasKey
	if (act == PlayerRef) || (act == PlaymateRef); Prioritize PC's keys for unlocking the PC or playmate.
		if PlayerRef.GetItemCount(deviceKey) >= nKeys
			whoHasKey = PlayerRef
		elseif FollowerItemCount(OwnerRef, deviceKey) >= nKeys
			whoHasKey = OwnerRef
		endif
	elseif (act == OwnerRef); Prioritize owner's keys for unlocking the owner.
		if FollowerItemCount(OwnerRef, deviceKey) >= nKeys
			whoHasKey = OwnerRef
		elseif PlayerRef.GetItemCount(deviceKey) >= nKeys
			whoHasKey = PlayerRef
		endif
	endif

	if whoHasKey != none
		if zlib.UnlockDevice(act, device, deviceR, deviceKwd, destroy)
			succeeded = true
			if KeyList.HasForm(deviceKey); Remove any standard keys used.
				if zlib.Config.GlobalDestroyKey
					RemoveItem(whoHasKey, deviceKey, nKeys)
				elseif (act == PlayerRef) && (MCM.ExtraKeys > 0)
					RemoveItem(whoHasKey, deviceKey, MCM.ExtraKeys)
				endif
			endif
			if !silent
				ShowOwnerUnlockMessage(whoHasKey, deviceInstance.deviceName)
			endif
		else
			Debug.Notification(OwnerRef.GetBaseObject().GetName() + " was not able to remove the " + deviceInstance.deviceName + " .")
		endif
	else
		Debug.Notification(OwnerRef.GetBaseObject().GetName() + " lacks the keys to unlock the " + deviceInstance.deviceName + ".")
	endif

	tmpObjRef.Delete()
	return succeeded
EndFunction

bool Function ReleaseDeviceByKeyword(Actor act, Keyword deviceKwd, bool silent=false, bool destroy=false)
	Armor device = zlib.GetWornDevice(act, deviceKwd)
	if device != none
		return ReleaseDevice(act, device, deviceKwd, silent, destroy)
	endif
	Debug.Notification("SLTR: Could not find device for keyword " + deviceKwd)
	return false
EndFunction

Function ShowShoppingHelp()
	ShoppingHelpMsg.Show()
EndFunction

Actor Function GetInnkeeper()
	Location loc = PlayerRef.GetCurrentLocation()
	if (loc == none) || !loc.HasKeyword(KwInn)
		return none
	endif

	Cell curCell = PlayerRef.GetParentCell()
	int i = curCell.GetNumRefs(43); NPCs
	While i > 0
		i -= 1
		Actor npc = curCell.GetNthRef(i, 43) as Actor
		if npc.IsInFaction(InnkeeperFaction) && !npc.IsInFaction(InnServerFaction) && !npc.IsPlayerTeammate()
			return npc
		endif
	EndWhile
	return none
EndFunction

Actor Function GetValidInnkeeper()
	Actor npc = GetInnkeeper()
	if npc == none
		return none
	endif

	; Check gender
	if SexualityPC.GetValue() == npc.GetActorBase().GetSex()
		return none
	endif

	; Check race
	if MCM.NoBeastRaces && npc.GetRace().HasKeyword(KwBeastRace)
		return none
	endif
	
	return npc
EndFunction

; Wait a whole number of seconds, but end immediately if player enters combat.  Return true if player is in combat.
bool Function WaitEndOnCombat(int dur)
	int i = 0
	while i < dur
		if PlayerRef.IsInCombat()
			return true
		endif
		Utility.Wait(0.99)
		i += 1
	endwhile
	return false
EndFunction

Function StopQuestByName(string questName)
	Quest q = Quest.GetQuest(questName)
	if (q != none) && q.IsRunning()
		q.Stop()
	endif
EndFunction

Function LogAndPrint(string logMsg)
	MiscUtil.PrintConsole(logMsg)
	Debug.Trace(logMsg)
EndFunction

Function TestPrint(string str)
	if TestMode.GetValue() > 0
		MiscUtil.PrintConsole(str)
	endif
EndFunction

Function LoadKeywords()
	KwInn = LocList[1]
	KwTown = LocList[2]
	KwCity = LocList[3]
	KwCapital = LocList[8]
	KwHasInn = LocList[7]
	KwHabitation = LocList[6]
	KwDwelling = LocList[5]
	KwDungeon = LocList[9]
	
	; Keyword lookup by string looks sloppy, but Skyrim's own scripts like Armor use HasKeywordString() which has to be slow.
	; We can keep passing in more & more keywords, or set them this way.  It's faster than Armor's IsClothing() function.
	KwZbfGag = Keyword.GetKeyword("zbfWornGag")
	KwZbfPermitOral = Keyword.GetKeyword("zbfWornPermitOral")
	KwNoStrip = Keyword.GetKeyword("SexLabNoStrip")
	KwZbfYoke = Keyword.GetKeyword("zbfWornYoke")
	KwClothing = Keyword.GetKeyword("ArmorClothing")
	KwLightArmor = Keyword.GetKeyword("ArmorLight")
	KwHeavyArmor = Keyword.GetKeyword("ArmorHeavy")
	KwClothingBody = Keyword.GetKeyword("ClothingBody")
	KwArmorBody = Keyword.GetKeyword("ArmorCuirass")
	KwGuild = Keyword.GetKeyword("LocTypeGuild")
	KwMine = Keyword.GetKeyword("LocTypeMine")
	KwBeastRace = Keyword.GetKeyword("IsBeastRace")
	KwPotion = Keyword.GetKeyword("VendorItemPotion")
	KwRestoreHealth = Keyword.GetKeyword("MagicAlchRestoreHealth")
EndFunction

bool Function ThoughtsExist()
	return JContainers.FileExistsAtPath("Data/Interface/Lola/Thoughts.json")
EndFunction

bool Function CustomConfessionsExist()
	return JContainers.FileExistsAtPath("Data/Interface/Lola/Confessions.json")
EndFunction

Function LoadConfessions()
    if !CustomConfessionsExist()
		Debug.MessageBox("Custom confessions are enabled but Confessions.json does not exist in Data\\Interface\\Lola.  Confessions could not be loaded.  This feature will be deactivated.")
		MCM.CustomConfessions = 0
        return
    endif
	int data = JValue.readFromFile("Data/Interface/Lola/Confessions.json")
	if data == 0
		Debug.MessageBox("Custom confessions are enabled but Confessions.json in Data\\Interface\\Lola could not be read.  This feature will be deactivated.")
		MCM.CustomConfessions = 0
		return
	endif
	
	string newName = JMap.getStr(data, "Ashamed")
	(ConfessionNPCs.GetAt(0) as ActorBase).SetName(newName)
	newName = JMap.getStr(data, "Depraved")
	(ConfessionNPCs.GetAt(1) as ActorBase).SetName(newName)
	newName = JMap.getStr(data, "Dreams")
	(ConfessionNPCs.GetAt(2) as ActorBase).SetName(newName)
	newName = JMap.getStr(data, "Embarrassed")
	(ConfessionNPCs.GetAt(3) as ActorBase).SetName(newName)
	newName = JMap.getStr(data, "Fantasy")
	(ConfessionNPCs.GetAt(4) as ActorBase).SetName(newName)
	newName = JMap.getStr(data, "Perversion")
	(ConfessionNPCs.GetAt(5) as ActorBase).SetName(newName)
	
	JValue.release(data)
EndFunction

Function SaveInscription()
	String file = "../../../Interface/Lola/CollarTag.json"
	JsonUtil.SetStringValue(file, "_comment", "You can change your collar tag inscription by editing this file, then using 'Load collar tag inscription' on the MCM System page.  Use \n to start a new line.  A double quote must be preceded by a backslash: \".  Text longer than 1000 characters can crash your game.")
	JsonUtil.SetStringValue(file, "inscription", CollarInscription)
	JsonUtil.Save(file, false)
EndFunction

bool Function LoadInscription()
	String file = "../../../Interface/Lola/CollarTag.json"
	String str = JsonUtil.GetStringValue(file, "inscription", "!")
	if str == "!"
		return false
	endif
	CollarInscription = str
	return true
EndFunction

;/--------------------------------------------------------------------------------------------------
; FollowerItemCount() - added by Roggvir
;	Counts how many of given item an EFF follower has in their real inventory AND their container.
;-------------------------------------------------------------------------------------------------/;
int function FollowerItemCount(objectReference _followerRef, form _item)
	int _count = _followerRef.GetItemCount(_item)
	if UseEFF
		objectReference _container = vkjEFF.FollowerInventory(_followerRef)
		if _container
			_count += _container.GetItemCount(_item)
		endIf
	endIf
	return _count
endFunction

;/--------------------------------------------------------------------------------------------------
; FollowerRemoveItem() - added by Roggvir
;	Removes number of items from the follower, taking into account their EFF container (if possible)
;-------------------------------------------------------------------------------------------------/;
function FollowerRemoveItem(objectReference _followerRef, form _item, int _count = 1, objectReference _destinationRef = none)
	if !UseEFF
		_followerRef.RemoveItem(_item, _count, true, _destinationRef)
	else
		int _hasCount = _followerRef.GetItemCount(_item)
		if _hasCount >= _count
			; enough items in real inventory, remove desired number of items and we're DONE
			_followerRef.RemoveItem(_item, _count, true, _destinationRef)
		else
			; not enough items in real inventory, so remove what we can, then try the EFF container
			if _hasCount > 0
				_followerRef.RemoveItem(_item, _hasCount, true, _destinationRef)
				_count -= _hasCount
			endIf
			; try removing rest of the items from EFF container
			objectReference _container = vkjEFF.FollowerInventory(_followerRef)
			if _container
				_container.RemoveItem(_item, _count, true, _destinationRef)
			endIf
		endIf
	endIf
endFunction

;/--------------------------------------------------------------------------------------------------
; FollowerEquipItem() - added by Roggvir
;	Equips item on the follower.
;	If they do not have the item in their real inventory, the function will check the EFF container
;	(if the EFF is loaded) and if found there, it will be moved into the real inventory.
;	If the follower doens't have the item anywhere, the game will give it one anyway.
;-------------------------------------------------------------------------------------------------/;
function FollowerEquipItem(objectReference _followerRef, form _item, bool _preventRemoval = false, bool _silent = false)
	; if the item is not already in the real inventory, try to move it from the EFF container (if possible)
	if UseEFF && _followerRef.GetItemCount(_item) < 1
		objectReference _container = vkjEFF.FollowerInventory(_followerRef)
		if _container && _container.GetItemCount(_item) > 0
			_container.RemoveItem(_item, 1, true, _followerRef)
		endIf
	endIf
	; equip the item - either the follower had it, or we moved it from EFF container, or it will be given by the game.
	(_followerRef as actor).EquipItem(_item, _preventRemoval, _silent)
endFunction