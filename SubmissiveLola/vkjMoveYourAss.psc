scriptName vkjMoveYourAss extends ActiveMagicEffect

Actor Property PlayerRef auto
vkjMQ Property MQ auto
Faction Property HavingSexFaction auto
vkjFasterLolaFaster Property MyQuest auto

int wasGood
bool skipOnce

Event OnEffectStart(actor akTarget, actor akCaster)
	RegisterForSingleUpdate(6.0); Give player a few seconds to start running
EndEvent

Event OnUpdate()
	if !PlayerRef.IsRunning() && !PlayerRef.IsOnMount() && !PlayerRef.IsInCombat() && !PlayerRef.IsSwimming() && !PlayerRef.IsInFaction(HavingSexFaction) && !UI.IsMenuOpen("Dialogue Menu")
		; Player stopped running without cause.
		; If it's at a landmark, that might be to talk to the owner to end the quest.

; --- Old no goofing off code --------------------------
;		; Skip one cycle to allow time for that, but no more so the player can't goof off in a "safe" area.
;		if MyQuest.FoundLandmark
;			skipOnce = !skipOnce
;		endif
;		
;		if !skipOnce
;			Debug.Notification("Keep running")
;			wasGood = 0
;			MyQuest.Violation()
;		endif
; ------------------------------------------------------

; --- New take-your-time code --------------------------
		if MyQuest.FoundLandmark
			skipOnce = !skipOnce
			if !skipOnce
				Debug.Notification("Tell your " + MQ.OwnerTitle + " that you've arrived")
			endif
		else
			Debug.Notification("Keep running")
			wasGood = 0
			MyQuest.Violation()
		endif		
; ------------------------------------------------------

	else
		; Gradually heal player for continued running, since spell casting involves slowing or stopping
		if wasGood >= 3
			PlayerRef.RestoreActorValue("Health", 5.0)
		else
			wasGood += 1
		endif
	endif

	RegisterForSingleUpdate(3.0)
EndEvent

; No mining
Event OnSit(ObjectReference akFurniture)
	if (akFurniture as MineOreFurnitureScript)
		Debug.Notification("Keep running")
		Input.TapKey(Input.GetMappedKey("Back"))
	endif
EndEvent