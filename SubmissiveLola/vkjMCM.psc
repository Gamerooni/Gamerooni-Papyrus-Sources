Scriptname vkjMCM extends SKI_ConfigBase conditional

vkjMQ Property MQ Auto
quest property StrongHand Auto
quest property MainQuest Auto
quest property ProstitutionQuest Auto
quest property ArmorRestriction Auto
quest property RadProQuest Auto
quest property SlutsQuest Auto
quest property CombatPotionManager Auto
quest property FashionSlaveQuest Auto
quest property GaggedQuest Auto
vkjArmorRestriction property vkjArmorR Auto
zadLibs property zlib auto
float versionNum
string exportFile = "../Lola/LolaConfig.json"
Book property LolaBook Auto
Keyword property KwCollar Auto
Keyword property KwActorTypeNPC Auto
Actor property P Auto
Race property werewolfRace Auto
Faction property PotentialFollowerFaction Auto
Faction property CurrentFollowerFaction Auto
ObjectReference property CookingPotActivator auto
Spell property KneelSpell auto hidden
Spell property DragonDeathSpell auto
Perk property SpankedHardPerk auto
Perk property WhippedHardPerk auto
Sound Property SoundAchievement auto

; Statistics
GlobalVariable Property TimesSubmitted auto
int property BoozeLost auto
int property ClientCount auto
int property DaysSubmitted auto; Total days enslaved
int property CurrentDaysSubmitted auto conditional
int property GoldGiven auto
int property ServiceOffered auto
int property SweetrollCount auto
int property TimesDanced auto
int property TimesGagged auto
int property TimesParaded auto conditional
int property TimesSpankedPunish auto
int property TimesSpankedReward auto
int property TimesWhippedPunish auto
int property TimesMotivated auto conditional
int property TimesWhippedReward auto
int property TimesWhoredOut auto conditional
int property PonyExpressCount auto conditional
int property SlutsCount auto
int property TreasuresFound auto conditional
int property ConfessionCount auto conditional; Tracked but not displayed
int property ButtToyCount auto conditional; Tracked but not displayed
int property TimesFetchedBooze auto
int property TimesCooked auto
int property TimesCleaned auto

; Achievements
bool property DidAchieveResub auto
bool property DidAchieveHousecarl auto
bool property DidAchievePlaymateSub auto
bool property DidAchievePlaymatePun auto
bool property DidAchievePerfectScore auto
bool property DidAchieveLowScore auto
bool property DidAchieveDomestic auto
int AchieveSubLola
int AchieveResub
int AchieveWorkingSlave
int AchieveDomestic
int AchieveRun
int AchieveDance
int AchieveGag
int AchieveParade
int AchievePony
int AchieveKept
int AchieveHousecarl
int AchievePlaymateSub
int AchievePlaymatePun
int AchievePerfectScore
int AchieveLowScore
int AchieveSpankMe
int AchieveWhipMe

int v_StartQuest_OID
int v_ResetDefault_OID
int v_ResetEventBlocking_OID
int RenewHairButton
int v_MoveDom_OID
int v_ResetDailyUpdate_OID
int ActiveTaskOID
int DhlpResume_OID
int DhlpSuspendedByLabel

int displayFlag
int v_HelpStart_OID
int v_HelpScore_OID
int v_HelpCollar_OID
int v_HelpOwner_OID
int v_HelpDismiss_OID
int v_HelpBuyer_OID
int v_NewBook_OID
int v_NewCollar_OID
int v_NewGag_OID
int v_HelpDaily_OID
int v_HelpLootShare_OID
int v_HelpPause_OID
int v_HelpNaked_OID
int v_HelpHair_OID
int v_HelpUninstall_OID
int v_HelpScene_OID
int v_HelpSS_OID
int v_HelpToyBox_OID

int v_subG_OID
int _v_subG = 50
float property v_subG = 0.5 auto
int v_resistG_OID
int _v_resistG = 100
float property v_resistG = 1.0 auto
int v_Score_OID
int v_DailyUpdateTime_OID
int v_ContractLeft_OID
int v_Arousal_OID
int v_Comments_OID
int v_ShockStrength_OID
int ShockMagickaLossOID
int ArousalLossOnZapOID
int v_ScoreDecay_OID
int v_overburdened_OID
int _v_overburdened = 80
float property v_overburdened = 0.8 auto
int OverburdenBonusOID
int property OverburdenBonus = 0 auto
bool property mustUnburden = false auto conditional
int NoZazEnslave_OID
int KeptThreshold_OID
int KeptBelowThreshold_OID
int v_WhipRewardAmount_OID
int v_WhipPunishAmount_OID
int WhipWeapon_OID
int v_WhipSpeed_OID
int v_PunishmentDays_OID
int v_VampireCooldown_OID
int VampireFeedingOptionOID
int property VampireFeedingOption auto
string[] VampireFeedingOptionList
int BleedoutDaysOID
int BleedoutProstQuotaOID
int BleedoutPotionsOID

int v_DFBaseResistLoss_OID
int v_EyeCandy_OID
int v_WhippedEyeCandy_OID
int v_EyeCandyReject_OID
int v_UnfairOID
int v_UseRadPro_OID
int v_UseSS_OID
int v_UseZap8_OID
int v_UseEFF_OID
int UseSluts_OID
int UseSlaveTats_OID
int UseLoveSickness_OID
int UseIWW_OID

GlobalVariable Property GlobalUnfairDom  Auto
GlobalVariable Property GlobalArousalThreshold  Auto
GlobalVariable Property GlobalCommentChance  Auto
GlobalVariable Property Global3wayChance  Auto
GlobalVariable Property GlobalProstitutionChance  Auto
GlobalVariable Property GlobalDailyGold  Auto
GlobalVariable Property GlobalPace  Auto
GlobalVariable Property GlobalLoadScreenChance Auto
GlobalVariable Property GlobalFashionSlaveChance Auto

int Contract_OIDM
int property _Contract = 0 auto conditional
int property ForceContractDays auto; Override the contract setting for the next enslavement.  MQ resets this to zero upon enslavement.
int[] property Contract auto
string[] contractList

int hair_option_OIDM
int property hair_option = 1 auto conditional
string[] hairList
int HairChoice_OIDM; obsolete
int HairStyle_OID
int AddHairStyle_OID
int RemoveHairStyle_OID
int HairChangeMin_OID
float HairChangeMin = 3.0
int HairChangeMax_OID
float HairChangeMax = 3.0
int WhoAsksOIDM
string[] whoAsksList
int FollowerKnowsOIDM
string[] followerKnowsList

bool property FollowerAsks auto conditional
bool property PlayerAsks = true auto conditional
int property FollowerKnows = 1 auto conditional; 0=Not Expecting, 1=Expecting, 2=Forceful, 3=Seductive, 4=Convince Me
bool property NickNameMode auto conditional
bool property NoZazEnslave = true auto conditional
int property ShockStrength = 25 auto
int property ShockMagickaLoss = 25 auto
int property ArousalLossOnZap = 10 auto
int property ScoreDecay = 5 auto
int property KeptThreshold = 101 auto
int property KeptBelowThreshold = 0 auto conditional
bool property KeptForever = false auto
int property WhipRewardDuration = 8 auto
int property WhipPunishDuration = 20 auto
int property WhipWeapon = 0 auto
string[] whipWeapList
Weapon[] property WhipWeaponModelList auto
int property WhipSpeed = 80 auto
int property PunishmentDays = 1 auto
bool property UseRedGlow auto
bool property GentleRewardWhipping=true auto
float property DFBaseResistLoss = 1.0 auto
int property EyeCandyChance = 25 auto
int property WhippedEyeCandyChance = 50 auto
int property EyeCandyRejectChance = 10 auto
bool property ExtendedEyeCandy = false auto
bool property AllowMotivation auto conditional
bool property PunishFriendlyFire auto
int property BleedoutDays = 1 auto conditional
int property BleedoutProstQuota = 25 auto conditional; percent
int property BleedoutPotions = 2 auto conditional
bool property EnableCookingPots = true auto
bool property AllowSexDuringSuspend auto
bool property AutoAdjustGoldShare = false auto
bool property ScaleScoreDecay = true auto
int property VampireCooldown = 12 auto
bool property OwnerIsRadProPimp auto conditional
bool property NymphoNotWhore auto conditional
bool property IsDeveloper auto hidden
bool property ProstIgnoreArousal auto conditional
bool property NoBeastRaces=true auto conditional
bool property ServiceInnkeeper auto conditional
bool property StopDancingWipeBrow auto
bool property UseCombatPotions=true auto conditional
bool property UseRunicGlow auto

int SavedKeptThreshold
int SavedKeptBelowThreshold

int NudeRule_OIDM
int property NudeRule = 5 auto conditional
string[] nuderuleList
bool property ClothesOnly = false auto conditional
bool property StripOnNudeP = false auto ;Makes the player automatically strip after being punished for a nudity rule violation
bool renewNudeLists

int v_tMinDays_OID
int property v_tMinDays = 3 auto
int v_tRandDays_OID
int property v_tRandDays = 0 auto
int v_ServMinTimes_OID
int property v_ServMinTimes = 3 auto
int v_ServRandTimes_OID
int property v_ServRandTimes = 0 auto
int SexMinTimes_OID
int property SexMinTimes = 0 auto
int MinDailyScore_OID
int property MinDailyScore = 6 auto

int collars_OIDM
int property collars = 0 auto
string[] collarList
int gags_OIDM
int property gags = 0 auto
string[] gagList
int blind_OIDM
int property blinds = 0 auto conditional
bool property BlindfoldFun = true auto conditional
string[] blindList
int aRestraints_OIDM
int property aRestraints = 0 auto
string[] aRestraintsList
int shoes_OIDM
int property shoes = 0 auto
int bondageShoes_OIDM
int property BondageShoes = 0 auto
string[] shoesList
string[] bondageShoeList
int Corset_OIDM
int property Corset = 0 auto
string[] corsetList
int RopeHarness_OIDM
int property RopeHarness = 0 auto
string[] ropeHarnessList
int BodyHarness_OIDM
int property BodyHarness = 0 auto
string[] bodyHarnessList
int dress_OIDM
int property dress = 0 auto
string[] dressList
int gloves_OIDM
int property gloves = 0 auto
string[] glovesList
int ArmCuffs_OIDM
int property ArmCuffs = 0 auto
int LegCuffs_OIDM
int property LegCuffs = 0 auto
string[] cuffsList
int tail_OIDM
int property tail = 3 auto
string[] tailList
int ponyColor_OIDM
int property ponyColor = 0 auto
string[] ponyColorList
int skillTaught_OIDM
int property skillTaught = 0 auto
string[] skillList

int CustomConfessions_OIDM
int property CustomConfessions auto conditional

bool Property PonyPrance = true auto conditional
bool property usePiercings = true auto conditional
int v_Piercings_OID
GlobalVariable Property g_Piercings Auto
bool Property DragonVib auto hidden
int VibDuration_OID
float Property VibDuration = 1.0 auto hidden
int ForcedVibDuration_OID
float Property ForcedVibDuration = 1.0 auto hidden
int OwnerCarryReduction_OID
int Property OwnerCarryReduction auto hidden

; We use formlists for all the restraint design options since they will automatically update on existing savegames if new designs are added to their list later.  Using Armor arrays would not allow this.
FormList property collarForm auto
FormList property gagForm auto
FormList property blindForm auto
FormList property BlindFunForm auto
FormList property aRestraintForm auto
FormList property RopeHarnessesList auto
FormList property BodyHarnessesList auto
FormList property CorsetsList auto
FormList property FashionDressesList auto
FormList property FashionGlovesList auto
FormList property FashionShoesList auto
FormList property BondageShoesList auto
FormList property PonyTailList auto
FormList property BridleList auto
FormList property PonyCuffsList auto
FormList property PrancingCuffsList auto
FormList property PonyBootList auto
FormList property ArmCuffsList auto
FormList property LegCuffsList auto

int v_frequency_OID
float property v_frequency = 1.0 auto; no longer used
float property Frequency = 2.0 auto; game hours
int v_pace_OID
float property BoredomPenalty = 1.0 auto
int BoredomOID

int v_StrapOn_OID
int property v_StrapOn = 35 auto conditional
int v_3way_OID
int v_drunkowner
int property drunkowner = 0 auto hidden

int v_roughSexChance_OID
int property v_roughSexChance = 0 auto
int v_roughSexChance100_OID
int property v_roughSexChance100 = 0 auto
int v_likesAnal_OID
int property v_likesAnal = 25 auto conditional
int LikesOralOID
int property LikesOral = 33 auto conditional
int PlayerSexSatisfaction_OID
int property PlayerSexSatisfaction = 0 auto
int RoughSexSatisfaction_OID
int property RoughSexSatisfaction = -20 auto
int RemovePlugsForSexOIDM
int property RemovePlugsForSex auto
string[] removePlugsList

int OwnerSexuality_OIDM
int property OwnerSexuality = 0 auto
string[] SexualityList
int PCSexuality_OIDM
int property PCSexuality = 0 auto

int v_interest_OID
int _v_interest = 1
float property v_interest = 0.01 auto
int v_debtcap_OID
int property v_debtcap = 10000 auto
int v_NextPayment_OID
int v_IncreasePayment_OID
int v_OwnerGoldShare_OID
int property OwnerGoldShare = 0 auto
int v_PlayerExpenseGold_OID
int property PlayerExpenseGold = 0 auto
bool property ShareAllGold = false auto
int v_GoldShareScoreMult_OID
int property GoldShareScoreMult = 0 auto
int v_GoldShareExtra_OID
int property GoldShareExtra = 0 auto
int v_Allowance_OID
int property Allowance = 0 auto
int AllowanceBonusOID
float property AllowanceBonus auto
bool property RestrictAllowance = true auto
int OwnerGoldInfo
int v_OwnerStartingGold_OID
int property OwnerStartingGold = 0 auto
int v_OwnerExpenses_OID
int property OwnerExpenses auto
int v_OwnerExpensePercent_OID
int property OwnerExpensePercent = 0 auto
int v_OwnerPoverty_OID
int property OwnerPoverty = 0 auto
bool property PoorOwnerTakesGold = true auto
bool property PoorOwnerForcesProst = true auto
bool property PoorOwnerForcesReturn = true auto
int v_ContractGoldPerWeek_OID
int property ContractGoldPerWeek = 500 auto
float property PriceFactor = 1.5 auto; Used when calculating a gold advance to cover a purchase.  Intentionally has no UI setting.
int v_AllowedLockpicks_OID
int property AllowedLockpicks = -1 auto
int v_ClothesPrankChance_OID
int property ClothesPrankChance = 15 auto conditional
int LoadScreenChance_OID

bool property collarBuffs = false auto conditional; Now a misnomer, this indicates whether the player gets the unarmed damage buff spell
bool property AllowBuffs = true auto
bool property NoMoreP = true auto conditional; Disables the urination event
bool property combatMercy = true auto
bool property noDragonMercy = false auto conditional; Allows true masochists to disable the Dragon Mercy if they wish.
bool property denyMasturbation = true auto conditional
bool property kneelFix = true auto
bool property AddKneelSpell = false auto
bool property UseAlternateKneel = false auto
bool property OwnerTakesKeys Auto
bool property NoSwipingGold Auto
bool property NoSpendingGold Auto conditional
bool property NoSwipingKeys Auto
bool property NoChangingKeptBelow Auto
bool NoChangingSubRate
bool property NoDismissing Auto
bool property SpentOwnerGold Auto conditional 

int FashionSlave_OIDM
int property FashionSlaveChance = 25 auto conditional
int FashionBodyOIDM
string[] fashionBodyOptions
int property FashionBody auto conditional; 0=Hobble Dress, 1=Corset, 2=Harness
bool property KeepFashionSlaveOutfit = false auto conditional
int v_forcedProstChance_OID
bool property ProstPayMode = false auto conditional
int v_minclients_OID
int property v_minclients = 3 auto hidden
int oldMinClients = 3
int oldMinPay = 150
int v_randclients_OID
int property v_randclients = 2 auto hidden
int oldRandClients = 2
int oldRandPay = 100
int v_whoreBasePay_OID
int property v_whoreBasePay = 50 auto hidden
int v_whoreDomCut_OID
int _v_whoreDomCut = 50
float property v_whoreDomCut = 0.5 auto hidden
int ProstFeeOID
int property ProstFee auto
int v_whoreCD_OID
int property v_whoreCD = 48 auto hidden
bool property v_LockCheat auto hidden
int v_LockCheat_OID
string[] neverSometimesAlways
int ThoughtsInterval_OID
int property ThoughtsInterval = 0 auto hidden
int ThoughtsTest_OID
int CombatMercyLevel_OID
float property CombatMercyLevel = 2.0 auto
int MustOfferServiceScore_OID
int property MustOfferServiceScore = 101 auto conditional
int AlwaysKneelScore_OID
int property AlwaysKneelScore = 101 auto hidden
int property ExtraKeys auto
int ExtraKeysOID
bool property DestroyDevices auto; Used for device unlocking, but intentionally not exposed at this time.
int property RelationshipLossChance auto
float property SpankedXpRate = 0.9 auto
float property WhippedXpRate = 0.8 auto
int SpankedXpRateOID
int WhippedXpRateOID
float property SpeechReductionRate = 0.0 auto
int SpeechReductionRateOID
int RequiredCuffsOID
int property RequiredCuffs auto conditional; 0 = None, 1 = Arms, 2 = Legs, 3 = Both
string[] requiredCuffsList

int v_SoftMods_OID
bool property useRadProstitution = false auto conditional
bool property useSimpleSlavery = false auto conditional
bool property useSSPlusPlus = false auto conditional
bool property useZap8 = false auto conditional
bool property useZap9 = false auto conditional
bool property useZap7 = false auto
bool property useDawnguard = false auto conditional
int property useSluts = 0 auto conditional; 1 = Redux, 2 = Resume
bool property useSlaveTats = false auto
bool property UseTearTats = false auto
bool property useLoveSickness auto
float property SlaveTatAlpha = 1.0 auto
int SlaveTatAlpha_OID
bool property useIWW = false auto; iWant Widgets
Quest property iwwQuest auto; iWant Widgets quest
;int v_CollarWorkClothes_OID
keyword[] property collarK auto
int v_SelectBuyer_OID
int v_Buyer_OID
int v_NewOwner_OID
int RemoveBuyer_OID
int ValidateBuyers_OID
string[] buyerNames
string jsonPathBuyers = "../Lola/SimpleSlaveryBuyers.json"
string jsonBuyersKey = "buyers"
string lastBuyerName = ""
string[] hairStyleNames
string jsonPathHairStyles = "../Lola/HairStyles.json"
string jsonHairStylesKey = "hairstyles"
string lastStyleName = ""
Actor CrosshairTarget
Actor TargetActor
Race VampireLordRace
int property ChanceSoldOnExit = 0 auto hidden
int ChanceSoldOnExit_OID
bool ShowedRadProPimpMsg
int Humiliation_OID
int property Humiliation = 2 auto hidden
int NudeOutfit_OID
Armor property NudeOutfit auto hidden
bool property HasNudeOutfit auto conditional
string[] danceMusicOptions
int property DanceMusicOption auto hidden
int DanceMusic_OIDM
int StopVib_OID
int LoadInscription_OID
int Export_OID
int Import_OID
string[] spankingAnimLimitsList
int property SpankingAnimLimit auto hidden
int SpankingAnimLimit_OIDM
int DanceDuration_OID
int Property DanceDuration = 45 auto hidden
string Property WhatIWantToHear = "I'm your slave." auto hidden
bool disableKeptSettings
int ProstThreshold_OID
int Property ProstThreshold = 20 auto conditional
int WhipNotZap_OID
int Property WhipNotZap = 10 auto conditional
string KneelUnequipSlots = ""
bool property KneelUnequipArrows = false auto
int Playmate_OID
int SelectPlaymate_OID
int PlaymateChance_OID
GlobalVariable Property PlaymateChance auto
int OwnerPrefersPlaymate_OID
GlobalVariable Property OwnerPrefersPlaymate auto
bool property PlaymateCopiesNude = false auto conditional; Makes the Playmate mimic the Player's nudity rule.
int PMOutfit_OID
Armor property PMOutfit auto hidden
bool property HasPMOutfit = false auto conditional
int PMBoots_OID
Armor property PMBoots auto hidden
bool property HasPMBoots = false auto conditional
int PlaymateSex_OIDM
int property PlaymateSex = 4 auto conditional; 0 = none, 1 = you, 2 = owner, 3 = either (2-ways), 4 = both (allow 3-ways)
string[] playmateSexList
int SexWithPlaymateSatisfaction_OID
int property SexWithPlaymateSatisfaction = 0 auto
int PlaymateStrapOn_OID
int property PlaymateStrapOn = 15 auto conditional
int PlaymateWantsSexOID
int property PlaymateWantsSex = 75 auto conditional
int PlaymatePunishesOID
int property PlaymatePunishes = 0 auto conditional
string[] attitudeList
int OwnerAttitudeOIDM
int property OwnerAttitude auto conditional; 0=Playful, 1=Strict
int ShoppingBonusOID
int property ShoppingBonus = 10 auto
int ShoppingSexOID
int property ShoppingSex = 50 auto
int DanceDelayOID
float property DanceDelay = 1.0 auto; seconds
bool property OwnerRoomRental=true auto conditional
bool UpdatedModList
bool ObsoleteDD
bool hasZap
bool hasZap9

; Runic Circle glow options:  0 - None, 1 - Dim, 2 - Dim Glowing, 3 - Bright, 4 Bright Glowing
int property GlowOnEnslaved auto
int property GlowOnSuspend auto
int property GlowOnSpank auto
int property GlowOnWhip auto
int property GlowOnBeckon auto
int GlowOnEnslavedOIDM
int GlowOnSuspendOIDM
int GlowOnSpankOIDM
int GlowOnWhipOIDM
int GlowOnBeckonOIDM
int UpdateRunicGlowBtn
int RequiresRunicCollarBtn
string[] glowOptions

ObjectReference Property NudeMarker1 auto
ObjectReference Property NudeMarker2 auto
ObjectReference Property NudeMarker3 auto
float Property NudeMarkerRadius1 = 1000.0 auto hidden
float Property NudeMarkerRadius2 = 1000.0 auto hidden
float Property NudeMarkerRadius3 = 1000.0 auto hidden
int NudeMarker1_OID
int NudeMarker2_OID
int NudeMarker3_OID
int NudeMarkerRadius1_OID
int NudeMarkerRadius2_OID
int NudeMarkerRadius3_OID

; The next time in total game days passed that an event can begin
GlobalVariable Property NextBardPlay Auto
GlobalVariable Property NextBringGold Auto
GlobalVariable Property NextConfession Auto
GlobalVariable Property NextFamous Auto
GlobalVariable Property NextHairChange Auto
GlobalVariable Property NextLightsOut Auto
GlobalVariable Property NextFindTreasure Auto
GlobalVariable Property NextPonyExpress Auto
GlobalVariable Property NextRunLolaRun Auto
GlobalVariable Property NextStewing Auto
GlobalVariable Property NextTempleOfLove Auto
GlobalVariable Property NextTrophySlave Auto
GlobalVariable Property NextWhore Auto
GlobalVariable Property NextWRWalk Auto
GlobalVariable Property NextSluts Auto
GlobalVariable Property NextButtToy Auto
GlobalVariable Property NextCountingIsFun Auto

; Event cooldowns in game days.
float NextWhoreCD = 2.0
float Property NextBardPlayCD = 3.0 Auto
float Property NextBringGoldCD = 0.0 Auto
float Property NextConfessionCD = 1.0 Auto
float Property NextFamousCD = 0.5 Auto
float Property NextHairChangeCD = 7.0 Auto
float Property NextLightsOutCD = 10.0 Auto
float Property NextFindTreasureCD = 3.5 Auto
float Property NextPonyExpressCD = 3.0 Auto
float Property NextRunLolaRunCD = 1.0 Auto
float Property NextStewingCD = 1.0 Auto
float Property NextTempleOfLoveCD = 3.0 Auto
float Property NextTrophySlaveCD = 7.0 Auto
float Property NextWRWalkCD = 3.0 Auto
float Property NextSlutsCD = 0.0 Auto
float Property NextButtToyCD = 10.0 Auto
float Property NextCountingIsFunCD = 3.0 Auto

int PreviewDance_OID
bool Property DanceSnake auto hidden
bool Property DanceSexy auto hidden
bool Property DanceSexyAJ auto hidden
bool Property DanceBelly auto hidden
bool Property DanceGroove auto hidden
bool Property DanceSephyDisco auto hidden
bool Property DanceShakeAss auto hidden
bool Property DanceFunky auto hidden

int TDFInfo_OID
bool Property DanceBoPeep auto hidden
bool Property DanceCyberThunderCider auto hidden
bool Property DanceDoubleLariat auto hidden
bool Property DanceEvenEvenEven auto hidden
bool Property DanceGalaxias auto hidden
bool Property DanceHurlyBurly auto hidden
bool Property DanceKissMe auto hidden
bool Property DanceLilyLilyBurningNight auto hidden
bool Property DanceMassaraBlueJeans auto hidden
bool Property DanceMeguMeguFire auto hidden
bool Property DanceMosaicRoll auto hidden
bool Property DanceSweetDevil auto hidden

FormList Property WhippingPoses Auto
FormList Property WhippingPosesReward Auto
FormList Property WhippingPosesRewardRZ Auto
int RZPoseInfo_OID
bool property UseRZRewardWhipping auto hidden

int RandomCooldown
int HelpCooldownsButton
int RandomCooldownOID
int NextBardPlayOID
int NextBringGoldOID
int NextConfessionOID
int NextFamousOID
int NextHairChangeOID
int NextLightsOutOID
int NextFindTreasureOID
int NextPonyExpressOID
int NextRunLolaRunOID
int NextStewingOID
int NextTempleOfLoveOID
int NextTrophySlaveOID
int NextWRWalkOID
int NextSlutsOID
int NextButtToyOID
int NextCountingIsFunOID


Event OnConfigInit()
	reset_lists()
	recheck_softmods()
EndEvent

Event OnConfigOpen()
	ObsoleteDD = !CheckDDVersion()

	; Increase the version number (yymm.dd) to force a single update the next time the player opens the MCM.
	if versionNum < 2408.13
		versionNum = 2408.13
		MiscUtil.PrintConsole("Updating Submissive Lola MCM")
		reset_lists()
		ForcePageReset()
	endif

	Pages = new string[14]
	Pages[0] = "$SLTR_p_Main"
	Pages[1] = "$SLTR_p_Rules"
	Pages[2] = "$SLTR_p_Cooldowns"
	Pages[3] = "$SLTR_p_Devices"
	Pages[4] = "$SLTR_p_Roleplay"
	Pages[5] = "$SLTR_p_Gold"
	Pages[6] = "$SLTR_p_Poses"
	Pages[7] = "$SLTR_p_Dancing"
	Pages[8] = "$SLTR_p_Cheat Prevention"
	Pages[9] = "$SLTR_p_Mod Integration"
	Pages[10] = "$SLTR_p_Statistics"
	Pages[11] = "$SLTR_p_Achievements"
	Pages[12] = "$SLTR_p_Help"
	Pages[13] = "$SLTR_p_System"
	
	RegisterForCrosshairRef()
	RegisterForModEvent("SLTR DF Entry", "SLTR_DF_Entry")
	RegisterForModEvent("SLTR Exit", "SLTR_Exit")
EndEvent

Event OnCrossHairRefChange(ObjectReference akReference)
	if akReference == none
		return
	endif
	Actor xActor = akReference as Actor
	if (xActor != none) && xActor.GetActorBase().IsUnique() && !xActor.IsChild()
		CrosshairTarget = xActor
		;Test code, just ignore.
		;Scene curScene = xActor.GetCurrentScene()
		;if curScene != none
		;	Debug.MessageBox("YES")
		;	curScene.Stop()
		;else
		;	Debug.MessageBox("No")
		;endif
	endif
EndEvent

