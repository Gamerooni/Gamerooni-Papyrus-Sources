Scriptname vkjPotionPouch extends ReferenceAlias

Keyword Property KwPotion auto
Keyword Property KwRestoreHealth auto
Keyword Property KwRestoreMagicka auto
Keyword Property KwRestoreStamina auto
int Property MaxPotions auto
string Property EffectName auto

ObjectReference PotionContainer

Event OnInit()
	PotionContainer = GetReference()
EndEvent

Event OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
	if !akBaseItem.HasKeyword(KwPotion)
		Debug.Notification("Only potions can be added")
		PotionContainer.RemoveItem(akBaseItem, aiItemCount, true, akSourceContainer)
		return
	endif

	if !akBaseItem.HasKeyword(KwRestoreHealth) && !akBaseItem.HasKeyword(KwRestoreMagicka) && !akBaseItem.HasKeyword(KwRestoreStamina)
		Debug.Notification("Potions must restore health, magicka, or stamina")
		PotionContainer.RemoveItem(akBaseItem, aiItemCount, true, akSourceContainer)
		return
	endif	

	int totalCount = PotionContainer.GetItemCount(KwPotion)
	int removeCount = totalCount - MaxPotions
	if removeCount > 0
		Debug.Notification("Exceeded capacity of " + MaxPotions + " potions")
		PotionContainer.RemoveItem(akBaseItem, removeCount, true, akSourceContainer)
	endif
EndEvent