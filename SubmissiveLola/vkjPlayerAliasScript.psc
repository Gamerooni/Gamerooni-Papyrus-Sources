Scriptname vkjPlayerAliasScript extends ReferenceAlias  

vkjMQ Property MQ Auto
vkjMCM Property MCM Auto
Actor Property PlayerRef Auto
Faction Property PlayerFaction Auto
MiscObject Property Gold Auto
MiscObject Property Lockpick Auto
FormList Property KeyList Auto
LocationRefType Property BossContainer Auto
Quest Property FindTreasureQuest Auto

Event OnPlayerLoadGame()
	AddInventoryEventFilter(Gold)
	AddInventoryEventFilter(Lockpick)
	AddInventoryEventFilter(KeyList)
	MQ.Maintenance()
EndEvent

Event OnLocationChange(Location akOldLoc, Location akNewLoc)
	MQ.SetOldLoc(akOldLoc)
EndEvent

Event OnObjectEquipped(Form akBaseObject, ObjectReference akReference)
	if akBaseObject == MQ.CollarTag
		Debug.MessageBox(MQ.CollarInscription)
		PlayerRef.Unequipitem(akBaseObject, abSilent=true)
	elseif (akBaseObject as Ammo)
		MQ.SetEquippedArrows(akBaseObject as Ammo)
	endif
EndEvent

Event OnItemAdded(Form item, int itemCount, ObjectReference itemRef, ObjectReference srcContainer)
	; No swiping stuff from owner
	if (srcContainer != none) && (srcContainer == MQ.OwnerRef)
		if item == Gold
			if MCM.NoSwipingGold
				Debug.Notification("Your " + MQ.OwnerTitle + " doesn't share gold!")
				PlayerRef.RemoveItem(item, itemCount, true, MQ.OwnerRef)
				return
			elseif MCM.PlayerExpenseGold > 0
				int playerGold = PlayerRef.GetItemCount(Gold)
				if (playerGold - itemCount) >= MCM.PlayerExpenseGold
					Debug.Notification(MQ.OwnerTitle + " doesn't share gold when you already have enough")
					PlayerRef.RemoveItem(item, itemCount, true, MQ.OwnerRef)
				elseif playerGold > MCM.PlayerExpenseGold
					PlayerRef.RemoveItem(item, (playerGold - MCM.PlayerExpenseGold), true, MQ.OwnerRef)
				endif
				return
			else
				return; Allow full access to gold in owner's inventory
			endif
		endif
		if MCM.NoSwipingKeys && KeyList.HasForm(item)
			Debug.Notification("Hands off your " + MQ.OwnerTitle + "'s " + item.GetName() + "s!")
			PlayerRef.RemoveItem(item, itemCount, true, MQ.OwnerRef)
			return
		endif
	endif

	; Check for boss container for the treasure quest
	if (srcContainer != none) && srcContainer.HasRefType(BossContainer)
		int tombRaiderStage = FindTreasureQuest.GetCurrentStageID()
		if (tombRaiderStage >= 10) && (tombRaiderStage < 20)
			FindTreasureQuest.SetStage(20)
		endif
	endif

	if MQ.SuspendAll
		return
	endif

	; Keys
	if MCM.OwnerTakesKeys && KeyList.HasForm(item)
		PlayerRef.RemoveItem(item, itemCount, true, MQ.OwnerRef)
	endif
	
	; Lockpicks
	if item == Lockpick && (MCM.AllowedLockpicks >= 0)
		int extra = PlayerRef.GetItemCount(Lockpick) - MCM.AllowedLockpicks
		if extra > 0
			PlayerRef.RemoveItem(item, extra, true, MQ.OwnerRef)
		endif
	endif	
	
	; Do not share gold if player has no gold in inventory, because various mods will take the player's possessions,
	; put them in a container, then give everything back at some point (SLUTS escrow chest, Body Search, Cidhna Pirates).
	; The gold is already in player inventory at this point, so we compare that amount against what was received rather than 0.
	if item == Gold && (MQ.PauseGoldSharing || (PlayerRef.GetItemCount(Gold) == itemCount))
		return
	endif
	
	; Gold
	if (srcContainer == none)
		if (item == Gold) && MCM.ShareAllGold && (MCM.OwnerGoldShare > 0)
			float ownerShare = MCM.OwnerGoldShare / 100.0
			int ownerTakes = ((itemCount * ownerShare) + 0.51) as int
			if MCM.PlayerExpenseGold > 0
				int playerGold = PlayerRef.GetItemCount(Gold)
				int ownerReduction = MCM.PlayerExpenseGold - playerGold + ownerTakes
				if (ownerTakes - ownerReduction) <= 0
					return
				elseif ownerReduction > 0
					ownerTakes -= ownerReduction
				endif
			endif
			PlayerRef.RemoveItem(Gold, ownerTakes, true, MQ.OwnerRef)
		endif
		return
	endif

	if PlayerOwnsContainer(srcContainer)
		;Debug.Notification("That's mine!")
		return
	endif

	if item == Gold
		if MCM.OwnerGoldShare > 0
			float ownerShare = MCM.OwnerGoldShare / 100.0
			int ownerTakes = ((itemCount * ownerShare) + 0.51) as int
			if MCM.PlayerExpenseGold > 0
				int playerGold = PlayerRef.GetItemCount(Gold)
				int ownerReduction = MCM.PlayerExpenseGold - playerGold + ownerTakes
				if (ownerTakes - ownerReduction) <= 0
					return
				elseif ownerReduction > 0
					ownerTakes -= ownerReduction
				endif
			endif
			;Debug.Notification("Not mine.  Owner takes " + ownerTakes + ".")
			PlayerRef.RemoveItem(Gold, ownerTakes, true, MQ.OwnerRef)
		endif
		return
	endif
EndEvent

; Check player ownership of a container
Bool Function PlayerOwnsContainer(ObjectReference srcContainer)
	ActorBase actorOwner = srcContainer.GetActorOwner()
	if actorOwner && (actorOwner == PlayerRef.GetActorBase())
		return true
	endif
	Faction factionOwner = srcContainer.GetFactionOwner()
	if factionOwner
		if factionOwner == PlayerFaction
			return true
		elseif PlayerRef.IsInFaction(factionOwner)
			return true
		endif
		return false
	endif

	; If the srcContainer doesn't have an explicit owner, check the parent cell's owner
	actorOwner = srcContainer.GetParentCell().GetActorOwner()
	if actorOwner && (actorOwner == PlayerRef.GetActorBase())
		return true
	endif
	factionOwner = srcContainer.GetParentCell().GetFactionOwner()
	if factionOwner && (factionOwner == PlayerFaction)
		return true
	endif
	
	; Hunterborn caches and SLUTS Escrow chests belong to the player
	string containerName = srcContainer.GetBaseObject().GetName()
	if (containerName == "Hunter's Cache") || (containerName == "Escrow Chest") || (containerName == "S.L.U.T.S. Escrow")
		return true
	endif

	return false
EndFunction

Event OnHit(ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked)
	if MQ.ReportHitsOnPlayer
		MQ.PlayerWasHit(akAggressor, akSource)
		;MiscUtil.PrintConsole("PC hit by " + weap.GetName() + ", " + abPowerAttack)
	endif
EndEvent