event OnPageReset(string page)
	SetCursorFillMode(TOP_TO_BOTTOM)
	
	if (page == "$SLTR_p_Main" || page == "")
		if ObsoleteDD
			v_StartQuest_OID = AddTextOption("$SLTR_ObsoleteDD", "")
		elseif !QuestRunning()
			v_StartQuest_OID = AddTextOption("$SLTR_StartQuest", "$SLTR_ClickHere")
		elseif MQ.SuspendAll
			v_StartQuest_OID = AddTextOption("$SLTR_Suspended", "")
		elseif StrongHand.IsRunning()
			v_StartQuest_OID = AddTextOption("$SLTR_IntroRunning", "")
		else
			v_StartQuest_OID = AddTextOption("$SLTR_MainRunning", "")
		endif

		if (!MainQuest.IsRunning())
			; It's useless clutter to display these options after enslavement.
			WhoAsksOIDM = AddMenuOption("$SLTR_WhoAsks", whoAsksList[GetWhoAsksOption()])
			FollowerKnowsOIDM = AddMenuOption("$SLTR_FollowerKnows", followerKnowsList[FollowerKnows])
			AddToggleOptionST("st_NickNameMode", "$SLTR_NickNameMode", NickNameMode)
			AddToggleOptionST("st_NoZazEnslave", "$SLTR_NoZazEnslave", NoZazEnslave)
			AddEmptyOption()
		else
			WhoAsksOIDM = -1
			FollowerKnowsOIDM = -1
		endif
		
		v_subG_OID = AddSliderOption("$SLTR_subG", _v_subG, "{0}%", EnabledFor(!NoChangingSubRate))
		v_resistG_OID = AddSliderOption("$SLTR_resistG", _v_resistG, "{0}%", EnabledFor(!NoChangingSubRate))
		v_ScoreDecay_OID = AddSliderOption("$SLTR_ScoreDecay", ScoreDecay)
		AddToggleOptionST("st_ScaleScoreDecay", "$SLTR_ScaleScoreDecay", ScaleScoreDecay)
		
		v_frequency_OID = AddSliderOption("$SLTR_frequency", Frequency, "$SLTR_Hours1")
		v_pace_OID = AddSliderOption("$SLTR_pace", GlobalPace.GetValue(), "{0}")
		BoredomOID = AddSliderOption("$SLTR_BoredomPenalty", BoredomPenalty, "{1}")
		
		SetCursorPosition(1)
		if !MainQuest.IsRunning()
			Contract_OIDM = AddMenuOption("$SLTR_Contract", contractList[_Contract])
		else
			Contract_OIDM = -1
			string scoreStr = vkjLib.Round(MQ.GetSubmissionScore(), 2)  + " (" + MQ.GetSubmissionTitle() + ")"
			v_Score_OID = AddTextOption("$SLTR_Score", scoreStr)
			
			string timeStr = GetTimeAsString(MQ.LastDailyUpdate)
			v_DailyUpdateTime_OID = AddTextOption("$SLTR_DailyUpdateTime", timeStr)

			string daysLeft = Math.Ceiling(MQ.slaveContract.GetValue())
			if MQ.slaveContract.GetValue() < 0.0001
				daysLeft = "None"
			endif
			if MQ.slaveContract.GetValue() > 9000
				daysLeft = "Life"
			endif
			v_ContractLeft_OID = AddTextOption("$SLTR_ContractLeft", daysLeft)
			AddEmptyOption()
		endif
		
		KeptThreshold_OID = AddSliderOption("$SLTR_KeptThreshold", KeptThreshold, "{0}", EnabledFor(!MQ.IsKept && !disableKeptSettings))
		AddToggleOptionST("st_KeptForever", "$SLTR_KeptForever", KeptForever, EnabledFor(!MQ.GetIsKeptPermanently() && !disableKeptSettings))
		KeptBelowThreshold_OID = AddSliderOption("$SLTR_KeptBelowThreshold", KeptBelowThreshold, "{0}", EnabledFor(!NoChangingKeptBelow && !disableKeptSettings))
		AddEmptyOption()
		AddEmptyOption()
		AddEmptyOption()
		Export_OID = AddTextOption("$SLTR_Export", "$SLTR_Click")
		Import_OID = AddTextOption("$SLTR_Import", "$SLTR_Click")
	endif
	
	if page == "$SLTR_p_Rules"
		AddHeaderOption("$SLTR_Punishment")
		v_ShockStrength_OID = AddSliderOption("$SLTR_ShockStrength", ShockStrength)
		ShockMagickaLossOID = AddSliderOption("$SLTR_ShockMagickaLoss", ShockMagickaLoss)
		ArousalLossOnZapOID = AddSliderOption("$SLTR_ArousalLossOnZap", ArousalLossOnZap)
		SpankedXpRateOID = AddSliderOption("$SLTR_SpankedXpRate", SpankedXpRate, "{2}")
		WhippedXpRateOID = AddSliderOption("$SLTR_WhippedXpRate", WhippedXpRate, "{2}")
		v_WhipPunishAmount_OID = AddSliderOption("$SLTR_WhipPunishAmount", WhipPunishDuration)
		v_WhipRewardAmount_OID = AddSliderOption("$SLTR_WhipRewardAmount", WhipRewardDuration)
		WhipWeapon_OID = AddMenuOption("$SLTR_WhipWeapon", whipWeapList[WhipWeapon])
		v_WhipSpeed_OID = AddSliderOption("$SLTR_WhipSpeed", WhipSpeed, "{0}%")
		AddToggleOptionST("st_UseRedGlow", "$SLTR_UseRedGlow", UseRedGlow)
		AddToggleOptionST("st_GentleRewardWhipping", "$SLTR_GentleRewardWhipping", GentleRewardWhipping)
		WhipNotZap_OID = AddSliderOption("$SLTR_WhipNotZap", WhipNotZap, "{0}%")
		AddToggleOptionST("st_allowMotivation", "$SLTR_allowMotivation", AllowMotivation)
		v_PunishmentDays_OID = AddSliderOption("$SLTR_PunishmentDays", PunishmentDays)
		v_DFBaseResistLoss_OID = AddSliderOption("$SLTR_DFBaseResistLoss", DFBaseResistLoss, "{1}")
		
		AddHeaderOption("Forced Prostitution")
		v_forcedProstChance_OID = AddSliderOption("$SLTR_forcedProstChance", GlobalProstitutionChance.GetValue(), "{0}%")
		displayFlag = EnabledFor(!ProstitutionQuest.IsRunning())
		AddToggleOptionST("st_ProstPayMode", "$SLTR_ProstPayMode", ProstPayMode, displayFlag)
		if ProstPayMode
			v_minclients_OID = AddSliderOption("$SLTR_minpay", v_minclients, "{0}", displayFlag)
			v_randclients_OID = AddSliderOption("$SLTR_randpay", v_randclients, "{0}", displayFlag)
		else
			v_minclients_OID = AddSliderOption("$SLTR_minclients", v_minclients, "{0}", displayFlag)
			v_randclients_OID = AddSliderOption("$SLTR_randclients", v_randclients, "{0}", displayFlag)
		endif
		ProstFeeOID = AddSliderOption("$SLTR_ProstFee", ProstFee, "{0}")
		v_whoreCD_OID = AddSliderOption("$SLTR_whoreCD", v_whoreCD, "$SLTR_Hours")
		ProstThreshold_OID = AddSliderOption("$SLTR_ProstThreshold", ProstThreshold, "{0}")
		if !useRadProstitution
			v_whoreBasePay_OID = AddSliderOption("$SLTR_whoreBasePay", v_whoreBasePay, "$SLTR_Gold")
			v_whoreDomCut_OID = AddSliderOption("$SLTR_whoreDomCut", _v_whoreDomCut, "{0}%")
		else
			v_whoreBasePay_OID = 0
			v_whoreDomCut_OID = 0
		endif
		AddToggleOptionST("st_ServiceInnkeeper", "$SLTR_ServiceInnkeeper", ServiceInnkeeper)
		AddToggleOptionST("st_NymphoNotWhore", "$SLTR_NymphoNotWhore", NymphoNotWhore)
		if !useRadProstitution
			AddToggleOptionST("st_ProstIgnoreArousal", "$SLTR_ProstIgnoreArousal", ProstIgnoreArousal)
		endif
		
		AddHeaderOption("$SLTR_Nudity")
		NudeRule_OIDM = AddMenuOption("$SLTR_NudeRule", nuderuleList[NudeRule])
		string nudeOutfitName = "$SLTR_Click"
		if NudeOutfit != None
			nudeOutfitName = NudeOutfit.GetName()
		endif
		NudeOutfit_OID = AddTextOption("$SLTR_NudeOutfit", nudeOutfitName)
		AddToggleOptionST("st_ClothesOnly", "$SLTR_ClothesOnly", ClothesOnly)
		AddToggleOptionST("st_StripOnNudeP", "$SLTR_StripOnNudeP", StripOnNudeP)
		v_EyeCandy_OID = AddSliderOption("$SLTR_EyeCandy", EyeCandyChance, "{0}%")
		v_WhippedEyeCandy_OID = AddSliderOption("$SLTR_WhippedEyeCandy", WhippedEyeCandyChance, "{0}%")
		AddToggleOptionST("st_ExtendedEyeCandy", "$SLTR_ExtendedEyeCandy", ExtendedEyeCandy)
		v_EyeCandyReject_OID = AddSliderOption("$SLTR_EyeCandyReject", EyeCandyRejectChance, "{0}%")
		; Nudity markers
		displayFlag = EnabledFor(vkjArmorR.IsRunning())
		NudeMarker1_OID = AddTextOption("$SLTR_NudeMarker1", "$SLTR_Click", displayFlag)
		NudeMarkerRadius1_OID = AddSliderOption("$SLTR_NudeMarkerRadius1", NudeMarkerRadius1, "$SLTR_Units", displayFlag)
		NudeMarker2_OID = AddTextOption("$SLTR_NudeMarker2", "$SLTR_Click", displayFlag)
		NudeMarkerRadius2_OID = AddSliderOption("$SLTR_NudeMarkerRadius2", NudeMarkerRadius2, "$SLTR_Units", displayFlag)
		NudeMarker3_OID = AddTextOption("$SLTR_NudeMarker3", "$SLTR_Click", displayFlag)
		NudeMarkerRadius3_OID = AddSliderOption("$SLTR_NudeMarkerRadius3", NudeMarkerRadius3, "$SLTR_Units", displayFlag)
		
		SetCursorPosition(1)
		AddHeaderOption("$SLTR_Daily_Goals")
		v_ServMinTimes_OID = AddSliderOption("$SLTR_ServMinTimes", v_ServMinTimes, "$SLTR_Times")
		v_ServRandTimes_OID = AddSliderOption("$SLTR_ServRandTimes", v_ServRandTimes, "$SLTR_Times")
		SexMinTimes_OID = AddSliderOption("$SLTR_SexMinTimes", SexMinTimes, "$SLTR_Times")
		MinDailyScore_OID = AddSliderOption("$SLTR_MinDailyScore", MinDailyScore, "{0}")

		AddHeaderOption("$SLTR_General_Rules")
		RequiredCuffsOID = AddMenuOption("$SLTR_RequiredCuffs", requiredCuffsList[RequiredCuffs])
		CombatMercyLevel_OID = AddSliderOption("$SLTR_CombatMercyLevel", CombatMercyLevel, "{1}")
		AddToggleOptionST("st_noDragonMercy", "$SLTR_NoDragonMercy", noDragonMercy)
		AddToggleOptionST("st_collarBuffs", "$SLTR_collarBuffs", collarBuffs)
		AddToggleOptionST("st_AllowBuffs", "$SLTR_Buffs", AllowBuffs)
		AddToggleOptionST("st_denyMasturbation", "$SLTR_denyMasturbation", denyMasturbation)
		AddToggleOptionST("st_OwnerTakesKeys", "$SLTR_OwnerTakesKeys", OwnerTakesKeys)
		v_AllowedLockpicks_OID = AddSliderOption("$SLTR_AllowedLockpicks", AllowedLockpicks, "{0}")
		AddToggleOptionST("st_noMoreP", "$SLTR_noMoreP", NoMoreP)
	
		;Featured disabled until when and if the Travel Restriction event is actually put into the game play.
		;v_tMinDays_OID = AddSliderOption("Minimum travel restriction time", v_tMinDays, "$SLTR_Days0")
		;v_tRandDays_OID = AddSliderOption("Random additional restriction time", v_tRandDays, "$SLTR_Days0")
		
		AddHeaderOption("$SLTR_Event_Rules")

		v_ClothesPrankChance_OID = AddSliderOption("$SLTR_ClothesPrankChance", ClothesPrankChance, "{0}%")
		v_overburdened_OID = AddSliderOption("$SLTR_overburdened", _v_overburdened, "{0}%")
		OverburdenBonusOID = AddSliderOption("$SLTR_overburdenBonus", OverburdenBonus, "{0}")
		AddToggleOptionST("st_mustUnburden", "$SLTR_mustUnburden", mustUnburden)
		CustomConfessions_OIDM = AddMenuOption("$SLTR_CustomConfessions", neverSometimesAlways[CustomConfessions])
		FashionSlave_OIDM = AddSliderOption("$SLTR_FashionSlave", FashionSlaveChance, "{0}%")
		hair_option_OIDM = AddMenuOption("$SLTR_hair_option", hairList[hair_option])
		HairChangeMin_OID = AddSliderOption("$SLTR_HairChangeMin", HairChangeMin, "{1}")
		HairChangeMax_OID = AddSliderOption("$SLTR_HairChangeMax", HairChangeMax, "{1}")

		; Hair Styles
		hairStyleNames = JsonUtil.StringListToArray(jsonPathHairStyles, jsonHairStylesKey); Do this even if there's no json file
		int nStyles = hairStyleNames.Length
	
		if nStyles == 0
			HairStyle_OID = AddTextOption("$SLTR_HairStyle", "$SLTR_None")
		elseif nStyles == 1
			HairStyle_OID = AddTextOption("$SLTR_HairStyle", hairStyleNames[0])
		else
			PapyrusUtil.SortStringArray(hairStyleNames)
			string styleText = "$SLTR_View"
			if nStyles <= 9
				styleText = "$SLTR_HairStyles" + nStyles
			endif
			HairStyle_OID = AddMenuOption("$SLTR_HairStyles", styleText)
		endif

		string styleName = ""
		HeadPart hp = GetCurrentHair()
		if hp != none
			string curStyleName = hp.GetName()
			if hairStyleNames.Find(curStyleName) < 0; Do not display one that's already in the list
				styleName = curStyleName
			endif
		endif
		AddHairStyle_OID = AddTextOption("$SLTR_AddHairStyle", styleName, EnabledFor(styleName != ""))

		if nStyles > 0
			RemoveHairStyle_OID = AddMenuOption("$SLTR_RemoveHairStyle", "$SLTR_Select")
		else
			RemoveHairStyle_OID = AddTextOption("", "", OPTION_FLAG_DISABLED)
		endif
		
		AddHeaderOption("$SLTR_Combat_Rules")
		
		AddToggleOptionST("st_PunishFriendlyFire", "$SLTR_PunishFriendlyFire", PunishFriendlyFire)
		AddToggleOptionST("st_UseCombatPotions", "$SLTR_UseCombatPotions", UseCombatPotions)
		BleedoutDaysOID = AddSliderOption("$SLTR_BleedoutDays", BleedoutDays)
		BleedoutProstQuotaOID = AddSliderOption("$SLTR_BleedoutProstQuota", BleedoutProstQuota, "{0}%")
		BleedoutPotionsOID = AddSliderOption("$SLTR_BleedoutPotions", BleedoutPotions)
	endif

	if page == "$SLTR_p_Cooldowns"
		HelpCooldownsButton = AddTextOption("$SLTR_HelpCooldowns", "")
		RandomCooldownOID = AddSliderOption("$SLTR_RandomCooldown", RandomCooldown, "{0}%")
		NextBardPlayOID = AddSliderOption("$SLTR_NextBardPlay", NextBardPlayCD, "$SLTR_Days1")
		NextBringGoldOID = AddSliderOption("$SLTR_NextBringGold", NextBringGoldCD, "$SLTR_Days1")
		NextConfessionOID = AddSliderOption("$SLTR_NextConfession", NextConfessionCD, "$SLTR_Days1")
		NextFamousOID = AddSliderOption("$SLTR_NextFamous", NextFamousCD, "$SLTR_Days1")
		NextPonyExpressOID = AddSliderOption("$SLTR_NextPonyExpress", NextPonyExpressCD, "$SLTR_Days1")
		NextRunLolaRunOID = AddSliderOption("$SLTR_NextRunLolaRun", NextRunLolaRunCD, "$SLTR_Days1")
		NextStewingOID = AddSliderOption("$SLTR_NextStewing", NextStewingCD, "$SLTR_Days1")
		NextTempleOfLoveOID = AddSliderOption("$SLTR_NextTempleOfLove", NextTempleOfLoveCD, "$SLTR_Days1")
		NextFindTreasureOID = AddSliderOption("$SLTR_NextFindTreasure", NextFindTreasureCD, "$SLTR_Days1")
		NextTrophySlaveOID = AddSliderOption("$SLTR_NextTrophySlave", NextTrophySlaveCD, "$SLTR_Days1")
		SetCursorPosition(1)
		NextHairChangeOID = AddSliderOption("$SLTR_NextHairChange", NextHairChangeCD, "$SLTR_Days1")
		NextWRWalkOID = AddSliderOption("$SLTR_NextWRWalk", NextWRWalkCD, "$SLTR_Days1")
		NextLightsOutOID = AddSliderOption("$SLTR_NextLightsOut", NextLightsOutCD, "$SLTR_Days1")
		NextButtToyOID = AddSliderOption("$SLTR_NextButtToy", NextButtToyCD, "$SLTR_Days1")
		NextCountingIsFunOID = AddSliderOption("$SLTR_NextCountingIsFun", NextCountingIsFunCD, "$SLTR_Days1")
		NextSlutsOID = AddSliderOption("$SLTR_NextSluts", NextSlutsCD, "$SLTR_Days1")
	endif
	
	if page == "$SLTR_p_Devices"
		UseRunicGlow = JContainers.FileExistsAtPath("Data/Meshes/Fray/RunicCollar/RunicCircle.nif")
	
		collars_OIDM = AddMenuOption("$SLTR_collars", collarList[collars])
		gags_OIDM = AddMenuOption("$SLTR_gags", gagList[gags])
		blind_OIDM = AddMenuOption("$SLTR_blind", blindList[blinds])
		AddToggleOptionST("st_BlindfoldFun", "$SLTR_BlindfoldFun", BlindfoldFun)
		aRestraints_OIDM = AddMenuOption("$SLTR_aRestraints", aRestraintsList[aRestraints])
		RopeHarness_OIDM = AddMenuOption("$SLTR_RopeHarness", ropeHarnessList[RopeHarness])
		BodyHarness_OIDM = AddMenuOption("$SLTR_BodyHarness", bodyHarnessList[BodyHarness])
		FashionBodyOIDM = AddMenuOption("$SLTR_FashionBody", fashionBodyOptions[FashionBody])
		Corset_OIDM = AddMenuOption("$SLTR_BondageCorset", corsetList[Corset])
		dress_OIDM = AddMenuOption("$SLTR_dress", dressList[dress])
		gloves_OIDM = AddMenuOption("$SLTR_gloves", glovesList[gloves])
		shoes_OIDM = AddMenuOption("$SLTR_shoes", shoesList[shoes])
		bondageShoes_OIDM = AddMenuOption("$SLTR_BondageShoes", bondageShoeList[BondageShoes])
		ArmCuffs_OIDM = AddMenuOption("$SLTR_ArmCuffs", cuffsList[ArmCuffs])
		LegCuffs_OIDM = AddMenuOption("$SLTR_LegCuffs", cuffsList[LegCuffs])
		tail_OIDM = AddMenuOption("$SLTR_tail", tailList[tail])
		ponyColor_OIDM = AddMenuOption("$SLTR_ponyColor", ponyColorList[ponyColor])
		AddToggleOptionST("st_PonyPrance", "$SLTR_PonyPrance", PonyPrance)
		
		SetCursorPosition(1)
		v_NewCollar_OID = AddTextOption("$SLTR_NewCollar", "$SLTR_Click", EnabledFor(QuestRunning()))
		v_NewGag_OID = AddTextOption("$SLTR_NewGag", "$SLTR_Click", EnabledFor(GaggedQuest.IsRunning()))
		ExtraKeysOID = AddSliderOption("$SLTR_ExtraKeys", ExtraKeys, "{0}")
		AddToggleOptionST("st_usePiercings", "$SLTR_usePiercings", usePiercings)
		v_Piercings_OID = AddSliderOption("$SLTR_Piercings", g_Piercings.GetValue(), "{0}")
		VibDuration_OID = AddSliderOption("$SLTR_VibDuration", VibDuration, "{1}")
		ForcedVibDuration_OID = AddSliderOption("$SLTR_ForcedVibDuration", ForcedVibDuration, "{1}")
		AddToggleOptionST("st_DragonVib", "$SLTR_DragonVib", DragonVib)
		AddHeaderOption("$SLTR_RunicGlow")
		if UseRunicGlow
			GlowOnEnslavedOIDM = AddMenuOption("$SLTR_GlowOnEnslaved", glowOptions[GlowOnEnslaved])
			GlowOnSuspendOIDM = AddMenuOption("$SLTR_GlowOnSuspend", glowOptions[GlowOnSuspend])
			GlowOnSpankOIDM = AddMenuOption("$SLTR_GlowOnSpank", glowOptions[GlowOnSpank])
			GlowOnWhipOIDM = AddMenuOption("$SLTR_GlowOnWhip", glowOptions[GlowOnWhip])
			GlowOnBeckonOIDM = AddMenuOption("$SLTR_GlowOnBeckon", glowOptions[GlowOnBeckon])
			UpdateRunicGlowBtn = AddTextOption("$SLTR_UpdateRunicGlow", "$SLTR_Click", EnabledFor(MainQuest.IsRunning()))
		else
			RequiresRunicCollarBtn = AddTextOption("$SLTR_RequiresRunicCollar", "$SLTR_Help")
		endif
	endif

	if page == "$SLTR_p_Roleplay"
		AddHeaderOption("$SLTR_Sex_Sexuality")
		OwnerSexuality_OIDM = AddMenuOption("$SLTR_OwnerSexuality", SexualityList[OwnerSexuality])
		PCSexuality_OIDM = AddMenuOption("$SLTR_PCSexuality", SexualityList[PCSexuality])
		AddToggleOptionST("st_NoBeastRaces", "$SLTR_NoBeastRaces", NoBeastRaces)
		v_Arousal_OID = AddSliderOption("$SLTR_Arousal", GetArousalThreshold(), "{0}")
		v_StrapOn_OID = AddSliderOption("$SLTR_StrapOn", v_StrapOn, "{0}%")
		v_likesAnal_OID = AddSliderOption("$SLTR_likesAnal", v_likesAnal, "{0}%")
		LikesOralOID = AddSliderOption("$SLTR_likesOral", LikesOral, "{0}%")
		v_3way_OID = AddSliderOption("$SLTR_3way", Global3wayChance.GetValue(), "{0}%")
		v_roughSexChance_OID = AddSliderOption("$SLTR_roughSexChance", v_roughSexChance, "{0}%")
		v_roughSexChance100_OID = AddSliderOption("$SLTR_roughSexChance100", v_roughSexChance100, "{0}%")
		PlayerSexSatisfaction_OID = AddSliderOption("$SLTR_PlayerSexSatisfaction", PlayerSexSatisfaction, "{0}")
		RoughSexSatisfaction_OID = AddSliderOption("$SLTR_RoughSexSatisfaction", RoughSexSatisfaction, "{0}")
		RemovePlugsForSexOIDM = AddMenuOption("$SLTR_RemovePlugsForSex", removePlugsList[RemovePlugsForSex])
	
		AddHeaderOption("$SLTR_PlaymateHeader")
		displayFlag = EnabledFor(MainQuest.IsRunning())
		if (MQ.PlaymateRef != None) && MainQuest.IsRunning()
			Playmate_OID = AddTextOption("$SLTR_Playmate", MQ.PlaymateRef.GetActorBase().GetName(), displayFlag)
		else
			Playmate_OID = AddTextOption("$SLTR_Playmate", "$SLTR_None", displayFlag)
		endif
		TargetActor = CrosshairTarget
		if TargetActor == none
			; Find nearest actor in front of the PC, primarily to support VR which lacks a crosshair
			TargetActor = FindClosestActor()
		endif
		if (TargetActor != none) && MainQuest.IsRunning()
			SelectPlaymate_OID = AddTextOption(TargetActor.GetActorBase().GetName(), "$SLTR_Select")
		else
			SelectPlaymate_OID = AddTextOption("(None selected)", "$SLTR_Select", OPTION_FLAG_DISABLED)
		endif
		PlaymateChance_OID = AddSliderOption("$SLTR_PlaymateChance", PlaymateChance.GetValue(), "{0}%")
		PlaymateSex_OIDM = AddMenuOption("$SLTR_PlaymateSex", playmateSexList[PlaymateSex], displayFlag)
		PlaymateWantsSexOID = AddSliderOption("$SLTR_PlaymateWantsSex", PlaymateWantsSex, "{0}")
		OwnerPrefersPlaymate_OID = AddSliderOption("$SLTR_OwnerPrefersPlaymate", OwnerPrefersPlaymate.GetValue(), "{0}%")
		PlaymateStrapOn_OID = AddSliderOption("$SLTR_PlaymateStrapOn", PlaymateStrapOn, "{0}%")
		SexWithPlaymateSatisfaction_OID = AddSliderOption("$SLTR_SexWithPlaymateSatisfaction", SexWithPlaymateSatisfaction, "{0}")
		PlaymatePunishesOID = AddSliderOption("$SLTR_PlaymatePunishes", PlaymatePunishes, "{0}%")
		AddToggleOptionST("st_PlaymateCopiesNude", "$SLTR_PlaymateCopiesNude", PlaymateCopiesNude)
		string pmOutfitName = "$SLTR_Click"
		if PMOutfit != None
			pmOutfitName = PMOutfit.GetName()
		endif
		PMOutfit_OID = AddTextOption("$SLTR_PMOutfit", pmOutfitName)
		string pmBootsName = "$SLTR_Click"
		if PMBoots != None
			pmBootsName = PMBoots.GetName()
		endif
		PMBoots_OID = AddTextOption("$SLTR_PMBoots", pmBootsName)

		SetCursorPosition(1)
		OwnerAttitudeOIDM = AddMenuOption("$SLTR_OwnerAttitude", attitudeList[OwnerAttitude])
		v_Comments_OID = AddSliderOption("$SLTR_Comments", GlobalCommentChance.GetValue(), "{0}%")
		v_drunkowner = AddSliderOption("$SLTR_drunkowner", drunkowner, "{0}%")
		v_UnfairOID = AddSliderOption("$SLTR_Unfair", GlobalUnfairDom.GetValue(), "{0}%")
		OwnerCarryReduction_OID = AddSliderOption("$SLTR_OwnerCarryReduction", OwnerCarryReduction, "{0}")
		skillTaught_OIDM = AddMenuOption("$SLTR_skillTaught", skillList[skillTaught])
		v_VampireCooldown_OID = AddSliderOption("$SLTR_VampireCooldown", VampireCooldown, "{0}")
		VampireFeedingOptionOID = AddMenuOption("$SLTR_VampireFeedingOption", vampireFeedingOptionList[VampireFeedingOption])
		AddEmptyOption()
		Humiliation_OID = AddSliderOption("$SLTR_Humiliation", Humiliation, "{0}")
		SpeechReductionRateOID = AddSliderOption("$SLTR_SpeechReductionRate", SpeechReductionRate, "{2}")
		ThoughtsInterval_OID = AddSliderOption("$SLTR_ThoughtsInterval", ThoughtsInterval, "$SLTR_Minutes")
		ThoughtsTest_OID = AddTextOption("$SLTR_ThoughtsTest", "$SLTR_Click", EnabledFor(MainQuest.IsRunning() && (ThoughtsInterval > 0)))
		AddInputOptionST("inp_WhatIWantToHear", "$SLTR_WhatIWantToHear", "$SLTR_Click")
		MustOfferServiceScore_OID = AddSliderOption("$SLTR_MustOfferService", MustOfferServiceScore)
		AlwaysKneelScore_OID = AddSliderOption("$SLTR_AlwaysKneelScore", AlwaysKneelScore)
	endif
	
	if page == "$SLTR_p_Gold"
		AddHeaderOption("$SLTR_Adventuring_Slave")
		v_interest_OID = AddSliderOption("$SLTR_interest", _v_interest, "{0}%")
		v_debtcap_OID = AddSliderOption("$SLTR_debtcap", v_debtcap, "{0}")
		v_NextPayment_OID = AddTextOption("$SLTR_NextPayment", (GlobalDailyGold.GetValue() as int))
		v_IncreasePayment_OID = AddTextOption("$SLTR_IncreasePayment", "$SLTR_Click")
		AddEmptyOption()
		
		AddHeaderOption("$SLTR_Loot_Sharing")
		v_Allowance_OID = AddSliderOption("$SLTR_Allowance", Allowance)
		AllowanceBonusOID = AddSliderOption("$SLTR_AllowanceBonus", AllowanceBonus, "{1}")
		AddToggleOptionST("st_RestrictAllowance", "$SLTR_RestrictAllowance", RestrictAllowance)
		
		displayFlag = EnabledFor(!AutoAdjustGoldShare)
		AddToggleOptionST("st_ShareAllGold", "$SLTR_ShareAllGold", ShareAllGold)
		v_OwnerGoldShare_OID = AddSliderOption("$SLTR_OwnerGoldShare", OwnerGoldShare, "{0}%", displayFlag)
		v_PlayerExpenseGold_OID = AddSliderOption("$SLTR_PlayerExpenseGold", PlayerExpenseGold, "{0}", displayFlag)
		
		AddToggleOptionST("st_AutoAdjustGoldShare", "$SLTR_AutoAdjustGoldShare", AutoAdjustGoldShare)
		displayFlag = EnabledFor(AutoAdjustGoldShare)
		v_GoldShareScoreMult_OID = AddSliderOption("$SLTR_GoldShareScoreMult", GoldShareScoreMult, "{0}%", displayFlag)
		v_GoldShareExtra_OID = AddSliderOption("$SLTR_GoldShareExtra", GoldShareExtra, "{0}%", displayFlag)
		
		ShoppingBonusOID = AddSliderOption("$SLTR_ShoppingBonus", ShoppingBonus, "{0}")
		ShoppingSexOID = AddSliderOption("$SLTR_ShoppingSex", ShoppingSex, "{0}%")
		
		SetCursorPosition(1)
		AddHeaderOption("$SLTR_Owner_Expenses")
		if MQ.IsRunning()
			OwnerGoldInfo = AddTextOption("$SLTR_OwnerGoldInfo", MQ.FollowerItemCount(MQ.OwnerRef, MQ.Gold))
		else
			OwnerGoldInfo = AddTextOption("$SLTR_OwnerGoldInfo", "---", OPTION_FLAG_DISABLED)
		endif
		v_OwnerStartingGold_OID = AddSliderOption("$SLTR_OwnerStartingGold", OwnerStartingGold)
		v_OwnerExpenses_OID = AddSliderOption("$SLTR_OwnerExpenses", OwnerExpenses)
		v_OwnerExpensePercent_OID = AddSliderOption("$SLTR_OwnerExpensePercent", OwnerExpensePercent, "{0}%")
		v_OwnerPoverty_OID = AddSliderOption("$SLTR_OwnerPoverty", OwnerPoverty)
		AddToggleOptionST("st_PoorOwnerTakesGold", "$SLTR_PoorOwnerTakesGold", PoorOwnerTakesGold)
		AddToggleOptionST("st_PoorOwnerForcesProst", "$SLTR_PoorOwnerForcesProst", PoorOwnerForcesProst)
		AddToggleOptionST("st_PoorOwnerForcesReturn", "$SLTR_PoorOwnerForcesReturn", PoorOwnerForcesReturn)
		AddToggleOptionST("st_OwnerRoomRental", "$SLTR_OwnerRoomRental", OwnerRoomRental)
		
		AddEmptyOption()
		AddHeaderOption("$SLTR_Contracts")
		v_ContractGoldPerWeek_OID = AddSliderOption("$SLTR_ContractGoldPerWeek", ContractGoldPerWeek)
	endif
	
	if page == "$SLTR_p_Poses"
		AddHeaderOption("$SLTR_Kneeling")
		AddToggleOptionST("st_KneelFix", "$SLTR_KneelFix", kneelFix)
		AddToggleOptionST("st_UseAlternateKneel", "$SLTR_UseAlternateKneel", UseAlternateKneel)
		AddToggleOptionST("st_KneelUnequipArrows", "$SLTR_UnequipArrows", KneelUnequipArrows)
		string kneelStr = "$SLTR_None"
		if KneelUnequipSlots != ""
			kneelStr = KneelUnequipSlots
		endif
		AddInputOptionST("inp_KneelUnequip", "$SLTR_KneelUnequip", kneelStr)
		
		AddHeaderOption("$SLTR_Whipping")
		RZPoseInfo_OID = AddTextOption("$SLTR_RequiresRZPoser", "$SLTR_Help")
		AddToggleOptionST("st_RZRewardWhipping", "$SLTR_RZRewardWhipping", UseRZRewardWhipping)
	endif

	if page == "$SLTR_p_Dancing"
		DanceDuration_OID = AddSliderOption("$SLTR_DanceDuration", DanceDuration)
		DanceMusic_OIDM = AddMenuOption("$SLTR_DanceMusic", danceMusicOptions[DanceMusicOption])
		DanceDelayOID = AddSliderOption("$SLTR_DanceDelay", DanceDelay, "{1}")
		AddToggleOptionST("st_StopDancingWipeBrow", "$SLTR_StopDancingWipeBrow", StopDancingWipeBrow)
		PreviewDance_OID = AddTextOption("$SLTR_PreviewDance", "$SLTR_Dance")
		AddHeaderOption("ZAP 8")
		AddToggleOptionST("st_DanceBelly", "Belly ", DanceBelly, EnabledFor(useZap8))
		AddToggleOptionST("st_DanceFunky", "Funky ", DanceFunky, EnabledFor(useZap8))
		AddToggleOptionST("st_DanceGroove", "Groove ", DanceGroove, EnabledFor(useZap8))
		AddToggleOptionST("st_DanceSephyDisco", "Sephy Disco ", DanceSephyDisco, EnabledFor(useZap8))
		AddToggleOptionST("st_DanceSexy", "Sexy ", DanceSexy, EnabledFor(useZap8))
		AddToggleOptionST("st_DanceSexyAJ", "Sexy AJ ", DanceSexyAJ, EnabledFor(useZap8))
		AddToggleOptionST("st_DanceShakeAss", "Shake Ass ", DanceShakeAss, EnabledFor(useZap8))
		AddToggleOptionST("st_DanceSnake", "Snake ", DanceSnake, EnabledFor(useZap8))
		
		SetCursorPosition(1)
		AddHeaderOption("TDF Prostitution")
		TDFInfo_OID = AddTextOption("Requires TDF Prostitution", "")
		AddToggleOptionST("st_DanceBoPeep", "Bo Peep ", DanceBoPeep)
		AddToggleOptionST("st_DanceCyberThunderCider", "Cyber Thunder Cider ", DanceCyberThunderCider)
		AddToggleOptionST("st_DanceDoubleLariat", "Double Lariat ", DanceDoubleLariat)
		AddToggleOptionST("st_DanceEvenEvenEven", "Even Even Even ", DanceEvenEvenEven)
		AddToggleOptionST("st_DanceGalaxias", "Galaxias ", DanceGalaxias)
		AddToggleOptionST("st_DanceHurlyBurly", "Hurly Burly ", DanceHurlyBurly)
		AddToggleOptionST("st_DanceKissMe", "Kiss Me ", DanceKissMe)
		AddToggleOptionST("st_DanceLilyLilyBurningNight", "Lily Lily Burning Night ", DanceLilyLilyBurningNight)
		AddToggleOptionST("st_DanceMassaraBlueJeans", "Massara Blue Jeans ", DanceMassaraBlueJeans)
		AddToggleOptionST("st_DanceMeguMeguFire", "Megu Megu Fire ", DanceMeguMeguFire)
		AddToggleOptionST("st_DanceMosaicRoll", "Mosaic Roll ", DanceMosaicRoll)
		AddToggleOptionST("st_DanceSweetDevil", "Sweet Devil ", DanceSweetDevil)
	endif
	
	if page == "$SLTR_p_Cheat Prevention"
		AddToggleOptionST("st_NoSwipingGold", "$SLTR_NoSwipingGold", NoSwipingGold, EnabledFor(!v_LockCheat || !NoSwipingGold))
		AddToggleOptionST("st_NoSpendingGold", "$SLTR_NoSpendingGold", NoSpendingGold, EnabledFor(!v_LockCheat || !NoSpendingGold))
		AddToggleOptionST("st_NoSwipingKeys", "$SLTR_NoSwipingKeys", NoSwipingKeys, EnabledFor(!v_LockCheat || !NoSwipingKeys))
		AddToggleOptionST("st_NoChangingKeptBelow", "$SLTR_NoChangingKeptBelow", NoChangingKeptBelow, EnabledFor(!v_LockCheat || !NoChangingKeptBelow))
		AddToggleOptionST("st_NoChangingSubRate", "$SLTR_NoChangingSubRate", NoChangingSubRate, EnabledFor(!v_LockCheat || !NoChangingSubRate))
		AddToggleOptionST("st_NoDismissing", "$SLTR_NoDismissing", NoDismissing, EnabledFor(!v_LockCheat || !NoDismissing))
		AddEmptyOption()
		if v_LockCheat
			v_LockCheat_OID = AddTextOption("$SLTR_LockCheat", "$SLTR_LockEngaged")
		else
			v_LockCheat_OID = AddTextOption("$SLTR_LockCheat", "$SLTR_DoIt")
		endif
	endif

	if (page == "$SLTR_p_Mod Integration")
		string zapLabel = "<font color='#FF0000'>Not Found</font>"
		if hasZap9
			zapLabel = "ZAP 9"
		elseif useZap8
			zapLabel = "ZAP 8"
		elseif hasZap
			zapLabel = "ZAP 7"
		endif
		v_UseZap8_OID = AddTextOption("ZAP (required)", zapLabel)
		v_UseRadPro_OID = AddTextOption("Radiant Prostitution", GetFoundLabel(useRadProstitution))
		string ssLabel = "Simple Slavery"
		if useSSPlusPlus
			ssLabel = "Simple Slavery ++"
		endif
		v_UseSS_OID = AddTextOption(ssLabel, GetFoundLabel(useSimpleSlavery))
		;v_UseEFF_OID = AddTextOption("Extensible Follower Framework", GetFoundLabel(MQ.UseEFF))
		string slutsMod = "Not Found"
		if useSluts == 1
			slutsMod = "Found Redux"
		elseif useSluts == 2
			slutsMod = "Found Resume"
		endif
		UseSluts_OID = AddTextOption("S.L.U.T.S.", slutsMod)
		UseSlaveTats_OID = AddTextOption("SlaveTats ", GetFoundLabel(useSlaveTats))
		UseLoveSickness_OID = AddTextOption("Love Sickness ", GetFoundLabel(useLoveSickness))
		UseIWW_OID = AddTextOption("iWant Widgets", GetFoundLabel(useIWW))
		AddEmptyOption()
		if UpdatedModList
			v_SoftMods_OID = AddTextOption("$SLTR_SoftMods", "$SLTR_Done")
			UpdatedModList = false
		else
			v_SoftMods_OID = AddTextOption("$SLTR_SoftMods", "$SLTR_Click")
		endif
		
		SetCursorPosition(1)
		
		if useRadProstitution
			AddHeaderOption("Radiant Prostitution")
			;v_CollarWorkClothes_OID = AddTextOption("Make collar \"working clothes\"", "$SLTR_Click")
			AddToggleOptionST("st_MakeRadProPimp", "$SLTR_MakeRadProPimp", OwnerIsRadProPimp)
		endif
		
		if useSimpleSlavery
			AddHeaderOption("Simple Slavery")
			if useSSPlusPlus
				buyerNames = JsonUtil.StringListToArray(jsonPathBuyers, jsonBuyersKey); Do this even if there's no json file
				int nBuyers = buyerNames.Length
			
				if nBuyers == 0
					v_Buyer_OID = AddTextOption("$SLTR_Buyer", "$SLTR_None")
				elseif nBuyers == 1
					v_Buyer_OID = AddTextOption("$SLTR_Buyer", buyerNames[0])
				else
					PapyrusUtil.SortStringArray(buyerNames)
					string buyerText = "$SLTR_View"
					if nBuyers <= 9
						buyerText = "$SLTR_Buyers" + nBuyers
					endif
					v_Buyer_OID = AddMenuOption("$SLTR_Buyers", buyerText)
				endif

				TargetActor = CrosshairTarget
				if TargetActor == none
					; Find nearest actor in front of the PC, primarily to support VR which lacks a crosshair
					TargetActor = FindClosestActor()
				endif
				string targetName = ""
				if TargetActor != none
					string npcName = TargetActor.GetActorBase().GetName()
					if buyerNames.Find(npcName) < 0; Do not display a name that's already in the list
						targetName = npcName
					endif
				endif
				v_SelectBuyer_OID = AddTextOption("$SLTR_AddBuyer", targetName, EnabledFor(targetName != ""))

				if nBuyers > 0
					RemoveBuyer_OID = AddMenuOption("$SLTR_RemoveBuyer", "$SLTR_Select")
					ValidateBuyers_OID = AddTextOption("$SLTR_ValidateBuyers", "$SLTR_DoIt")
				else
					RemoveBuyer_OID = AddTextOption("", "", OPTION_FLAG_DISABLED)
					ValidateBuyers_OID = AddTextOption("", "", OPTION_FLAG_DISABLED)
				endif
			endif
			
			ChanceSoldOnExit_OID = AddSliderOption("$SLTR_ChanceSoldOnExit", ChanceSoldOnExit, "{0}%")
		endif
		
		if useSlaveTats
			AddHeaderOption("SlaveTats ")
			AddToggleOptionST("st_UseTearTats", "$SLTR_UseTearTats", UseTearTats)
			SlaveTatAlpha_OID = AddSliderOption("$SLTR_SlaveTatAlpha", SlaveTatAlpha, "{1}", EnabledFor(UseTearTats))
		endif
	endif
	
	if (page == "$SLTR_p_Statistics")
		AddTextOption("$SLTR_TimesSubmitted", TimesSubmitted.GetValue() as int)
		AddTextOption("$SLTR_DaysSubmitted", CurrentDaysSubmitted + " : " + DaysSubmitted)
		AddTextOption("$SLTR_ServiceOffered", ServiceOffered)
		AddTextOption("$SLTR_TimesDanced", TimesDanced)
		AddTextOption("$SLTR_TimesGagged", TimesGagged)
		AddTextOption("$SLTR_TimesWhoredOut", TimesWhoredOut)
		AddTextOption("$SLTR_ClientCount", ClientCount)
		AddTextOption("$SLTR_TimesSpanked", TimesSpankedPunish + " : " + TimesSpankedReward)
		AddTextOption("$SLTR_TimesWhipped", TimesWhippedPunish + " : " + TimesWhippedReward)
		AddTextOption("$SLTR_TimesMotivated", TimesMotivated)
		AddTextOption("$SLTR_TreasuresFound", TreasuresFound)
		AddTextOption("$SLTR_SweetrollCount", SweetrollCount)
		SetCursorPosition(1)
		AddTextOption("$SLTR_GoldGiven", GoldGiven)
		AddTextOption("$SLTR_TimesParaded", TimesParaded)
		if P.GetActorBase().GetSex() == 1
			AddTextOption("$SLTR_PonyExpressCount", PonyExpressCount)
			if useSluts > 0
				AddTextOption("$SLTR_SlutsCount", SlutsCount)
			endif
		endif
		if BoozeLost > 0; No point displaying for non-alcoholic owner
			AddTextOption("$SLTR_BoozeLost", BoozeLost)
		endif
	endif
	
	if page == "$SLTR_p_Achievements"
		AchieveSubLola = AddTextOption("$SLTR_AchieveSubLola", "", VisibleFor(TimesSubmitted.GetValue() > 0))
		AchieveResub = AddTextOption("$SLTR_AchieveResub", "", VisibleFor(DidAchieveResub))
		AchieveHousecarl = AddTextOption("$SLTR_AchieveHousecarl", "", VisibleFor(DidAchieveHousecarl))
		AchieveKept = AddTextOption("$SLTR_AchieveKept", "", VisibleFor(MQ.IsRunning() && MQ.GetIsKeptPermanently()))
		AchieveDomestic = AddTextOption("$SLTR_AchieveDomestic", "", VisibleFor(DidAchieveDomestic))
		AchieveWorkingSlave = AddTextOption("$SLTR_AchieveWorkingSlave", "", VisibleFor(TimesWhoredOut >= 10))
		AchieveRun = AddTextOption("$SLTR_AchieveRun", "", VisibleFor(TimesFetchedBooze >= 12))
		AchieveDance = AddTextOption("$SLTR_AchieveDance", "", VisibleFor(TimesDanced >= 25))
		AchieveGag = AddTextOption("$SLTR_AchieveGag", "", VisibleFor(TimesGagged >= 3))
		AchieveParade = AddTextOption("$SLTR_AchieveParade", "", VisibleFor(TimesParaded >= 6))
		AchievePony = AddTextOption("$SLTR_AchievePony", "", VisibleFor(PonyExpressCount >= 5))
		SetCursorPosition(1)
		AchieveSpankMe = AddTextOption("$SLTR_AchieveSpankMe", "", VisibleFor(TimesSpankedReward >= 3))
		AchieveWhipMe = AddTextOption("$SLTR_AchieveWhipMe", "", VisibleFor(TimesWhippedReward >= 3))
		AchievePerfectScore = AddTextOption("$SLTR_AchievePerfectScore", "", VisibleFor(DidAchievePerfectScore))
		AchieveLowScore = AddTextOption("$SLTR_AchieveLowScore", "", VisibleFor(DidAchieveLowScore))
		AchievePlaymateSub = AddTextOption("$SLTR_AchievePlaymateSub", "", VisibleFor(DidAchievePlaymateSub))
		AchievePlaymatePun = AddTextOption("$SLTR_AchievePlaymatePun", "", VisibleFor(DidAchievePlaymatePun))
	endif
	
	if page == "$SLTR_p_Help"
		v_HelpStart_OID = AddTextOption("$SLTR_HelpStart", "")
		v_HelpOwner_OID = AddTextOption("$SLTR_HelpOwner", "")
		v_HelpScore_OID = AddTextOption("$SLTR_HelpScore", "")
		v_HelpCollar_OID = AddTextOption("$SLTR_HelpCollar", "")
		v_HelpNaked_OID = AddTextOption("$SLTR_HelpNaked", "")
		v_HelpHair_OID = AddTextOption("$SLTR_HelpHair", "")
		v_HelpPause_OID = AddTextOption("$SLTR_HelpPause", "")
		v_HelpDismiss_OID = AddTextOption("$SLTR_HelpDismiss", "")
		v_HelpSS_OID = AddTextOption("$SLTR_HelpSS", "")
		v_HelpBuyer_OID = AddTextOption("$SLTR_HelpBuyer", "")
		v_HelpDaily_OID = AddTextOption("$SLTR_HelpDaily", "")
		v_HelpLootShare_OID = AddTextOption("$SLTR_HelpLootShare", "")
		v_HelpScene_OID = AddTextOption("$SLTR_HelpScene", "")
		v_HelpToyBox_OID = AddTextOption("$SLTR_HelpToyBox", "")
		v_HelpUninstall_OID = AddTextOption("$SLTR_HelpUninstall", "")
		
		SetCursorPosition(1)
		if QuestRunning()
			v_NewBook_OID = AddTextOption("$SLTR_NewBook", "$SLTR_Click", EnabledFor(P.GetItemCount(LolaBook) == 0))
		endif
	endif

	if page == "$SLTR_p_System"
		;v_ResetDefault_OID = AddTextOption("Use default settings", "$SLTR_Click")

		displayFlag = EnabledFor(MainQuest.IsRunning())
		v_ResetDailyUpdate_OID = AddTextOption("$SLTR_ResetDailyUpdate", "$SLTR_Click", displayFlag)
		string npcName = "(None selected)"
		TargetActor = CrosshairTarget
		if TargetActor == none
			; Find nearest actor in front of the PC, primarily to support VR which lacks a crosshair
			TargetActor = FindClosestActor()
		endif
		if TargetActor != none
			npcName = TargetActor.GetActorBase().GetName()
		endif
		v_NewOwner_OID = AddTextOption(npcName, "$SLTR_NewOwner", displayFlag)
		AddInputOptionST("inp_OwnerTitle", "$SLTR_OwnerTitle", MQ.OwnerTitle, displayFlag)
		AddInputOptionST("inp_OwnerTitleAlt", "$SLTR_OwnerTitleAlt", MQ.OwnerTitleAlt, displayFlag)
		v_MoveDom_OID = AddTextOption("$SLTR_MoveDom", "$SLTR_Click", displayFlag)
		AddEmptyOption()
		;string taskName = MQ.GetActiveTask()
		;if taskName == ""
		;	taskName = "$SLTR_None"
		;endif
		;ActiveTaskOID = AddTextOption("$SLTR_ActiveTask", taskName, EnabledFor(MQ.BlockEvents))
		;if MQ.BlockEvents && !MQ.SuspendAll && (taskName == "$SLTR_None")
		if MQ.BlockEvents && !MQ.SuspendAll
			v_ResetEventBlocking_OID = AddTextOption("$SLTR_ResetEventBlocking", "$SLTR_Click")
		else
			v_ResetEventBlocking_OID = AddTextOption("$SLTR_ResetEventBlocking", "", OPTION_FLAG_DISABLED)
		endif
		AddToggleOptionST("st_SuspendAll", "$SLTR_SuspendAll", MQ.SuspendAll, displayFlag)
		AddToggleOptionST("st_AllowSexDuringSuspend", "$SLTR_AllowSexDuringSuspend", AllowSexDuringSuspend, displayFlag)
		StopVib_OID = AddTextOption("$SLTR_StopVib", "$SLTR_Click", EnabledFor(MQ.zlib.IsVibrating(P)))
		
		Quest qShaveHead = Quest.GetQuest("vkjShaveHead")
		if qShaveHead.IsRunning()
			RenewHairButton = AddTextOption("$SLTR_RenewHair", "$SLTR_Click")
		else
			RenewHairButton = AddTextOption("$SLTR_RenewHair", "", OPTION_FLAG_DISABLED)
		endif
		if P.GetItemCount(MQ.CollarTag) > 0
			LoadInscription_OID = AddTextOption("$SLTR_LoadInscription1", "$SLTR_Click")
		else
			LoadInscription_OID = AddTextOption("", "", OPTION_FLAG_DISABLED)
		endif
		
		SetCursorPosition(1)
		LoadScreenChance_OID = AddSliderOption("$SLTR_LoadScreenChance", GlobalLoadScreenChance.GetValue(), "{0}%")
		SpankingAnimLimit_OIDM = AddMenuOption("$SLTR_SpankingAnimLimit", spankingAnimLimitsList[SpankingAnimLimit])
		AddToggleOptionST("st_CookingPots", "$SLTR_CookingPots", EnableCookingPots)
		AddToggleOptionST("st_AddKneelSpell", "$SLTR_AddKneelSpell", AddKneelSpell, displayFlag)
		AddEmptyOption()
		AddEmptyOption()
		AddEmptyOption()
		AddEmptyOption()
		AddEmptyOption()
		DhlpResume_OID = AddTextOption("$SLTR_DHLPResume", "$SLTR_Click", EnabledFor(MQ.IsDhlpSuspended()))
		DhlpSuspendedByLabel = AddTextOption("$SLTR_DHLPSuspendedBy", MQ.GetDhlpSuspendedBy(), EnabledFor(MQ.IsDhlpSuspended()))
		
		if IsDeveloper
			AddEmptyOption()
			AddToggleOptionST("st_TestDFC", "Send DFC test event", false)
		endif
	endif
