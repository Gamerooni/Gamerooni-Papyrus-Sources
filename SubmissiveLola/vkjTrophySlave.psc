Scriptname vkjTrophySlave extends Quest Conditional

vkjMQ Property MQ auto
Actor Property PlayerRef auto
ReferenceAlias Property Owner auto
ImageSpaceModifier Property FadeOut auto
ImageSpaceModifier Property FadeIn auto
Idle Property PlatformIdle auto
Scene Property ForceGreetScene auto
Scene Property PlatformScene auto
Bool Property IsNewHall auto conditional
Bool Property HasTears auto conditional
Topic[] Property Scene1Topics auto
Topic[] Property Scene2Topics auto
Topic[] Property Scene3Topics auto

Actor Property OwnerRef Auto Hidden
Cell Property SlaveMarket Auto Hidden
ObjectReference Property PlatformMarker Auto Hidden
ObjectReference Property Xmarker Auto Hidden
Actor Property PlatformSlave Auto Hidden
Actor Property Auctioneer Auto Hidden
Actor Property Bidder1 Auto Hidden
Actor Property Bidder2 Auto Hidden
Actor Property Bidder4 Auto Hidden
Actor Property Bidder5 Auto Hidden
Actor Property Bidder6 Auto Hidden
Actor Property Bidder7 Auto Hidden
Actor Property Bidder8 Auto Hidden

String caneModel
int tearsLevel


Function Init()
	MQ.SetBlockEvents(true)
	
	OwnerRef = Owner.GetActorReference()
	SlaveMarket = (Game.GetFormFromFile(0x000250ED, "SimpleSlavery.esp")) as Cell
	PlatformMarker = (Game.GetFormFromFile(0x00025307, "SimpleSlavery.esp")) as ObjectReference
	Xmarker = (Game.GetFormFromFile(0x00025107, "SimpleSlavery.esp")) as ObjectReference; Center of hall
	IsNewHall = ((Game.GetFormFromFile(0x00061A22, "SimpleSlavery.esp")) != None); Test for the crux
	
	; Assemble the cast
	PlatformSlave = (Game.GetFormFromFile(0x00025309, "SimpleSlavery.esp")) as Actor
	Auctioneer = (Game.GetFormFromFile(0x00025308, "SimpleSlavery.esp")) as Actor
	; Front row
	Bidder8 = (Game.GetFormFromFile(0x00033565, "SimpleSlavery.esp")) as Actor
	Bidder5 = (Game.GetFormFromFile(0x00025311, "SimpleSlavery.esp")) as Actor
	Bidder6 = (Game.GetFormFromFile(0x00025312, "SimpleSlavery.esp")) as Actor
	Bidder7 = (Game.GetFormFromFile(0x00025313, "SimpleSlavery.esp")) as Actor
	; Back row
	Bidder4 = (Game.GetFormFromFile(0x00025310, "SimpleSlavery.esp")) as Actor
	Bidder1 = (Game.GetFormFromFile(0x0002530C, "SimpleSlavery.esp")) as Actor
	Bidder2 = (Game.GetFormFromFile(0x0002530D, "SimpleSlavery.esp")) as Actor
	
	PlatformSlave.Disable()
	
	if MQ.LastTrophySlaveScene == 0;  First time this quest has run
		PlaceBook()
	endif
EndFunction

Function PlayPlatformScene()
	MoveToPlatform()
	Utility.Wait(2)
	
	; Update player arousal
	float score = MQ.GlobalSubmissionScore.GetValue()
	int exposure = ((score - 50) / 2) as int
	if score >= 50.0
		exposure += 5
	endif
	MQ.UpdateExposure(PlayerRef, exposure)

	; Normally this would be done as a scene, but that's apparently not possible with soft dependency actors.
	; Select a scene, and don't repeat the last scene that the player saw.
	; Scene 1 is only for voluntary slaves (the normal route), not ones bought at the slave market.
	; If it's the player's first time AND the player was not bought, select scene 1.
	int iScene = 1
	if (MQ.LastTrophySlaveScene > 0) || (MQ.WasBought == 1)
		int iStart = 1
		if MQ.WasBought == 1
			iStart = 2
		endif
		
		iScene = Utility.RandomInt(iStart, 3)
		While iScene == MQ.LastTrophySlaveScene
			iScene = Utility.RandomInt(iStart, 3)
		EndWhile
	endif
	
	MQ.LastTrophySlaveScene = iScene
	
	if iScene == 1
		PlayScene1()
	elseif iScene == 2
		PlayScene2()
	elseif iScene == 3
		PlayScene3()
	endif
	
	PlatformScene.Stop()
	SetStage(40)
