Scriptname vkjOwnerAlias extends ReferenceAlias  

vkjMQ Property MQ Auto
Actor Property PlayerRef Auto
vkjOwnerCombatMonitor Property CombatMonitor Auto
bool WasHit
bool Paused;  Used to briefly halt registering hits to avoid counting multiple effects from the same attack.
int combatHitPeriod = 30;  In combat, two hits during this period triggers punishment.

; Note: Weapons with enchantments and spells with multiple effects trigger separate simulataneous hits.
; For example, Battle Cry has 3 hits:  voice, explosion, and stagger.


Event OnHit(ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked)
	if !MQ.MCM.PunishFriendlyFire || Paused || (akAggressor != PlayerRef) || MQ.OwnerRef.IsBleedingOut()
		return
	endif
	
	Spell theSpell = akSource as Spell
	String skill
	if theSpell != none
		skill = theSpell.GetNthEffectMagicEffect(0).GetAssociatedSkill()
	endif
	if theSpell != none && (!theSpell.IsHostile() || ("Restoration" == skill))
		;Debug.Notification("You cast a " + skill + " spell on me.")	
		if WasHit && ("Restoration" == skill) && !theSpell.IsHostile()
			; Casting a non-hostile Restoration spell (assumed to be healing) within the time period cancels the hit
			;Debug.Notification("You're forgiven")
			WasHit = false
			UnregisterForUpdate()
		endif
	elseif theSpell != none && (theSpell.GetEquipType().GetFormID() == 154606); Voice spell
		; Allow all voice spells
		;Debug.Notification("You hit me with a voice spell.")
	elseif (akSource as Explosion)
		; Allow explosions because they're a secondary effect, not necessarily harmful.
		;Debug.Notification("You hit me with an explosion.")
	elseif (akSource.GetFormID() == 500) && (PlayerRef.IsInCombat() || !PlayerRef.IsWeaponDrawn()); Unarmed hit or stagger
		if PlayerRef.IsInCombat()
			; Allow a stray punch during a brawl
			;Debug.Notification("You punched me in combat.")
		else
			; Allow a stagger effect, such as from Battle Cry, even outside combat.  But not a punch ("weapon" drawn).
			;Debug.Notification("You hit me with a stagger effect.")
		endif
	else
		if theSpell != none
			;Debug.Notification("You hit me with a " + theSpell.GetNthEffectMagicEffect(0).GetAssociatedSkill() + " spell!")
		else
			;Debug.Notification("You hit me with form ID " + akSource.GetFormID() + "!")
		endif
		; Player harmed owner
		if PlayerRef.IsInCombat()
			if WasHit
				; Player hit owner twice within the time period
				;Debug.Notification("You're in so much trouble!")
				;Debug.Notification("Your " + MQ.OwnerTitle + " zaps you!")
				;MQ.Hurt(); A zap in combat was the old punishment
				MQ.FriendlyFireCount = MQ.FriendlyFireCount + 1
				RegisterForSingleUpdate(combatHitPeriod); Don't clear the hit yet.  OnUpdate() does that, after the full period.
			else
				WasHit = true
				Paused = true
				RegisterForSingleUpdate(0.25); We don't want to count multiple effects from a single attack.
			endif
		else
			; Not in combat.  Player gets a whipping.
			WasHit = false
			MQ.Hurt()
			Debug.SendAnimationEvent(PlayerRef, "BleedoutStart")
			Utility.Wait(3)
			; The attack that injured the owner might have also hit enemy actors, causing combat to start after a slight delay.
			if PlayerRef.IsInCombat()
				Debug.SendAnimationEvent(PlayerRef, "BleedoutStop")
			else
				MQ.SayBigTrouble()
				MQ.FastStrip()
				MQ.OverrideWhippedIdle(MQ.zlib.DD_FT_CollarMe)
				MQ.WhipPlayer(true)
			endif
		endif
	endif
EndEvent

Event OnUpdate()
	if Paused
		Paused = false
		RegisterForSingleUpdate(combatHitPeriod)
	else
		WasHit = false
		;Debug.Notification("You're forgiven")
	endif
EndEvent

Event OnCombatStateChanged(Actor akTarget, int combatState)
	if combatState == 1; in combat
		if !CombatMonitor.IsRunning()
			MQ.BleedoutCount = 0
			CombatMonitor.Start()
		endif
		;Debug.Notification("Owner entered combat")
	elseif (combatState == 0) && !PlayerRef.IsInCombat(); left combat
		; Some things can briefly pull a follower out of combat (using MoveTo on the follower or NFF's retreat function) so we check if the PC is out too.
		CombatMonitor.Stop()
		;Debug.Notification("Owner left combat")
	endif
EndEvent

Event OnEnterBleedout()
	if CombatMonitor.IsRunning()
		MQ.BleedoutCount = MQ.BleedoutCount + 1
	endif
EndEvent