EndEvent

Event SLTR_Exit(String eventName, Form ownerActor, float score, float daysEnslaved)
	if !IsDeveloper
		return
	endif
	Debug.MessageBox("Received SLTR Exit for event:  " + eventName + ".\nOwner was " + (ownerActor as Actor).GetActorBase().GetName() + ".\nScore was " + score + ".\nDays enslaved:  " + daysEnslaved + ".")
EndEvent

Event SLTR_DF_Entry(Form ownerActor, int minDays=0, int minScore=0, Form slaveCollar, Form slaveBoots, Form kwSlaveBoots, Form slaveMittens)
	MiscUtil.PrintConsole("SLTR: Received SLTR_DF_Entry event")
	Debug.Trace("SLTR: Received SLTR_DF_Entry event")
	if MQ.IsRunning()
		Debug.MessageBox("SLTR DF Entry mod event was received, but it will be ignored because the player is already enslaved by SLTR.")
		Debug.Trace("SLTR: SLTR DF Entry mod event was received, but it will be ignored because the player is already enslaved by SLTR.")
		return
	endif

	if IsDeveloper
		Debug.MessageBox("Received SLTR DF Entry.\nOwner is " + (ownerActor as Actor).GetActorBase().GetName() + ".\nContract time is " + minDays + " days.\nScore threshold is " + minScore + ".\nCollar ID is " + slaveCollar.GetFormID() + ".")
	endif
	
	; Equip collar
	Armor iDev = slaveCollar as Armor
	
	if !iDev.HasKeyword(zlib.zad_InventoryDevice)
		; Temporary cheating workaround to get the inventory collar.  (Since Lupine disappeared, this is likely a permanent workaround.)
		Form dfCollarForm = Game.GetFormFromFile(0x00213D43, "DeviousFollowers.esp")
		if dfCollarForm != none
			iDev = dfCollarForm as Armor
		endif
	endif
	
	zlib.LockDevice(P, iDev, force=(P.WornHasKeyword(KwCollar)))

	; Set up owner and start the main quest
	Actor owner = ownerActor as Actor
	if StrongHand.IsRunning()
		StrongHand.Stop()
		Utility.Wait(1)
	endif
	(StrongHand as vkj_qStrongHand).Alias_Owner.ForceRefTo(owner)
	if owner.GetActorBase().GetSex() == 0
		(StrongHand as vkj_qStrongHand).Alias_Title.ForceRefTo(MQ.Master)
	else
		(StrongHand as vkj_qStrongHand).Alias_Title.ForceRefTo(MQ.Mistress)
	endif
	MQ.SetStage(10)
	Utility.Wait(1)

	; Set conditions
	_Contract = 0; "No contract" MCM setting (we're using our own value)
	MQ.slaveContract.SetValue(minDays as float)
	SavedKeptThreshold = KeptThreshold
	SavedKeptBelowThreshold = KeptBelowThreshold
	KeptBelowThreshold = minScore
	KeptThreshold = 101
	KeptForever = false
	SetDisableKeptSettings(true)
	MQ.NoCollarSwap = true
	MQ.NoContractExtension = true
	MQ.EnslavedFromDFC = true
	MQ.GlobalSubmissionScore.SetValue(0.0)
EndEvent

;==========================================================================================================================================
; Slider Options
;==========================================================================================================================================

event OnOptionSliderOpen(int option)
	if (option == v_subG_OID)
		SetSliderDialogStartValue(_v_subG)
		SetSliderDialogDefaultValue(50)
		SetSliderDialogRange(5, 200)
		SetSliderDialogInterval(1)
	elseif (option == v_resistG_OID)
		SetSliderDialogStartValue(_v_resistG)
		SetSliderDialogDefaultValue(100)
		SetSliderDialogRange(10, 200)
		SetSliderDialogInterval(1)
	elseif (option == v_ScoreDecay_OID)
		SetSliderDialogStartValue(ScoreDecay)
		SetSliderDialogDefaultValue(5)
		SetSliderDialogRange(0, 25)
		SetSliderDialogInterval(1)
	elseif (option == v_UnfairOID)
		SetSliderDialogStartValue(GlobalUnfairDom.GetValue())
		SetSliderDialogDefaultValue(5)
		SetSliderDialogRange(0, 95)
		SetSliderDialogInterval(1)
	elseif (option == v_Arousal_OID)
		SetSliderDialogStartValue(GetArousalThreshold())
		SetSliderDialogDefaultValue(40)
		SetSliderDialogRange(10, 101)
		SetSliderDialogInterval(1)
	elseif (option == CombatMercyLevel_OID)
		SetSliderDialogStartValue(CombatMercyLevel)
		SetSliderDialogDefaultValue(2)
		SetSliderDialogRange(1, 10)
		SetSliderDialogInterval(0.1)
	elseif (option == v_tMinDays_OID)
		SetSliderDialogStartValue(v_tMinDays)
		SetSliderDialogDefaultValue(3)
		SetSliderDialogRange(1, 4)
		SetSliderDialogInterval(1)
	elseif (option == v_tRandDays_OID)
		SetSliderDialogStartValue(v_tRandDays)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(0, 3)
		SetSliderDialogInterval(1)
	elseif (option == SexMinTimes_OID)
		SetSliderDialogStartValue(SexMinTimes)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(0, 4)
		SetSliderDialogInterval(1)
	elseif (option == MinDailyScore_OID)
		SetSliderDialogStartValue(MinDailyScore)
		SetSliderDialogDefaultValue(6)
		SetSliderDialogRange(-40, 40)
		SetSliderDialogInterval(1)
	elseif (option == v_ServMinTimes_OID)
		SetSliderDialogStartValue(v_ServMinTimes)
		SetSliderDialogDefaultValue(3)
		SetSliderDialogRange(1, 12)
		SetSliderDialogInterval(1)
	elseif (option == v_ServRandTimes_OID)
		SetSliderDialogStartValue(v_ServRandTimes)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(0, 12)
		SetSliderDialogInterval(1)
	elseif (option == v_frequency_OID)
		SetSliderDialogStartValue(Frequency)
		SetSliderDialogDefaultValue(2.0)
		SetSliderDialogRange(0.5, 8.0)
		SetSliderDialogInterval(0.1)
	elseif (option == v_pace_OID)
		SetSliderDialogStartValue(GlobalPace.GetValue())
		SetSliderDialogDefaultValue(8)
		SetSliderDialogRange(4, 100)
		SetSliderDialogInterval(1)
	elseif (option == BoredomOID)
		SetSliderDialogStartValue(BoredomPenalty)
		SetSliderDialogDefaultValue(1.0)
		SetSliderDialogRange(0, 5.0)
		SetSliderDialogInterval(0.1)
	elseif (option == v_interest_OID)
		SetSliderDialogStartValue(_v_interest)
		SetSliderDialogDefaultValue(1)
		SetSliderDialogRange(0, 50)
		SetSliderDialogInterval(1)
	elseif (option == v_debtcap_OID)
		SetSliderDialogStartValue(v_debtcap)
		SetSliderDialogDefaultValue(10000)
		SetSliderDialogRange(100, 20000)
		SetSliderDialogInterval(100)
	elseif (option == v_OwnerExpensePercent_OID)
		SetSliderDialogStartValue(OwnerExpensePercent)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseif (option == v_ShockStrength_OID)
		SetSliderDialogStartValue(ShockStrength)
		SetSliderDialogDefaultValue(25)
		SetSliderDialogRange(5, 500)
		SetSliderDialogInterval(1)
	elseif (option == ShockMagickaLossOID)
		SetSliderDialogStartValue(ShockMagickaLoss)
		SetSliderDialogDefaultValue(25)
		SetSliderDialogRange(0, 5000)
		SetSliderDialogInterval(5)
	elseif (option == ArousalLossOnZapOID)
		SetSliderDialogStartValue(ArousalLossOnZap)
		SetSliderDialogDefaultValue(10)
		SetSliderDialogRange(-100, 100)
		SetSliderDialogInterval(1)
	elseif option == SpankedXpRateOID
		SetSliderDialogStartValue(SpankedXpRate)
		SetSliderDialogDefaultValue(0.90)
		SetSliderDialogRange(0.50, 1.0)
		SetSliderDialogInterval(0.01)
	elseif option == WhippedXpRateOID
		SetSliderDialogStartValue(WhippedXpRate)
		SetSliderDialogDefaultValue(0.80)
		SetSliderDialogRange(0.50, 1.0)
		SetSliderDialogInterval(0.01)
	elseif (option == v_overburdened_OID)
		SetSliderDialogStartValue(_v_overburdened)
		SetSliderDialogDefaultValue(90)
		SetSliderDialogRange(50, 100)
		SetSliderDialogInterval(1)
	elseif (option == OverburdenBonusOID)
		SetSliderDialogStartValue(OverburdenBonus)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(0, 600)
		SetSliderDialogInterval(1)
	elseif (option == v_EyeCandy_OID)
		SetSliderDialogStartValue(EyeCandyChance)
		SetSliderDialogDefaultValue(25)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseif (option == v_WhippedEyeCandy_OID)
		SetSliderDialogStartValue(WhippedEyeCandyChance)
		SetSliderDialogDefaultValue(50)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseif (option == v_EyeCandyReject_OID)
		SetSliderDialogStartValue(EyeCandyRejectChance)
		SetSliderDialogDefaultValue(10)
		SetSliderDialogRange(-50, 80)
		SetSliderDialogInterval(5)
	elseif (option == NudeMarkerRadius1_OID)
		SetSliderDialogStartValue(NudeMarkerRadius1)
		SetSliderDialogDefaultValue(1000)
		SetSliderDialogRange(0, 5000)
		SetSliderDialogInterval(100)
	elseif (option == NudeMarkerRadius2_OID)
		SetSliderDialogStartValue(NudeMarkerRadius2)
		SetSliderDialogDefaultValue(1000)
		SetSliderDialogRange(0, 5000)
		SetSliderDialogInterval(100)
	elseif (option == NudeMarkerRadius3_OID)
		SetSliderDialogStartValue(NudeMarkerRadius3)
		SetSliderDialogDefaultValue(1000)
		SetSliderDialogRange(0, 5000)
		SetSliderDialogInterval(100)
	elseif (option == v_roughSexChance_OID)
		SetSliderDialogStartValue(v_roughSexChance)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseif (option == v_roughSexChance100_OID)
		SetSliderDialogStartValue(v_roughSexChance100)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseif (option == PlayerSexSatisfaction_OID)
		SetSliderDialogStartValue(PlayerSexSatisfaction)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(-20, 50)
		SetSliderDialogInterval(1)
	elseif (option == RoughSexSatisfaction_OID)
		SetSliderDialogStartValue(RoughSexSatisfaction)
		SetSliderDialogDefaultValue(-20)
		SetSliderDialogRange(-40, 50)
		SetSliderDialogInterval(1)
	elseif (option == PlaymateChance_OID)
		SetSliderDialogStartValue(PlaymateChance.GetValue())
		SetSliderDialogDefaultValue(25)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseif (option == PlaymateWantsSexOID)
		SetSliderDialogStartValue(PlaymateWantsSex)
		SetSliderDialogDefaultValue(75)
		SetSliderDialogRange(10, 101)
		SetSliderDialogInterval(1)
	elseif (option == OwnerPrefersPlaymate_OID)
		SetSliderDialogStartValue(OwnerPrefersPlaymate.GetValue())
		SetSliderDialogDefaultValue(15)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseif (option == KeptThreshold_OID)
		SetSliderDialogStartValue(KeptThreshold)
		SetSliderDialogDefaultValue(101)
		SetSliderDialogRange(50, 101)
		SetSliderDialogInterval(1)
	elseif (option == KeptBelowThreshold_OID)
		SetSliderDialogStartValue(KeptBelowThreshold)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseif (option == v_Comments_OID)
		SetSliderDialogStartValue(GlobalCommentChance.GetValue())
		SetSliderDialogDefaultValue(15)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseif (option == v_StrapOn_OID)
		SetSliderDialogStartValue(v_StrapOn)
		SetSliderDialogDefaultValue(35)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseif (option == v_3way_OID)
		SetSliderDialogStartValue(Global3wayChance.GetValue())
		SetSliderDialogDefaultValue(25)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseif (option == v_likesAnal_OID)
		SetSliderDialogStartValue(v_likesAnal)
		SetSliderDialogDefaultValue(25)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseif (option == LikesOralOID)
		SetSliderDialogStartValue(LikesOral)
		SetSliderDialogDefaultValue(33)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseif (option == v_ClothesPrankChance_OID)
		SetSliderDialogStartValue(ClothesPrankChance)
		SetSliderDialogDefaultValue(15)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseif (option == v_forcedProstChance_OID)
		SetSliderDialogStartValue(GlobalProstitutionChance.GetValue())
		SetSliderDialogDefaultValue(50)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)		
	elseif (option == v_minclients_OID)
		SetSliderDialogStartValue(v_minclients)
		if ProstPayMode
			SetSliderDialogDefaultValue(150)
			SetSliderDialogRange(50, 15000)
			SetSliderDialogInterval(10)
		else
			SetSliderDialogDefaultValue(3)
			SetSliderDialogRange(2, 30)
			SetSliderDialogInterval(1)
		endif
	elseif (option == v_randclients_OID)
		SetSliderDialogStartValue(v_randclients)
		if ProstPayMode
			SetSliderDialogDefaultValue(100)
			SetSliderDialogRange(0, 15000)
			SetSliderDialogInterval(10)
		else
			SetSliderDialogDefaultValue(2)
			SetSliderDialogRange(0, 30)
			SetSliderDialogInterval(1)
		endif
	elseif (option == v_whoreBasePay_OID)
		SetSliderDialogStartValue(v_whoreBasePay)
		SetSliderDialogDefaultValue(50)
		SetSliderDialogRange(20, 500)
		SetSliderDialogInterval(5)
	elseif (option == ProstFeeOID)
		SetSliderDialogStartValue(ProstFee)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(0, 1000)
		SetSliderDialogInterval(5)
	elseif (option == v_whoreCD_OID)
		SetSliderDialogStartValue(v_whoreCD)
		SetSliderDialogDefaultValue(48)
		SetSliderDialogRange(2, 200)
		SetSliderDialogInterval(2)
	elseif (option == ProstThreshold_OID)
		SetSliderDialogStartValue(ProstThreshold)
		SetSliderDialogDefaultValue(20)
		SetSliderDialogRange(-30, 100)
		SetSliderDialogInterval(1)
	elseif (option == v_whoreDomCut_OID)
		SetSliderDialogStartValue(_v_whoreDomCut)
		SetSliderDialogDefaultValue(50)
		SetSliderDialogRange(50, 100)
		SetSliderDialogInterval(5)
	elseif (option == ExtraKeysOID)
		SetSliderDialogStartValue(ExtraKeys)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(0, 5)
		SetSliderDialogInterval(1)
	elseif (option == v_Piercings_OID)
		SetSliderDialogStartValue(g_Piercings.GetValue())
		SetSliderDialogDefaultValue(25)
		SetSliderDialogRange(-1, 100)
		SetSliderDialogInterval(1)
	elseif (option == VibDuration_OID)
		SetSliderDialogStartValue(VibDuration)
		SetSliderDialogDefaultValue(1.0)
		SetSliderDialogRange(0.2, 5.0)
		SetSliderDialogInterval(0.1)
	elseif (option == ForcedVibDuration_OID)
		SetSliderDialogStartValue(ForcedVibDuration)
		SetSliderDialogDefaultValue(1.0)
		SetSliderDialogRange(0.1, 2.0)
		SetSliderDialogInterval(0.1)
	elseif (option == v_drunkowner)
		SetSliderDialogStartValue(drunkowner)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(5)
	elseif (option == v_WhipRewardAmount_OID)
		SetSliderDialogStartValue(WhipRewardDuration)
		SetSliderDialogDefaultValue(8)
		SetSliderDialogRange(6, 180)
		SetSliderDialogInterval(1)
	elseif (option == v_WhipPunishAmount_OID)
		SetSliderDialogStartValue(WhipPunishDuration)
		SetSliderDialogDefaultValue(20)
		SetSliderDialogRange(12, 180)
		SetSliderDialogInterval(1)
	elseif (option == WhipNotZap_OID)
		SetSliderDialogStartValue(WhipNotZap)
		SetSliderDialogDefaultValue(10)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseif (option == v_WhipSpeed_OID)
		SetSliderDialogStartValue(WhipSpeed)
		SetSliderDialogDefaultValue(80)
		SetSliderDialogRange(50, 100)
		SetSliderDialogInterval(5)
	elseif (option == v_PunishmentDays_OID)
		SetSliderDialogStartValue(PunishmentDays)
		SetSliderDialogDefaultValue(1)
		SetSliderDialogRange(0, 10)
		SetSliderDialogInterval(1)
	elseif (option == BleedoutDaysOID)
		SetSliderDialogStartValue(BleedoutDays)
		SetSliderDialogDefaultValue(1)
		SetSliderDialogRange(0, 7)
		SetSliderDialogInterval(1)
	elseif (option == BleedoutProstQuotaOID)
		SetSliderDialogStartValue(BleedoutProstQuota)
		SetSliderDialogDefaultValue(25)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseif (option == BleedoutPotionsOID)
		SetSliderDialogStartValue(BleedoutPotions)
		SetSliderDialogDefaultValue(2)
		SetSliderDialogRange(0, 6)
		SetSliderDialogInterval(1)
	elseif (option == v_DFBaseResistLoss_OID)
		SetSliderDialogStartValue(DFBaseResistLoss)
		SetSliderDialogDefaultValue(1.0)
		SetSliderDialogRange(0.0, 5.0)
		SetSliderDialogInterval(0.1)
	elseif (option == v_OwnerGoldShare_OID)
		SetSliderDialogStartValue(OwnerGoldShare)
		SetSliderDialogDefaultValue(0.0)
		SetSliderDialogRange(0.0, 100.0)
		SetSliderDialogInterval(1.0)
	elseif (option == v_PlayerExpenseGold_OID)
		SetSliderDialogStartValue(PlayerExpenseGold)
		SetSliderDialogDefaultValue(0.0)
		SetSliderDialogRange(0.0, 500.0)
		SetSliderDialogInterval(1.0)
	elseif (option == v_GoldShareScoreMult_OID)
		SetSliderDialogStartValue(GoldShareScoreMult)
		SetSliderDialogDefaultValue(0.0)
		SetSliderDialogRange(-100.0, 100.0)
		SetSliderDialogInterval(1.0)
	elseif (option == v_GoldShareExtra_OID)
		SetSliderDialogStartValue(GoldShareExtra)
		SetSliderDialogDefaultValue(0.0)
		SetSliderDialogRange(-100.0, 100.0)
		SetSliderDialogInterval(1.0)
	elseif (option == ShoppingBonusOID)
		SetSliderDialogStartValue(ShoppingBonus)
		SetSliderDialogDefaultValue(10)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1.0)
	elseif (option == ShoppingSexOID)
		SetSliderDialogStartValue(ShoppingSex)
		SetSliderDialogDefaultValue(50)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1.0)
	elseif (option == v_Allowance_OID)
		SetSliderDialogStartValue(Allowance)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(0, 5000)
		SetSliderDialogInterval(50)
	elseif (option == AllowanceBonusOID)
		SetSliderDialogStartValue(AllowanceBonus)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(-50, 50)
		SetSliderDialogInterval(0.1)
	elseif (option == v_OwnerStartingGold_OID)
		SetSliderDialogStartValue(OwnerStartingGold)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(0, 20000)
		SetSliderDialogInterval(100)
	elseif (option == v_OwnerExpenses_OID)
		SetSliderDialogStartValue(OwnerExpenses)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(0, 5000)
		SetSliderDialogInterval(10)
	elseif (option == v_OwnerPoverty_OID)
		SetSliderDialogStartValue(OwnerPoverty)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(0, 5000)
		SetSliderDialogInterval(50)
	elseif (option == OwnerCarryReduction_OID)
		SetSliderDialogStartValue(OwnerCarryReduction)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(0, 500)
		SetSliderDialogInterval(1)
	elseif (option == v_VampireCooldown_OID)
		SetSliderDialogStartValue(VampireCooldown)
		SetSliderDialogDefaultValue(12)
		SetSliderDialogRange(4, 100)
		SetSliderDialogInterval(1)
	elseif (option == DanceDuration_OID)
		SetSliderDialogStartValue(DanceDuration)
		SetSliderDialogDefaultValue(45)
		SetSliderDialogRange(15, 200)
		SetSliderDialogInterval(1)
	elseif (option == DanceDelayOID)
		SetSliderDialogStartValue(DanceDelay)
		SetSliderDialogDefaultValue(1.0)
		SetSliderDialogRange(0.0, 6.0)
		SetSliderDialogInterval(0.5)
	elseif (option == v_ContractGoldPerWeek_OID)
		SetSliderDialogStartValue(ContractGoldPerWeek)
		SetSliderDialogDefaultValue(500)
		SetSliderDialogRange(100, 10000)
		SetSliderDialogInterval(100)
	elseif (option == v_AllowedLockpicks_OID)
		SetSliderDialogStartValue(AllowedLockpicks)
		SetSliderDialogDefaultValue(-1)
		SetSliderDialogRange(-1, 25)
		SetSliderDialogInterval(1)
	elseif (option == ChanceSoldOnExit_OID)
		SetSliderDialogStartValue(ChanceSoldOnExit)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseif (option == SlaveTatAlpha_OID)
		SetSliderDialogStartValue(SlaveTatAlpha)
		SetSliderDialogDefaultValue(1.0)
		SetSliderDialogRange(0.1, 10.0)
		SetSliderDialogInterval(0.1)
	elseif (option == RandomCooldownOID)
		SetSliderDialogStartValue(RandomCooldown)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(0, 50)
		SetSliderDialogInterval(5)
	elseif (option == NextBardPlayOID)
		SetSliderDialogStartValue(NextBardPlayCD)
		SetSliderDialogDefaultValue(3.0)
		SetSliderDialogRange(0, 30)
		SetSliderDialogInterval(0.5)
	elseif (option == NextBringGoldOID)
		SetSliderDialogStartValue(NextBringGoldCD)
		SetSliderDialogDefaultValue(1.0)
		SetSliderDialogRange(0, 30)
		SetSliderDialogInterval(1)
	elseif (option == NextConfessionOID)
		SetSliderDialogStartValue(NextConfessionCD)
		SetSliderDialogDefaultValue(1.0)
		SetSliderDialogRange(0, 30)
		SetSliderDialogInterval(0.5)
	elseif (option == NextFamousOID)
		SetSliderDialogStartValue(NextFamousCD)
		SetSliderDialogDefaultValue(0.5)
		SetSliderDialogRange(0, 30)
		SetSliderDialogInterval(0.5)
	elseif (option == NextFindTreasureOID)
		SetSliderDialogStartValue(NextFindTreasureCD)
		SetSliderDialogDefaultValue(3.5)
		SetSliderDialogRange(0, 30)
		SetSliderDialogInterval(0.5)
	elseif (option == NextHairChangeOID)
		SetSliderDialogStartValue(NextHairChangeCD)
		SetSliderDialogDefaultValue(7.0)
		SetSliderDialogRange(0, 30)
		SetSliderDialogInterval(0.5)
	elseif (option == NextLightsOutOID)
		SetSliderDialogStartValue(NextLightsOutCD)
		SetSliderDialogDefaultValue(10.0)
		SetSliderDialogRange(0, 30)
		SetSliderDialogInterval(0.5)
	elseif (option == NextPonyExpressOID)
		SetSliderDialogStartValue(NextPonyExpressCD)
		SetSliderDialogDefaultValue(3.0)
		SetSliderDialogRange(0, 30)
		SetSliderDialogInterval(0.5)
	elseif (option == NextRunLolaRunOID)
		SetSliderDialogStartValue(NextRunLolaRunCD)
		SetSliderDialogDefaultValue(1.0)
		SetSliderDialogRange(0, 30)
		SetSliderDialogInterval(0.5)
	elseif (option == NextStewingOID)
		SetSliderDialogStartValue(NextStewingCD)
		SetSliderDialogDefaultValue(1.0)
		SetSliderDialogRange(0, 30)
		SetSliderDialogInterval(0.5)
	elseif (option == NextTempleOfLoveOID)
		SetSliderDialogStartValue(NextTempleOfLoveCD)
		SetSliderDialogDefaultValue(3.0)
		SetSliderDialogRange(0, 30)
		SetSliderDialogInterval(0.5)
	elseif (option == NextTrophySlaveOID)
		SetSliderDialogStartValue(NextTrophySlaveCD)
		SetSliderDialogDefaultValue(7.0)
		SetSliderDialogRange(0, 30)
		SetSliderDialogInterval(0.5)
	elseif (option == NextWRWalkOID)
		SetSliderDialogStartValue(NextWRWalkCD)
		SetSliderDialogDefaultValue(3.0)
		SetSliderDialogRange(0, 30)
		SetSliderDialogInterval(0.5)
	elseif (option == NextSlutsOID)
		SetSliderDialogStartValue(NextSlutsCD)
		SetSliderDialogDefaultValue(15.0)
		SetSliderDialogRange(0, 60)
		SetSliderDialogInterval(1.0)
	elseif (option == NextCountingIsFunOID)
		SetSliderDialogStartValue(NextCountingIsFunCD)
		SetSliderDialogDefaultValue(3.0)
		SetSliderDialogRange(0, 30)
		SetSliderDialogInterval(1.0)
	elseif (option == NextButtToyOID)
		SetSliderDialogStartValue(NextButtToyCD)
		SetSliderDialogDefaultValue(10.0)
		SetSliderDialogRange(0, 30)
		SetSliderDialogInterval(1.0)
	elseif (option == Humiliation_OID)
		SetSliderDialogStartValue(Humiliation)
		SetSliderDialogDefaultValue(2)
		SetSliderDialogRange(0, 4)
		SetSliderDialogInterval(1)
	elseif (option == SpeechReductionRateOID)
		SetSliderDialogStartValue(SpeechReductionRate)
		SetSliderDialogDefaultValue(0.0)
		SetSliderDialogRange(0.0, 1.0)
		SetSliderDialogInterval(0.01)
	elseif (option == ThoughtsInterval_OID)
		SetSliderDialogStartValue(ThoughtsInterval)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(0, 60)
		SetSliderDialogInterval(1)
	elseif (option == LoadScreenChance_OID)
		SetSliderDialogStartValue(GlobalLoadScreenChance.GetValue())
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseif (option == PlaymateStrapOn_OID)
		SetSliderDialogStartValue(PlaymateStrapOn)
		SetSliderDialogDefaultValue(15)
		SetSliderDialogRange(-100, 100)
		SetSliderDialogInterval(1)
	elseif (option == SexWithPlaymateSatisfaction_OID)
		SetSliderDialogStartValue(SexWithPlaymateSatisfaction)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(-20, 50)
		SetSliderDialogInterval(1)
	elseif (option == PlaymatePunishesOID)
		SetSliderDialogStartValue(PlaymatePunishes)
		SetSliderDialogDefaultValue(0)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseif (option == MustOfferServiceScore_OID)
		SetSliderDialogStartValue(MustOfferServiceScore)
		SetSliderDialogDefaultValue(101)
		SetSliderDialogRange(-30, 101)
		SetSliderDialogInterval(1)
	elseif (option == AlwaysKneelScore_OID)
		SetSliderDialogStartValue(AlwaysKneelScore)
		SetSliderDialogDefaultValue(101)
		SetSliderDialogRange(0, 101)
		SetSliderDialogInterval(1)
	elseif (option == FashionSlave_OIDM)
		SetSliderDialogStartValue(FashionSlaveChance)
		SetSliderDialogDefaultValue(25)
		SetSliderDialogRange(0, 100)
		SetSliderDialogInterval(1)
	elseif (option == HairChangeMin_OID)
		SetSliderDialogStartValue(HairChangeMin)
		SetSliderDialogDefaultValue(3.0)
		SetSliderDialogRange(0.5, 14.0)
		SetSliderDialogInterval(0.5)
	elseif (option == HairChangeMax_OID)
		SetSliderDialogStartValue(HairChangeMax)
		SetSliderDialogDefaultValue(3.0)
		SetSliderDialogRange(0.5, 14.0)
		SetSliderDialogInterval(0.5)
	endif
EndEvent

