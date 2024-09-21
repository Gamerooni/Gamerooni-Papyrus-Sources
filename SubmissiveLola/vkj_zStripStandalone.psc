;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_zStripStandalone Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
UnequipHands()
SexLab.StripActor(PlayerRef, none, DoStripAnim())
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Function UnequipHands()
	UnequipWeapons()
	if PlayerRef.IsWeaponDrawn()
		PlayerRef.SheatheWeapon()
	endif
EndFunction

Function UnequipWeapons()
	Weapon WeaponRight = PlayerRef.GetEquippedWeapon()
	if WeaponRight != none
		PlayerRef.UnequipItem(WeaponRight, false, true)
	endif
	Weapon WeaponLeft = PlayerRef.GetEquippedWeapon(true)
	if WeaponLeft != none
		PlayerRef.UnequipItem(WeaponLeft, false, true)
	endif
	Weapon WeaponRight2 = PlayerRef.GetEquippedWeapon()
	if WeaponRight2 != none
		PlayerRef.UnequipItem(WeaponRight2, false, true)
	endif
	Armor Shield = PlayerRef.GetEquippedShield()
	if Shield != none
		PlayerRef.UnequipItem(Shield, false, true)
	endif
EndFunction

bool Function DoStripAnim()
	bool doAnim
	if PlayerIsClothed(); Don't do the animation if the player already isn't wearing any clothes.
		doAnim = !(PlayerRef.WornHasKeyword(Keyword.GetKeyword("zad_DeviousHeavyBondage")))
	endif
	return doAnim
EndFunction

bool Function PlayerIsClothed()
	return PlayerRef.WornHasKeyword(Keyword.GetKeyword("ArmorClothing")) || PlayerRef.WornHasKeyword(Keyword.GetKeyword("ArmorLight")) || PlayerRef.WornHasKeyword(Keyword.GetKeyword("ArmorHeavy"))
EndFunction

Actor Property PlayerRef auto
SexLabFramework Property SexLab auto