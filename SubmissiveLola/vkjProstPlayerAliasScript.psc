Scriptname vkjProstPlayerAliasScript extends ReferenceAlias  

vkjpimpedbasic Property ProstQuest Auto
MiscObject Property Gold Auto

Event OnInit()
	AddInventoryEventFilter(Gold)
EndEvent

Event OnItemAdded(Form item, int itemCount, ObjectReference itemRef, ObjectReference srcContainer)
	if srcContainer == none
		if ProstQuest.NextGoldIsPay
			ProstQuest.Pay(itemCount)
		endif
	endif
EndEvent

Event OnLocationChange(Location akOldLoc, Location akNewLoc)
	if akNewLoc != none
		ProstQuest.CheckInnkeeper()
	endif
EndEvent