event OnOptionSliderAccept(int option, float value)
	if (option == v_subG_OID)
		_v_subG = value as int
		v_subG = (_v_subG as float) / 100
		SetSliderOptionValue(v_subG_OID, _v_subG, "{0}%")
	elseif (option == v_resistG_OID)
		_v_resistG = value as int
		v_resistG = (_v_resistG as float) / 100
		SetSliderOptionValue(v_resistG_OID, _v_resistG, "{0}%")
	elseif (option == v_ScoreDecay_OID)
		ScoreDecay = value as int
		SetSliderOptionValue(option, ScoreDecay, "{0}")
	elseif (option == v_UnfairOID)
		GlobalUnfairDom.SetValue(value as int)
		SetSliderOptionValue(option, GlobalUnfairDom.GetValue(), "{0}%")
	elseif (option == CombatMercyLevel_OID)
		CombatMercyLevel = value
		SetSliderOptionValue(option, CombatMercyLevel, "{1}")
	elseif (option == v_tMinDays_OID)
		v_tMinDays = value as int
		SetSliderOptionValue(v_tMinDays_OID, v_tMinDays, "$SLTR_Days0")
	elseif (option == v_tRandDays_OID)
		v_tRandDays = value as int
		SetSliderOptionValue(v_tRandDays_OID, v_tRandDays, "$SLTR_Days0")
	elseif (option == SexMinTimes_OID)
		SexMinTimes = value as int
		SetSliderOptionValue(option, SexMinTimes, "$SLTR_Times")
	elseif (option == MinDailyScore_OID)
		MinDailyScore = value as int
		SetSliderOptionValue(option, MinDailyScore, "{0}")
	elseif (option == v_ServMinTimes_OID)
		v_ServMinTimes = value as int
		SetSliderOptionValue(option, v_ServMinTimes, "$SLTR_Times")
	elseif (option == v_ServRandTimes_OID)
		v_ServRandTimes = value as int
		SetSliderOptionValue(option, v_ServRandTimes, "$SLTR_Times")
	elseif (option == v_frequency_OID)
		Frequency = value
		SetSliderOptionValue(v_frequency_OID, Frequency, "$SLTR_Hours1")
	elseif (option == v_pace_OID)
		GlobalPace.SetValue(value as int)
		SetSliderOptionValue(option, GlobalPace.GetValue(), "{0}")
	elseif (option == BoredomOID)
		BoredomPenalty = value
		SetSliderOptionValue(option, BoredomPenalty, "{1}")
	elseif (option == v_interest_OID)
		_v_interest = value as int
		v_interest = (_v_interest as float) / 100
		SetSliderOptionValue(v_interest_OID, _v_interest, "{0}%")
	elseif (option == v_debtcap_OID)
		if value < GlobalDailyGold.GetValue()
			Quest q = Quest.GetQuest("vkjBringGold")
			if !q.IsRunning() && ShowMessage("This is less than the next payment amount.  Do you want to reduce the next payment to this value?")
				GlobalDailyGold.SetValue(value)
				SetTextOptionValue(v_NextPayment_OID, value as int)
			endif
		endif
		v_debtcap = value as int
		SetSliderOptionValue(v_debtcap_OID, v_debtcap, "{0}")
	elseif (option == v_OwnerExpensePercent_OID)
		OwnerExpensePercent = value as int
		SetSliderOptionValue(v_OwnerExpensePercent_OID, OwnerExpensePercent, "{0}%")
	elseif (option == v_Arousal_OID)
		GlobalArousalThreshold.SetValue(value)
		SetSliderOptionValue(option, value as int, "{0}")
	elseif (option == v_ShockStrength_OID)
		ShockStrength = value as int
		SetSliderOptionValue(option, ShockStrength, "{0}")
	elseif (option == ShockMagickaLossOID)
		ShockMagickaLoss = value as int
		SetSliderOptionValue(option, ShockMagickaLoss, "{0}")
	elseif (option == ArousalLossOnZapOID)
		ArousalLossOnZap = value as int
		SetSliderOptionValue(option, ArousalLossOnZap, "{0}")
	elseif option == SpankedXpRateOID
		SpankedXpRate = value
		SetSliderOptionValue(option, SpankedXpRate, "{2}")
		SpankedHardPerk.SetNthEntryValue(0, 0, SpankedXpRate)
	elseif option == WhippedXpRateOID
		WhippedXpRate = value
		SetSliderOptionValue(option, WhippedXpRate, "{2}")
		WhippedHardPerk.SetNthEntryValue(0, 0, WhippedXpRate)
	elseif (option == v_overburdened_OID)
		_v_overburdened = value as int
		v_overburdened = (_v_overburdened as float) / 100
		SetSliderOptionValue(option, _v_overburdened, "{0}%")
	elseif (option == OverburdenBonusOID)
		OverburdenBonus = value as int
		SetSliderOptionValue(option, OverburdenBonus, "{0}")
	elseif (option == v_EyeCandy_OID)
		EyeCandyChance = value as int
		SetSliderOptionValue(option, EyeCandyChance, "{0}%")
	elseif (option == v_WhippedEyeCandy_OID)
		WhippedEyeCandyChance = value as int
		SetSliderOptionValue(option, WhippedEyeCandyChance, "{0}%")
	elseif (option == v_EyeCandyReject_OID)
		EyeCandyRejectChance = value as int
		SetSliderOptionValue(option, EyeCandyRejectChance, "{0}%")
	elseif (option == NudeMarkerRadius1_OID)
		NudeMarkerRadius1 = value
		SetSliderOptionValue(option, value, "$SLTR_Units")
	elseif (option == NudeMarkerRadius2_OID)
		NudeMarkerRadius2 = value
		SetSliderOptionValue(option, value, "$SLTR_Units")
	elseif (option == NudeMarkerRadius3_OID)
		NudeMarkerRadius3 = value
		SetSliderOptionValue(option, value, "$SLTR_Units")
	elseif (option == v_roughSexChance_OID)
		v_roughSexChance = value as int
		SetSliderOptionValue(option, v_roughSexChance, "{0}")
	elseif (option == v_roughSexChance100_OID)
		v_roughSexChance100 = value as int
		SetSliderOptionValue(option, v_roughSexChance100, "{0}")
	elseif (option == PlayerSexSatisfaction_OID)
		PlayerSexSatisfaction = value as int
		SetSliderOptionValue(option, PlayerSexSatisfaction, "{0}")
	elseif (option == RoughSexSatisfaction_OID)
		RoughSexSatisfaction = value as int
		SetSliderOptionValue(option, RoughSexSatisfaction, "{0}")
	elseif (option == PlaymateChance_OID)
		PlaymateChance.SetValue(value as int)
		SetSliderOptionValue(option, value as int, "{0}%")
	elseif (option == PlaymateWantsSexOID)
		PlaymateWantsSex = value as int
		SetSliderOptionValue(option, PlaymateWantsSex, "{0}")
	elseif (option == OwnerPrefersPlaymate_OID)
		OwnerPrefersPlaymate.SetValue(value as int)
		SetSliderOptionValue(option, value as int, "{0}%")
	elseif (option == KeptThreshold_OID)
		KeptThreshold = value as int
		SetSliderOptionValue(option, KeptThreshold, "{0}")
	elseif (option == KeptBelowThreshold_OID)
		KeptBelowThreshold = value as int
		SetSliderOptionValue(option, KeptBelowThreshold, "{0}")
	elseif (option == v_Comments_OID)
		GlobalCommentChance.SetValue(value)
		SetSliderOptionValue(option, value as int, "{0}%")
		if MainQuest.IsRunning()
			MQ.IdleCommentsQuest.UpdateCurrentInstanceGlobal(GlobalCommentChance)
		endif
	elseif (option == v_StrapOn_OID)
		v_StrapOn = value as int
		SetSliderOptionValue(option, v_StrapOn, "{0}%")
	elseif (option == v_3way_OID)
		Global3wayChance.SetValue(value)
		SetSliderOptionValue(option, value as int, "{0}%")
	elseif (option == v_likesAnal_OID)
		v_likesAnal = value as int
		SetSliderOptionValue(option, v_likesAnal, "{0}%")
	elseif (option == LikesOralOID)
		LikesOral = value as int
		SetSliderOptionValue(option, LikesOral, "{0}%")
	elseif option == v_ClothesPrankChance_OID
		ClothesPrankChance = value as int
		if MainQuest.IsRunning()
			if ClothesPrankChance > 0
				MainQuest.RegisterForSleep()
			else
				MainQuest.UnregisterForSleep()
			endif
		endif
		SetSliderOptionValue(option, ClothesPrankChance, "{0}%")
	elseif (option == v_forcedProstChance_OID)
		GlobalProstitutionChance.SetValue(value)
		SetSliderOptionValue(option, value as int, "{0}%")
	elseif (option == v_minclients_OID)
		v_minclients = value as int
		SetSliderOptionValue(option, v_minclients, "{0}")
	elseif (option == v_randclients_OID)
		v_randclients = value as int
		SetSliderOptionValue(option, v_randclients, "{0}")
	elseif (option == v_whoreBasePay_OID)
		v_whoreBasePay = value as int
		SetSliderOptionValue(option, v_whoreBasePay, "$SLTR_Gold")
	elseif (option == ProstFeeOID)
		ProstFee = value as int
		SetSliderOptionValue(option, ProstFee, "{0}")
	elseif (option == v_whoreCD_OID)
		UpdateCooldown(NextWhore, NextWhoreCD, (value / 24.0))
		v_whoreCD = value as int
		NextWhoreCD = value / 24.0
		SetSliderOptionValue(option, v_whoreCD, "$SLTR_Hours")
	elseif (option == ProstThreshold_OID)
		ProstThreshold = value as int
		SetSliderOptionValue(option, ProstThreshold, "{0}")
	elseif (option == v_whoreDomCut_OID)
		_v_whoreDomCut = value as int
		v_whoreDomCut = (_v_whoreDomCut as float) / 100
		SetSliderOptionValue(v_whoreDomCut_OID, _v_whoreDomCut, "{0}%")
	elseif (option == ExtraKeysOID)
		ExtraKeys = value as int
		SetSliderOptionValue(option, value as int, "{0}")
	elseif (option == v_Piercings_OID)
		g_Piercings.SetValue(value)
		SetSliderOptionValue(option, value as int, "{0}")
	elseif (option == VibDuration_OID)
		VibDuration = value
		SetSliderOptionValue(option, value, "{1}")
	elseif (option == ForcedVibDuration_OID)
		ForcedVibDuration = value
		SetSliderOptionValue(option, value, "{1}")
	elseif (option == v_drunkowner)
		drunkowner = value as int
		SetSliderOptionValue(option, drunkowner, "{0}%")
	elseif (option == v_WhipRewardAmount_OID)
		WhipRewardDuration = value as int
		SetSliderOptionValue(option, WhipRewardDuration, "{0}")
	elseif (option == WhipNotZap_OID)
		WhipNotZap = value as int
		SetSliderOptionValue(option, WhipNotZap, "{0}%")
	elseif (option == v_WhipSpeed_OID)
		WhipSpeed = value as int
		SetSliderOptionValue(option, WhipSpeed, "{0}%")
	elseif (option == v_PunishmentDays_OID)
		PunishmentDays = value as int
		SetSliderOptionValue(option, PunishmentDays, "{0}")
	elseif (option == BleedoutDaysOID)
		BleedoutDays = value as int
		SetSliderOptionValue(option, BleedoutDays, "{0}")
	elseif (option == BleedoutProstQuotaOID)
		BleedoutProstQuota = value as int
		SetSliderOptionValue(option, BleedoutProstQuota, "{0}%")
	elseif (option == BleedoutPotionsOID)
		BleedoutPotions = value as int
		SetSliderOptionValue(option, BleedoutPotions, "{0}")
	elseif (option == v_WhipPunishAmount_OID)
		WhipPunishDuration = value as int
		SetSliderOptionValue(option, WhipPunishDuration, "{0}")
	elseif (option == v_DFBaseResistLoss_OID)
		DFBaseResistLoss = value
		SetSliderOptionValue(option, DFBaseResistLoss, "{1}")
	elseif option == v_OwnerGoldShare_OID
		OwnerGoldShare = value as int
		SetSliderOptionValue(option, OwnerGoldShare, "{0}%")
	elseif option == v_PlayerExpenseGold_OID
		PlayerExpenseGold = value as int
		SetSliderOptionValue(option, PlayerExpenseGold, "{0}")
	elseif option == v_GoldShareScoreMult_OID
		GoldShareScoreMult = value as int
		SetSliderOptionValue(option, GoldShareScoreMult, "{0}%")
		RecalcAndUpdateOwnerGoldShare()
	elseif option == v_GoldShareExtra_OID
		GoldShareExtra = value as int
		SetSliderOptionValue(option, GoldShareExtra, "{0}%")
		RecalcAndUpdateOwnerGoldShare()
	elseif option == ShoppingBonusOID
		ShoppingBonus = value as int
		SetSliderOptionValue(option, ShoppingBonus, "{0}")
	elseif option == ShoppingSexOID
		ShoppingSex = value as int
		SetSliderOptionValue(option, ShoppingSex, "{0}%")
	elseif option == v_Allowance_OID
		Allowance = value as int
		SetSliderOptionValue(option, Allowance, "{0}")
	elseif option == AllowanceBonusOID
		AllowanceBonus = value
		SetSliderOptionValue(option, AllowanceBonus, "{1}")
	elseif option == v_OwnerStartingGold_OID
		OwnerStartingGold = value as int
		SetSliderOptionValue(option, OwnerStartingGold, "{0}")
	elseif option == v_OwnerExpenses_OID
		OwnerExpenses = value as int
		SetSliderOptionValue(option, OwnerExpenses, "{0}")	
	elseif option == v_OwnerPoverty_OID
		OwnerPoverty = value as int
		SetSliderOptionValue(option, OwnerPoverty, "{0}")
	elseif option == OwnerCarryReduction_OID
		OwnerCarryReduction = value as int
		SetSliderOptionValue(option, OwnerCarryReduction, "{0}")
		MQ.UpdateOwnerCarryWeight()
	elseif option == v_VampireCooldown_OID
		VampireCooldown = value as int
		SetSliderOptionValue(option, VampireCooldown, "{0}")
	elseif option == DanceDuration_OID
		DanceDuration = value as int
		SetSliderOptionValue(option, DanceDuration, "{0}")
	elseif option == DanceDelayOID
		DanceDelay = value
		SetSliderOptionValue(option, DanceDelay, "{1}")
	elseif option == v_ContractGoldPerWeek_OID
		ContractGoldPerWeek = value as int
		SetSliderOptionValue(option, ContractGoldPerWeek, "{0}")
	elseif option == v_AllowedLockpicks_OID
		AllowedLockpicks = value as int
		SetSliderOptionValue(option, AllowedLockpicks, "{0}")
	elseif option == ChanceSoldOnExit_OID
		ChanceSoldOnExit = value as int
		SetSliderOptionValue(option, ChanceSoldOnExit, "{0}%")
	elseif option == SlaveTatAlpha_OID
		float oldVal = SlaveTatAlpha
		SlaveTatAlpha = value
		SetSliderOptionValue(option, SlaveTatAlpha, "{1}")
		if SlaveTatAlpha != oldVal
			if MQ.HighestTearsLevel() == 0
				if ShowMessage("Would you like to see a demonstration of the tears on your character?")
					Debug.MessageBox("Exit the MCM now")
					Utility.Wait(0.1)
					MQ.DemoTears()
				endif
			else
				if ShowMessage("Would you like to update the tears on your character?")
					Debug.MessageBox("Exit the MCM now")
					Utility.Wait(0.1)
					MQ.ReapplyTears()
				endif				
			endif
		endif
	elseif option == RandomCooldownOID
		RandomCooldown = value as int
		SetSliderOptionValue(option, RandomCooldown, "{0}%")
	elseif option == NextBardPlayOID
		UpdateCooldown(NextBardPlay, NextBardPlayCD, value)
		NextBardPlayCD = value
		SetSliderOptionValue(option, value, "$SLTR_Days1")
	elseif option == NextBringGoldOID
		UpdateCooldown(NextBringGold, NextBringGoldCD, value)
		NextBringGoldCD = value
		SetSliderOptionValue(option, value, "$SLTR_Days1")
	elseif option == NextConfessionOID
		UpdateCooldown(NextConfession, NextConfessionCD, value)
		NextConfessionCD = value
		SetSliderOptionValue(option, value, "$SLTR_Days1")
	elseif option == NextFamousOID
		UpdateCooldown(NextFamous, NextFamousCD, value)
		NextFamousCD = value
		SetSliderOptionValue(option, value, "$SLTR_Days1")
	elseif option == NextFindTreasureOID
		UpdateCooldown(NextFindTreasure, NextFindTreasureCD, value)
		NextFindTreasureCD = value
		SetSliderOptionValue(option, value, "$SLTR_Days1")
	elseif option == NextHairChangeOID
		UpdateCooldown(NextHairChange, NextHairChangeCD, value)
		NextHairChangeCD = value
		SetSliderOptionValue(option, value, "$SLTR_Days1")
	elseif option == NextLightsOutOID
		UpdateCooldown(NextLightsOut, NextLightsOutCD, value)
		NextLightsOutCD = value
		SetSliderOptionValue(option, value, "$SLTR_Days1")
	elseif option == NextPonyExpressOID
		UpdateCooldown(NextPonyExpress, NextPonyExpressCD, value)
		NextPonyExpressCD = value
		SetSliderOptionValue(option, value, "$SLTR_Days1")
	elseif option == NextRunLolaRunOID
		UpdateCooldown(NextRunLolaRun, NextRunLolaRunCD, value)
		NextRunLolaRunCD = value
		SetSliderOptionValue(option, value, "$SLTR_Days1")
	elseif option == NextStewingOID
		UpdateCooldown(NextStewing, NextStewingCD, value)
		NextStewingCD = value
		SetSliderOptionValue(option, value, "$SLTR_Days1")
	elseif option == NextTempleOfLoveOID
		UpdateCooldown(NextTempleOfLove, NextTempleOfLoveCD, value)
		NextTempleOfLoveCD = value
		SetSliderOptionValue(option, value, "$SLTR_Days1")
	elseif option == NextTrophySlaveOID
		UpdateCooldown(NextTrophySlave, NextTrophySlaveCD, value)
		NextTrophySlaveCD = value
		SetSliderOptionValue(option, value, "$SLTR_Days1")
	elseif option == NextWRWalkOID
		UpdateCooldown(NextWRWalk, NextWRWalkCD, value)
		NextWRWalkCD = value
		SetSliderOptionValue(option, value, "$SLTR_Days1")
	elseif option == NextSlutsOID
		UpdateCooldown(NextSluts, NextSlutsCD, value)
		NextSlutsCD = value
		SetSliderOptionValue(option, value, "$SLTR_Days1")
	elseif option == NextCountingIsFunOID
		UpdateCooldown(NextCountingIsFun, NextCountingIsFunCD, value)
		NextCountingIsFunCD = value
		SetSliderOptionValue(option, value, "$SLTR_Days1")
	elseif option == NextButtToyOID
		UpdateCooldown(NextButtToy, NextButtToyCD, value)
		NextButtToyCD = value
		SetSliderOptionValue(option, value, "$SLTR_Days1")
	elseif (option == Humiliation_OID)
		Humiliation = value as int
		SetSliderOptionValue(option, value, "{0}")
	elseif (option == SpeechReductionRateOID)
		SpeechReductionRate = value
		SetSliderOptionValue(option, value, "{2}")
		if MainQuest.IsRunning()
			MQ.UpdateSpeechReductionRate()
		endif
	elseif (option == ThoughtsInterval_OID)
		if value > 0 && !JContainers.isInstalled()
			Debug.MessageBox("JContainers is not installed, or an old version is installed.\nThis setting will be reset to 0.")
			ThoughtsInterval = 0
		elseif value > 0 && !MQ.ThoughtsExist()
			Debug.MessageBox("You must first copy or rename Thoughts-Example.json to Thoughts.json in Data\\Interface\\Lola.\nThis setting will be reset to 0.")
			ThoughtsInterval = 0
		else
			ThoughtsInterval = value as int
		endif
		SetSliderOptionValue(option, ThoughtsInterval, "$SLTR_Minutes")
		ForcePageReset(); to enable or disable Thoughts Test
	elseif option == LoadScreenChance_OID
		GlobalLoadScreenChance.SetValue(value as int)
		SetSliderOptionValue(option, value as int, "{0}%")
	elseif (option == PlaymateStrapOn_OID)
		PlaymateStrapOn = value as int
		SetSliderOptionValue(option, PlaymateStrapOn, "{0}%")
	elseif (option == SexWithPlaymateSatisfaction_OID)
		SexWithPlaymateSatisfaction = value as int
		SetSliderOptionValue(option, SexWithPlaymateSatisfaction, "{0}")
	elseif (option == PlaymatePunishesOID)
		PlaymatePunishes = value as int
		SetSliderOptionValue(option, PlaymatePunishes, "{0}%")
	elseif (option == MustOfferServiceScore_OID)
		MustOfferServiceScore = value as int
		SetSliderOptionValue(option, MustOfferServiceScore, "{0}")
	elseif (option == AlwaysKneelScore_OID)
		AlwaysKneelScore = value as int
		SetSliderOptionValue(option, AlwaysKneelScore, "{0}")
	elseif (option == FashionSlave_OIDM)
		FashionSlaveChance = value as int
		GlobalFashionSlaveChance.SetValue(FashionSlaveChance)
		SetSliderOptionValue(option, FashionSlaveChance, "{0}")
	elseif (option == HairChangeMin_OID)
		HairChangeMin = value
		SetSliderOptionValue(option, HairChangeMin, "{1}")
	elseif (option == HairChangeMax_OID)
		HairChangeMax = value
		SetSliderOptionValue(option, HairChangeMax, "{1}")
	endif
EndEvent

;==========================================================================================================================================
; Menu Options
;==========================================================================================================================================

event OnOptionMenuOpen(int option)
	if (option == hair_option_OIDM)
		SetMenuDialogOptions(hairList)
		SetMenuDialogStartIndex(hair_option)
		SetMenuDialogDefaultIndex(1)
	elseif option == WhoAsksOIDM
		SetMenuDialogOptions(whoAsksList)
		SetMenuDialogStartIndex(GetWhoAsksOption())
		SetMenuDialogDefaultIndex(0)
	elseif option == FollowerKnowsOIDM
		SetMenuDialogOptions(followerKnowsList)
		SetMenuDialogStartIndex(FollowerKnows)
		SetMenuDialogDefaultIndex(1)
	elseif (option == Contract_OIDM)
		SetMenuDialogOptions(contractList)
		SetMenuDialogStartIndex(_Contract)
		SetMenuDialogDefaultIndex(0)
	elseif (option == NudeRule_OIDM)
		SetMenuDialogOptions(nuderuleList)
		SetMenuDialogStartIndex(NudeRule)
		SetMenuDialogDefaultIndex(0)
	elseif (option == collars_OIDM)
		SetMenuDialogOptions(collarList)
		SetMenuDialogStartIndex(collars)
		SetMenuDialogDefaultIndex(0)
	elseif (option == gags_OIDM)
		SetMenuDialogOptions(gagList)
		SetMenuDialogStartIndex(gags)
		SetMenuDialogDefaultIndex(0)
	elseif (option == blind_OIDM)
		SetMenuDialogOptions(blindList)
		SetMenuDialogStartIndex(blinds)
		SetMenuDialogDefaultIndex(0)
	elseif (option == aRestraints_OIDM)
		SetMenuDialogOptions(aRestraintsList)
		SetMenuDialogStartIndex(aRestraints)
		SetMenuDialogDefaultIndex(0)
	elseif (option == RopeHarness_OIDM)
		SetMenuDialogOptions(ropeHarnessList)
		SetMenuDialogStartIndex(RopeHarness)
		SetMenuDialogDefaultIndex(0)
	elseif (option == FashionBodyOIDM)
		SetMenuDialogOptions(fashionBodyOptions)
		SetMenuDialogStartIndex(FashionBody)
		SetMenuDialogDefaultIndex(0)
	elseif (option == BodyHarness_OIDM)
		SetMenuDialogOptions(bodyHarnessList)
		SetMenuDialogStartIndex(BodyHarness)
		SetMenuDialogDefaultIndex(0)
	elseif (option == shoes_OIDM)
		SetMenuDialogOptions(shoesList)
		SetMenuDialogStartIndex(shoes)
		SetMenuDialogDefaultIndex(0)
	elseif (option == bondageShoes_OIDM)
		SetMenuDialogOptions(bondageShoeList)
		SetMenuDialogStartIndex(BondageShoes)
		SetMenuDialogDefaultIndex(0)
	elseif (option == Corset_OIDM)
		SetMenuDialogOptions(corsetList)
		SetMenuDialogStartIndex(Corset)
		SetMenuDialogDefaultIndex(0)
	elseif (option == dress_OIDM)
		SetMenuDialogOptions(dressList)
		SetMenuDialogStartIndex(dress)
		SetMenuDialogDefaultIndex(0)
	elseif (option == gloves_OIDM)
		SetMenuDialogOptions(glovesList)
		SetMenuDialogStartIndex(gloves)
		SetMenuDialogDefaultIndex(0)
	elseif (option == ArmCuffs_OIDM)
		SetMenuDialogOptions(cuffsList)
		SetMenuDialogStartIndex(ArmCuffs)
		SetMenuDialogDefaultIndex(0)
	elseif (option == LegCuffs_OIDM)
		SetMenuDialogOptions(cuffsList)
		SetMenuDialogStartIndex(LegCuffs)
		SetMenuDialogDefaultIndex(0)
	elseif (option == tail_OIDM)
		SetMenuDialogOptions(tailList)
		SetMenuDialogStartIndex(tail)
		SetMenuDialogDefaultIndex(3)
	elseif (option == ponyColor_OIDM)
		SetMenuDialogOptions(ponyColorList)
		SetMenuDialogStartIndex(ponyColor)
		SetMenuDialogDefaultIndex(0)
	elseif option == GlowOnEnslavedOIDM
		SetMenuDialogOptions(glowOptions)
		SetMenuDialogStartIndex(GlowOnEnslaved)
		SetMenuDialogDefaultIndex(0)
	elseif option == GlowOnSuspendOIDM
		SetMenuDialogOptions(glowOptions)
		SetMenuDialogStartIndex(GlowOnSuspend)
		SetMenuDialogDefaultIndex(0)
	elseif option == GlowOnSpankOIDM
		SetMenuDialogOptions(glowOptions)
		SetMenuDialogStartIndex(GlowOnSpank)
		SetMenuDialogDefaultIndex(0)
	elseif option == GlowOnWhipOIDM
		SetMenuDialogOptions(glowOptions)
		SetMenuDialogStartIndex(GlowOnWhip)
		SetMenuDialogDefaultIndex(0)
	elseif option == GlowOnBeckonOIDM
		SetMenuDialogOptions(glowOptions)
		SetMenuDialogStartIndex(GlowOnBeckon)
		SetMenuDialogDefaultIndex(0)
	elseif (option == PCSexuality_OIDM)
		SetMenuDialogOptions(SexualityList)
		SetMenuDialogStartIndex(PCSexuality)
		SetMenuDialogDefaultIndex(0)
	elseif (option == RemovePlugsForSexOIDM)
		SetMenuDialogOptions(removePlugsList)
		SetMenuDialogStartIndex(RemovePlugsForSex)
		SetMenuDialogDefaultIndex(0)
	elseif (option == OwnerSexuality_OIDM)
		SetMenuDialogOptions(SexualityList)
		SetMenuDialogStartIndex(OwnerSexuality)
		SetMenuDialogDefaultIndex(0)
	elseif (option == WhipWeapon_OID)
		SetMenuDialogOptions(whipWeapList)
		SetMenuDialogStartIndex(WhipWeapon)
		SetMenuDialogDefaultIndex(0)
	elseif (option == skillTaught_OIDM)
		SetMenuDialogOptions(skillList)
		SetMenuDialogStartIndex(skillTaught)
		SetMenuDialogDefaultIndex(0)
	elseif (option == RequiredCuffsOID)
		SetMenuDialogOptions(requiredCuffsList)
		SetMenuDialogStartIndex(RequiredCuffs)
		SetMenuDialogDefaultIndex(0)
	elseif (option == CustomConfessions_OIDM)
		SetMenuDialogOptions(neverSometimesAlways)
		SetMenuDialogStartIndex(CustomConfessions)
		SetMenuDialogDefaultIndex(0)
	elseif (option == DanceMusic_OIDM)
		SetMenuDialogOptions(danceMusicOptions)
		SetMenuDialogStartIndex(DanceMusicOption)
		SetMenuDialogDefaultIndex(0)
	elseif (option == SpankingAnimLimit_OIDM)
		SetMenuDialogOptions(spankingAnimLimitsList)
		SetMenuDialogStartIndex(SpankingAnimLimit)
		SetMenuDialogDefaultIndex(0)
	elseif (option == OwnerAttitudeOIDM)
		SetMenuDialogOptions(attitudeList)
		SetMenuDialogStartIndex(OwnerAttitude)
		SetMenuDialogDefaultIndex(0)
	elseif (option == PlaymateSex_OIDM)
		SetMenuDialogOptions(playmateSexList)
		SetMenuDialogStartIndex(PlaymateSex)
		SetMenuDialogDefaultIndex(4)
	elseif (option == v_Buyer_OID)
		SetMenuDialogOptions(buyerNames)
	elseif (option == RemoveBuyer_OID)
		SetMenuDialogOptions(buyerNames)
	elseif (option == HairStyle_OID)
		SetMenuDialogOptions(hairStyleNames)
	elseif (option == RemoveHairStyle_OID)
		SetMenuDialogOptions(hairStyleNames)
	elseif (option == VampireFeedingOptionOID)
		SetMenuDialogOptions(vampireFeedingOptionList)
		SetMenuDialogStartIndex(VampireFeedingOption)
		SetMenuDialogDefaultIndex(0)
	endif
endevent

event OnOptionMenuAccept(int option, int index)
	if (option == hair_option_OIDM)
		if ((index == 2) || (index == 3)) && (hairStyleNames.Length == 0)
			Debug.MessageBox("Select at least one hair style before choosing this option.")
		else
			hair_option = index
			SetMenuOptionValue(hair_option_OIDM, hairList[hair_option])
		endif
	elseif option == WhoAsksOIDM
		SetWhoAsksOption(index)
		SetMenuOptionValue(WhoAsksOIDM, whoAsksList[index])
	elseif option == FollowerKnowsOIDM
		FollowerKnows = index
		SetMenuOptionValue(FollowerKnowsOIDM, followerKnowsList[FollowerKnows])
	elseif (option == Contract_OIDM)
		_Contract = index
		SetMenuOptionValue(Contract_OIDM, contractList[_Contract])
	elseif (option == NudeRule_OIDM)
		NudeRule = index
		SetMenuOptionValue(NudeRule_OIDM, nuderuleList[NudeRule])
		renewNudeLists = true
	elseif (option == collars_OIDM)
		collars = index
		SetMenuOptionValue(collars_OIDM, collarList[collars])
		if index == (collarForm.GetSize() - 1); Custom
			Debug.MessageBox("You are expected to replace the placeholder mesh files in Data\\Meshes\\Devious\\Lola.\n\nDo not use the Custom collar setting without replacing both placeholder collar mesh files.\n\nThis is just a reminder.  If you already replaced the placeholder files then you are okay.")
		endif
	elseif (option == gags_OIDM)
		gags = index
		SetMenuOptionValue(gags_OIDM, gagList[gags])
	elseif (option == blind_OIDM)
		blinds = index
		SetMenuOptionValue(blind_OIDM, blindList[blinds])
	elseif (option == aRestraints_OIDM)
		aRestraints = index
		SetMenuOptionValue(aRestraints_OIDM, aRestraintsList[aRestraints])
	elseif (option == RopeHarness_OIDM)
		RopeHarness = index
		SetMenuOptionValue(RopeHarness_OIDM, ropeHarnessList[RopeHarness])
	elseif (option == FashionBodyOIDM)
		FashionBody = index
		SetMenuOptionValue(FashionBodyOIDM, fashionBodyOptions[FashionBody])
	elseif (option == BodyHarness_OIDM)
		BodyHarness = index
		SetMenuOptionValue(BodyHarness_OIDM, bodyHarnessList[BodyHarness])
	elseif (option == shoes_OIDM)
		shoes = index
		SetMenuOptionValue(shoes_OIDM, shoesList[shoes])
	elseif (option == bondageShoes_OIDM)
		BondageShoes = index
		SetMenuOptionValue(bondageShoes_OIDM, bondageShoeList[BondageShoes])
	elseif (option == Corset_OIDM)
		Corset = index
		SetMenuOptionValue(Corset_OIDM, corsetList[Corset])
	elseif (option == dress_OIDM)
		dress = index
		SetMenuOptionValue(dress_OIDM, dressList[dress])
	elseif (option == gloves_OIDM)
		gloves = index
		SetMenuOptionValue(gloves_OIDM, glovesList[gloves])
	elseif (option == ArmCuffs_OIDM)
		ArmCuffs = index
		SetMenuOptionValue(option, cuffsList[ArmCuffs])
	elseif (option == LegCuffs_OIDM)
		LegCuffs = index
		SetMenuOptionValue(option, cuffsList[LegCuffs])
	elseif (option == tail_OIDM)
		tail = index
		SetMenuOptionValue(option, tailList[tail])
	elseif (option == ponyColor_OIDM)
		ponyColor = index
		SetMenuOptionValue(option, ponyColorList[ponyColor])
	elseif option == GlowOnEnslavedOIDM
		GlowOnEnslaved = index
		SetMenuOptionValue(option, glowOptions[GlowOnEnslaved])
	elseif option == GlowOnSuspendOIDM
		GlowOnSuspend = index
		SetMenuOptionValue(option, glowOptions[GlowOnSuspend])
	elseif option == GlowOnSpankOIDM
		GlowOnSpank = index
		SetMenuOptionValue(option, glowOptions[GlowOnSpank])
	elseif option == GlowOnWhipOIDM
		GlowOnWhip = index
		SetMenuOptionValue(option, glowOptions[GlowOnWhip])
	elseif option == GlowOnBeckonOIDM
		GlowOnBeckon = index
		SetMenuOptionValue(option, glowOptions[GlowOnBeckon])
	elseif (option == OwnerSexuality_OIDM)
		OwnerSexuality = index
		SetMenuOptionValue(OwnerSexuality_OIDM, SexualityList[OwnerSexuality])
		if MainQuest.IsRunning()
			MQ.OwnerSexuality()
		endif
	elseif (option == PCSexuality_OIDM)
		PCSexuality = index
		SetMenuOptionValue(PCSexuality_OIDM, SexualityList[PCSexuality])
		if MainQuest.IsRunning()
			MQ.PCSexuality()
		endif
	elseif (option == RemovePlugsForSexOIDM)
		RemovePlugsForSex = index
		SetMenuOptionValue(option, removePlugsList[index])
	elseif (option == WhipWeapon_OID)
		WhipWeapon = index
		SetMenuOptionValue(option, whipWeapList[WhipWeapon])
		if index == (3); Custom
			Debug.MessageBox("You are expected to replace the placeholder mesh file in Data\\Meshes\\Devious\\Lola.\n\nDo not use the Custom whip setting without replacing the placeholder whip mesh file.\n\nThis is just a reminder.  If you already replaced the placeholder file then you are okay.")
		endif
	elseif (option == skillTaught_OIDM)
		skillTaught = index
		SetMenuOptionValue(option, skillList[skillTaught])
	elseif option == RequiredCuffsOID
		RequiredCuffs = index
		SetMenuOptionValue(option, requiredCuffsList[RequiredCuffs])
		RequiredCuffsChanged()
	elseif (option == CustomConfessions_OIDM)
		if index > 0 && !JContainers.isInstalled()
			Debug.MessageBox("JContainers is not installed, or an old version is installed.\nThis setting will be reset to 0.")
			CustomConfessions = 0
		elseif index > 0 && !MQ.CustomConfessionsExist()
			Debug.MessageBox("You must first copy or rename Confessions-Example.json to Confessions.json in Data\\Interface\\Lola.\nThis option will be reset to Never.")
			CustomConfessions = 0
		else
			CustomConfessions = index
			if index > 0
				MQ.LoadConfessions()
			endif
		endif
		SetMenuOptionValue(option, neverSometimesAlways[CustomConfessions])
	elseif option == DanceMusic_OIDM
		DanceMusicOption = index
		SetMenuOptionValue(option, danceMusicOptions[index])
	elseif option == SpankingAnimLimit_OIDM
		SpankingAnimLimit = index
		SetMenuOptionValue(option, spankingAnimLimitsList[index])
	elseif option == OwnerAttitudeOIDM
		OwnerAttitude = index
		SetMenuOptionValue(option, attitudeList[index])
		SetInfoText("$SLTR_OwnerAttitude" + index + "_INFO")
	elseif option == PlaymateSex_OIDM
		PlaymateSex = index
		SetMenuOptionValue(option, playmateSexList[index])
	elseif option == RemoveBuyer_OID
		if index >= 0; -1 = no selection
			string buyerName = buyerNames[index]
			JsonUtil.StringListRemove(jsonPathBuyers, jsonBuyersKey, buyerName)
			JsonUtil.UnsetFormValue(jsonPathBuyers, buyerName)
			JsonUtil.Save(jsonPathBuyers)
			ForcePageReset()
		endif
	elseif option == RemoveHairStyle_OID
		if index >= 0; -1 = no selection
			string styleName = hairStyleNames[index]
			JsonUtil.StringListRemove(jsonPathHairStyles, jsonHairStylesKey, styleName)
			JsonUtil.UnsetFormValue(jsonPathHairStyles, styleName)
			JsonUtil.Save(jsonPathHairStyles)
			ForcePageReset()
		endif
	elseif option == VampireFeedingOptionOID
		VampireFeedingOption = index
		SetMenuOptionValue(option, vampireFeedingOptionList[index])
	endif
endevent

;==========================================================================================================================================
; Descriptions and Message Toggles
;==========================================================================================================================================

; Note:  Maximum practical length of info text or message box text is about 450 characters.  Info text that long will be 4 full lines.

