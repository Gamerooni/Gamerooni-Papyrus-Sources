Scriptname vkjSlaveStart extends Quest

vkjMQ Property MQ Auto
vkjStrongHand Property StrongHand Auto
Faction Property CurrentFollowerFaction Auto
Quest Property FollowerDialog Auto
Scene Property ForceGreetScene Auto

Function StartScene(int scenario = 0)
	SendModEvent("dhlp-Suspend")

	if MQ.IsRunning()
		; Already enslaved by this mod.
		; Place the travel marker in front of the player, then end the owner's travel quest.
		MQ.TravelMarker.SetPosition(-800, -120, 64)
		MQ.TravelMarker.SetAngle(0, 0, 180)
		MQ.MoveNpcToPlayer(MQ.OwnerRef, 100)
		
		((MQ as Quest) as vkjDeviceControl).GetAndEquip()
		
		Debug.Messagebox(MQ.OwnerRef.GetActorBase().GetName() + " has bought you out of slavery, and " + MQ.OwnerPronoun() + " does not look pleased.")
		if MQ.slaveContract.GetValueInt() == 0
			MQ.slaveContract.SetValue(5)
		else
			MQ.slaveContract.SetValue(MQ.slaveContract.GetValue() + 5)
		endif
		if MQ.CanProstitute()
			MQ.UpdateBonusProstQuota(50)
		endif
		
		MQ.OwnerRef.Say(MQ.WhippingCommentsAuction)
		Utility.Wait(3.5)
		MQ.WhipPlayer(true); Whipping will send DHLP Resume when it ends.
		; Have the owner follow.
		MQ.TravelToMarkerQuest.Stop()
		MQ.Follow()
		MQ.OwnerRef.EvaluatePackage()
		Stop()
		return
	endif

	if !StrongHand.IsRunning()
		StrongHand.Start()
	endif

	StrongHand.Scenario = scenario

	MQ.BuyerRef = MQ.MCM.GetBuyer()

	if MQ.BuyerRef == none
		; Basic start with no pre-selected owner
		StrongHand.SetStage(0)
		Debug.Messagebox("You have been bought out of slavery.  Seek out your benefactor and ask for the strong hand and guidance that you need.")
		SendModEvent("dhlp-Resume")
		Stop()
		return
	endif

	; Pre-selected owner will come get the player
	
	StrongHand.SetObjectiveDisplayed(0, false); Hide "Ask your follower about something unusual"
	
	; Recruit the new owner as a follower if necessary
	MQ.BuyerRef.Enable()
	StrongHand.IsNewFollower = false
	if MQ.BuyerRef.IsInFaction(CurrentFollowerFaction) == false
		StrongHand.IsNewFollower = true
		(FollowerDialog as DialogueFollowerScript).SetFollower(MQ.BuyerRef)
		Utility.Wait(2);  Let follower frameworks settle down
	endif
	
	; Check that recruitment worked
	if MQ.BuyerRef.IsInFaction(CurrentFollowerFaction) == false
		Debug.Messagebox("Unable to make a follower of " + MQ.BuyerRef.GetActorBase().GetName())
		MQ.MoveNpcToPlayer(MQ.BuyerRef, 100)
		SendModEvent("dhlp-Resume")
		Stop()
		return
	endif
	
	; Set contract term
	if MQ.MCM._Contract == 8; Randomize the contract to between 5 days and 1 month.
		MQ.MCM.ForceContractDays = Utility.RandomInt(5, 30)
	elseif MQ.MCM._Contract < 2; 5 days
		MQ.MCM.ForceContractDays = 5
	endif
	
    Game.SetPlayerAIDriven(false)
    Game.EnablePlayerControls()
	MQ.BuyerRef.MoveTo(MQ.PlayerRef)
	MQ.MoveNpcToPlayer(MQ.BuyerRef, 100)
	StrongHand.WasBought = true
	StrongHand.SetStage(5)
	Utility.Wait(1);  Let the owner fully arrive
	ForceGreetScene.Start()
	Stop(); DHLP Resume will be sent when enslavement is complete
EndFunction