;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 12
Scriptname vkj_qPonyExpress Extends Quest Hidden

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Title
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Title Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Owner
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Owner Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Note1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Note1 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Note2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Note2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Note3
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Note3 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Note4
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Note4 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN AUTOCAST TYPE vkjPonyExpress
Quest __temp = self as Quest
vkjPonyExpress kmyQuest = __temp as vkjPonyExpress
;END AUTOCAST
;BEGIN CODE
kmyQuest.GoToState("Startup")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN AUTOCAST TYPE vkjPonyExpress
Quest __temp = self as Quest
vkjPonyExpress kmyQuest = __temp as vkjPonyExpress
;END AUTOCAST
;BEGIN CODE
int nNote = Utility.RandomInt(1, 4)
ReferenceAlias noteRef
if nNote == 1
	noteRef = Alias_Note1
elseif nNote == 2
	noteRef = Alias_Note2
elseif nNote == 3
	noteRef = Alias_Note3
elseif nNote == 4
	noteRef = Alias_Note4
endif
ObjectReference note = noteRef.GetReference()
kmyQuest.PlayerRef.AddItem(note)
kmyQuest.MerchantNote = note
kmyQuest.MerchantNoteNumber = nNote
CleanupNotes()

SetObjectiveDisplayed(1)
kmyQuest.GoToState("Running")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN AUTOCAST TYPE vkjPonyExpress
Quest __temp = self as Quest
vkjPonyExpress kmyQuest = __temp as vkjPonyExpress
;END AUTOCAST
;BEGIN CODE
CleanupNotes()
SetObjectiveDisplayed(2)
kmyQuest.GoToState("Running")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN AUTOCAST TYPE vkjPonyExpress
Quest __temp = self as Quest
vkjPonyExpress kmyQuest = __temp as vkjPonyExpress
;END AUTOCAST
;BEGIN CODE
CleanupNotes()
SetObjectiveDisplayed(3)
kmyQuest.GoToState("Running")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN AUTOCAST TYPE vkjPonyExpress
Quest __temp = self as Quest
vkjPonyExpress kmyQuest = __temp as vkjPonyExpress
;END AUTOCAST
;BEGIN CODE
SetObjectiveDisplayed(8)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN AUTOCAST TYPE vkjPonyExpress
Quest __temp = self as Quest
vkjPonyExpress kmyQuest = __temp as vkjPonyExpress
;END AUTOCAST
;BEGIN CODE
SetObjectiveFailed(1)
SetObjectiveFailed(2)
SetObjectiveFailed(3)
SetObjectiveDisplayed(9)
GoToState("TooLate")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN AUTOCAST TYPE vkjPonyExpress
Quest __temp = self as Quest
vkjPonyExpress kmyQuest = __temp as vkjPonyExpress
;END AUTOCAST
;BEGIN CODE
kmyQuest.GoToState("Disabled")
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN AUTOCAST TYPE vkjPonyExpress
Quest __temp = self as Quest
vkjPonyExpress kmyQuest = __temp as vkjPonyExpress
;END AUTOCAST
;BEGIN CODE
Debug.Notification("Shutting down Pony Express Quest.  Wait for completion.")
kmyQuest.RemoveQuestItems()
kmyQuest.UnequipGear(true)
kmyQuest.GoToState("Disabled")
Stop()
Debug.Notification("Pony Express Quest is now shut down")
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Function CleanupNotes()
	Alias_Owner.GetReference().RemoveItem(Alias_Note1.GetReference())
	Alias_Owner.GetReference().RemoveItem(Alias_Note2.GetReference())
	Alias_Owner.GetReference().RemoveItem(Alias_Note3.GetReference())
	Alias_Owner.GetReference().RemoveItem(Alias_Note4.GetReference())
EndFunction