event OnOptionHighlight(int option)
	if option == v_StartQuest_OID
		if ObsoleteDD
			SetInfoText("$SLTR_ObsoleteDD_INFO")
		elseif !QuestRunning()
			SetInfoText("$SLTR_StartQuest_INFO")
		elseif MQ.SuspendAll
			SetInfoText("$SLTR_Suspended_INFO")
		elseif StrongHand.IsRunning()
			SetInfoText("$SLTR_IntroRunning_INFO")
		else
			SetInfoText("$SLTR_MainRunning_INFO")
		endif
	elseif option == WhoAsksOIDM
		SetInfoText("$SLTR_WhoAsks_INFO")
	elseif option == FollowerKnowsOIDM
		SetInfoText("$SLTR_FollowerKnows_INFO")
	elseif (option == Export_OID)
		SetInfoText("$SLTR_Export_INFO")
	elseif (option == Import_OID)
		SetInfoText("$SLTR_Import_INFO")
	elseif (option == v_subG_OID)
		SetInfoText("$SLTR_subG_INFO")
	elseif (option == v_resistG_OID)
		SetInfoText("$SLTR_resistG_INFO")
	elseif (option == v_PunishmentDays_OID)
		SetInfoText("$SLTR_PunishmentDays_INFO")
	elseif (option == BleedoutDaysOID)
		SetInfoText("$SLTR_BleedoutDays_INFO")
	elseif (option == BleedoutProstQuotaOID)
		SetInfoText("$SLTR_BleedoutProstQuota_INFO")
	elseif (option == BleedoutPotionsOID)
		SetInfoText("$SLTR_BleedoutPotions_INFO")
	elseif (option == WhipNotZap_OID)
		SetInfoText("$SLTR_WhipNotZap_INFO")
	elseif (option == v_WhipSpeed_OID)
		SetInfoText("$SLTR_WhipSpeed_INFO")
	elseif (option == v_ScoreDecay_OID)
		SetInfoText("$SLTR_ScoreDecay_INFO")
	elseif (option == NudeOutfit_OID)
		SetInfoText("$SLTR_NudeOutfit_INFO")
	elseif option == v_OwnerPoverty_OID
		SetInfoText("$SLTR_OwnerPoverty_INFO")
	elseif option == v_OwnerExpensePercent_OID
		SetInfoText("$SLTR_OwnerExpensePercent_INFO")
	elseif option == v_NextPayment_OID
		SetInfoText("$SLTR_NextPayment_INFO")
	elseif (option == hair_option_OIDM)
		SetInfoText("$SLTR_hair_option_INFO")
	elseif (option == FashionSlave_OIDM)
		SetInfoText("$SLTR_FashionSlave_INFO")
	elseif (option == v_ResetEventBlocking_OID)
		SetInfoText("$SLTR_ResetEventBlocking_INFO")
	elseif (option == RenewHairButton)
		SetInfoText("$SLTR_RenewHair_INFO")
	elseif (option == DhlpResume_OID)
		SetInfoText("$SLTR_DHLPResume_INFO")
	elseif (option == DhlpSuspendedByLabel)
		SetInfoText(MQ.GetDhlpSuspendedBy())
	;elseif (option == v_ResetDefault_OID)
	;	SetInfoText("$SLTR_ResetDefault_INFO")
	elseif (option == v_UnfairOID)
		SetInfoText("$SLTR_Unfair_INFO")
	elseif (option == v_Arousal_OID)
		SetInfoText("$SLTR_Arousal_INFO")
	elseif (option == v_ShockStrength_OID)
		SetInfoText("$SLTR_ShockStrength_INFO")
	elseif (option == ShockMagickaLossOID)
		SetInfoText("$SLTR_ShockMagickaLoss_INFO")
	elseif (option == ArousalLossOnZapOID)
		SetInfoText("$SLTR_ArousalLossOnZap_INFO")
	elseif (option == SpankedXpRateOID)
		SetInfoText("$SLTR_SpankedXpRate_INFO")
	elseif (option == WhippedXpRateOID)
		SetInfoText("$SLTR_WhippedXpRate_INFO")
	elseif (option == v_overburdened_OID)
		SetInfoText("$SLTR_overburdened_INFO")
	elseif (option == OverburdenBonusOID)
		SetInfoText("$SLTR_overburdenBonus_INFO")
	elseif (option == v_EyeCandy_OID)
		SetInfoText("$SLTR_EyeCandy_INFO")
	elseif (option == v_WhippedEyeCandy_OID)
		SetInfoText("$SLTR_WhippedEyeCandy_INFO")
	elseif (option == v_EyeCandyReject_OID)
		SetInfoText("$SLTR_EyeCandyReject_INFO")
	elseif (option == NudeMarker1_OID) || (option == NudeMarker2_OID) || (option == NudeMarker3_OID)
		SetInfoText("$SLTR_NudeMarker_INFO")
	elseif (option == NudeMarkerRadius1_OID) || (option == NudeMarkerRadius2_OID) || (option == NudeMarkerRadius3_OID)
		SetInfoText("$SLTR_NudeMarkerRadius_INFO")
	elseif (option == Contract_OIDM)
		if (!MainQuest.IsRunning())
			SetInfoText("$SLTR_Contract_INFO1")
		else
			SetInfoText("$SLTR_Contract_INFO2")
		endif
	elseif (option == v_Score_OID)
		SetInfoText("$SLTR_Score_INFO2")
	elseif (option == v_DailyUpdateTime_OID)
		SetInfoText("$SLTR_DailyUpdateTime_INFO")
	elseif (option == v_ContractLeft_OID)
		if MQ.slaveContract.GetValue() == 0.0
			SetInfoText("$SLTR_ContractLeft_INFO1")
		elseif MQ.slaveContract.GetValue() < 9000
			SetInfoText("$SLTR_ContractLeft_INFO2")
		else
			SetInfoText("$SLTR_ContractLeft_INFO3")
		endif
	elseif (option == NudeRule_OIDM)
		SetInfoText("$SLTR_NudeRule_INFO")
	elseif (option == CombatMercyLevel_OID)
		SetInfoText("$SLTR_CombatMercyLevel_INFO")
	elseif (option == v_tMinDays_OID)
		SetInfoText("$SLTR_MinDays_INFO")
	elseif (option == v_tRandDays_OID)
		SetInfoText("$SLTR_RandDays_INFO")
	elseif (option == SexMinTimes_OID)
		SetInfoText("$SLTR_SexMinTimes_INFO")
	elseif (option == MinDailyScore_OID)
		SetInfoText("$SLTR_MinDailyScore_INFO")
	elseif (option == v_ServMinTimes_OID)
		SetInfoText("$SLTR_ServMinTimes_INFO")
	elseif (option == v_ServRandTimes_OID)
		SetInfoText("$SLTR_ServRandTimes_INFO")
	elseif (option == collars_OIDM)
		SetInfoText("$SLTR_collars_INFO")
	elseif (option == gags_OIDM)
		SetInfoText("$SLTR_gags_INFO")
	elseif (option == blind_OIDM)
		SetInfoText("$SLTR_blind_INFO")
	elseif (option == v_frequency_OID)
		SetInfoText("$SLTR_frequency_INFO")
	elseif (option == v_pace_OID)
		SetInfoText("$SLTR_pace_INFO")
	elseif (option == BoredomOID)
		SetInfoText("$SLTR_BoredomPenalty_INFO")
	elseif (option == OwnerSexuality_OIDM)
		SetInfoText("$SLTR_OwnerSexuality_INFO")
	elseif (option == PCSexuality_OIDM)
		SetInfoText("$SLTR_PCSexualityy_INFO")
	elseif (option == RemovePlugsForSexOIDM)
		SetInfoText("$SLTR_RemovePlugsForSex_INFO")
	elseif (option == v_interest_OID)
		SetInfoText("$SLTR_interest_INFO")
	elseif (option == v_debtcap_OID)
		SetInfoText("$SLTR_debtcap_INFO")
	elseif (option == RZPoseInfo_OID)
		SetInfoText("$SLTR_RZPoseInfo_INFO")
	elseif (option == DanceMusic_OIDM)	
		SetInfoText("$SLTR_DanceMusic_INFO")
	elseif (option == PreviewDance_OID)
		SetInfoText("$SLTR_PreviewDance_INFO")
	elseif (option == TDFInfo_OID)
		SetInfoText("$SLTR_TDFInfo_INFO")
	elseif (option == v_NewCollar_OID)
		SetInfoText("$SLTR_NewCollar_INFO")
	elseif option == UpdateRunicGlowBtn
		SetInfoText("$SLTR_UpdateRunicGlow_INFO")
	elseif option == RequiresRunicCollarBtn
		SetInfoText("$SLTR_RequiresRunicCollar_INFO")
	elseif (option == v_NewGag_OID)
		SetInfoText("$SLTR_NewGag_INFO")
	elseif (option == v_roughSexChance_OID)
		SetInfoText("$SLTR_roughSexChance_INFO")
	elseif (option == v_roughSexChance100_OID)
		SetInfoText("$SLTR_roughSexChance100_INFO")
	elseif (option == PlayerSexSatisfaction_OID)
		SetInfoText("$SLTR_PlayerSexSatisfaction_INFO")
	elseif (option == RoughSexSatisfaction_OID)
		SetInfoText("$SLTR_RoughSexSatisfaction_INFO")
	elseif (option == KeptThreshold_OID)
		SetInfoText("$SLTR_KeptThresholde_INFO")
	elseif (option == KeptBelowThreshold_OID)
		SetInfoText("$SLTR_KeptBelowThresholde_INFO")
		
	elseif option == AchieveSubLola
		SetInfoText("$SLTR_AchieveSubLola_INFO")
	elseif option == AchieveResub
		SetInfoText("$SLTR_AchieveResub_INFO")
	elseif option == AchieveWorkingSlave
		SetInfoText("$SLTR_AchieveWorkingSlave_INFO")
	elseif option == AchieveDomestic
		SetInfoText("$SLTR_AchieveDomestic_INFO")
	elseif option == AchieveRun
		SetInfoText("$SLTR_AchieveRun_INFO")
	elseif option == AchieveDance
		SetInfoText("$SLTR_AchieveDance_INFO")
	elseif option == AchieveGag
		SetInfoText("$SLTR_AchieveGag_INFO")
	elseif option == AchieveParade
		SetInfoText("$SLTR_AchieveParade_INFO")
	elseif option == AchievePony
		SetInfoText("$SLTR_AchievePony_INFO")
	elseif option == AchieveKept
		SetInfoText("$SLTR_AchieveKept_INFO")
	elseif option == AchieveHousecarl
		SetInfoText("$SLTR_AchieveHousecarl_INFO")
	elseif option == AchievePerfectScore
		SetInfoText("$SLTR_AchievePerfectScore_INFO")
	elseif option == AchieveLowScore
		SetInfoText("$SLTR_AchieveLowScore_INFO")
	elseif option == AchieveSpankMe
		SetInfoText("$SLTR_AchieveSpankMe_INFO")
	elseif option == AchieveWhipMe
		SetInfoText("$SLTR_AchieveWhipMe_INFO")
	elseif option == AchievePlaymateSub
		SetInfoText("$SLTR_AchievePlaymateSub_INFO")
	elseif option == AchievePlaymatePun
		SetInfoText("$SLTR_AchievePlaymatePun_INFO")
	elseif (option == v_Comments_OID)
		SetInfoText("$SLTR_Comments_INFO")
	elseif (option == aRestraints_OIDM)
		SetInfoText("$SLTR_aRestraints_INFO")
	elseif (option == RopeHarness_OIDM)
		SetInfoText("$SLTR_RopeHarness_INFO")
	elseif (option == FashionBodyOIDM)
		SetInfoText("$SLTR_FashionBody_INFO")
	elseif (option == BodyHarness_OIDM)
		SetInfoText("$SLTR_BodyHarness_INFO")
	elseif (option == v_StrapOn_OID)
		SetInfoText("$SLTR_StrapOn_INFO")
	elseif (option == v_3way_OID)
		SetInfoText("$SLTR_3way_INFO")
	elseif (option == v_likesAnal_OID)
		SetInfoText("$SLTR_likesAnal_INFO")
	elseif (option == LikesOralOID)
		SetInfoText("$SLTR_likesOral_INFO")
	elseif (option == shoes_OIDM)
		SetInfoText("$SLTR_shoes_INFO")
	elseif (option == bondageShoes_OIDM)
		SetInfoText("$SLTR_BondageShoes_INFO")
	elseif (option == Corset_OIDM)
		SetInfoText("$SLTR_BondageCorset_INFO")
	elseif (option == dress_OIDM)
		SetInfoText("$SLTR_dress_INFO")
	elseif (option == gloves_OIDM)
		SetInfoText("$SLTR_gloves_INFO")
	elseif (option == ArmCuffs_OIDM)
		SetInfoText("$SLTR_ArmCuffs_INFO")
	elseif (option == LegCuffs_OIDM)
		SetInfoText("$SLTR_LegCuffs_INFO")
	elseif (option == tail_OIDM)
		SetInfoText("$SLTR_tail_INFO")
	elseif (option == ponyColor_OIDM)
		SetInfoText("$SLTR_ponyColor_INFO")
	elseif option == GlowOnEnslavedOIDM
		SetInfoText("$SLTR_GlowOnEnslaved_INFO")
	elseif option == GlowOnSuspendOIDM
		SetInfoText("$SLTR_GlowOnSuspend_INFO")
	elseif option == GlowOnSpankOIDM
		SetInfoText("$SLTR_GlowOnSpank_INFO")
	elseif option == GlowOnWhipOIDM
		SetInfoText("$SLTR_GlowOnWhip_INFO")
	elseif option == GlowOnBeckonOIDM
		SetInfoText("$SLTR_GlowOnBeckon_INFO")
	elseif (option == v_ClothesPrankChance_OID)
		SetInfoText("$SLTR_ClothesPrankChance_INFO")
	elseif (option == v_forcedProstChance_OID)
		SetInfoText("$SLTR_forcedProstChance_INFO")
	elseif (option == v_minclients_OID)
		if ProstPayMode
			SetInfoText("$SLTR_minpay_INFO")
		else
			SetInfoText("$SLTR_minclients_INFO")
		endif
	elseif (option == v_randclients_OID)
		if ProstPayMode
			SetInfoText("$SLTR_randpay_INFO")			
		else
			SetInfoText("$SLTR_randclients_INFO")
		endif
	elseif (option == HairStyle_OID)
		SetInfoText("$SLTR_HairStyle_INFO")
	elseif (option == AddHairStyle_OID)
		SetInfoText("$SLTR_AddHairStyle_INFO")
	elseif (option == RemoveHairStyle_OID)
		SetInfoText("$SLTR_RemoveHairStyle_INFO")
	elseif (option == v_whoreBasePay_OID)
		SetInfoText("$SLTR_whoreBasePay_INFO")
	elseif (option == v_whoreDomCut_OID)
		SetInfoText("$SLTR_whoreDomCut_INFO")
	elseif (option == ProstFeeOID)
		SetInfoText("$SLTR_ProstFee_INFO")
	elseif (option == v_whoreCD_OID)
		SetInfoText("$SLTR_whoreCD_INFO")
	elseif (option == ProstThreshold_OID)
		SetInfoText("$SLTR_ProstThreshold_INFO")
	elseif (option == v_SoftMods_OID)
		SetInfoText("$SLTR_SoftMods_INFO")
	;elseif (option == v_CollarWorkClothes_OID)
	;	SetInfoText("$SLTR_CollarWorkClothes_INFO")
	elseif (option == v_ResetDailyUpdate_OID )
		SetInfoText("$SLTR_ResetDailyUpdate_INFO")
	elseif (option == v_MoveDom_OID )
		SetInfoText("$SLTR_MoveDom_INFO")
	elseif (option == ActiveTaskOID )
		SetInfoText("$SLTR_ActiveTask_INFO")
	elseif (option == ExtraKeysOID )
		SetInfoText("$SLTR_ExtraKeys_INFO")
	elseif (option == v_Piercings_OID )
		SetInfoText("$SLTR_Piercings_INFO")
	elseif (option == VibDuration_OID )
		SetInfoText("$SLTR_VibDuration_INFO")
	elseif (option == ForcedVibDuration_OID )
		SetInfoText("$SLTR_ForcedVibDuration_INFO")
	elseif (option == v_drunkowner )
		SetInfoText("$SLTR_drunkowner_INFO")
	elseif (option == v_WhipRewardAmount_OID)
		SetInfoText("$SLTR_WhipRewardAmount_INFO")
	elseif (option == v_WhipPunishAmount_OID)
		SetInfoText("$SLTR_WhipPunishAmount_INFO")
	elseif (option == v_DFBaseResistLoss_OID)
		SetInfoText("$SLTR_DFBaseResistLoss_INFO")
	elseif (option == v_NewOwner_OID)
		SetInfoText("$SLTR_NewOwner_INFO")
	elseif (option == v_Buyer_OID)
		SetInfoText("$SLTR_Buyer_INFO")
	elseif (option == ChanceSoldOnExit_OID)
		SetInfoText("$SLTR_ChanceSoldOnExit_INFO")
	elseif (option == SlaveTatAlpha_OID)
		SetInfoText("$SLTR_SlaveTatAlpha_INFO")
	elseif (option == v_SelectBuyer_OID)
		SetInfoText("$SLTR_SelectBuyer_INFO")
	elseif (option == RemoveBuyer_OID)
		SetInfoText("$SLTR_RemoveBuyer_INFO")
	elseif (option == ValidateBuyers_OID)
		SetInfoText("$SLTR_ValidateBuyers_INFO")
	elseif (option == WhipWeapon_OID)
		SetInfoText("$SLTR_WhipWeapon_INFO")
	elseif option == DanceDuration_OID
		SetInfoText("$SLTR_DanceDuration_INFO")
	elseif option == DanceDelayOID
		SetInfoText("$SLTR_DanceDelay_INFO")
	elseif (option == v_AllowedLockpicks_OID)
		SetInfoText("$SLTR_AllowedLockpicks_INFO")
	elseif (option == v_LockCheat_OID)
		if v_LockCheat
			SetInfoText("$SLTR_LockCheat_INFO1")
		else
			SetInfoText("$SLTR_LockCheat_INFO2")
		endif
	elseif option == v_IncreasePayment_OID
		SetInfoText("$SLTR_IncreasePayment_INFO")
	elseif option == v_GoldShareScoreMult_OID
		SetInfoText("$SLTR_GoldShareScoreMult_INFO")
	elseif option == v_GoldShareExtra_OID
		SetInfoText("$SLTR_GoldShareExtra_INFO")
	elseif option == ShoppingBonusOID
		SetInfoText("$SLTR_ShoppingBonus_INFO")
	elseif option == ShoppingSexOID
		SetInfoText("$SLTR_ShoppingSex_INFO")
	elseif option == v_OwnerGoldShare_OID
		SetInfoText("$SLTR_OwnerGoldShare_INFO")
	elseif option == v_PlayerExpenseGold_OID
		SetInfoText("$SLTR_PlayerExpenseGold_INFO")
	elseif option == v_Allowance_OID
		SetInfoText("$SLTR_Allowance_INFO")
	elseif option == AllowanceBonusOID
		SetInfoText("$SLTR_AllowanceBonus_INFO")
	elseif option == v_ContractGoldPerWeek_OID
		SetInfoText("$SLTR_ContractGoldPerWeek_INFO")
	elseif option == OwnerGoldInfo
		SetInfoText("$SLTR_OwnerGoldInfoINFO")
	elseif option == v_OwnerStartingGold_OID
		SetInfoText("$SLTR_OwnerStartingGold_INFO")
	elseif option == v_OwnerExpenses_OID
		SetInfoText("$SLTR_OwnerExpenses_INFO")
	elseif option == OwnerCarryReduction_OID
		SetInfoText("$SLTR_OwnerCarryReduction_INFO")
	elseif option == v_VampireCooldown_OID
		SetInfoText("$SLTR_VampireCooldown_INFO")
	elseif option == VampireFeedingOptionOID
		SetInfoText("$SLTR_VampireFeedingOption_INFO")
	elseif (option == skillTaught_OIDM)
		SetInfoText("$SLTR_skillTaught_INFO")
	elseif (option == RequiredCuffsOID)
		SetInfoText("$SLTR_RequiredCuffs_INFO")
	elseif (option == CustomConfessions_OIDM)
		SetInfoText("$SLTR_CustomConfessions_INFO")
	elseif option == Humiliation_OID
		SetInfoText("$SLTR_Humiliation_INFO")
	elseif option == SpeechReductionRateOID
		SetInfoText("$SLTR_SpeechReductionRate_INFO")
	elseif option == ThoughtsInterval_OID
		SetInfoText("$SLTR_ThoughtsInterval_INFO")
	elseif option == ThoughtsTest_OID
		SetInfoText("$SLTR_ThoughtsTest_INFO")
	elseif option == MustOfferServiceScore_OID
		SetInfoText("$SLTR_MustOfferService_INFO")
	elseif option == AlwaysKneelScore_OID
		SetInfoText("$SLTR_AlwaysKneelScore_INFO")
	elseif (option == StopVib_OID)
		SetInfoText("$SLTR_StopVib_INFO")
	elseif (option == LoadInscription_OID)
		SetInfoText("$SLTR_LoadInscription_INFO")
	elseif (option == HelpCooldownsButton)
		SetInfoText("$SLTR_Cooldowns_INFO")
	elseif (option == RandomCooldownOID)
		SetInfoText("$SLTR_RandomCooldown_INFO")
	elseif (option == NextBardPlayOID)
		SetInfoText("$SLTR_NextBardPlay_INFO")
	elseif (option == NextBringGoldOID)
		SetInfoText("$SLTR_NextBringGold_INFO")
	elseif (option == NextConfessionOID)
		SetInfoText("$SLTR_NextConfession_INFO")
	elseif (option == NextFamousOID)
		SetInfoText("$SLTR_NextFamous_INFO")
	elseif (option == NextHairChangeOID)
		SetInfoText("$SLTR_NextHairChange_INFO")
	elseif (option == NextLightsOutOID)
		SetInfoText("$SLTR_NextLightsOut_INFO")
	elseif (option == NextPonyExpressOID)
		SetInfoText("$SLTR_NextPonyExpress_INFO")
	elseif (option == NextRunLolaRunOID)
		SetInfoText("$SLTR_NextRunLolaRun_INFO")
	elseif (option == NextStewingOID)
		SetInfoText("$SLTR_NextStewing_INFO")
	elseif (option == NextTempleOfLoveOID)
		SetInfoText("$SLTR_NextTempleOfLove_INFO")
	elseif (option == NextFindTreasureOID)
		SetInfoText("$SLTR_NextFindTreasure_INFO")
	elseif (option == NextTrophySlaveOID)
		SetInfoText("$SLTR_NextTrophySlave_INFO")
	elseif (option == NextWRWalkOID)
		SetInfoText("$SLTR_NextWRWalk_INFO")
	elseif (option == NextSlutsOID)
		SetInfoText("$SLTR_NextSluts_INFO")
	elseif (option == NextCountingIsFunOID)
		SetInfoText("$SLTR_NextCountingIsFun_INFO")
	elseif (option == NextButtToyOID)
		SetInfoText("$SLTR_NextButtToy_INFO")
	elseif (option == LoadScreenChance_OID)
		SetInfoText("$SLTR_LoadScreenChance_INFO")
	elseif (option == SpankingAnimLimit_OIDM)
		SetInfoText("$SLTR_SpankingAnimLimit_INFO")
	elseif (option == Playmate_OID)
		if MQ.PlaymateRef == none
			SetInfoText("$SLTR_Playmate_INFO")
		else
			SetInfoText("$SLTR_Playmate_INFO2")
		endif
	elseif (option == OwnerAttitudeOIDM)
		SetInfoText("$SLTR_OwnerAttitude" + OwnerAttitude + "_INFO")
	elseif (option == SelectPlaymate_OID)
		SetInfoText("$SLTR_SelectPlaymate_INFO")
	elseif (option == PMOutfit_OID)
		SetInfoText("$SLTR_PMOutfit_INFO")
	elseif (option == PMBoots_OID)
		SetInfoText("$SLTR_PMBoots_INFO")
	elseif (option == PlaymateChance_OID)
		SetInfoText("$SLTR_PlaymateChance_INFO")
	elseif (option == PlaymateWantsSexOID)
		SetInfoText("$SLTR_PlaymateWantsSex_INFO")
	elseif (option == OwnerPrefersPlaymate_OID)
		SetInfoText("$SLTR_OwnerPrefersPlaymate_INFO")
	elseif (option == PlaymateSex_OIDM)
		SetInfoText("$SLTR_PlaymateSex_INFO")
	elseif (option == PlaymateStrapOn_OID)
		SetInfoText("$SLTR_PlaymateStrapOn_INFO")
	elseif (option == SexWithPlaymateSatisfaction_OID)
		SetInfoText("$SLTR_SexWithPlaymateSatisfaction_INFO")
	elseif (option == PlaymatePunishesOID)
		SetInfoText("$SLTR_PlaymatePunishes_INFO")
	elseif (option == HairChangeMin_OID)
		SetInfoText("$SLTR_HairChangeMin_INFO")
	elseif (option == HairChangeMax_OID)
		SetInfoText("$SLTR_HairChangeMax_INFO")
	elseif option == v_HelpStart_OID
		SetInfoText("$SLTR_HelpStart_INFO")
	elseif option == v_HelpOwner_OID
		SetInfoText("$SLTR_HelpOwner_INFO")
	elseif option == v_HelpScore_OID
		SetInfoText("$SLTR_HelpScore_INFO")
	elseif option == v_HelpCollar_OID
		SetInfoText("$SLTR_HelpCollar_INFO")
	elseif option == v_HelpNaked_OID
		SetInfoText("$SLTR_HelpNaked_INFO")
	elseif option == v_HelpHair_OID
		SetInfoText("$SLTR_HelpHair_INFO")
	elseif option == v_HelpPause_OID
		SetInfoText("$SLTR_HelpPause_INFO")
	elseif option == v_HelpDismiss_OID
		SetInfoText("$SLTR_HelpDismiss_INFO")
	elseif option == v_HelpSS_OID
		SetInfoText("$SLTR_HelpSS_INFO")
	elseif option == v_HelpBuyer_OID
		SetInfoText("$SLTR_HelpBuyer_INFO")
	elseif option == v_HelpDaily_OID
		SetInfoText("$SLTR_HelpDaily_INFO")
	elseif option == v_HelpLootShare_OID
		SetInfoText("$SLTR_HelpLootShare_INFO")
	elseif option == v_HelpScene_OID
		SetInfoText("$SLTR_HelpScene_INFO")
	elseif option == v_HelpToyBox_OID
		SetInfoText("$SLTR_HelpToyBox_INFO")
	elseif option == v_HelpUninstall_OID
		SetInfoText("$SLTR_HelpUninstall_INFO")
	elseif option == v_UseZap8_OID
		SetInfoText("$SLTR_UseZap_INFO")
	elseif option == v_UseRadPro_OID
		SetInfoText("$SLTR_UseRadPro_INFO")
	elseif option == v_UseSS_OID
		SetInfoText("$SLTR_UseSS_INFO")
	elseif option == UseSluts_OID
		SetInfoText("$SLTR_UseSluts_INFO")
	elseif option == UseSlaveTats_OID
		SetInfoText("$SLTR_UseSlaveTats_INFO")
	elseif option == UseLoveSickness_OID
		SetInfoText("$SLTR_UseLoveSickness_INFO")
	elseif option == UseIWW_OID
		SetInfoText("$SLTR_UseIWW_INFO")
	endif
EndEvent

Event OnOptionSelect(int option)
	if option == v_StartQuest_OID
		if (QuestRunning())
			return
		endif
		Debug.MessageBox("Quest Started\n\nConfigure mod settings *before* enslaving yourself.  Some options like Contract Term cannot be changed while you're enslaved.\n\nExit the MCM menu now.")
		Utility.Wait(0.2)
		if (P.GetItemCount(LolaBook) < 1)
			P.AddItem(LolaBook,1) ;Add a copy of the Submissive Lola book to the player's inventory if she/he doesn't already have one.
		EndIf
		Utility.Wait(0.1)
		if StrongHand.GetStage() != 0
			StrongHand.Reset()
			StrongHand.SetStage(0)
		endif
		StrongHand.Start()
	elseif option == Export_OID
		SetTextOptionValue(Export_OID, "$SLTR_Working")
		if ExportSettings(exportFile)
			SetTextOptionValue(Export_OID, "$SLTR_Done")
		else
			SetTextOptionValue(Export_OID, "$SLTR_Failed")
		endif
	elseif option == Import_OID
		SetTextOptionValue(Import_OID, "$SLTR_Working")
		if ImportSettings(exportFile)
			SetTextOptionValue(Import_OID, "$SLTR_Done")
		else
			SetTextOptionValue(Import_OID, "$SLTR_Failed")
		endif
	elseif option == NudeMarker1_OID
		NudeMarker1.MoveTo(P)
		SetTextOptionValue(NudeMarker1_OID, "$SLTR_Done")
	elseif option == NudeMarker2_OID
		NudeMarker2.MoveTo(P)
		SetTextOptionValue(NudeMarker2_OID, "$SLTR_Done")
	elseif option == NudeMarker3_OID
		NudeMarker3.MoveTo(P)
		SetTextOptionValue(NudeMarker3_OID, "$SLTR_Done")
	elseif option == NudeOutfit_OID
		Armor anOutfit = P.GetWornForm(0x00000004) as Armor
		if anOutfit == none
			NudeOutfit = none
			HasNudeOutfit = false
			SetTextOptionValue(NudeOutfit_OID, "$SLTR_Click")
			Debug.MessageBox("Outfit cleared.\n\nYou will have to be naked while the rule is in effect.")
		elseif anOutfit.HasKeywordString("ArmorLight") || anOutfit.HasKeywordString("ArmorHeavy")
			Debug.MessageBox("Armor is not permitted.")
		;elseif !anOutfit.HasKeywordString("ClothingBody")
		;	Debug.MessageBox("The outfit must have the ClothingBody keyword.")
		else
			NudeOutfit = anOutfit
			HasNudeOutfit = true
			SetTextOptionValue(NudeOutfit_OID, NudeOutfit.GetName())
		endif
	elseif option == RZPoseInfo_OID
		Debug.MessageBox("To use these poses, RohZima's Animated Poser must be installed, but it need not be enabled.  This mod only needs the animations.\n\nFor a minimal installation, you can extract just the Meshes\\Actors folder from the poser mod into your Skyrim Data\\Meshes folder, then run FNIS.  (You can reduce that further by deleting all but the Fitness animations.)")
	elseif option == PreviewDance_OID
		SetTextOptionValue(PreviewDance_OID, "$SLTR_ExitTheMCM")
		P.PlayIdle(MQ.SelectDance())
	;elseif option == TDFInfo_OID
	;	Debug.MessageBox("To use these dances, TDF Prostitution must be installed, but it need not be enabled.  This mod only needs the animations.\n\nFor a minimal installation, you can extract just the Meshes folder from TDF Prostitution into your Skyrim Data folder, then run FNIS.")
	elseif option == v_ResetEventBlocking_OID
		string taskName = MQ.GetActiveTask()
		if taskName == ""
			MQ.SetBlockEvents(false)
			Debug.MessageBox("New events are now free to start.")		
		else
			Debug.MessageBox("Cannot do this, because the task \"" + taskName + "\" is active.")
		endif
	elseif option == RenewHairButton		
		vkjShaveHead qShaveHead = Quest.GetQuest("vkjShaveHead") as vkjShaveHead
		qShaveHead.Renew()
		Debug.MessageBox("Done.  Exit MCM now.")
	elseif option == DhlpResume_OID
		SendModEvent("dhlp-Resume")
		Debug.MessageBox("Done.")
	elseif option == v_NewCollar_OID
		if collars == (collarForm.GetSize())
			Debug.MessageBox("Select a collar type other than \"Random\"")
		;elseif P.WornHasKeyword(KwCollar)
		;	Debug.MessageBox("You're already wearing a collar.  If you want a different one, ask your owner.")
		else
			Armor curCollar = P.GetWornForm(0x00008000) as Armor
			if (curCollar.HasKeyword(zlib.zad_QuestItem))
				Debug.MessageBox("The collar is a quest item that cannot be removed")
			else
				Debug.MessageBox("Exit the MCM now")
				vkjDeviceControl devControl = (MQ as Quest) as vkjDeviceControl
				devControl.Device = collarForm.GetAt(collars) as Armor
				devControl.Swapout()
			endif
		endif
	elseif option == UpdateRunicGlowBtn
		SetTextOptionValue(UpdateRunicGlowBtn, "$SLTR_ExitTheMCM")
		MQ.UpdateRunicCircle("Reset")
	elseif option == RequiresRunicCollarBtn
		Debug.MessageBox("To use this feature, you must install the optional Runic Collar download file for this mod OR install the Runic Collar mod (at least its meshes and textures) from www.loverslab.com/files/file/24974-runic-collar.")
	elseif option == v_NewGag_OID
		if gags == (gagForm.GetSize())
			Debug.MessageBox("Please select a gag type other than \"Random\"")
		else
			Armor curGag = P.GetWornForm(0x00004000) as Armor
			if (curGag.HasKeyword(zlib.zad_QuestItem))
				Debug.MessageBox("The gag is a quest item that cannot be removed")
			else
				Debug.MessageBox("Exit the MCM now")
				vkjDeviceControl devControl = GaggedQuest as vkjDeviceControl
				devControl.Device = gagForm.GetAt(gags) as Armor
				devControl.Swapout()
			endif
		endif
	elseif option == v_NewBook_OID
		SetTextOptionValue(v_NewBook_OID, "$SLTR_NewBookAdded")
		SetOptionFlags(v_NewBook_OID, OPTION_FLAG_DISABLED)
		P.AddItem(LolaBook, 1)
	elseif option == v_SoftMods_OID
		recheck_softmods()
		UpdatedModList = true
		ForcePageReset()
		;Debug.MessageBox("Mod list updated")
	;elseif option == v_CollarWorkClothes_OID
	;	if !P.WornHasKeyword(collarK[0]) && !P.WornHasKeyword(collarK[1])
	;		Debug.MessageBox("No collar detected.")
	;	else
	;		Armor myCollar = P.GetWornForm(0x00008000) as Armor
	;		vkjRadProInt.AddWorkingClothes(RadProQuest, myCollar)
	;		Debug.MessageBox("Collar registered.\n\nYou will have to use this option again if you change collars.\n\nDevious Devices collars will show as blank items in Radiant Prostitution's working clothes list.")
	;	endif
	elseif option == AddHairStyle_OID
		AddHairStyle()
		ForcePageReset()
	elseif option == ThoughtsTest_OID
		SetTextOptionValue(ThoughtsTest_OID, "$SLTR_ExitTheMCM")
		Utility.Wait(1); longer than 0.1 to allow time for vkjMessageFormat to initialize, if needed
		MQ.DisplayThought()
	elseif option == v_MoveDom_OID
		MQ.MoveNpcToPlayer(MQ.OwnerRef, 75, 60, 180)
		SetTextOptionValue(v_MoveDom_OID, "$SLTR_ExitTheMCM")
	elseif option == v_ResetDailyUpdate_OID
		MQ.ResetDailyUpdate()
		Debug.MessageBox("Daily updates will now occur at this time of day.")
	elseif option == v_NewOwner_OID
		if MQ.SuspendAll
			Debug.MessageBox("Not permitted while \"Suspend all events\" is active")
		elseif !TargetActor.IsInFaction(CurrentFollowerFaction)
			Debug.MessageBox("You must select a current follower\n(must be in Current Follower faction).")
		elseif MQ.OwnerRef.GetFormID() == TargetActor.GetFormID()
			Debug.MessageBox("Select a follower who is NOT already your owner.")
		elseif !TargetActor.HasKeyword(KwActorTypeNPC)
			Debug.MessageBox("Seriously?  A creature cannot be your owner.")
		else
			string newOwnerName = TargetActor.GetActorBase().GetName()
			string oldOwnerName = MQ.OwnerRef.GetActorBase().GetName()
			if ShowMessage("Do you want " + newOwnerName + " to immediately become your new owner?\n\nAny active quests that " + oldOwnerName + " gave you must be completed by talking to " + MQ.OwnerPronounObj() + ", NOT to " + newOwnerName + ".")
				string lolaJob = MQ.GetActiveTask()
				if lolaJob != ""
					if !ShowMessage("The short-term event " + lolaJob + " is active.  Even if you change owners, you still must complete this task with " + oldOwnerName + ".\n\nDo you still want to change owners?")
						return
					endif
				endif
				lolaJob = MQ.GetActiveQuest()
				if lolaJob != ""
					if !ShowMessage("The long-term quest " + lolaJob + " is active.  Even if you change owners, you must complete this quest with " + oldOwnerName + ", so you will have to return to " + MQ.OwnerPronounObj() + " to complete it.  (You might also have other long-term quests to complete with " + oldOwnerName + ".)  Are you SURE that want to change owners?")
						return
					endif
				endif
				bool transferItems = ShowMessage("Do you want to transfer all gold, keys, and lockpicks from " + oldOwnerName + " to " + newOwnerName + "?")
				; Check playmate status
				Actor newPlaymate
				bool changePlaymate = false
				if ShowMessage("Do you want " + oldOwnerName + " to become your \"playmate\"?")
					newPlaymate = MQ.OwnerRef
					changePlaymate = true
				elseif TargetActor == MQ.PlaymateRef
					Debug.MessageBox(newOwnerName + " is no longer your playmate.")
					newPlaymate = none
					changePlaymate = true
				endif
				Debug.MessageBox("Exit the MCM now")
				MQ.SwitchOwner(TargetActor, transferItems)
				if changePlaymate
					MQ.SetPlaymate(newPlaymate)
				endif
			endif
		endif
	elseif option == v_SelectBuyer_OID
		if TargetActor.IsInFaction(PotentialFollowerFaction)
			AddBuyer(TargetActor)
			ForcePageReset()
		else
			Debug.MessageBox("Select a valid potential follower\n(must be in Potential Follower faction).")
		endif
	elseif option == ValidateBuyers_OID
		SetTextOptionValue(ValidateBuyers_OID, "$SLTR_Working")
		if ValidateBuyers()
			SetTextOptionValue(ValidateBuyers_OID, "$SLTR_Done")
		else
			ForcePageReset()
		endif
	elseif option == Playmate_OID
		if MQ.PlaymateRef != none
			if ShowMessage(MQ.PlaymateRef.GetActorBase().GetName() + " will no longer be your playmate.  Is that what you want?")
				MQ.SetPlaymate(none)
				SetTextOptionValue(Playmate_OID, "$SLTR_None")
			endif
		endif
	elseif option == SelectPlaymate_OID
		if !TargetActor.IsInFaction(CurrentFollowerFaction)
			Debug.MessageBox("Select a valid current follower\n(must be in Current Follower faction).")
		elseif TargetActor == MQ.OwnerRef
			Debug.MessageBox("Your owner cannot also be your playmate.")
		elseif (TargetActor == MQ.PlaymateRef) && (MQ.PlaymateRef != none)
			Debug.MessageBox(TargetActor.GetActorBase().GetName() + " is already your playmate.  If you're trying to clear the playmate selection, click the line above, the one showing your selected playmate.")
		elseif !TargetActor.HasKeyword(KwActorTypeNPC)
			Debug.MessageBox("Okay, you really like animals, but a creature cannot be your playmate.")
		else
			SetTextOptionValue(Playmate_OID, TargetActor.GetActorBase().GetName())
			Debug.MessageBox("Exit the MCM now")
			MQ.SetPlaymate(TargetActor)
		endif
	elseif option == PMOutfit_OID
		Armor anOutfit = P.GetWornForm(0x00000004) as Armor
		if anOutfit == none
			PMOutfit = none
			HasPMOutfit = false
			SetTextOptionValue(PMOutfit_OID, "$SLTR_Click")
			Debug.MessageBox("Outfit cleared.\n\nPlaymate will be naked while in nude rule areas.")
		elseif anOutfit.HasKeywordString("ArmorLight") || anOutfit.HasKeywordString("ArmorHeavy")
			Debug.MessageBox("Armor is not permitted.")
		else
			PMOutfit = anOutfit
			HasPMOutfit = true
			SetTextOptionValue(PMOutfit_OID, PMOutfit.GetName())
		endif
	elseif option == PMBoots_OID
		Armor anOutfit = P.GetWornForm(0x00000080) as Armor
		if anOutfit == none
			PMBoots = none
			HasPMBoots = false
			SetTextOptionValue(PMBoots_OID, "$SLTR_Click")
			Debug.MessageBox("Footwear cleared.\n\nPlaymate will go barefoot while in nude rule areas.")
		elseif anOutfit.HasKeywordString("ArmorLight") || anOutfit.HasKeywordString("ArmorHeavy")
			Debug.MessageBox("Armor is not permitted.")
		else
			PMBoots = anOutfit
			HasPMBoots = true
			SetTextOptionValue(PMBoots_OID, PMBoots.GetName())
		endif
	elseif option == v_LockCheat_OID
		if !v_LockCheat
			If ShowMessage("Do you want to lock these options so that you will never be able to turn them off?.  You can still turn on any options that are not yet enabled, but if this lock is engaged then if you later turn them on then they will be locked on after you navigate away from the page.\n\nProceed?")
				v_LockCheat = true
				ForcePageReset()
			endif
		endif
	elseif option == v_IncreasePayment_OID
		GlobalDailyGold.SetValue(GlobalDailyGold.GetValue() + 100)
		SetTextOptionValue(v_NextPayment_OID, (GlobalDailyGold.GetValue() as int))
	elseif option == StopVib_OID
		MQ.zlib.StopVibrating(P)
		Debug.MessageBox("Exit the MCM now.\nAnimations might not stop immediately.")
	elseif option == LoadInscription_OID
		if MQ.LoadInscription()
			SetTextOptionValue(LoadInscription_OID, "$SLTR_Done")
		else
			SetTextOptionValue(LoadInscription_OID, "$SLTR_Failed")
		endif
	endif
EndEvent

bool Function QuestRunning()
	return StrongHand.IsRunning() || MainQuest.IsRunning()
EndFunction

;==========================================================================================================================================
; Boolean Toggles
;==========================================================================================================================================

state st_NickNameMode
	event onselectst()
		NickNameMode = !NickNameMode
		SetToggleOptionValueST(NickNameMode)
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_NickNameMode_INFO")
	endevent
endstate

state st_ClothesOnly
	event onselectst()
		ClothesOnly = !ClothesOnly
		SetToggleOptionValueST(ClothesOnly)
		renewNudeLists = true
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_ClothesOnly_INFO")
	endevent
endstate

state st_StripOnNudeP
	event onselectst()
		StripOnNudeP = !StripOnNudeP
		SetToggleOptionValueST(StripOnNudeP)
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_StripOnNudeP_INFO")
	endevent
endstate

state st_collarBuffs
	event onselectst()
		collarBuffs = !collarBuffs
		SetToggleOptionValueST(collarBuffs)

		if MainQuest.IsRunning()
			if collarBuffs
				P.AddSpell(MQ.UnarmedDamageBuff, false)
			else
				P.RemoveSpell(MQ.UnarmedDamageBuff)
			endif
		endif
	endevent
	
	event onhighlightst()
		SetInfoText("$SLTR_collarBuffs_INFO")
	endevent
endstate

state st_AllowBuffs
	event onselectst()
		AllowBuffs = !AllowBuffs
		SetToggleOptionValueST(AllowBuffs)

		if MainQuest.IsRunning()
			MQ.UpdateSubmissionEffects(MQ.GlobalSubmissionScore.GetValue())
		endif
	endevent
	
	event onhighlightst()
		SetInfoText("$SLTR_Buffs_INFO")
	endevent
endstate

state st_noMoreP
	event onselectst()
		NoMoreP = !NoMoreP
		SetToggleOptionValueST(NoMoreP)
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_noMoreP_INFO")
	endevent
endstate
event noMorePToggle(); Used by vkj_zNoMorePDialog
	noMoreP = true
endevent

state st_PlaymateCopiesNude
	event onselectst()
		PlaymateCopiesNude = !PlaymateCopiesNude
		SetToggleOptionValueST(PlaymateCopiesNude)
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_PlaymateCopiesNude_INFO")
	endevent
endstate

state st_combatMercy
	event onselectst()
		combatMercy = !combatMercy
		SetToggleOptionValueST(combatMercy)
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_combatMercy_INFO")
	endevent
endstate

state st_noDragonMercy
	event onselectst()
		noDragonMercy = !noDragonMercy
		SetToggleOptionValueST(noDragonMercy)
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_NoDragonMercy_INFO")
	endevent
endstate

state st_denyMasturbation
	event onselectst()
		denyMasturbation = !denyMasturbation
		SetToggleOptionValueST(denyMasturbation)
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_denyMasturbation_INFO")
	endevent
endstate

state st_KeptForever

	event onselectst()
		KeptForever = !KeptForever
		SetToggleOptionValueST(KeptForever)
		if KeptForever
			Debug.MessageBox("WARNING\nIf you leave this option enabled, then when your submission score reaches the value for \"Kept Beyond This Submission Score\", your owner will keep you FOREVER.  PERMANENTLY.  Do NOT activate this unless you want to become a LIFELONG slave to your owner.  There is no \"Free Me\" option if you change your mind.")
		endif
	endevent
	
	event onhighlightst()
		SetInfoText("$SLTR_KeptForever_INFO")
	endevent
endstate

state st_NoZazEnslave
	event onselectst()
		NoZazEnslave = !NoZazEnslave
		SetToggleOptionValueST(NoZazEnslave)
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_NoZazEnslave_INFO")
	endevent
endstate

state st_mustUnburden
	event onselectst()
		mustUnburden = !mustUnburden
		SetToggleOptionValueST(mustUnburden)
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_mustUnburden_INFO")
	endevent
endstate

state st_usePiercings
	event onselectst()
		usePiercings = !usePiercings
		SetToggleOptionValueST(usePiercings)
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_usePiercings_INFO")
	endevent
endstate
event endPiercings()
	usePiercings = false
endevent

state st_KneelFix
	event onselectst()
		kneelFix = !kneelFix
		SetToggleOptionValueST(kneelFix)
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_KneelFix_INFO")
	endevent
endstate

state st_KneelUnequipArrows
	event onselectst()
		KneelUnequipArrows = !KneelUnequipArrows
		SetToggleOptionValueST(KneelUnequipArrows)
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_UnequipArrows_INFO")
	endevent
endstate

state st_UseAlternateKneel
	event onselectst()
		UseAlternateKneel = !UseAlternateKneel
		SetToggleOptionValueST(UseAlternateKneel)
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_UseAlternateKneel_INFO")
	endevent
endstate