EndFunction

; Free (no-cost) Slave
Function PlayScene1()
	OwnerRef.Say(Scene1Topics[0])
	Utility.Wait(11)
	Bidder5.Say(Scene1Topics[1])
	Utility.Wait(11)
	OwnerRef.Say(Scene1Topics[2])
	Utility.Wait(11)
	Bidder8.Say(Scene1Topics[3])
	Utility.Wait(11)
	OwnerRef.Say(Scene1Topics[4])
	Utility.Wait(11)
	Bidder2.Say(Scene1Topics[5])
	Utility.Wait(11)
	OwnerRef.Say(Scene1Topics[6])
	Utility.Wait(11)
	Bidder2.Say(Scene1Topics[7])
	Utility.Wait(9)
	OwnerRef.Say(Scene1Topics[8])
	Utility.Wait(9)
	OwnerRef.Say(Scene1Topics[9])
	Utility.Wait(9)
	Bidder1.Say(Scene1Topics[10])
	Utility.Wait(11)
	OwnerRef.Say(Scene1Topics[11])
	Utility.Wait(11)
	Bidder2.Say(Scene1Topics[12])
	Utility.Wait(8)
EndFunction

; Sex Slave / Whore
Function PlayScene2()
	OwnerRef.Say(Scene2Topics[0])
	Utility.Wait(10)
	Bidder8.Say(Scene2Topics[1])
	Utility.Wait(6)
	OwnerRef.Say(Scene2Topics[2])
	Utility.Wait(11)
	Bidder6.Say(Scene2Topics[3])
	Utility.Wait(7)
	OwnerRef.Say(Scene2Topics[4])
	Utility.Wait(10)
	Bidder4.Say(Scene2Topics[5])
	Utility.Wait(6)
	Auctioneer.Say(Scene2Topics[6])
	Utility.Wait(7)
	OwnerRef.Say(Scene2Topics[7])
	Utility.Wait(8)
	Bidder1.Say(Scene2Topics[8])
	Utility.Wait(8)
	OwnerRef.Say(Scene2Topics[9])
	Utility.Wait(8)
EndFunction

; Sex / Nympho
Function PlayScene3()
	OwnerRef.Say(Scene3Topics[0])
	Utility.Wait(10)
	Bidder4.Say(Scene3Topics[1])
	Utility.Wait(8)
	OwnerRef.Say(Scene3Topics[2])
	Utility.Wait(9)
	Bidder8.Say(Scene3Topics[3])
	Utility.Wait(7)
	OwnerRef.Say(Scene3Topics[4])
	Utility.Wait(10)
	Bidder6.Say(Scene3Topics[5])
	Utility.Wait(8)
	OwnerRef.Say(Scene3Topics[6])
	Utility.Wait(11)
	Bidder2.Say(Scene3Topics[7])
	Utility.Wait(10)
	Auctioneer.Say(Scene3Topics[8])
	Utility.Wait(11)
	OwnerRef.Say(Scene3Topics[9])
	Utility.Wait(11)
EndFunction

