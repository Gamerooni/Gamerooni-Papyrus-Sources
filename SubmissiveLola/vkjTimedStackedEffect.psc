scriptName vkjTimedStackedEffect extends ActiveMagicEffect
; Stacking effects that decay over time

Actor Property PlayerRef auto
Spell Property CurrentSpell auto
Spell Property NextSpell auto
float Property GameHours auto; Game hours
float startTime

Event OnEffectStart(actor akTarget, actor akCaster)
	startTime = Utility.GetCurrentGameTime()
	RegisterForUpdateGameTime(GameHours)
EndEvent

Event OnUpdateGameTime()
	PlayerRef.RemoveSpell(CurrentSpell)
	
	float hoursPassed = (Utility.GetCurrentGameTime() - startTime) * 24.0
	;Debug.Notification(GetTimeElapsed())
	;Debug.Notification(hoursPassed)
	
	; If at least twice the intended duration has elapsed, the player has waited or slept awhile.
	; Just abort casting the next spell in the chain.
	; It's better to let the player off easy than to only remove one stack after potentially waiting hours.
	if hoursPassed >= (2.0 * GameHours)
		return
	endif

	if NextSpell != none
		PlayerRef.AddSpell(NextSpell, false)
	endif
EndEvent

Event OnEffectFinish(actor akTarget, actor akCaster)
EndEvent