state st_RZRewardWhipping
	event onselectst()
		UseRZRewardWhipping = !UseRZRewardWhipping
		SetToggleOptionValueST(UseRZRewardWhipping)
		UpdateRewardWhippingPoses()
		
		if UseRZRewardWhipping
			if ShowMessage("Do you want to see these poses?")
				Debug.MessageBox("Exit the MCM")
				Utility.Wait(1)
				DisplayWhippingPosesRewardRZ()
			endif
		endif
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_RZRewardWhipping_INFO")
	endevent
endstate

state st_allowMotivation
	event onselectst()
		AllowMotivation = !AllowMotivation
		SetToggleOptionValueST(AllowMotivation)
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_allowMotivation_INFO")
	endevent
endstate

state st_CookingPots
	event onselectst()
		EnableCookingPots = !EnableCookingPots
		SetToggleOptionValueST(EnableCookingPots)
		if EnableCookingPots
			CookingPotActivator.Enable()
		else
			CookingPotActivator.Disable()
		endif
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_CookingPots_INFO")
	endevent
endstate

state st_SuspendAll
	event onselectst()
		if !MQ.SuspendAll; We are trying to suspend events
			string lolaTask = MQ.GetActiveTask()
			if lolaTask != ""
				Debug.MessageBox("Not permitted if you have any short-term events active.  You must finish " + lolaTask + ".")
			elseif MQ.BlockEvents
				Debug.MessageBox("Not permitted while event blocking is active.  You should not be seeing this message.  Possibly the developer forgot to add a quest to vkjTaskList, or a quest completed abnormally without resetting BlockEvents.\n\nIf you are sure that there are no short-term quests that you should complete, use the Unblock Events button on this page, then try this again.")
			else
				MQ.SuspendAll(true)
			endif
		else
			MQ.SuspendAll(false)
		endif
		SetToggleOptionValueST(MQ.SuspendAll)
	endevent
	
	event onhighlightst()
		SetInfoText("$SLTR_SuspendAll_INFO")
	endevent
endstate

state st_AllowSexDuringSuspend
	event onselectst()
		AllowSexDuringSuspend = !AllowSexDuringSuspend
		SetToggleOptionValueST(AllowSexDuringSuspend)
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_AllowSexDuringSuspend_INFO")
	endevent
endstate

state st_NoSwipingGold
	event onselectst()
		NoSwipingGold = !NoSwipingGold
		SetToggleOptionValueST(NoSwipingGold)
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_NoSwipingGold_INFO")
	endevent
endstate

state st_NoSpendingGold
	event onselectst()
		NoSpendingGold = !NoSpendingGold
		SetToggleOptionValueST(NoSpendingGold)
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_NoSpendingGold_INFO")
	endevent
endstate

state st_NoSwipingKeys
	event onselectst()
		NoSwipingKeys = !NoSwipingKeys
		SetToggleOptionValueST(NoSwipingKeys)
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_NoSwipingKeys_INFO")
	endevent
endstate

state st_NoChangingKeptBelow
	event onselectst()
		NoChangingKeptBelow = !NoChangingKeptBelow
		SetToggleOptionValueST(NoChangingKeptBelow)
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_NoChangingKeptBelow_INFO")
	endevent
endstate

state st_NoChangingSubRate
	event onselectst()
		NoChangingSubRate = !NoChangingSubRate
		SetToggleOptionValueST(NoChangingSubRate)
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_NoChangingSubRate_INFO")
	endevent
endstate

state st_NoDismissing
	event onselectst()
		NoDismissing = !NoDismissing
		SetToggleOptionValueST(NoDismissing)
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_NoDismissing_INFO")
	endevent
endstate

state st_RestrictAllowance
	event onselectst()
		RestrictAllowance = !RestrictAllowance
		SetToggleOptionValueST(RestrictAllowance)
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_RestrictAllowance_INFO")
	endevent
endstate

state st_AutoAdjustGoldShare
	event onselectst()
		AutoAdjustGoldShare = !AutoAdjustGoldShare
		SetToggleOptionValueST(AutoAdjustGoldShare)
		
		if AutoAdjustGoldShare
			RecalcAndUpdateOwnerGoldShare()
		else
			OwnerGoldShare = 0
		endif
		ForcePageReset()
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_AutoAdjustGoldShare_INFO")
	endevent
endstate

state st_PoorOwnerTakesGold
	event onselectst()
		PoorOwnerTakesGold = !PoorOwnerTakesGold
		SetToggleOptionValueST(PoorOwnerTakesGold)
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_PoorOwnerTakesGold_INFO")
	endevent
endstate

state st_PoorOwnerForcesProst
	event onselectst()
		PoorOwnerForcesProst = !PoorOwnerForcesProst
		SetToggleOptionValueST(PoorOwnerForcesProst)
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_PoorOwnerForcesProst_INFO")
	endevent
endstate

state st_PoorOwnerForcesReturn
	event onselectst()
		PoorOwnerForcesReturn = !PoorOwnerForcesReturn
		SetToggleOptionValueST(PoorOwnerForcesReturn)
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_PoorOwnerForcesReturn_INFO")
	endevent
endstate

state st_OwnerRoomRental
	event onselectst()
		OwnerRoomRental = !OwnerRoomRental
		SetToggleOptionValueST(OwnerRoomRental)
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_OwnerRoomRental_INFO")
	endevent
endstate

state st_OwnerTakesKeys
	event onselectst()
		OwnerTakesKeys = !OwnerTakesKeys
		SetToggleOptionValueST(OwnerTakesKeys)
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_OwnerTakesKeys_INFO")
	endevent
endstate

state st_UseCombatPotions
	event onselectst()
		UseCombatPotions = !UseCombatPotions
		SetToggleOptionValueST(UseCombatPotions)
		UseCombatPotionsChanged()
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_UseCombatPotions_INFO")
	endevent
endstate

state st_ExtendedEyeCandy
	event onselectst()
		ExtendedEyeCandy = !ExtendedEyeCandy
		SetToggleOptionValueST(ExtendedEyeCandy)
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_ExtendedEyeCandy_INFO")
	endevent
endstate

state st_PunishFriendlyFire
	event onselectst()
		PunishFriendlyFire = !PunishFriendlyFire
		SetToggleOptionValueST(PunishFriendlyFire)
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_PunishFriendlyFire_INFO")
	endevent
endstate

state st_UseRedGlow
	event onselectst()
		UseRedGlow = !UseRedGlow
		SetToggleOptionValueST(UseRedGlow)
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_UseRedGlow_INFO")
	endevent
endstate

state st_GentleRewardWhipping
	event onselectst()
		GentleRewardWhipping = !GentleRewardWhipping
		SetToggleOptionValueST(GentleRewardWhipping)
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_GentleRewardWhipping_INFO")
	endevent
endstate

state st_BlindfoldFun
	event onselectst()
		BlindfoldFun = !BlindfoldFun
		SetToggleOptionValueST(BlindfoldFun)
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_BlindfoldFun_INFO")
	endevent
endstate

state st_PonyPrance
	event onselectst()
		PonyPrance = !PonyPrance
		SetToggleOptionValueST(PonyPrance)
		if (Quest.GetQuest("vkjPonyExpress")).IsRunning()
			UpdatePonyCuffs()
		endif
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_PonyPrance_INFO")
	endevent
endstate

state st_AddKneelSpell
	event onselectst()
		AddKneelSpell = !AddKneelSpell
		SetToggleOptionValueST(AddKneelSpell)
		if AddKneelSpell
			P.AddSpell(KneelSpell)
		else
			P.RemoveSpell(KneelSpell)
		endif
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_AddKneelSpell_INFO")
	endevent
endstate

state st_ScaleScoreDecay
	event onselectst()
		ScaleScoreDecay = !ScaleScoreDecay
		SetToggleOptionValueST(ScaleScoreDecay)
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_ScaleScoreDecay_INFO")
	endevent
endstate

state st_MakeRadProPimp
	event onselectst()
		OwnerIsRadProPimp = !OwnerIsRadProPimp
		SetToggleOptionValueST(OwnerIsRadProPimp)
		MQ.MakeOwnerRadProPimp(OwnerIsRadProPimp)
		if OwnerIsRadProPimp && !ShowedRadProPimpMsg
			ShowedRadProPimpMsg = true
			Debug.MessageBox("Your owner can now be your pimp.\n\nIf you use gold sharing, after the forced prostitution event you should first use the pimp dialog to end your prostitution work, THEN tell your owner that you finished the quest.")	
		endif
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_MakeRadProPimp_INFO")
	endevent
endstate

state st_UseTearTats
	event onselectst()
		if UseTearTats && (MQ.HighestTearsLevel() > 0)
			if !ShowMessage("Any tears will be removed.  Do you want to do this?")
				return
			endif
			SetToggleOptionValueST(false)
			Debug.MessageBox("Exit the MCM now")
			Utility.Wait(0.1)
			MQ.NoMoreTears(true)
			return
		endif

		UseTearTats = !UseTearTats
		SetToggleOptionValueST(UseTearTats)
		SetOptionFlags(SlaveTatAlpha_OID, EnabledFor(UseTearTats))
		
		if UseTearTats
			MQ.InitActiveTears()
		endif
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_UseTearTats_INFO")
	endevent
endstate

state st_NymphoNotWhore
	event onselectst()
		NymphoNotWhore = !NymphoNotWhore
		SetToggleOptionValueST(NymphoNotWhore)
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_NymphoNotWhore_INFO")
	endevent
endstate

state st_ServiceInnkeeper
	event onselectst()
		ServiceInnkeeper = !ServiceInnkeeper
		SetToggleOptionValueST(ServiceInnkeeper)
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_ServiceInnkeeper_INFO")
	endevent
endstate

state st_ProstPayMode
	event onselectst()
		ProstPayMode = !ProstPayMode
		SetToggleOptionValueST(ProstPayMode)
		
		if ProstPayMode
			oldMinClients = v_minclients
			oldRandClients = v_randclients
			v_minclients = oldMinPay
			v_randclients = oldRandPay
		else
			oldMinPay = v_minclients
			oldRandPay = v_randclients
			v_minclients = oldMinClients
			v_randclients = oldRandClients
		endif

		ForcePageReset()
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_ProstPayMode_INFO")
	endevent
endstate

state st_ProstIgnoreArousal
	event onselectst()
		ProstIgnoreArousal = !ProstIgnoreArousal
		SetToggleOptionValueST(ProstIgnoreArousal)
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_ProstIgnoreArousal_INFO")
	endevent
endstate

state st_DragonVib
	event onselectst()
		DragonVib = !DragonVib
		SetToggleOptionValueST(DragonVib)
		if DragonVib
			P.AddSpell(DragonDeathSpell, false)
		else
			P.RemoveSpell(DragonDeathSpell)
		endif
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_DragonVib_INFO")
	endevent
endstate

state st_NoBeastRaces
	event onselectst()
		NoBeastRaces = !NoBeastRaces
		SetToggleOptionValueST(NoBeastRaces)
		if NoBeastRaces
			P.AddSpell(DragonDeathSpell, false)
		else
			P.RemoveSpell(DragonDeathSpell)
		endif
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_NoBeastRaces_INFO")
	endevent
endstate

state st_ShareAllGold
	event onselectst()
		ShareAllGold = !ShareAllGold
		SetToggleOptionValueST(ShareAllGold)
	endevent

	event onhighlightst()
		SetInfoText("$SLTR_ShareAllGold_INFO")
	endevent
endstate

state st_StopDancingWipeBrow
	event onselectst()
		StopDancingWipeBrow = !StopDancingWipeBrow
		SetToggleOptionValueST(StopDancingWipeBrow)
	endevent
	event onhighlightst()
		SetInfoText("$SLTR_StopDancingWipeBrow_INFO")
	endevent
endstate

state st_DanceBelly
	event onselectst()
		DanceBelly = !DanceBelly
		SetToggleOptionValueST(DanceBelly)
	endevent
endstate

state st_DanceFunky
	event onselectst()
		DanceFunky = !DanceFunky
		SetToggleOptionValueST(DanceFunky)
	endevent
endstate

state st_DanceGroove
	event onselectst()
		DanceGroove = !DanceGroove
		SetToggleOptionValueST(DanceGroove)
	endevent
endstate

state st_DanceSephyDisco
	event onselectst()
		DanceSephyDisco = !DanceSephyDisco
		SetToggleOptionValueST(DanceSephyDisco)
	endevent
endstate

state st_DanceSexy
	event onselectst()
		DanceSexy = !DanceSexy
		SetToggleOptionValueST(DanceSexy)
	endevent
endstate

state st_DanceSexyAJ
	event onselectst()
		DanceSexyAJ = !DanceSexyAJ
		SetToggleOptionValueST(DanceSexyAJ)
	endevent
endstate

state st_DanceShakeAss
	event onselectst()
		DanceShakeAss = !DanceShakeAss
		SetToggleOptionValueST(DanceShakeAss)
	endevent
endstate

state st_DanceSnake
	event onselectst()
		DanceSnake = !DanceSnake
		SetToggleOptionValueST(DanceSnake)
	endevent
	event onhighlightst()
		SetInfoText("$SLTR_DanceSnake_INFO")
	endevent
endstate

state st_DanceBoPeep
	event onselectst()
		DanceBoPeep = !DanceBoPeep
		SetToggleOptionValueST(DanceBoPeep)
	endevent
	event onhighlightst()
		SetInfoText("$SLTR_DanceBoPeep_INFO")
	endevent
endstate

state st_DanceCyberThunderCider
	event onselectst()
		DanceCyberThunderCider = !DanceCyberThunderCider
		SetToggleOptionValueST(DanceCyberThunderCider)
	endevent
endstate

state st_DanceDoubleLariat
	event onselectst()
		DanceDoubleLariat = !DanceDoubleLariat
		SetToggleOptionValueST(DanceDoubleLariat)
	endevent
endstate

state st_DanceEvenEvenEven
	event onselectst()
		DanceEvenEvenEven = !DanceEvenEvenEven
		SetToggleOptionValueST(DanceEvenEvenEven)
	endevent
	event onhighlightst()
		SetInfoText("$SLTR_DanceEvenEvenEven_INFO")
	endevent
endstate

state st_DanceGalaxias
	event onselectst()
		DanceGalaxias = !DanceGalaxias
		SetToggleOptionValueST(DanceGalaxias)
	endevent
	event onhighlightst()
		SetInfoText("$SLTR_DanceGalaxias_INFO")
	endevent
endstate

state st_DanceHurlyBurly
	event onselectst()
		DanceHurlyBurly = !DanceHurlyBurly
		SetToggleOptionValueST(DanceHurlyBurly)
	endevent
	event onhighlightst()
		SetInfoText("$SLTR_DanceHurlyBurly_INFO")
	endevent
endstate

state st_DanceKissMe
	event onselectst()
		DanceKissMe = !DanceKissMe
		SetToggleOptionValueST(DanceKissMe)
	endevent
endstate

state st_DanceLilyLilyBurningNight
	event onselectst()
		DanceLilyLilyBurningNight = !DanceLilyLilyBurningNight
		SetToggleOptionValueST(DanceLilyLilyBurningNight)
	endevent
endstate

state st_DanceMassaraBlueJeans
	event onselectst()
		DanceMassaraBlueJeans = !DanceMassaraBlueJeans
		SetToggleOptionValueST(DanceMassaraBlueJeans)
	endevent
	event onhighlightst()
		SetInfoText("$SLTR_DanceGalaxias_INFO")
	endevent
endstate

state st_DanceMeguMeguFire
	event onselectst()
		DanceMeguMeguFire = !DanceMeguMeguFire
		SetToggleOptionValueST(DanceMeguMeguFire)
	endevent
endstate

state st_DanceMosaicRoll
	event onselectst()
		DanceMosaicRoll = !DanceMosaicRoll
		SetToggleOptionValueST(DanceMosaicRoll)
	endevent
endstate

state st_DanceSweetDevil
	event onselectst()
		DanceSweetDevil = !DanceSweetDevil
		SetToggleOptionValueST(DanceSweetDevil)
	endevent
endstate

;==========================================================================================================================================
; Input Toggles
;==========================================================================================================================================
state inp_OwnerTitle
	event OnInputAcceptST(string str)
		if str == ""
			Debug.MessageBox("You must enter a value for the new title.")
			return
		endif
		SetInputOptionValueST(str)
		MQ.ChangeOwnerTitle(str)
	endEvent
	
	event OnHighlightST()
		SetInfoText("$SLTR_OwnerTitle_INFO")
	endEvent
endState

state inp_OwnerTitleAlt
	event OnInputAcceptST(string str)
		; Allow an empty string, which clears the alternate title
		SetInputOptionValueST(str)
		MQ.ChangeOwnerTitleAlt(str)
	endEvent
	
	event OnHighlightST()
		SetInfoText("$SLTR_OwnerTitleAlt_INFO")
	endEvent
endState

state inp_WhatIWantToHear
	event OnInputOpenST()
		SetInputDialogStartText(WhatIWantToHear)
	endEvent

	event OnInputAcceptST(string str)
		if str == ""
			Debug.MessageBox("You must enter a value.")
			return
		endif
		WhatIWantToHear = str
	endEvent
	
	event OnHighlightST()
		SetInfoText("$SLTR_WhatIWantToHear_INFO")
	endEvent
endState

state inp_KneelUnequip
	event OnInputOpenST()
		if KneelUnequipSlots != "$SLTR_None"
			SetInputDialogStartText(KneelUnequipSlots)
		endif
	endEvent

	event OnInputAcceptST(string str)
		if str == ""
			MQ.SetSlotsToUnequipOnKneel(none)
			KneelUnequipSlots = "$SLTR_None"
		else
			bool isValid = SetUnequipOnKneel(str)
			if isValid
				KneelUnequipSlots = str
			endif
		endif
		
		SetInputOptionValueST(KneelUnequipSlots)
	endEvent
	
	event OnHighlightST()
		SetInfoText("$SLTR_KneelUnequip_INFO")
	endEvent
endState

; This is a developer TEST function
state st_TestDFC
	event onselectst()
		if CrosshairTarget == none
			Debug.MessageBox("No crosshair targeted actor")
			return
		endif
		int handle = ModEvent.Create("SLTR DF Entry")
		ModEvent.PushForm(handle, CrosshairTarget)
		ModEvent.PushInt(handle, 7)
		ModEvent.PushInt(handle, 50)
		ModEvent.PushForm(handle, collarForm.GetAt(collars))
		ModEvent.PushForm(handle, none)
		ModEvent.PushForm(handle, none)
		ModEvent.PushForm(handle, none)
		ModEvent.Send(handle)
	endevent

	event onhighlightst()
		SetInfoText("Test sending \"SLTR DF Entry\" event.")
	endevent
endstate

;==========================================================================================================================================
; Events and Functions
;==========================================================================================================================================

Event OnConfigClose()
	CrosshairTarget = none
	TargetActor = none

	if renewNudeLists
		Utility.Wait(0.5)
		renewNudeLists = false
		if ArmorRestriction.IsRunning()
			vkjArmorR.UpdateKeyWords()
		endif
	endif
EndEvent

bool Function CheckDDVersion()
	return zlib.GetVersion() >= 14
EndFunction

bool Function CheckPapyrusVersion()
	int ver
	ver = PapyrusUtil.GetVersion()
	if ver < 33
		Debug.MessageBox("Warning\n\nPapyrusUtil DLL version " + ver + " is older than 3.3")
		return false
	else
		ver = 0
		ver = PapyrusUtil.GetScriptVersion()
		if ver < 33
			Debug.MessageBox("Warning\n\nPapyrusUtil script version " + ver + " is older than 3.3")
			return false
		endif
	endif
	return true
EndFunction

int Function EnabledFor(bool flag)
	if flag
		return OPTION_FLAG_NONE
	endif
	return OPTION_FLAG_DISABLED
EndFunction

int Function VisibleFor(bool flag)
	if flag
		return OPTION_FLAG_NONE
	endif
	return OPTION_FLAG_HIDDEN
EndFunction

int function GetArousalThreshold()
	return GlobalArousalThreshold.GetValue() as int
endfunction

Function RecalcOwnerGoldShare()
	int playerShare
	if GoldShareScoreMult >= 0
		playerShare = (MQ.GetSubmissionScore() * GoldShareScoreMult / 100) as int + GoldShareExtra
	else
		;Share decreases as score increases: (100 - score)% * ABS(multiplier) + extra
		playerShare = (((100.0 - MQ.GetSubmissionScore()) / 100.0) * (-1 * GoldShareScoreMult)) as int + GoldShareExtra
	endif
	
	if playerShare < 0
		playerShare = 0
	elseif playerShare > 100
		playerShare = 100
	endif
	OwnerGoldShare = 100 - playerShare
EndFunction

Function RecalcAndUpdateOwnerGoldShare()
	RecalcOwnerGoldShare()
	SetSliderOptionValue(v_OwnerGoldShare_OID, OwnerGoldShare, "{0}%")
EndFunction

; Called from MQ whenever the player's score changes
Function ScoreChanged()
	if AutoAdjustGoldShare
		RecalcOwnerGoldShare()
	endif
	float score = MQ.GetSubmissionScore()
	if score >= 100.0
		CheckHighScoreAchievement()
	elseif score <= -15.0
		CheckLowScoreAchievement()
	endif
EndFunction

string Function GetTimeAsString(float time)
	if time == 0.0
		return "--:--"
	endif
	float hour = (time - Math.Floor(time)) * 24
	int minutes = ((hour - Math.Floor(hour)) * 60) as int
	string minutesStr = minutes as string
	if minutes < 10
		minutesStr = "0" + minutesStr
	endif
	return (Math.Floor(hour) as string) + ":" + minutesStr
EndFunction

int Function GetWhoAsksOption()
	if PlayerAsks && FollowerAsks
		return 2; Either
	elseif PlayerAsks
		return 0
	elseif FollowerAsks
		return 1
	endif
	; (Legacy) Neither was selected.  Force PlayerAsks on.
	PlayerAsks = true
	return 0
EndFunction

Function SetWhoAsksOption(int index)
	if index == 0
		PlayerAsks = true
		FollowerAsks = false
	elseif index == 1
		PlayerAsks = false
		FollowerAsks = true
	else
		PlayerAsks = true
		FollowerAsks = true	
	endif
EndFunction

; This now checks whether the PC is transformed into either werewolf or vampire lord form
bool function pWereWolf()
	return (P.GetRace() == werewolfRace) || (P.GetRace() == VampireLordRace)
endfunction

Function ResetContract()
	_Contract = 0
EndFunction

Function SetNextWhore()
	NextWhore.SetValue(Utility.GetCurrentGameTime() + NextWhoreCD)
EndFunction

Function SetNextBardPlay()
	NextBardPlay.SetValue(Utility.GetCurrentGameTime() + GetCooldownValue(NextBardPlayCD))
EndFunction

Function SetNextBringGold()
	NextBringGold.SetValue(Utility.GetCurrentGameTime() + GetCooldownValue(NextBringGoldCD))
EndFunction

Function SetNextConfession()
	NextConfession.SetValue(Utility.GetCurrentGameTime() + GetCooldownValue(NextConfessionCD))
EndFunction

Function SetNextFamous()
	NextFamous.SetValue(Utility.GetCurrentGameTime() + GetCooldownValue(NextFamousCD))
EndFunction

Function SetNextFindTreasure()
	NextFindTreasure.SetValue(Utility.GetCurrentGameTime() + GetCooldownValue(NextFindTreasureCD))
EndFunction

Function SetNextHairChange()
	NextHairChange.SetValue(Utility.GetCurrentGameTime() + GetCooldownValue(NextHairChangeCD))
EndFunction

Function SetNextLightsOut()
	NextLightsOut.SetValue(Utility.GetCurrentGameTime() + GetCooldownValue(NextLightsOutCD))
EndFunction

Function SetNextPonyExpress()
	NextPonyExpress.SetValue(Utility.GetCurrentGameTime() + GetCooldownValue(NextPonyExpressCD))
EndFunction

Function SetNextRunLolaRun()
	NextRunLolaRun.SetValue(Utility.GetCurrentGameTime() + GetCooldownValue(NextRunLolaRunCD))
EndFunction

Function SetNextStewing()
	NextStewing.SetValue(Utility.GetCurrentGameTime() + GetCooldownValue(NextStewingCD))
EndFunction

Function SetNextTempleOfLove()
	NextTempleOfLove.SetValue(Utility.GetCurrentGameTime() + GetCooldownValue(NextTempleOfLoveCD))
EndFunction

Function SetNextTrophySlave()
	NextTrophySlave.SetValue(Utility.GetCurrentGameTime() + GetCooldownValue(NextTrophySlaveCD))
EndFunction

Function SetNextWRWalk()
	NextWRWalk.SetValue(Utility.GetCurrentGameTime() + GetCooldownValue(NextWRWalkCD))
EndFunction

Function SetNextSluts()
	NextSluts.SetValue(Utility.GetCurrentGameTime() + GetCooldownValue(NextSlutsCD))
EndFunction

Function SetNextButtToy()
	NextButtToy.SetValue(Utility.GetCurrentGameTime() + GetCooldownValue(NextButtToyCD))
EndFunction

Function SetNextCountingIsFun()
	NextCountingIsFun.SetValue(Utility.GetCurrentGameTime() + GetCooldownValue(NextCountingIsFunCD))
EndFunction

Function UpdateCooldown(GlobalVariable nextTime, float oldCD, float cd)
	if nextTime.GetValue() == 2000.0; legacy support for the old 2000 "forever" date
		nextTime.SetValue(0.0); Reenable, available now
	elseif nextTime.GetValue() == 0.0
		; Event hasn't occurred yet, so leave it available
	else
		nextTime.SetValue(nextTime.GetValue() - oldCD + cd); Update
	endif
EndFunction

; Reset all cooldowns to be ready to go now (0).
Function ResetCooldowns()
	NextWhore.SetValue(0)
	NextBardPlay.SetValue(0)
	NextBringGold.SetValue(0)
	NextConfession.SetValue(0)
	NextFamous.SetValue(0)
	NextFindTreasure.SetValue(0)
	NextHairChange.SetValue(0)
	NextLightsOut.SetValue(0)
	NextPonyExpress.SetValue(0)
	NextRunLolaRun.SetValue(0)
	NextStewing.SetValue(0)
	NextTempleOfLove.SetValue(0)
	NextTrophySlave.SetValue(0)
	NextWRWalk.SetValue(0)
	NextSluts.SetValue(0)
	NextButtToy.SetValue(0)
	NextCountingIsFun.SetValue(0)
EndFunction

float Function GetCooldownValue(float val)
	if RandomCooldown != 0
		float cd = val * (1.0 + Utility.RandomFloat(RandomCooldown / -100.0, RandomCooldown / 100.0))
		return vkjLib.Max(cd, 1.0); Don't allow cooldowns be less than one day.
	endif
	return val
EndFunction

Function UpdatePonyCuffs()
		if PonyPrance
			MQ.RemoveDD(P, PonyCuffsList.GetAt(ponyColor) as Armor, true)
			Debug.MessageBox("Exit the MCM for the change to take effect, pony.")
			MQ.EquipDD(P, PrancingCuffsList.GetAt(ponyColor) as Armor)
		else
			MQ.RemoveDD(P, PrancingCuffsList.GetAt(ponyColor) as Armor, true)
			Debug.MessageBox("Exit the MCM for the change to take effect, pony.")
			MQ.EquipDD(P, PonyCuffsList.GetAt(ponyColor) as Armor)
		endif
EndFunction

bool Function SetUnequipOnKneel(string str)
	; Valid?
	int index = StringUtil.GetLength(str) - 1
	while index >= 0
		string chr = StringUtil.GetNthChar(str, index)
		if !StringUtil.IsDigit(chr) && (chr != ",")
			Debug.MessageBox("Unequip During Kneel Slots\n\nOnly numbers (without spaces) and commas are valid")
			return false
		endif
		index -= 1
	endwhile
	
	; Build slots array to pass to the MQ script
	string[] slotStrings = StringUtil.Split(str, ",")
	int nSlots = slotStrings.Length
	if nSlots > 3
		Debug.MessageBox("Unequip During Kneel Slots\n\nSpecify only 3 slots.\nExtra slots will be ignored.")
		nSlots = 3
	endif
	int[] slots = new int[3]
	int i = 0
	while i < nSlots
		; Exclude Devious Devices slots and armor slots except shield
		int nSlot = slotStrings[i] as int
		if (nSlot==39) || (nSlot==40) || (nSlot==43) || (nSlot==47) || (nSlot==52) || (nSlot==54) || (nSlot==60) || (nSlot==61)
			slots[i] = Armor.GetMaskForSlot(nSlot)
		else
			Debug.MessageBox("Unequip During Kneel Slots\n\nSlot " + slotStrings[i] + " is not valid.\nIt will be ignored.")
		endif
		i += 1
	endwhile
	
	MQ.SetSlotsToUnequipOnKneel(slots)
	return true
EndFunction

Function RestoreKeptThresholds()
	KeptThreshold = SavedKeptThreshold
	KeptBelowThreshold = SavedKeptBelowThreshold
EndFunction

function recheck_softmods()
	Form vlForm = Game.GetFormFromFile(0x0000283A, "Dawnguard.esm")
	if vlForm != none
		VampireLordRace = vlForm as Race
	else
		VampireLordRace = none
	endif
	useDawnguard = (VampireLordRace != none)
	useRadProstitution = (Quest.GetQuest("mf_Prostitute_SimpleJob"))
	useSimpleSlavery = (Quest.GetQuest("SimpleSlavery")) != none
	useSSPlusPlus = useSimpleSlavery && (Game.GetFormFromFile(0x00065593, "SimpleSlavery.esp") != none); Test for SSLV_GenderPref
	useZap8 = (Game.GetFormFromFile(0x0006864D, "ZaZAnimationPack.esm") != none); Look for ZazSexyDance_Loop
	hasZap = (Quest.GetQuest("zbfConfig")).IsRunning()
	hasZap9 = (Game.GetFormFromFile(0x0027E189, "ZaZAnimationPack.esm") != none); Look for global variable
	MQ.UseEFF = Game.GetModByName("EFFCore.esm") != 255
	useSlaveTats = Game.GetModByName("SlaveTats.esp") != 255
	useLoveSickness = (Quest.GetQuest("lvskMain") != none)

	iwwQuest = Quest.GetQuest("iWant_WidgetQuest"); SE version
	if iwwQuest == none
		iwwQuest = Quest.GetQuest("iWantWidgetQuest"); LE version (no underscore)
	endif
	useIWW = (iwwQuest != none)
	if useIWW && MQ.IsRunning() && !MQ.MessageQuest.IsRunning()
		SendModEvent("SLTR-StartQuest", MQ.MessageQuest.GetID()); Can't cleanly do MessageQuest.Start() because Start() is a latent operation.
	elseif !useIWW && MQ.MessageQuest.IsRunning()
		MQ.MessageQuest.Stop()
	endif

	useSluts = 0
	SlutsQuest = Quest.GetQuest("sluts_mission_scenes")
	if SlutsQuest != none
		useSluts = 1
	else
		SlutsQuest = Quest.GetQuest("SLUTS_MissionHaul")
		if SlutsQuest != none
			useSluts = 2
		endif
	endif
	if (useSluts > 0) && (NextSlutsCD == 0.0)
		SetNextSluts(); Disable this event if the CD is 0.  To avoid a surprise, the player must enable it.
	endif

	if useRadProstitution
		RadProQuest = Quest.GetQuest("mf_Prostitute_SimpleJob")
		MQ.RP_MadameFaction = vkjRadProInt.GetMadameFaction(RadProQuest)
	endif
endfunction

string function GetFoundLabel(bool found)
	if found
		return "$SLTR_Found"
	endif
	return "$SLTR_NotFound"
endfunction

; Varies with hair mod: 5 for vanilla, 3 for KS Hair.
int Function GetHairIndex()
	int i = 0
	while i < P.GetActorBase().GetNumHeadParts()
		HeadPart hp = P.GetActorBase().GetNthHeadPart(i)
		if hp.GetType() == 3; Hair
			return i
		endif
		i += 1
	endwhile
	MiscUtil.PrintConsole("SLTR MCM - Bad hair index " + i)
	return -1
EndFunction

HeadPart Function GetCurrentHair()
	int i = 0
	While i < P.GetActorBase().GetNumHeadParts()
		HeadPart hp = P.GetActorBase().GetNthHeadPart(i)
		if hp.GetType() == 3; Hair
			return hp
		endif
		i += 1
	EndWhile
	return none
EndFunction

int Function GetHairChangeDuration()
	return (24.0 * Utility.RandomFloat(HairChangeMin, HairChangeMax)) as int
EndFunction

String Function GetWhipWeaponModel()
	return WhipWeaponModelList[WhipWeapon].GetModelPath()
EndFunction

String Function GetSkillTaught()
	return skillList[skillTaught]
EndFunction

Function SetDisableKeptSettings(bool lock)
	disableKeptSettings = lock
EndFunction

Actor Function FindClosestActor()
	float angleZ = P.getAngleZ()
	float x = P.GetPositionX() + 100.0 * math.sin(angleZ)
	float y = P.GetPositionY() + 100.0 * math.cos(angleZ)
	Actor nearestActor = Game.FindClosestActor(x, y, P.GetPositionZ(), 90.0)
	if (nearestActor != none) && nearestActor.GetActorBase().IsUnique() && nearestActor.HasKeyword(KwActorTypeNPC) && !nearestActor.IsChild()
		return nearestActor
	endif
	return none
EndFunction

Function AddWhippingPosesRewardRZ()
	int i = WhippingPosesRewardRZ.GetSize()
	While i > 0
		i -= 1
		WhippingPosesReward.AddForm(WhippingPosesRewardRZ.GetAt(i))
	EndWhile
EndFunction

Function RemoveWhippingPosesRewardRZ()
	int i = WhippingPosesRewardRZ.GetSize()
	While i > 0
		i -= 1
		WhippingPosesReward.RemoveAddedForm(WhippingPosesRewardRZ.GetAt(i))
	EndWhile
EndFunction

Function DisplayWhippingPosesRewardRZ()
	int i = WhippingPosesRewardRZ.GetSize()
	Debug.Notification(i + " poses in this set")
	While i > 0
		i -= 1
		P.PlayIdle(WhippingPosesRewardRZ.GetAt(i) as Idle)
		Utility.Wait(4)
	EndWhile
	MQ.StopDancing(P)
EndFunction

Function UpdateRewardWhippingPoses()
	if UseRZRewardWhipping
		AddWhippingPosesRewardRZ()
	else
		RemoveWhippingPosesRewardRZ()
	endif
EndFunction

; Add the actor to the player's list of auction buyers.
Function AddBuyer(Actor npc)
	if npc == none
		return
	endif
	MQ.BuyerRef = npc
	StorageUtil.SetFormValue(MainQuest, "BuyerRef", npc)
	string targetName = npc.GetActorBase().GetName()
	JsonUtil.StringListAdd(jsonPathBuyers, jsonBuyersKey, targetName, false)
	JsonUtil.SetFormValue(jsonPathBuyers, targetName, npc)
	JsonUtil.Save(jsonPathBuyers)
EndFunction

; Return a random auction buyer from the player's selected buyers.
Actor Function GetBuyer(Actor excludedBuyer = none)
	Actor buyer
	if JsonUtil.JsonExists(jsonPathBuyers)
		int nBuyers = JsonUtil.StringListCount(jsonPathBuyers, jsonBuyersKey)
		if nBuyers <= 6; more might hurt response time
			ValidateBuyers()
			nBuyers = JsonUtil.StringListCount(jsonPathBuyers, jsonBuyersKey); could be fewer after validation
		endif
		if nBuyers > 0
			string excludedBuyerName = ""
			if excludedBuyer != none
				excludedBuyerName = excludedBuyer.GetBaseObject().GetName()
			endif
			string buyerName = JsonUtil.StringListGet(jsonPathBuyers, jsonBuyersKey, Utility.RandomInt(0, nBuyers - 1))
			int i = 0
			While (nBuyers > 1) && ((buyerName == lastBuyerName) || (buyerName == excludedBuyerName)) && (i < 15)
				buyerName = JsonUtil.StringListGet(jsonPathBuyers, jsonBuyersKey, Utility.RandomInt(0, nBuyers - 1))
				i += 1; If the player edited the json and has duplicates, there might not be a valid choice, so limit the attempts.
			EndWhile
			lastBuyerName = buyerName
			buyer = JsonUtil.GetFormValue(jsonPathBuyers, buyerName) as Actor
			MiscUtil.PrintConsole("SLTR selected buyer: " + buyerName)
		endif
	endif
	if buyer == none
		MiscUtil.PrintConsole("SLTR could not select a buyer")
	endif
	return buyer
EndFunction

bool Function ValidateBuyers(bool silent = false)
	float startValidateTime = Utility.GetCurrentRealTime()
	int nInvalid = 0
	int nBuyers = JsonUtil.StringListCount(jsonPathBuyers, jsonBuyersKey)
	if nBuyers > 0
		string msg = ""
		string reason
		string[] buyers = JsonUtil.StringListToArray(jsonPathBuyers, jsonBuyersKey)
		int iBuyer = nBuyers
		while iBuyer > 0
			iBuyer -= 1
			string buyerName = buyers[iBuyer]
			Actor buyer = JsonUtil.GetFormValue(jsonPathBuyers, buyerName) as Actor
			if (buyer != none) && buyer.GetActorBase().IsUnique() && buyer.HasKeyword(KwActorTypeNPC) && !buyer.IsChild() && buyer.IsInFaction(PotentialFollowerFaction)
				; valid
			else
				nInvalid += 1
				JsonUtil.StringListRemove(jsonPathBuyers, jsonBuyersKey, buyerName)
				JsonUtil.UnsetFormValue(jsonPathBuyers, buyerName)
				if buyer == none
					reason = "Buyer does not exist: "
				else
					reason = "Invalid buyer: "
				endif
				MiscUtil.PrintConsole(reason + buyerName)
				if nInvalid <= 10
					msg += "\n" + reason + buyerName
				elseif nInvalid == 11
					msg += "\n(more invalid buyers are not listed)"
				endif
			endif
		endwhile
		MiscUtil.PrintConsole("Buyers validated in " + (Utility.GetCurrentRealTime() - startValidateTime) + " seconds")
		if nInvalid > 0
			JsonUtil.Save(jsonPathBuyers)
			if !silent
				Debug.MessageBox("Removed " + nInvalid + " invalid buyer(s)." + msg)
			endif
		endif
	endif
	return (nInvalid == 0)
EndFunction