Function MoveToPlatform()
	ForceGreetScene.Stop()
	
	Game.DisablePlayerControls()
	FadeOut.ApplyCrossFade(3)
	Utility.Wait(3.5)
	PlayerRef.MoveTo(PlatformMarker)
	PlayerRef.SetAngle(0, 0, 180)
	PlatformScene.Start()
	OwnerRef.SetPosition(-1300, 290, 64)
	OwnerRef.SetAngle(0, 0, 200)
	
	Game.ForceThirdPerson()
	if MQ.CanPose()
		if MQ.MCM.useSSPlusPlus
			PlayerRef.PlayIdle(vkjSimpleSlaveryInt.GetAuctionPose())
		else
			PlayerRef.PlayIdle(PlatformIdle)
		endif
	endif
	Game.SetPlayerAiDriven(true)
	PlayerRef.SetAngle(0, 0, 180)
	
	FadeIn.ApplyCrossFade(2)
	Utility.Wait(2)
	PlayerRef.SetAngle(0, 0, 180)
	OwnerRef.SetAngle(0, 0, 200)
EndFunction

Function MoveOffPlatform()
	FadeOut.ApplyCrossFade(3)
	RemoveTears()
	Utility.Wait(3.5)
	
	Game.EnablePlayerControls()
	Game.SetPlayerAiDriven(false)
	Debug.SendAnimationEvent(PlayerRef, "IdleForceDefaultState")
	PlayerRef.SetPosition(-840, -170, 64)
	PlayerRef.SetAngle(0, 0, 340)
	MQ.MoveNpcToPlayer(OwnerRef, 120)
	
	FadeIn.ApplyCrossFade(2)
	Utility.Wait(3)
EndFunction

Function ReleaseAndTalk()
	MoveOffPlatform()
	ForceGreetScene.Start()
EndFunction

Function PlaceBook()
	ObjectReference lolaBook = Xmarker.PlaceAtMe(MQ.MCM.LolaBook)
	lolaBook.SetPosition(-1083, -334, 129.5)
	lolaBook.SetAngle(0, 0, 194)
EndFunction

Function ApplyTears(int level)
	tearsLevel = -1
	if MQ.ApplyTears(level)
		tearsLevel = level
	endif
EndFunction

Function RemoveTears()
	if tearsLevel > 0
		; Applied these tears for this event, so remove them now
		MQ.RemoveTears(tearsLevel)
	endif
EndFunction

State Traveling
	Event OnBeginState()
		RegisterForSingleUpdate(3)
		RegisterForUpdateGameTime(1)
	EndEvent
	
	Event OnUpdate()
		RegisterForSingleUpdate(3)
		if PlayerRef.GetParentCell() == SlaveMarket
			UnregisterForUpdate()
			UnregisterForUpdateGameTime()
			SetStage(20)
		endif
	EndEvent
	
	Event OnUpdateGameTime()
		if PlayerRef.IsInFaction(MQ.HavingSexFaction) == false
			Debug.Notification("Take your " + MQ.OwnerTitle + " to the slave market")
			MQ.Hurt()
		endif
		RegisterForUpdateGameTime(1)
	EndEvent
EndState

State AtMarket
	Event OnBeginState()
		SendModEvent("dhlp-Suspend")
		MQ.MoveNpcToPlayer(OwnerRef, 100)
		Utility.Wait(1)
		caneModel = MQ.WeaponCane.GetModelPath()
		MQ.WeaponCane.SetModelPath(MQ.MCM.GetWhipWeaponModel())
		OwnerRef.EquipItem(MQ.WeaponCane)
		HasTears = (MQ.HighestTearsLevel() > 0)
		ForceGreetScene.Start()
	EndEvent
EndState

Auto State Disabled
	Event OnBeginState()
		ForceGreetScene.Stop()
		SetObjectiveDisplayed(10, false)
		Debug.Notification("You may dress now if you're normally allowed to do so.")
		OwnerRef.UnequipItem(MQ.WeaponCane)
		OwnerRef.RemoveItem(MQ.WeaponCane, 1)
		MQ.WeaponCane.SetModelPath(caneModel)
		Utility.Wait(5)
		PlatformSlave.Enable(true)
		SendModEvent("dhlp-Resume")
		MQ.MCM.SetNextTrophySlave()
		MQ.Humiliate(adjustment=1)
		MQ.SetBlockEvents(false)
		CompleteAllObjectives()
	EndEvent
EndState
