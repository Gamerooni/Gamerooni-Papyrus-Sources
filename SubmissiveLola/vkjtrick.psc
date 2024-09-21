Scriptname vkjTrick extends Quest conditional

; Tricks by numbers
; 1: Strip
; 2: Pee
; 3: Anal exam
; 4: Masturbate
; 5: Fondle self
; 6: Oral sex
; 7: Piercings
; 8: Dance (naked, owner courage)
; 9: Vampire feeding
; 10: Dance (regular, longer)
; 11: Vibrate player to orgasm
; 12: Faster, Lola, Faster
; 13: Burden of Service
; 14: The Heavy Stuff
; 15: Contract extension (Love Sickness)
; 16: Bound edging

vkjMQ Property MQ  Auto
vkjMCM Property MCM Auto
Actor Property PlayerRef Auto
int property Timesasked auto conditional
spell[] property eyecandyspells auto
spell property ExtendedEyeCandySpell auto
Int Property TrickToPerform  Auto  conditional
Scene Property TrickScene  Auto  
Topic Property EyeCandyComments auto
GlobalVariable Property SpecialTrickToPerform  Auto
bool Property IsInWilderness auto conditional
bool Property CanUseAnalPlug auto conditional
bool Property IsLovesick auto Conditional

Event OnInit()
	if PlayerRef == none; This should never happen, but I saw a stack trace for it in a player's log.
		PlayerRef = Game.GetPlayer()
	endif

	IsInWilderness = (PlayerRef.GetCurrentLocation() == none) && !PlayerRef.IsInInterior()

	; Check if an anal plug (if any) can be unequipped.  This does not check for a chasity belt.
	CanUseAnalPlug = !PlayerRef.WornHasKeyword(MQ.zlib.zad_kw_InflatablePlugAnal)
	if CanUseAnalPlug
		CanUseAnalPlug = !PlayerRef.WornHasKeyword(MQ.zlib.zad_DeviousBelt) || PlayerRef.WornHasKeyword(MQ.zlib.zad_PermitAnal)
	endif
	if CanUseAnalPlug && PlayerRef.WornHasKeyword(MQ.zlib.zad_DeviousPlugAnal)
		Armor a = PlayerRef.GetWornForm(0x00040000) as Armor
		CanUseAnalPlug = (a == none) || a.HasKeyword(MQ.zlib.zad_BlockGeneric) || a.HasKeyword(MQ.zlib.zad_QuestItem)
	endif
	
	IsLovesick = MQ.IsLovesick()
EndEvent

function Refuse()
	Timesasked += 1
endFunction

function End()
	timesasked = 0
	SpecialTrickToPerform.SetValue(0)
	Stop()
endFunction

; Seems we need to do this to prevent glitching, due the waiting period during the player touching his/herself event.
function EndTouchSelf()
	; MQ.MediumReward() ; Moved to MQ.TouchSelf()
	timesasked = 0
	SpecialTrickToPerform.SetValue(0)
	Stop()
	MQ.TouchSelf()
endFunction

function Strip()
	SendModEvent("SLTR_EyeCandy")
	MQ.Strip()
endFunction

Function DoEyeCandy()
	; No forced nudity period if the player is below the "Breaking" rank.  Chance is configurable so as not to overdo it.
	if (MQ.IsBreaking) && (Utility.RandomInt(1,100) <= MCM.EyeCandyChance)
		int i = 0
		if MQ.IsInsanelySubmissive
			i = 3
		elseif MQ.IsVerySubmissive
			i = 2
		elseif MQ.IsSubmissive
			i = 1
		endif
		eyecandyspells[i].cast(PlayerRef,PlayerRef)
		MQ.OwnerRef.Say(EyeCandyComments)
	endif
EndFunction

Function MakeEyeCandy(int level)
	eyecandyspells[level].Cast(PlayerRef,PlayerRef)
EndFunction

Function DispelEyeCandy()
	PlayerRef.DispelSpell(eyecandyspells[0])
	PlayerRef.DispelSpell(eyecandyspells[1])
	PlayerRef.DispelSpell(eyecandyspells[2])
	PlayerRef.DispelSpell(eyecandyspells[3])
	PlayerRef.RemoveSpell(ExtendedEyeCandySpell)
EndFunction

Function VampireFeed(Actor vampire)
	MQ.Feeding(vampire)
EndFunction

Function StopScene()
	TrickScene.Stop()
EndFunction