; Add the given hair style (or the player's current hair style) to the list of styles for the hair change event.
Function AddHairStyle(HeadPart aStyle = none)
	HeadPart curHair = aStyle
	if curHair == none
		curHair = GetCurrentHair()
	endif
	if curHair != none
		JsonUtil.StringListAdd(jsonPathHairStyles, jsonHairStylesKey, curHair.GetName(), false)
		JsonUtil.SetFormValue(jsonPathHairStyles, curHair.GetName(), curHair)
		JsonUtil.Save(jsonPathHairStyles)
	endif
EndFunction

; Return a randomly selected hair from the player's selected styles.
HeadPart Function GetHairStyle()
	HeadPart style
	if JsonUtil.JsonExists(jsonPathHairStyles)
		int nStyles = JsonUtil.StringListCount(jsonPathHairStyles, jsonHairStylesKey)
		if nStyles > 0
			string styleName = JsonUtil.StringListGet(jsonPathHairStyles, jsonHairStylesKey, Utility.RandomInt(0, nStyles - 1))
			While (nStyles > 1) && (styleName == lastStyleName)
				styleName = JsonUtil.StringListGet(jsonPathHairStyles, jsonHairStylesKey, Utility.RandomInt(0, nStyles - 1))
			EndWhile
			lastStyleName = styleName
			style = JsonUtil.GetFormValue(jsonPathHairStyles, styleName) as HeadPart
		endif
	endif
	return style
EndFunction

Armor Function GetFunBlindfold()
	Armor blindfold
	if BlindfoldFun
		if blinds == BlindFunForm.GetSize()
			blinds = 0
		endif
		blindfold = BlindFunForm.GetAt(blinds) as Armor
	endif
	return blindfold
EndFunction

Armor Function GetRingGag()
	return gagForm.GetAt(2) as Armor
EndFunction

Function UseCombatPotionsChanged()
	if !MQ.IsRunning()
		return
	endif
	if UseCombatPotions
		SendModEvent("SLTR-StartQuest", CombatPotionManager.GetID())
	else
		MQ.EmptyCombatPotions(P)
		CombatPotionManager.Stop()
	endif
EndFunction

Function RequiredCuffsChanged()
	if !MQ.IsRunning()
		return
	endif

	if RequiredCuffs == 0 || RequiredCuffs == 4
		if MQ.CuffsControl.IsRunning()
			MQ.CuffsControl.SetStage(20)
		endif
	elseif MQ.CuffsControl.IsRunning()
		MQ.CuffsControl.Swap()
	else
		SendModEvent("SLTR-StartQuest", MQ.CuffsControl.GetID())
	endif
EndFunction

Function PlaySoundAchievement()
	SoundAchievement.Play(P)
EndFunction

Function CheckHighScoreAchievement()
	if !DidAchievePerfectScore
		DidAchievePerfectScore = true
		Debug.Notification("Achievement Unlocked: Perfect Score")
		PlaySoundAchievement()
	endif
EndFunction

Function CheckLowScoreAchievement()
	if !DidAchieveLowScore
		DidAchieveLowScore = true
		Debug.Notification("Achievement Unlocked: Bad Pet")
		PlaySoundAchievement()
	endif
EndFunction

Function KeptPetAchievement()
	Debug.Notification("Achievement Unlocked: Kept Pet")
	PlaySoundAchievement()
EndFunction

Function CheckResubmissionAchievement()
	if !DidAchieveResub
		DidAchieveResub = true
		Debug.Notification("Achievement Unlocked: The Resubmission")
		PlaySoundAchievement()
	endif
EndFunction

Function CheckHousecarlAchievement()
	if !DidAchieveHousecarl
		DidAchieveHousecarl = true
		Debug.Notification("Achievement Unlocked: Submitted to Your Own Housecarl")
		PlaySoundAchievement()
	endif
EndFunction

Function CheckDomesticAchievement()
	if !DidAchieveDomestic && (TimesCooked >= 6) && (TimesCleaned >= 6)
		DidAchieveDomestic = true
		Debug.Notification("Achievement Unlocked: Domesticated")
		PlaySoundAchievement()
	endif
EndFunction

Function CheckPlaymateSubAchievement()
	if !DidAchievePlaymateSub
		DidAchievePlaymateSub = true
		Debug.Notification("Achievement Unlocked: Submitted to Your Playmate")
		PlaySoundAchievement()
	endif
EndFunction

Function CheckPlaymatePunAchievement()
	if !DidAchievePlaymatePun
		DidAchievePlaymatePun = true
		Debug.Notification("Achievement Unlocked: Punished by Your Playmate")
		PlaySoundAchievement()
	endif
EndFunction

Function UpdateTimesSubmitted()
	TimesSubmitted.SetValue(TimesSubmitted.GetValue() + 1)
	if TimesSubmitted.GetValue() as int == 1
		Debug.Notification("Achievement Unlocked: Submissive Lola")
		PlaySoundAchievement()
	endif
EndFunction

Function UpdateBoozeLost()
	BoozeLost = BoozeLost + 1
EndFunction

Function UpdateClientCount(int val = 1)
	ClientCount = ClientCount + val
EndFunction

Function UpdateDaysSubmitted()
	DaysSubmitted = DaysSubmitted + 1
EndFunction

Function UpdateGoldGiven(int val)
	GoldGiven = GoldGiven + val
EndFunction

Function UpdateServiceOffered()
	ServiceOffered = ServiceOffered + 1
EndFunction

Function UpdateSweetrollCount()
	SweetrollCount = SweetrollCount + 1
EndFunction

Function UpdateTimesDanced()
	TimesDanced = TimesDanced + 1
	if TimesFetchedBooze == 12
		Debug.Notification("Achievement Unlocked: Dancing Fool")
		PlaySoundAchievement()
	endif
EndFunction

Function UpdateTimesGagged()
	TimesGagged = TimesGagged + 1
	if TimesGagged == 3
		Debug.Notification("Achievement Unlocked: Mmmph!")
		PlaySoundAchievement()
	endif
EndFunction

Function UpdateTimesParaded()
	TimesParaded = TimesParaded + 1
	if TimesParaded == 6
		Debug.Notification("Achievement Unlocked: Naked Submission")
		PlaySoundAchievement()
	endif
EndFunction

Function UpdateTimesSpankedPunish()
	TimesSpankedPunish = TimesSpankedPunish + 1
EndFunction

Function UpdateTimesSpankedReward()
	TimesSpankedReward = TimesSpankedReward + 1
EndFunction

Function UpdateTimesWhippedPunish()
	TimesWhippedPunish = TimesWhippedPunish + 1
EndFunction

Function UpdateTimesWhippedReward()
	TimesWhippedReward = TimesWhippedReward + 1
EndFunction

Function UpdateTimesMotivated()
	TimesMotivated = TimesMotivated + 1
EndFunction

Function UpdateTimesWhoredOut()
	TimesWhoredOut = TimesWhoredOut + 1
	if TimesWhoredOut == 10
		Debug.Notification("Achievement Unlocked: Working Slave")
		PlaySoundAchievement()
	endif
EndFunction

Function UpdatePonyExpressCount()
	PonyExpressCount = PonyExpressCount + 1
	if PonyExpressCount == 5
		Debug.Notification("Achievement Unlocked: Pony Girl")
		PlaySoundAchievement()
	endif
EndFunction

Function UpdateSlutsCount()
	SlutsCount = SlutsCount + 1
EndFunction

Function UpdateTreasuresFound()
	TreasuresFound = TreasuresFound + 1
EndFunction

Function UpdateConfessionCount()
	ConfessionCount = ConfessionCount + 1
EndFunction

Function UpdateTimesFetchedBooze()
	TimesFetchedBooze = TimesFetchedBooze + 1
	if TimesFetchedBooze == 12
		Debug.Notification("Achievement Unlocked: Run, Lola, Run")
		PlaySoundAchievement()
	endif
EndFunction

Function UpdateTimesCooked()
	TimesCooked = TimesCooked + 1
	CheckDomesticAchievement()
EndFunction

Function UpdateTimesCleaned()
	TimesCleaned = TimesCleaned + 1
	CheckDomesticAchievement()
EndFunction

Function reset_lists()
	hairList = new string[5]
	hairList[0] = "$SLTR_Shaved"
	hairList[1] = "$SLTR_RandomColor"
	hairList[2] = "$SLTR_NewStyle"
	hairList[3] = "$SLTR_NewStyle_RandomColor"
	hairList[4] = "$SLTR_Disabled"; not really needed, since the event is now controlled by cooldown

	contractList = new string[9]
	contractList[0] = "$SLTR_NoContract"
	contractList[1] = "$SLTR_ThreeDays"
	contractList[2] = "$SLTR_FiveDays"
	contractList[3] = "$SLTR_OneWeek"
	contractList[4] = "$SLTR_TwoWeeks"
	contractList[5] = "$SLTR_OneMonth"
	contractList[6] = "$SLTR_ThreeMonths"
	contractList[7] = "$SLTR_OneYear"
	contractList[8] = "$SLTR_Random"
	
	; Be careful about changing these.
	; They are handled by index in vkjArmorRestriction, with special handling for index 3 & 4.
	; If you add a new option, be sure to handle it in the vkjArmorRestrictionCheck1 topic.
	nuderuleList = new string[8]
	nuderuleList[0] = "$SLTR_Always"
	nuderuleList[1] = "$SLTR_SafeAreas"
	nuderuleList[2] = "$SLTR_Inns_PlayerHome"
	nuderuleList[3] = "$SLTR_Home_UnsafeAreas"
	nuderuleList[4] = "$SLTR_VerySafeAreas"
	nuderuleList[5] = "$SLTR_PlayerHomeOnly"
	nuderuleList[6] = "$SLTR_SafeAndWilderness"
	nuderuleList[7] = "$SLTR_Never"
	
	collarList = new string[13]
	collarList[0] = "$SLTR_Leather"
	collarList[1] = "$SLTR_HarnessCollar"
	collarList[2] = "$SLTR_SteelPadded"
	collarList[3] = "$SLTR_IronRing"
	collarList[4] = "$SLTR_Bell"
	collarList[5] = "$SLTR_Pet"
	collarList[6] = "$SLTR_Kitten"
	collarList[7] = "$SLTR_Puppy"
	collarList[8] = "$SLTR_Studded"
	collarList[9] = "$SLTR_Runic"
	collarList[10] = "$SLTR_DullRunic"
	collarList[11] = "$SLTR_Custom"; Keep this next to last
	collarList[12] = "$SLTR_Random"; Keep this last

	gagList = new string[7]
	gagList[0] = "$SLTR_Ball"
	gagList[1] = "$SLTR_LargeBall"
	gagList[2] = "$SLTR_Ring"
	gagList[3] = "$SLTR_Panel"
	gagList[4] = "$SLTR_RopeBit"
	gagList[5] = "$SLTR_Custom"; Keep this next to last
	gagList[6] = "$SLTR_Random"; Keep this last

	blindList = new string[3]
	blindList[0] = "$SLTR_BlackBlindfold"
	blindList[1] = "$SLTR_RedBlindfold"
	blindList[2] = "$SLTR_WhiteBlindfold"
	if blinds >= 3
		blinds = 0
	endif

	ropeHarnessList = new string[5]
	ropeHarnessList[0] = "$SLTR_Hishi"
	ropeHarnessList[1] = "$SLTR_Simple"
	ropeHarnessList[2] = "$SLTR_Top"
	ropeHarnessList[3] = "$SLTR_Penta"
	ropeHarnessList[4] = "$SLTR_Random"; Keep this last
	
	bodyHarnessList = new string[3]
	bodyHarnessList[0] = "$SLTR_Black"
	bodyHarnessList[1] = "$SLTR_Red"
	bodyHarnessList[2] = "$SLTR_White"
	
	aRestraintsList = new string[9]
	aRestraintsList[0] = "$SLTR_Rope Binds"
	aRestraintsList[1] = "$SLTR_LeatherBinds"
	aRestraintsList[2] = "$SLTR_IronShackles"
	aRestraintsList[3] = "$SLTR_IronHandcuffs"
	aRestraintsList[4] = "$SLTR_BlackArmbinder"
	aRestraintsList[5] = "$SLTR_BrownArmbinder"
	aRestraintsList[6] = "$SLTR_RedArmbinder"
	aRestraintsList[7] = "$SLTR_WhiteArmbinder"
	aRestraintsList[8] = "$SLTR_RopeArmbinder"

	SexualityList = new string[3]
	SexualityList[0] = "$SLTR_Either"
	SexualityList[1] = "$SLTR_Males"
	SexualityList[2] = "$SLTR_Females"

	shoesList = new string[14]
	shoesList[0] = "$SLTR_BlackBallet"
	shoesList[1] = "$SLTR_BrownBallet"
	shoesList[2] = "$SLTR_RedBallet"
	shoesList[3] = "$SLTR_WhiteBallet"
	shoesList[4] = "$SLTR_IronBallet"
	shoesList[5] = "$SLTR_BlackHeels"
	shoesList[6] = "$SLTR_RedHeels"
	shoesList[7] = "$SLTR_WhiteHeels"
	shoesList[8] = "$SLTR_BlackRestrictive"
	shoesList[9] = "$SLTR_RedRestrictive"
	shoesList[10] = "$SLTR_WhiteRestrictive"
	shoesList[11] = "$SLTR_BlackCatsuit"
	shoesList[12] = "$SLTR_RedCatsuit"
	shoesList[13] = "$SLTR_WhiteCatsuit"
	
	bondageShoeList = new string[11]
	bondageShoeList[0] = "$SLTR_BlackBallet"
	bondageShoeList[1] = "$SLTR_BrownBallet"
	bondageShoeList[2] = "$SLTR_RedBallet"
	bondageShoeList[3] = "$SLTR_WhiteBallet"
	bondageShoeList[4] = "$SLTR_IronBallet"
	bondageShoeList[5] = "$SLTR_BlackHeels"
	bondageShoeList[6] = "$SLTR_RedHeels"
	bondageShoeList[7] = "$SLTR_WhiteHeels"
	bondageShoeList[8] = "$SLTR_BlackRestrictive"
	bondageShoeList[9] = "$SLTR_RedRestrictive"
	bondageShoeList[10] = "$SLTR_WhiteRestrictive"

	corsetList = new string[3]
	corsetList[0] = "$SLTR_Black"
	corsetList[1] = "$SLTR_Red"
	corsetList[2] = "$SLTR_White"
	
	dressList = new string[8]
	dressList[0] = "$SLTR_BlackOpen"
	dressList[1] = "$SLTR_BrownOpen"
	dressList[2] = "$SLTR_RedOpen"
	dressList[3] = "$SLTR_WhiteOpen"
	dressList[4] = "$SLTR_BlackElegant"
	dressList[5] = "$SLTR_BrownElegant"
	dressList[6] = "$SLTR_RedElegant"
	dressList[7] = "$SLTR_WhiteElegant"

	glovesList = new string[4]
	glovesList[0] = "$SLTR_BlackLeather"
	glovesList[1] = "$SLTR_BrownLeather"
	glovesList[2] = "$SLTR_RedLeather"
	glovesList[3] = "$SLTR_WhiteLeather"
	
	whipWeapList = new string[4]
	whipWeapList[0] = "Cane "
	whipWeapList[1] = "Crop "
	whipWeapList[2] = "Cat o' Nine "
	whipWeapList[3] = "$SLTR_Custom"

	fashionBodyOptions = new string[3]
	fashionBodyOptions[0] = "$SLTR_HobbleDress"
	fashionBodyOptions[1] = "$SLTR_Corset"
	fashionBodyOptions[2] = "$SLTR_BodyHarnessOption"
	
	tailList = new string[6]
	tailList[0] = "$SLTR_PlugOnly"
	tailList[1] = "$SLTR_Basic"
	tailList[2] = "$SLTR_Braided"
	tailList[3] = "$SLTR_Lush"
	tailList[4] = "$SLTR_Bow"
	tailList[5] = "$SLTR_Chain_Bell"
	
	ponyColorList = new string[3]
	ponyColorList[0] = "$SLTR_Black"
	ponyColorList[1] = "$SLTR_Red"
	ponyColorList[2] = "$SLTR_White"
	if ponyColor >= 3
		ponyColor = 0
	endif

	skillList = new string[18]
	skillList[0] = "Speechcraft"
	skillList[1] = "OneHanded"
	skillList[2] = "TwoHanded"
	skillList[3] = "Marksman"
	skillList[4] = "Block"
	skillList[5] = "Smithing"
	skillList[6] = "HeavyArmor"
	skillList[7] = "LightArmor"
	skillList[8] = "Lockpicking"
	skillList[9] = "Pickpocket"
	skillList[10] = "Sneak"
	skillList[11] = "Alchemy"
	skillList[12] = "Enchanting"
	skillList[13] = "Alteration"
	skillList[14] = "Conjuration"
	skillList[15] = "Destruction"
	skillList[16] = "Illusion"
	skillList[17] = "Restoration"
	
	neverSometimesAlways = new string[3]
	neverSometimesAlways[0] = "$SLTR_Never"
	neverSometimesAlways[1] = "$SLTR_Sometimes"
	neverSometimesAlways[2] = "$SLTR_Always1"
	
	danceMusicOptions = new string[3]
	danceMusicOptions[0] = "$SLTR_None"
	danceMusicOptions[1] = "$SLTR_BardDrums"
	danceMusicOptions[2] = "$SLTR_Custom"
	
	spankingAnimLimitsList = new string[3]
	spankingAnimLimitsList[0] = "$SLTR_Anywhere"
	spankingAnimLimitsList[1] = "$SLTR_Interiors"
	spankingAnimLimitsList[2] = "$SLTR_Buildings"
	
	playmateSexList = new string[5]
	playmateSexList[0] = "$SLTR_Neither"
	playmateSexList[1] = "$SLTR_You"
	playmateSexList[2] = "$SLTR_Owner"
	playmateSexList[3] = "$SLTR_Either"
	playmateSexList[4] = "$SLTR_Both"
	
	attitudeList = new string[2]
	attitudeList[0] = "$SLTR_Playful"
	attitudeList[1] = "$SLTR_Strict"
	
	removePlugsList = new string[4]
	removePlugsList[0] = "$SLTR_Never"
	removePlugsList[1] = "$SLTR_Always"
	removePlugsList[2] = "$SLTR_WithOwner"
	removePlugsList[3] = "$SLTR_WithLover"
	
	vampireFeedingOptionList = new string[2]
	vampireFeedingOptionList[0] = "$SLTR_VampClothed"
	vampireFeedingOptionList[1] = "$SLTR_VampStrips"
	
	whoAsksList = new string[3]
	whoAsksList[0] = "$SLTR_Player"
	whoAsksList[1] = "$SLTR_Follower"
	whoAsksList[2] = "$SLTR_Either"
	
	followerKnowsList = new string[5]
	followerKnowsList[0] = "$SLTR_Not_Expecting"
	followerKnowsList[1] = "$SLTR_Expecting"
	followerKnowsList[2] = "$SLTR_Forceful"
	followerKnowsList[3] = "$SLTR_Seductive"
	followerKnowsList[4] = "$SLTR_ConvinceMe"
	
	glowOptions = new string[5]
	glowOptions[0] = "$SLTR_None"
	glowOptions[1] = "$SLTR_Dim"
	glowOptions[2] = "$SLTR_DimGlowing"
	glowOptions[3] = "$SLTR_Bright"
	glowOptions[4] = "$SLTR_BrightGlowing"
	
	cuffsList = new string[14]
	cuffsList[0] = "$SLTR_BlackLeather"
	cuffsList[1] = "$SLTR_BlackEbonite"
	cuffsList[2] = "$SLTR_BlackPadded"
	cuffsList[3] = "$SLTR_BlackShiny"
	cuffsList[4] = "$SLTR_SteelPadded"
	cuffsList[5] = "$SLTR_SilverPadded"
	cuffsList[6] = "$SLTR_RedLeather"
	cuffsList[7] = "$SLTR_RedEbonite"
	cuffsList[8] = "$SLTR_RedPadded"
	cuffsList[9] = "$SLTR_RedShiny"
	cuffsList[10] = "$SLTR_WhiteLeather"
	cuffsList[11] = "$SLTR_WhiteEbonite"
	cuffsList[12] = "$SLTR_WhitePadded"
	cuffsList[13] = "$SLTR_WhiteShiny"
	
	requiredCuffsList = new string[5]
	requiredCuffsList[0] = "$SLTR_None"
	requiredCuffsList[1] = "$SLTR_Arms"
	requiredCuffsList[2] = "$SLTR_Legs"
	requiredCuffsList[3] = "$SLTR_ArmsAndLegs"
	requiredCuffsList[4] = "$SLTR_ProstOnly"
EndFunction

bool Function ExportSettings(string file)
	if !CheckPapyrusVersion()
		return false
	endif
	JsonUtil.ClearAll(file)

	JsonUtil.SetFloatValue(file, "Version", versionNum)
	JsonUtil.SetIntValue(file, "PlayerAsks", PlayerAsks as int)
	JsonUtil.SetIntValue(file, "FollowerAsks", FollowerAsks as int)
	JsonUtil.SetIntValue(file, "FollowerKnows", FollowerKnows)
	JsonUtil.SetIntValue(file, "NickNameMode", NickNameMode as int)
	JsonUtil.SetIntValue(file, "NoZazEnslave", NoZazEnslave as int)
	
	JsonUtil.SetIntValue(file, "_v_subG", _v_subG)
	JsonUtil.SetFloatValue(file, "v_subG", v_subG)
	JsonUtil.SetIntValue(file, "_v_resistG", _v_resistG)
	JsonUtil.SetFloatValue(file, "v_resistG", v_resistG)	
	JsonUtil.SetIntValue(file, "ScoreDecay", ScoreDecay)
	JsonUtil.SetIntValue(file, "ScaleScoreDecay", ScaleScoreDecay as int)
	JsonUtil.SetFloatValue(file, "Frequency", Frequency)
	JsonUtil.SetFloatValue(file, "GlobalPace", GlobalPace.GetValue())
	JsonUtil.SetFloatValue(file, "BoredomPenalty", BoredomPenalty)
	JsonUtil.SetIntValue(file, "_Contract", _Contract)
	if !disableKeptSettings
		JsonUtil.SetIntValue(file, "KeptThreshold", KeptThreshold)
		;JsonUtil.SetIntValue(file, "KeptForever", KeptForever as int)
		JsonUtil.SetIntValue(file, "KeptBelowThreshold", KeptBelowThreshold)
	endif
	
	; Rules
	; Punishment
	JsonUtil.SetIntValue(file, "ShockStrength", ShockStrength)
	JsonUtil.SetIntValue(file, "ShockMagickaLoss", ShockMagickaLoss)
	JsonUtil.SetIntValue(file, "ArousalLossOnZap", ArousalLossOnZap)
	JsonUtil.SetFloatValue(file, "SpankedXpRate", SpankedXpRate)
	JsonUtil.SetFloatValue(file, "WhippedXpRate", WhippedXpRate)
	JsonUtil.SetIntValue(file, "WhipPunishDuration", WhipPunishDuration)
	JsonUtil.SetIntValue(file, "WhipRewardDuration", WhipRewardDuration)
	JsonUtil.SetIntValue(file, "WhipWeapon", WhipWeapon)
	JsonUtil.SetIntValue(file, "WhipSpeed", WhipSpeed)
	JsonUtil.SetIntValue(file, "WhipNotZap", WhipNotZap)
	JsonUtil.SetIntValue(file, "PunishFriendlyFire", PunishFriendlyFire as int)
	JsonUtil.SetIntValue(file, "BleedoutDays", BleedoutDays)
	JsonUtil.SetIntValue(file, "BleedoutProstQuota", BleedoutProstQuota)
	JsonUtil.SetIntValue(file, "BleedoutPotions", BleedoutPotions)
	JsonUtil.SetIntValue(file, "AllowMotivation", AllowMotivation as int)
	JsonUtil.SetIntValue(file, "UseRedGlow", UseRedGlow as int)
	JsonUtil.SetIntValue(file, "GentleRewardWhipping", GentleRewardWhipping as int)
	JsonUtil.SetIntValue(file, "PunishmentDays", PunishmentDays)
	JsonUtil.SetFloatValue(file, "DFBaseResistLoss", DFBaseResistLoss)
	
	; Forced Prostitution
	JsonUtil.SetFloatValue(file, "GlobalProstitutionChance", GlobalProstitutionChance.GetValue())
	JsonUtil.SetIntValue(file, "v_minclients", v_minclients)
	JsonUtil.SetIntValue(file, "v_randclients", v_randclients)
	JsonUtil.SetIntValue(file, "v_whoreCD", v_whoreCD)
	JsonUtil.SetIntValue(file, "v_whoreBasePay", v_whoreBasePay)
	JsonUtil.SetIntValue(file, "_v_whoreDomCut", _v_whoreDomCut)
	JsonUtil.SetFloatValue(file, "v_whoreDomCut", v_whoreDomCut)
	JsonUtil.SetIntValue(file, "ProstPayMode", ProstPayMode as int)
	JsonUtil.SetIntValue(file, "NymphoNotWhore", NymphoNotWhore as int)
	JsonUtil.SetIntValue(file, "ServiceInnkeeper", ServiceInnkeeper as int)
	JsonUtil.SetIntValue(file, "ProstIgnoreArousal", ProstIgnoreArousal as int)
	JsonUtil.SetIntValue(file, "ProstThreshold", ProstThreshold)
	JsonUtil.SetIntValue(file, "ProstFee", ProstFee)

	; Nudity
	JsonUtil.SetIntValue(file, "NudeRule", NudeRule)
	JsonUtil.SetFormValue(file, "NudeOutfit", NudeOutfit)
	JsonUtil.SetIntValue(file, "ClothesOnly", ClothesOnly as int)
	JsonUtil.SetIntValue(file, "StripOnNudeP", StripOnNudeP as int)
	JsonUtil.SetIntValue(file, "EyeCandyChance", EyeCandyChance)
	JsonUtil.SetIntValue(file, "WhippedEyeCandyChance", WhippedEyeCandyChance)
	JsonUtil.SetIntValue(file, "ExtendedEyeCandy", ExtendedEyeCandy as int)
	JsonUtil.SetIntValue(file, "EyeCandyRejectChance", EyeCandyRejectChance)
	
	; Other Rules
	JsonUtil.SetIntValue(file, "hair_option", hair_option)
	JsonUtil.SetIntValue(file, "v_ServMinTimes", v_ServMinTimes)
	JsonUtil.SetIntValue(file, "v_ServRandTimes", v_ServRandTimes)
	JsonUtil.SetIntValue(file, "SexMinTimes", SexMinTimes)
	JsonUtil.SetIntValue(file, "MinDailyScore", MinDailyScore)
	JsonUtil.SetIntValue(file, "_v_overburdened", _v_overburdened)
	JsonUtil.SetFloatValue(file, "v_overburdened", v_overburdened)
	JsonUtil.SetIntValue(file, "OverburdenBonus", OverburdenBonus)
	JsonUtil.SetIntValue(file, "mustUnburden", mustUnburden as int)
	JsonUtil.SetIntValue(file, "collarBuffs", collarBuffs as int)
	JsonUtil.SetIntValue(file, "AllowBuffs", AllowBuffs as int)
	JsonUtil.SetIntValue(file, "RequiredCuffs", RequiredCuffs)
	JsonUtil.SetFloatValue(file, "CombatMercyLevel", CombatMercyLevel)
	JsonUtil.SetIntValue(file, "noDragonMercy", noDragonMercy as int)	
	JsonUtil.SetIntValue(file, "FashionSlaveChance", FashionSlaveChance)
	JsonUtil.SetIntValue(file, "denyMasturbation", denyMasturbation as int)
	JsonUtil.SetIntValue(file, "NoMoreP", NoMoreP as int)
	JsonUtil.SetIntValue(file, "OwnerTakesKeys", OwnerTakesKeys as int)
	JsonUtil.SetIntValue(file, "UseCombatPotions", UseCombatPotions as int)
	JsonUtil.SetIntValue(file, "AllowedLockpicks", AllowedLockpicks)
	JsonUtil.SetIntValue(file, "ClothesPrankChance", ClothesPrankChance)
	JsonUtil.SetIntValue(file, "CustomConfessions", CustomConfessions)
	JsonUtil.SetFloatValue(file, "HairChangeMin", HairChangeMin)
	JsonUtil.SetFloatValue(file, "HairChangeMax", HairChangeMax)
	
	; Cooldowns
	JsonUtil.SetIntValue(file, "RandomCooldown", RandomCooldown)
	JsonUtil.SetFloatValue(file, "NextBardPlayCD", NextBardPlayCD)
	JsonUtil.SetFloatValue(file, "NextBringGoldCD", NextBringGoldCD)
	JsonUtil.SetFloatValue(file, "NextConfessionCD", NextConfessionCD)
	JsonUtil.SetFloatValue(file, "NextFamousCD", NextFamousCD)
	JsonUtil.SetFloatValue(file, "NextHairChangeCD", NextHairChangeCD)
	JsonUtil.SetFloatValue(file, "NextLightsOutCD", NextLightsOutCD)
	JsonUtil.SetFloatValue(file, "NextPonyExpressCD", NextPonyExpressCD)
	JsonUtil.SetFloatValue(file, "NextRunLolaRunCD", NextRunLolaRunCD)
	JsonUtil.SetFloatValue(file, "NextStewingCD", NextStewingCD)
	JsonUtil.SetFloatValue(file, "NextTempleOfLoveCD", NextTempleOfLoveCD)
	JsonUtil.SetFloatValue(file, "NextFindTreasureCD", NextFindTreasureCD)
	JsonUtil.SetFloatValue(file, "NextTrophySlaveCD", NextTrophySlaveCD)
	JsonUtil.SetFloatValue(file, "NextWRWalkCD", NextWRWalkCD)
	JsonUtil.SetFloatValue(file, "NextSlutsCD", NextSlutsCD)
	JsonUtil.SetFloatValue(file, "NextButtToyCD", NextButtToyCD)
	JsonUtil.SetFloatValue(file, "NextCountingIsFunCD", NextCountingIsFunCD)
	
	; Devices
	JsonUtil.SetIntValue(file, "collars", collars)
	JsonUtil.SetIntValue(file, "gags", gags)
	JsonUtil.SetIntValue(file, "blinds", blinds)
	JsonUtil.SetIntValue(file, "aRestraints", aRestraints)
	JsonUtil.SetIntValue(file, "dress", dress)
	JsonUtil.SetIntValue(file, "gloves", gloves)
	JsonUtil.SetIntValue(file, "shoes", shoes)
	JsonUtil.SetIntValue(file, "BondageShoes", BondageShoes)
	JsonUtil.SetIntValue(file, "ArmCuffs", ArmCuffs)
	JsonUtil.SetIntValue(file, "LegCuffs", LegCuffs)
	JsonUtil.SetIntValue(file, "tail", tail)
	JsonUtil.SetIntValue(file, "ponyColor", ponyColor)
	JsonUtil.SetIntValue(file, "RopeHarness", RopeHarness)
	JsonUtil.SetIntValue(file, "BodyHarness", BodyHarness)
	JsonUtil.SetIntValue(file, "FashionBody", FashionBody)
	JsonUtil.SetIntValue(file, "ExtraKeys", ExtraKeys)
	JsonUtil.SetIntValue(file, "PonyPrance", PonyPrance as int)
	JsonUtil.SetIntValue(file, "BlindfoldFun", BlindfoldFun as int)
	JsonUtil.SetIntValue(file, "usePiercings", usePiercings as int)
	JsonUtil.SetFloatValue(file, "VibDuration", VibDuration)
	JsonUtil.SetFloatValue(file, "ForcedVibDuration", ForcedVibDuration)
	JsonUtil.SetIntValue(file, "DragonVib", DragonVib as int)
	JsonUtil.SetIntValue(file, "GlowOnEnslaved", GlowOnEnslaved)
	JsonUtil.SetIntValue(file, "GlowOnSuspend", GlowOnSuspend)
	JsonUtil.SetIntValue(file, "GlowOnSpank", GlowOnSpank)
	JsonUtil.SetIntValue(file, "GlowOnWhip", GlowOnWhip)
	JsonUtil.SetIntValue(file, "GlowOnBeckon", GlowOnBeckon)
		
	; Roleplay
	; Sex & Sexuality
	JsonUtil.SetIntValue(file, "OwnerSexuality", OwnerSexuality)
	JsonUtil.SetIntValue(file, "PCSexuality", PCSexuality)
	JsonUtil.SetIntValue(file, "NoBeastRaces", NoBeastRaces as int)
	JsonUtil.SetFloatValue(file, "GlobalArousalThreshold", GlobalArousalThreshold.GetValue())
	JsonUtil.SetIntValue(file, "v_StrapOn", v_StrapOn)
	JsonUtil.SetIntValue(file, "v_likesAnal", v_likesAnal)
	JsonUtil.SetIntValue(file, "LikesOral", LikesOral)
	JsonUtil.SetFloatValue(file, "Global3wayChance", Global3wayChance.GetValue())
	JsonUtil.SetIntValue(file, "v_roughSexChance", v_roughSexChance)
	JsonUtil.SetIntValue(file, "v_roughSexChance100", v_roughSexChance100)
	JsonUtil.SetIntValue(file, "PlayerSexSatisfaction", PlayerSexSatisfaction)
	JsonUtil.SetIntValue(file, "RoughSexSatisfaction", RoughSexSatisfaction)
	JsonUtil.SetIntValue(file, "RemovePlugsForSex", RemovePlugsForSex)

	JsonUtil.SetFloatValue(file, "PlaymateChance", PlaymateChance.GetValue())
	JsonUtil.SetFloatValue(file, "OwnerPrefersPlaymate", OwnerPrefersPlaymate.GetValue())
	JsonUtil.SetIntValue(file, "PlaymateCopiesNude", PlaymateCopiesNude as int)
	JsonUtil.SetFormValue(file, "PMOutfit", PMOutfit)
	JsonUtil.SetFormValue(file, "PMBoots", PMBoots)
	JsonUtil.SetIntValue(file, "PlaymateSex", PlaymateSex)
	JsonUtil.SetIntValue(file, "PlaymateWantsSex", PlaymateWantsSex)
	JsonUtil.SetIntValue(file, "PlaymateStrapOn", PlaymateStrapOn)
	JsonUtil.SetIntValue(file, "SexWithPlaymateSatisfaction", SexWithPlaymateSatisfaction)
	JsonUtil.SetIntValue(file, "PlaymatePunishes", PlaymatePunishes)

	JsonUtil.SetIntValue(file, "OwnerAttitude", OwnerAttitude)
	JsonUtil.SetFloatValue(file, "GlobalCommentChance", GlobalCommentChance.GetValue())
	JsonUtil.SetIntValue(file, "drunkowner", drunkowner)
	JsonUtil.SetFloatValue(file, "GlobalUnfairDom", GlobalUnfairDom.GetValue())
	JsonUtil.SetIntValue(file, "OwnerCarryReduction", OwnerCarryReduction)
	JsonUtil.SetIntValue(file, "VampireCooldown", VampireCooldown)
	JsonUtil.SetIntValue(file, "VampireFeedingOption", VampireFeedingOption)
	JsonUtil.SetIntValue(file, "skillTaught", skillTaught)
	JsonUtil.SetIntValue(file, "Humiliation", Humiliation)
	JsonUtil.SetFloatValue(file, "SpeechReductionRate", SpeechReductionRate)
	JsonUtil.SetIntValue(file, "ThoughtsInterval", ThoughtsInterval)
	JsonUtil.SetStringValue(file, "WhatIWantToHear", WhatIWantToHear)
	JsonUtil.SetIntValue(file, "MustOfferServiceScore", MustOfferServiceScore)
	JsonUtil.SetIntValue(file, "AlwaysKneelScore", AlwaysKneelScore)
		
	; Gold
	; Adventuring Slave
	JsonUtil.SetIntValue(file, "_v_interest", _v_interest)
	JsonUtil.SetFloatValue(file, "v_interest", v_interest)
	JsonUtil.SetIntValue(file, "v_debtcap", v_debtcap)
	
	; Loot Sharing
	JsonUtil.SetIntValue(file, "Allowance", Allowance)
	JsonUtil.SetFloatValue(file, "AllowanceBonus", AllowanceBonus)
	JsonUtil.SetIntValue(file, "RestrictAllowance", RestrictAllowance as int)
	JsonUtil.SetIntValue(file, "OwnerGoldShare", OwnerGoldShare)
	JsonUtil.SetIntValue(file, "PlayerExpenseGold", PlayerExpenseGold)
	JsonUtil.SetIntValue(file, "ShareAllGold", ShareAllGold as int)
	JsonUtil.SetIntValue(file, "AutoAdjustGoldShare", AutoAdjustGoldShare as int)
	JsonUtil.SetIntValue(file, "GoldShareScoreMult", GoldShareScoreMult)
	JsonUtil.SetIntValue(file, "GoldShareExtra", GoldShareExtra)
	JsonUtil.SetIntValue(file, "ShoppingBonus", ShoppingBonus)
	JsonUtil.SetIntValue(file, "ShoppingSex", ShoppingSex)
	
	; Owner Expenses
	JsonUtil.SetIntValue(file, "OwnerStartingGold", OwnerStartingGold)
	JsonUtil.SetIntValue(file, "OwnerExpenses", OwnerExpenses)
	JsonUtil.SetIntValue(file, "OwnerPoverty", OwnerPoverty)
	JsonUtil.SetIntValue(file, "PoorOwnerTakesGold", PoorOwnerTakesGold as int)
	JsonUtil.SetIntValue(file, "PoorOwnerForcesProst", PoorOwnerForcesProst as int)
	JsonUtil.SetIntValue(file, "PoorOwnerForcesReturn", PoorOwnerForcesReturn as int)
	JsonUtil.SetIntValue(file, "OwnerRoomRental", OwnerRoomRental as int)
	JsonUtil.SetIntValue(file, "OwnerExpensePercent", OwnerExpensePercent)
	JsonUtil.SetFloatValue(file, "PriceFactor", PriceFactor)
	
	; Contracts
	JsonUtil.SetIntValue(file, "ContractGoldPerWeek", ContractGoldPerWeek)
	
	;Poses
	JsonUtil.SetIntValue(file, "kneelFix", kneelFix as int)
	JsonUtil.SetIntValue(file, "UseAlternateKneel", UseAlternateKneel as int)
	JsonUtil.SetIntValue(file, "KneelUnequipArrows", KneelUnequipArrows as int)
	JsonUtil.SetStringValue(file, "KneelUnequipSlots", KneelUnequipSlots)
	JsonUtil.SetIntValue(file, "UseRZRewardWhipping", UseRZRewardWhipping as int)
	
	; Dancing
	JsonUtil.SetIntValue(file, "DanceMusicOption", DanceMusicOption)
	JsonUtil.SetIntValue(file, "DanceDuration", DanceDuration)
	JsonUtil.SetFloatValue(file, "DanceDelay", DanceDelay)
	JsonUtil.SetIntValue(file, "StopDancingWipeBrow", StopDancingWipeBrow as int)
	
	JsonUtil.SetIntValue(file, "DanceBelly", DanceBelly as int)
	JsonUtil.SetIntValue(file, "DanceFunky", DanceFunky as int)
	JsonUtil.SetIntValue(file, "DanceGroove", DanceGroove as int)
	JsonUtil.SetIntValue(file, "DanceSephyDisco", DanceSephyDisco as int)
	JsonUtil.SetIntValue(file, "DanceSexy", DanceSexy as int)
	JsonUtil.SetIntValue(file, "DanceSexyAJ", DanceSexyAJ as int)
	JsonUtil.SetIntValue(file, "DanceShakeAss", DanceShakeAss as int)
	JsonUtil.SetIntValue(file, "DanceSnake", DanceSnake as int)
	
	JsonUtil.SetIntValue(file, "DanceCyberThunderCider", DanceCyberThunderCider as int)
	JsonUtil.SetIntValue(file, "DanceBoPeep", DanceBoPeep as int)
	JsonUtil.SetIntValue(file, "DanceDoubleLariat", DanceDoubleLariat as int)
	JsonUtil.SetIntValue(file, "DanceEvenEvenEven", DanceEvenEvenEven as int)
	JsonUtil.SetIntValue(file, "DanceGalaxias", DanceGalaxias as int)
	JsonUtil.SetIntValue(file, "DanceHurlyBurly", DanceHurlyBurly as int)
	JsonUtil.SetIntValue(file, "DanceKissMe", DanceKissMe as int)
	JsonUtil.SetIntValue(file, "DanceLilyLilyBurningNight", DanceLilyLilyBurningNight as int)
	JsonUtil.SetIntValue(file, "DanceMassaraBlueJeans", DanceMassaraBlueJeans as int)
	JsonUtil.SetIntValue(file, "DanceMeguMeguFire", DanceMeguMeguFire as int)
	JsonUtil.SetIntValue(file, "DanceMosaicRoll", DanceMosaicRoll as int)
	JsonUtil.SetIntValue(file, "DanceSweetDevil", DanceSweetDevil as int)
		
	; Cheat Prevention
	JsonUtil.SetIntValue(file, "NoSwipingGold", NoSwipingGold as int)
	JsonUtil.SetIntValue(file, "NoSpendingGold", NoSpendingGold as int)
	JsonUtil.SetIntValue(file, "NoSwipingKeys", NoSwipingKeys as int)
	JsonUtil.SetIntValue(file, "NoChangingKeptBelow", NoChangingKeptBelow as int)
	JsonUtil.SetIntValue(file, "NoChangingSubRate", NoChangingSubRate as int)
	JsonUtil.SetIntValue(file, "NoDismissing", NoDismissing as int)
	
	; Mod Integration
	if useRadProstitution
		JsonUtil.SetIntValue(file, "OwnerIsRadProPimp", OwnerIsRadProPimp as int)
	endif
	if useSimpleSlavery
		; Auction buyers (import/export of this is no longer used)
		;if JsonUtil.JsonExists(jsonPathBuyers)
		;	int nBuyers = JsonUtil.StringListCount(jsonPathBuyers, jsonBuyersKey)
		;	if nBuyers > 0
		;		string[] buyers = JsonUtil.StringListToArray(jsonPathBuyers, jsonBuyersKey)
		;		int i = 0
		;		While i < nBuyers
		;			string buyerName = buyers[i]
		;			Actor buyer = JsonUtil.GetFormValue(jsonPathBuyers, buyerName) as Actor
		;			JsonUtil.StringListAdd(file, jsonBuyersKey, buyerName, false)
		;			JsonUtil.SetFormValue(file, buyerName, buyer)
		;			i += 1
		;		EndWhile
		;	endif
		;endif
	
		JsonUtil.SetIntValue(file, "ChanceSoldOnExit", ChanceSoldOnExit)
	endif
	if useSlaveTats
		JsonUtil.SetIntValue(file, "UseTearTats", UseTearTats as int)
		JsonUtil.SetFloatValue(file, "SlaveTatAlpha", SlaveTatAlpha)
	endif
	
	; System
	JsonUtil.SetStringValue(file, "OwnerTitle", MQ.OwnerTitle)
	JsonUtil.SetStringValue(file, "OwnerTitleAlt", MQ.OwnerTitleAlt)
	JsonUtil.SetIntValue(file, "AllowSexDuringSuspend", AllowSexDuringSuspend as int)
	JsonUtil.SetFloatValue(file, "GlobalLoadScreenChance", GlobalLoadScreenChance.GetValue())
	JsonUtil.SetIntValue(file, "SpankingAnimLimit", SpankingAnimLimit)
	JsonUtil.SetIntValue(file, "EnableCookingPots", EnableCookingPots as int)
	JsonUtil.SetIntValue(file, "AddKneelSpell", AddKneelSpell as int)

	JsonUtil.Save(File, false)
	return true
EndFunction

bool Function ImportSettings(string file)
	if !CheckPapyrusVersion()
		return false
	endif
	if !JsonUtil.JsonExists(file)
		Debug.MessageBox("Missing file " + file + " in Data/SKSE/Plugins")
		return false
	endif
	float ver = JsonUtil.GetFloatValue(file, "Version")
	
	PlayerAsks = JsonUtil.GetIntValue(file, "PlayerAsks", PlayerAsks as int) as bool
	FollowerAsks = JsonUtil.GetIntValue(file, "FollowerAsks", FollowerAsks as int) as bool
	FollowerKnows = JsonUtil.GetIntValue(file, "FollowerKnows", FollowerKnows)
	NickNameMode = JsonUtil.GetIntValue(file, "NickNameMode", NickNameMode as int) as bool
	NoZazEnslave = JsonUtil.GetIntValue(file, "NoZazEnslave", NoZazEnslave as int) as bool
	
	if !NoChangingSubRate
		_v_subG = JsonUtil.GetIntValue(file, "_v_subG", _v_subG)
		v_subG = JsonUtil.GetFloatValue(file, "v_subG", v_subG)
		_v_resistG = JsonUtil.GetIntValue(file, "_v_resistG", _v_resistG)
		v_resistG = JsonUtil.GetFloatValue(file, "v_resistG", v_resistG)	
	endif
	ScoreDecay = JsonUtil.GetIntValue(file, "ScoreDecay", ScoreDecay)
	ScaleScoreDecay = JsonUtil.GetIntValue(file, "ScaleScoreDecay", ScaleScoreDecay as int) as bool
	Frequency = JsonUtil.GetFloatValue(file, "Frequency", Frequency)
	GlobalPace.SetValue(JsonUtil.GetFloatValue(file, "GlobalPace", GlobalPace.GetValue()))
	BoredomPenalty = JsonUtil.GetFloatValue(file, "BoredomPenalty", BoredomPenalty)
	_Contract = JsonUtil.GetIntValue(file, "_Contract", _Contract)
	
	if !disableKeptSettings
		if !MQ.IsKept
			KeptThreshold = JsonUtil.GetIntValue(file, "KeptThreshold", KeptThreshold)
		endif
		;if !MQ.GetIsKeptPermanently()
		;	KeptForever = JsonUtil.GetIntValue(file, "KeptForever", KeptForever as int) as bool
		;endif
		if !NoChangingKeptBelow
			KeptBelowThreshold = JsonUtil.GetIntValue(file, "KeptBelowThreshold", KeptBelowThreshold)
		endif
	endif
	
	; Rules
	; Punishment
	ShockStrength = JsonUtil.GetIntValue(file, "ShockStrength", ShockStrength)
	ShockMagickaLoss = JsonUtil.GetIntValue(file, "ShockMagickaLoss", ShockMagickaLoss)
	ArousalLossOnZap = JsonUtil.GetIntValue(file, "ArousalLossOnZap", ArousalLossOnZap)
	SpankedXpRate = JsonUtil.GetFloatValue(file, "SpankedXpRate", SpankedXpRate)
	WhippedXpRate = JsonUtil.GetFloatValue(file, "WhippedXpRate", WhippedXpRate)
	SpankedHardPerk.SetNthEntryValue(0, 0, SpankedXpRate)
	WhippedHardPerk.SetNthEntryValue(0, 0, WhippedXpRate)
	WhipPunishDuration = JsonUtil.GetIntValue(file, "WhipPunishDuration", WhipPunishDuration)
	WhipRewardDuration = JsonUtil.GetIntValue(file, "WhipRewardDuration", WhipRewardDuration)
	WhipWeapon = JsonUtil.GetIntValue(file, "WhipWeapon", WhipWeapon)
	WhipSpeed = JsonUtil.GetIntValue(file, "WhipSpeed", WhipSpeed)
	WhipNotZap = JsonUtil.GetIntValue(file, "WhipNotZap", WhipNotZap)
	AllowMotivation = JsonUtil.GetIntValue(file, "AllowMotivation", AllowMotivation as int) as bool
	UseRedGlow = JsonUtil.GetIntValue(file, "UseRedGlow", UseRedGlow as int) as bool
	GentleRewardWhipping = JsonUtil.GetIntValue(file, "GentleRewardWhipping", GentleRewardWhipping as int) as bool
	PunishFriendlyFire = JsonUtil.GetIntValue(file, "PunishFriendlyFire", PunishFriendlyFire as int) as bool
	BleedoutDays = JsonUtil.GetIntValue(file, "BleedoutDays", BleedoutDays)
	BleedoutProstQuota = JsonUtil.GetIntValue(file, "BleedoutProstQuota", BleedoutProstQuota)
	BleedoutPotions = JsonUtil.GetIntValue(file, "BleedoutPotions", BleedoutPotions)
	PunishmentDays = JsonUtil.GetIntValue(file, "PunishmentDays", PunishmentDays)
	DFBaseResistLoss = JsonUtil.GetFloatValue(file, "DFBaseResistLoss", DFBaseResistLoss)
	
	; Forced Prostitution
	GlobalProstitutionChance.SetValue(JsonUtil.GetFloatValue(file, "GlobalProstitutionChance", GlobalProstitutionChance.GetValue()))
	v_minclients = JsonUtil.GetIntValue(file, "v_minclients", v_minclients)
	v_randclients = JsonUtil.GetIntValue(file, "v_randclients", v_randclients)
	v_whoreCD = JsonUtil.GetIntValue(file, "v_whoreCD", v_whoreCD)
	UpdateCooldown(NextWhore, NextWhoreCD, (v_whoreCD / 24.0))
	NextWhoreCD = v_whoreCD / 24.0
	v_whoreBasePay = JsonUtil.GetIntValue(file, "v_whoreBasePay", v_whoreBasePay)
	_v_whoreDomCut = JsonUtil.GetIntValue(file, "_v_whoreDomCut", _v_whoreDomCut)
	v_whoreDomCut = JsonUtil.GetFloatValue(file, "v_whoreDomCut", v_whoreDomCut)
	ProstPayMode = JsonUtil.GetIntValue(file, "ProstPayMode", ProstPayMode as int) as bool
	NymphoNotWhore = JsonUtil.GetIntValue(file, "NymphoNotWhore", NymphoNotWhore as int) as bool
	ServiceInnkeeper = JsonUtil.GetIntValue(file, "ServiceInnkeeper", ServiceInnkeeper as int) as bool
	ProstIgnoreArousal = JsonUtil.GetIntValue(file, "ProstIgnoreArousal", ProstIgnoreArousal as int) as bool	
	ProstThreshold = JsonUtil.GetIntValue(file, "ProstThreshold", ProstThreshold)
	ProstFee = JsonUtil.GetIntValue(file, "ProstFee", ProstFee)

	; Nudity
	NudeRule = JsonUtil.GetIntValue(file, "NudeRule", NudeRule)
	NudeOutfit = JsonUtil.GetFormValue(file, "NudeOutfit", NudeOutfit) as Armor

	HasNudeOutfit = (NudeOutfit != none) && !NudeOutfit.HasKeywordString("ArmorLight") && !NudeOutfit.HasKeywordString("ArmorHeavy")
	if !HasNudeOutfit
		NudeOutfit = none
	endif

	ClothesOnly = JsonUtil.GetIntValue(file, "ClothesOnly", ClothesOnly as int) as bool
	StripOnNudeP = JsonUtil.GetIntValue(file, "StripOnNudeP", StripOnNudeP as int) as bool
	EyeCandyChance = JsonUtil.GetIntValue(file, "EyeCandyChance", EyeCandyChance)
	WhippedEyeCandyChance = JsonUtil.GetIntValue(file, "WhippedEyeCandyChance", WhippedEyeCandyChance)
	ExtendedEyeCandy = JsonUtil.GetIntValue(file, "ExtendedEyeCandy", ExtendedEyeCandy as int) as bool
	EyeCandyRejectChance = JsonUtil.GetIntValue(file, "EyeCandyRejectChance", EyeCandyRejectChance)
	
	; Other Rules
	hair_option = JsonUtil.GetIntValue(file, "hair_option", hair_option)
	v_ServMinTimes = JsonUtil.GetIntValue(file, "v_ServMinTimes", v_ServMinTimes)
	v_ServRandTimes = JsonUtil.GetIntValue(file, "v_ServRandTimes", v_ServRandTimes)
	SexMinTimes = JsonUtil.GetIntValue(file, "SexMinTimes", SexMinTimes)
	MinDailyScore = JsonUtil.GetIntValue(file, "MinDailyScore", MinDailyScore)
	_v_overburdened = JsonUtil.GetIntValue(file, "_v_overburdened", _v_overburdened)
	v_overburdened = JsonUtil.GetFloatValue(file, "v_overburdened", v_overburdened)
	OverburdenBonus = JsonUtil.GetIntValue(file, "OverburdenBonus", OverburdenBonus)
	mustUnburden = JsonUtil.GetIntValue(file, "mustUnburden", mustUnburden as int) as bool
	AllowBuffs = JsonUtil.GetIntValue(file, "AllowBuffs", AllowBuffs as int) as bool
	CombatMercyLevel = JsonUtil.GetFloatValue(file, "CombatMercyLevel", CombatMercyLevel)
	noDragonMercy = JsonUtil.GetIntValue(file, "noDragonMercy", noDragonMercy as int) as bool
	FashionSlaveChance = JsonUtil.GetIntValue(file, "FashionSlaveChance", FashionSlaveChance)
	GlobalFashionSlaveChance.SetValue(FashionSlaveChance)
	denyMasturbation = JsonUtil.GetIntValue(file, "denyMasturbation", denyMasturbation as int) as bool
	NoMoreP = JsonUtil.GetIntValue(file, "NoMoreP", NoMoreP as int) as bool
	OwnerTakesKeys = JsonUtil.GetIntValue(file, "OwnerTakesKeys", OwnerTakesKeys as int) as bool
	AllowedLockpicks = JsonUtil.GetIntValue(file, "AllowedLockpicks", AllowedLockpicks)
	ClothesPrankChance = JsonUtil.GetIntValue(file, "ClothesPrankChance", ClothesPrankChance)
	CustomConfessions = JsonUtil.GetIntValue(file, "CustomConfessions", CustomConfessions)
	HairChangeMin = JsonUtil.GetFloatValue(file, "HairChangeMin", HairChangeMin)
	HairChangeMax = JsonUtil.GetFloatValue(file, "HairChangeMax", HairChangeMax)

	int oldRequiredCuffs = RequiredCuffs
	RequiredCuffs = JsonUtil.GetIntValue(file, "RequiredCuffs", RequiredCuffs)
	if oldRequiredCuffs != RequiredCuffs
		RequiredCuffsChanged()
	endif
	
	bool oldUseCombatPotions = UseCombatPotions
	UseCombatPotions = JsonUtil.GetIntValue(file, "UseCombatPotions", UseCombatPotions as int) as bool
	if oldUseCombatPotions != UseCombatPotions
		UseCombatPotionsChanged()
	endif
	
	; Cooldowns
	
	RandomCooldown = JsonUtil.GetIntValue(file, "RandomCooldown", RandomCooldown)

	float oldCD = NextBardPlayCD
	NextBardPlayCD = JsonUtil.GetFloatValue(file, "NextBardPlayCD", NextBardPlayCD)
	UpdateCooldown(NextBardPlay, oldCD, NextBardPlayCD)
	
	oldCD = NextBringGoldCD
	NextBringGoldCD = JsonUtil.GetFloatValue(file, "NextBringGoldCD", NextBringGoldCD)
	UpdateCooldown(NextBringGold, oldCD, NextBringGoldCD)
	
	oldCD = NextConfessionCD
	NextConfessionCD = JsonUtil.GetFloatValue(file, "NextConfessionCD", NextConfessionCD)
	UpdateCooldown(NextConfession, oldCD, NextConfessionCD)
	
	oldCD = NextFamousCD
	NextFamousCD = JsonUtil.GetFloatValue(file, "NextFamousCD", NextFamousCD)
	UpdateCooldown(NextFamous, oldCD, NextFamousCD)
	
	oldCD = NextHairChangeCD
	NextHairChangeCD = JsonUtil.GetFloatValue(file, "NextHairChangeCD", NextHairChangeCD)
	UpdateCooldown(NextHairChange, oldCD, NextHairChangeCD)
	
	oldCD = NextLightsOutCD
	NextLightsOutCD = JsonUtil.GetFloatValue(file, "NextLightsOutCD", NextLightsOutCD)
	UpdateCooldown(NextLightsOut, oldCD, NextLightsOutCD)
	
	oldCD = NextPonyExpressCD
	NextPonyExpressCD = JsonUtil.GetFloatValue(file, "NextPonyExpressCD", NextPonyExpressCD)
	UpdateCooldown(NextPonyExpress, oldCD, NextPonyExpressCD)
	
	oldCD = NextRunLolaRunCD
	NextRunLolaRunCD = JsonUtil.GetFloatValue(file, "NextRunLolaRunCD", NextRunLolaRunCD)
	UpdateCooldown(NextRunLolaRun, oldCD, NextRunLolaRunCD)
	
	oldCD = NextStewingCD
	NextStewingCD = JsonUtil.GetFloatValue(file, "NextStewingCD", NextStewingCD)
	UpdateCooldown(NextStewing, oldCD, NextStewingCD)
	
	oldCD = NextTempleOfLoveCD
	NextTempleOfLoveCD = JsonUtil.GetFloatValue(file, "NextTempleOfLoveCD", NextTempleOfLoveCD)
	UpdateCooldown(NextTempleOfLove, oldCD, NextTempleOfLoveCD)
	
	oldCD = NextFindTreasureCD
	NextFindTreasureCD = JsonUtil.GetFloatValue(file, "NextFindTreasureCD", NextFindTreasureCD)
	UpdateCooldown(NextFindTreasure, oldCD, NextFindTreasureCD)
	
	oldCD = NextTrophySlaveCD
	NextTrophySlaveCD = JsonUtil.GetFloatValue(file, "NextTrophySlaveCD", NextTrophySlaveCD)
	UpdateCooldown(NextTrophySlave, oldCD, NextTrophySlaveCD)
	
	oldCD = NextWRWalkCD
	NextWRWalkCD = JsonUtil.GetFloatValue(file, "NextWRWalkCD", NextWRWalkCD)
	UpdateCooldown(NextWRWalk, oldCD, NextWRWalkCD)
	
	oldCD = NextSlutsCD
	NextSlutsCD = JsonUtil.GetFloatValue(file, "NextSlutsCD", NextSlutsCD)
	UpdateCooldown(NextSluts, oldCD, NextSlutsCD)
	
	oldCD = NextButtToyCD
	NextButtToyCD = JsonUtil.GetFloatValue(file, "NextButtToyCD", NextButtToyCD)
	UpdateCooldown(NextButtToy, oldCD, NextButtToyCD)

	oldCD = NextCountingIsFunCD
	NextCountingIsFunCD = JsonUtil.GetFloatValue(file, "NextCountingIsFunCD", NextCountingIsFunCD)
	UpdateCooldown(NextCountingIsFun, oldCD, NextCountingIsFunCD)
	
	; Devices
	collars = JsonUtil.GetIntValue(file, "collars", collars)
	gags = JsonUtil.GetIntValue(file, "gags", gags)
	blinds = JsonUtil.GetIntValue(file, "blinds", blinds)
	if blinds >= 3
		blinds = 0
	endif
	aRestraints = JsonUtil.GetIntValue(file, "aRestraints", aRestraints)
	dress = JsonUtil.GetIntValue(file, "dress", dress)
	gloves = JsonUtil.GetIntValue(file, "gloves", gloves)
	shoes = JsonUtil.GetIntValue(file, "shoes", shoes)
	BondageShoes = JsonUtil.GetIntValue(file, "BondageShoes", BondageShoes)
	ArmCuffs = JsonUtil.GetIntValue(file, "ArmCuffs", ArmCuffs)
	LegCuffs = JsonUtil.GetIntValue(file, "LegCuffs", LegCuffs)
	tail = JsonUtil.GetIntValue(file, "tail", tail)
	ponyColor = JsonUtil.GetIntValue(file, "ponyColor", ponyColor)
	if ponyColor >= 3
		ponyColor = 0
	endif
	BodyHarness = JsonUtil.GetIntValue(file, "BodyHarness", BodyHarness)
	RopeHarness = JsonUtil.GetIntValue(file, "RopeHarness", RopeHarness)
	FashionBody = JsonUtil.GetIntValue(file, "FashionBody", FashionBody)
	ExtraKeys = JsonUtil.GetIntValue(file, "ExtraKeys", ExtraKeys)
	PonyPrance = JsonUtil.GetIntValue(file, "PonyPrance", PonyPrance as int) as bool
	BlindfoldFun = JsonUtil.GetIntValue(file, "BlindfoldFun", BlindfoldFun as int) as bool
	usePiercings = JsonUtil.GetIntValue(file, "usePiercings", usePiercings as int) as bool
	VibDuration = JsonUtil.GetFloatValue(file, "VibDuration", VibDuration)
	ForcedVibDuration = JsonUtil.GetFloatValue(file, "ForcedVibDuration", ForcedVibDuration)
	DragonVib = JsonUtil.GetIntValue(file, "DragonVib", DragonVib as int) as bool
	GlowOnEnslaved = JsonUtil.GetIntValue(file, "GlowOnEnslaved", GlowOnEnslaved)
	GlowOnSuspend = JsonUtil.GetIntValue(file, "GlowOnSuspend", GlowOnSuspend)
	GlowOnSpank = JsonUtil.GetIntValue(file, "GlowOnSpank", GlowOnSpank)
	GlowOnWhip = JsonUtil.GetIntValue(file, "GlowOnWhip", GlowOnWhip)
	GlowOnBeckon = JsonUtil.GetIntValue(file, "GlowOnBeckon", GlowOnBeckon)
	
	; Roleplay
	; Sex & Sexuality
	OwnerSexuality = JsonUtil.GetIntValue(file, "OwnerSexuality", OwnerSexuality)
	PCSexuality = JsonUtil.GetIntValue(file, "PCSexuality", PCSexuality)
	NoBeastRaces = JsonUtil.GetIntValue(file, "NoBeastRaces", NoBeastRaces as int) as bool
	GlobalArousalThreshold.SetValue(JsonUtil.GetFloatValue(file, "GlobalArousalThreshold", GlobalArousalThreshold.GetValue()))
	v_StrapOn = JsonUtil.GetIntValue(file, "v_StrapOn", v_StrapOn)
	v_likesAnal = JsonUtil.GetIntValue(file, "v_likesAnal", v_likesAnal)
	LikesOral = JsonUtil.GetIntValue(file, "LikesOral", LikesOral)
	Global3wayChance.SetValue(JsonUtil.GetFloatValue(file, "Global3wayChance", Global3wayChance.GetValue()))
	v_roughSexChance = JsonUtil.GetIntValue(file, "v_roughSexChance", v_roughSexChance)
	v_roughSexChance100 = JsonUtil.GetIntValue(file, "v_roughSexChance100", v_roughSexChance100)
	PlayerSexSatisfaction = JsonUtil.GetIntValue(file, "PlayerSexSatisfaction", PlayerSexSatisfaction)
	RoughSexSatisfaction = JsonUtil.GetIntValue(file, "RoughSexSatisfaction", RoughSexSatisfaction)
	RemovePlugsForSex = JsonUtil.GetIntValue(file, "RemovePlugsForSex", RemovePlugsForSex)

	PlaymateCopiesNude = JsonUtil.GetIntValue(file, "PlaymateCopiesNude", PlaymateCopiesNude as int) as bool
	PMOutfit = JsonUtil.GetFormValue(file, "PMOutfit", PMOutfit) as Armor
	HasPMOutfit = (PMOutfit != none)
	PMBoots = JsonUtil.GetFormValue(file, "PMBoots", PMBoots) as Armor
	HasPMBoots = (PMBoots != none)
	PlaymateChance.SetValue(JsonUtil.GetFloatValue(file, "PlaymateChance", PlaymateChance.GetValue()))
	OwnerPrefersPlaymate.SetValue(JsonUtil.GetFloatValue(file, "OwnerPrefersPlaymate", OwnerPrefersPlaymate.GetValue()))
	PlaymateSex = JsonUtil.GetIntValue(file, "PlaymateSex", PlaymateSex)
	PlaymateWantsSex = JsonUtil.GetIntValue(file, "PlaymateWantsSex", PlaymateWantsSex)
	PlaymateStrapOn = JsonUtil.GetIntValue(file, "PlaymateStrapOn", PlaymateStrapOn)
	SexWithPlaymateSatisfaction = JsonUtil.GetIntValue(file, "SexWithPlaymateSatisfaction", SexWithPlaymateSatisfaction)
	PlaymatePunishes = JsonUtil.GetIntValue(file, "PlaymatePunishes", PlaymatePunishes)

	OwnerAttitude = JsonUtil.GetIntValue(file, "OwnerAttitude", OwnerAttitude)
	GlobalCommentChance.SetValue(JsonUtil.GetFloatValue(file, "GlobalCommentChance", GlobalCommentChance.GetValue()))
	drunkowner = JsonUtil.GetIntValue(file, "drunkowner", drunkowner)
	GlobalUnfairDom.SetValue(JsonUtil.GetFloatValue(file, "GlobalUnfairDom", GlobalUnfairDom.GetValue()))
	OwnerCarryReduction = JsonUtil.GetIntValue(file, "OwnerCarryReduction", OwnerCarryReduction)
	VampireCooldown = JsonUtil.GetIntValue(file, "VampireCooldown", VampireCooldown)
	VampireFeedingOption = JsonUtil.GetIntValue(file, "VampireFeedingOption", VampireFeedingOption)
	skillTaught = JsonUtil.GetIntValue(file, "skillTaught", skillTaught)
	Humiliation = JsonUtil.GetIntValue(file, "Humiliation", Humiliation)
	SpeechReductionRate = JsonUtil.GetFloatValue(file, "SpeechReductionRate", SpeechReductionRate)
	if MainQuest.IsRunning()
		MQ.UpdateSpeechReductionRate()
	endif
	ThoughtsInterval = JsonUtil.GetIntValue(file, "ThoughtsInterval", ThoughtsInterval)
	WhatIWantToHear = JsonUtil.GetStringValue(file, "WhatIWantToHear")
	MustOfferServiceScore = JsonUtil.GetIntValue(file, "MustOfferServiceScore", MustOfferServiceScore)
	AlwaysKneelScore = JsonUtil.GetIntValue(file, "AlwaysKneelScore", AlwaysKneelScore)
	
	; Gold
	; Adventuring Slave
	_v_interest = JsonUtil.GetIntValue(file, "_v_interest", _v_interest)
	v_interest = JsonUtil.GetFloatValue(file, "v_interest", v_interest)
	v_debtcap = JsonUtil.GetIntValue(file, "v_debtcap", v_debtcap)
	
	; Loot Sharing
	Allowance = JsonUtil.GetIntValue(file, "Allowance", Allowance)
	AllowanceBonus = JsonUtil.GetFloatValue(file, "AllowanceBonus", AllowanceBonus)
	RestrictAllowance = JsonUtil.GetIntValue(file, "RestrictAllowance", RestrictAllowance as int) as bool
	OwnerGoldShare = JsonUtil.GetIntValue(file, "OwnerGoldShare", OwnerGoldShare)
	PlayerExpenseGold = JsonUtil.GetIntValue(file, "PlayerExpenseGold", PlayerExpenseGold)
	ShareAllGold = JsonUtil.GetIntValue(file, "ShareAllGold", ShareAllGold as int) as bool
	AutoAdjustGoldShare = JsonUtil.GetIntValue(file, "AutoAdjustGoldShare", AutoAdjustGoldShare as int) as bool
	GoldShareScoreMult = JsonUtil.GetIntValue(file, "GoldShareScoreMult", GoldShareScoreMult)
	GoldShareExtra = JsonUtil.GetIntValue(file, "GoldShareExtra", GoldShareExtra)
	ShoppingBonus = JsonUtil.GetIntValue(file, "ShoppingBonus", ShoppingBonus)
	ShoppingSex = JsonUtil.GetIntValue(file, "ShoppingSex", ShoppingSex)
	
	; Owner Expenses
	OwnerStartingGold = JsonUtil.GetIntValue(file, "OwnerStartingGold", OwnerStartingGold)
	OwnerExpenses = JsonUtil.GetIntValue(file, "OwnerExpenses", OwnerExpenses)
	OwnerPoverty = JsonUtil.GetIntValue(file, "OwnerPoverty", OwnerPoverty)
	PoorOwnerTakesGold = JsonUtil.GetIntValue(file, "PoorOwnerTakesGold", PoorOwnerTakesGold as int) as bool
	PoorOwnerForcesProst = JsonUtil.GetIntValue(file, "PoorOwnerForcesProst", PoorOwnerForcesProst as int) as bool
	PoorOwnerForcesReturn = JsonUtil.GetIntValue(file, "PoorOwnerForcesReturn", PoorOwnerForcesReturn as int) as bool
	OwnerRoomRental = JsonUtil.GetIntValue(file, "OwnerRoomRental", OwnerRoomRental as int) as bool
	OwnerExpensePercent = JsonUtil.GetIntValue(file, "OwnerExpensePercent", OwnerExpensePercent)
	PriceFactor = JsonUtil.GetFloatValue(file, "PriceFactor", PriceFactor)
	
	; Contracts
	ContractGoldPerWeek = JsonUtil.GetIntValue(file, "ContractGoldPerWeek", ContractGoldPerWeek)
	
	; Poses
	kneelFix = JsonUtil.GetIntValue(file, "kneelFix", kneelFix as int) as bool
	UseAlternateKneel = JsonUtil.GetIntValue(file, "UseAlternateKneel", UseAlternateKneel as int) as bool
	KneelUnequipArrows = JsonUtil.GetIntValue(file, "KneelUnequipArrows", KneelUnequipArrows as int) as bool
	
	string str = JsonUtil.GetStringValue(file, "KneelUnequipSlots")
	bool isValid = SetUnequipOnKneel(str)
	if isValid
		KneelUnequipSlots = str
	endif
	
	UseRZRewardWhipping = JsonUtil.GetIntValue(file, "UseRZRewardWhipping", UseRZRewardWhipping as int) as bool
	UpdateRewardWhippingPoses()
	
	; Dancing
	DanceMusicOption = JsonUtil.GetIntValue(file, "DanceMusicOption", DanceMusicOption)
	DanceDuration = JsonUtil.GetIntValue(file, "DanceDuration", DanceDuration)
	DanceDelay = JsonUtil.GetFloatValue(file, "DanceDelay", DanceDelay)
	StopDancingWipeBrow = JsonUtil.GetIntValue(file, "StopDancingWipeBrow", StopDancingWipeBrow as int) as bool
	
	DanceBelly = JsonUtil.GetIntValue(file, "DanceBelly", DanceBelly as int) as bool
	DanceFunky = JsonUtil.GetIntValue(file, "DanceFunky", DanceFunky as int) as bool
	DanceGroove = JsonUtil.GetIntValue(file, "DanceGroove", DanceGroove as int) as bool
	DanceSephyDisco = JsonUtil.GetIntValue(file, "DanceSephyDisco", DanceSephyDisco as int) as bool
	DanceSexy = JsonUtil.GetIntValue(file, "DanceSexy", DanceSexy as int) as bool
	DanceSexyAJ = JsonUtil.GetIntValue(file, "DanceSexyAJ", DanceSexyAJ as int) as bool
	DanceShakeAss = JsonUtil.GetIntValue(file, "DanceShakeAss", DanceShakeAss as int) as bool
	DanceSnake = JsonUtil.GetIntValue(file, "DanceSnake", DanceSnake as int) as bool
	
	DanceCyberThunderCider = JsonUtil.GetIntValue(file, "DanceCyberThunderCider", DanceCyberThunderCider as int) as bool
	DanceBoPeep = JsonUtil.GetIntValue(file, "DanceBoPeep", DanceBoPeep as int) as bool
	DanceDoubleLariat = JsonUtil.GetIntValue(file, "DanceDoubleLariat", DanceDoubleLariat as int) as bool
	DanceEvenEvenEven = JsonUtil.GetIntValue(file, "DanceEvenEvenEven", DanceEvenEvenEven as int) as bool
	DanceGalaxias = JsonUtil.GetIntValue(file, "DanceGalaxias", DanceGalaxias as int) as bool
	DanceHurlyBurly = JsonUtil.GetIntValue(file, "DanceHurlyBurly", DanceHurlyBurly as int) as bool
	DanceKissMe = JsonUtil.GetIntValue(file, "DanceKissMe", DanceKissMe as int) as bool
	DanceLilyLilyBurningNight = JsonUtil.GetIntValue(file, "DanceLilyLilyBurningNight", DanceLilyLilyBurningNight as int) as bool
	DanceMassaraBlueJeans = JsonUtil.GetIntValue(file, "DanceMassaraBlueJeans", DanceMassaraBlueJeans as int) as bool
	DanceMeguMeguFire = JsonUtil.GetIntValue(file, "DanceMeguMeguFire", DanceMeguMeguFire as int) as bool
	DanceMosaicRoll = JsonUtil.GetIntValue(file, "DanceMosaicRoll", DanceMosaicRoll as int) as bool
	DanceSweetDevil = JsonUtil.GetIntValue(file, "DanceSweetDevil", DanceSweetDevil as int) as bool
	
	; Cheat Prevention
	if !v_LockCheat
		NoSwipingGold = JsonUtil.GetIntValue(file, "NoSwipingGold", NoSwipingGold as int) as bool
		NoSpendingGold = JsonUtil.GetIntValue(file, "NoSpendingGold", NoSpendingGold as int) as bool
		NoSwipingKeys = JsonUtil.GetIntValue(file, "NoSwipingKeys", NoSwipingKeys as int) as bool
		NoChangingKeptBelow = JsonUtil.GetIntValue(file, "NoChangingKeptBelow", NoChangingKeptBelow as int) as bool
		NoChangingSubRate = JsonUtil.GetIntValue(file, "NoChangingSubRate", NoChangingSubRate as int) as bool
		NoDismissing = JsonUtil.GetIntValue(file, "NoDismissing", NoDismissing as int) as bool
	endif
	
	; Mod Integration
	if useRadProstitution
		OwnerIsRadProPimp = JsonUtil.GetIntValue(file, "OwnerIsRadProPimp", OwnerIsRadProPimp as int) as bool
		MQ.MakeOwnerRadProPimp(OwnerIsRadProPimp)
	endif
	if useSimpleSlavery
		; Auction buyer (deprecated - backwards compatibility)
		;Form buyer = JsonUtil.GetFormValue(file, "BuyerRef")
		;if buyer != none
		;	AddBuyer(buyer as Actor)
		;endif
		
		; Auction buyers (import/export of this is no longer used)
		;int nBuyers = JsonUtil.StringListCount(file, jsonBuyersKey)
		;if nBuyers > 0
		;	string[] buyers = JsonUtil.StringListToArray(file, jsonBuyersKey)
		;	int i = 0
		;	While i < nBuyers
		;		AddBuyer(JsonUtil.GetFormValue(file, buyers[i]) as Actor)
		;		i += 1
		;	EndWhile
		;endif
		
		ChanceSoldOnExit = JsonUtil.GetIntValue(file, "ChanceSoldOnExit", ChanceSoldOnExit)
	endif
	if useSlaveTats
		bool useTears = JsonUtil.GetIntValue(file, "UseTearTats", UseTearTats as int) as bool
		if useTears
			if !UseTearTats
				MQ.InitActiveTears()
			endif
			UseTearTats = useTears
		elseif !useTears
			if MQ.HighestTearsLevel() > 0
				Debug.MessageBox("The imported setting for SlaveTats tears is OFF, but your character has active tears, so you must turn off tears manually.")
			else
				UseTearTats = useTears
			endif
		endif
		SlaveTatAlpha = JsonUtil.GetFloatValue(file, "SlaveTatAlpha", SlaveTatAlpha)
	endif
	
	; System
	string strVal = JsonUtil.GetStringValue(file, "OwnerTitle")
	if (MQ.OwnerTitle != strVal) && (strVal != "")
		if MQ.IsRunning()
			MQ.ChangeOwnerTitle(strVal)
		else
			Debug.MessageBox("The owner title (" + strVal + ") cannot be assigned until you've been enslaved and actually have an owner.  After that, you can either import the settings again, or change the title on the MCM System page.")
		endif
	endif
	strVal = JsonUtil.GetStringValue(file, "OwnerTitleAlt")
	if (MQ.OwnerTitleAlt != strVal) && (strVal != "")
		if MQ.IsRunning()
			MQ.ChangeOwnerTitleAlt(strVal)
		else
			Debug.MessageBox("The owner alternate title (" + strVal + ") cannot be assigned until you've been enslaved and actually have an owner.  After that, you can either import the settings again, or change the title on the MCM System page.")
		endif
	endif
	
	AllowSexDuringSuspend = JsonUtil.GetIntValue(file, "AllowSexDuringSuspend", AllowSexDuringSuspend as int) as bool
	GlobalLoadScreenChance.SetValue(JsonUtil.GetFloatValue(file, "GlobalLoadScreenChance", GlobalLoadScreenChance.GetValue()))
	SpankingAnimLimit = JsonUtil.GetIntValue(file, "SpankingAnimLimit", SpankingAnimLimit)
	
	EnableCookingPots = JsonUtil.GetIntValue(file, "EnableCookingPots", EnableCookingPots as int) as bool
	if EnableCookingPots
		CookingPotActivator.Enable()
	else
		CookingPotActivator.Disable()
	endif
	
	bool oldBool = AddKneelSpell
	AddKneelSpell = JsonUtil.GetIntValue(file, "AddKneelSpell", AddKneelSpell as int) as bool
	if AddKneelSpell != oldBool
		if AddKneelSpell
			P.AddSpell(KneelSpell)
		else
			P.RemoveSpell(KneelSpell)
		endif
	endif
	
	return true
EndFunction