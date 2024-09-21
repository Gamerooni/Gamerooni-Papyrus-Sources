;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 11
Scriptname vkjFasterLolaFaster Extends Quest Conditional

;BEGIN ALIAS PROPERTY Owner
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Owner Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Title
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Title Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN AUTOCAST TYPE vkjFasterLolaFaster
Quest __temp = self as Quest
vkjFasterLolaFaster kmyQuest = __temp as vkjFasterLolaFaster
;END AUTOCAST
;BEGIN CODE
MQ.SetBlockEvents(true)
EquipPlug()
SetStage(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN AUTOCAST TYPE vkjFasterLolaFaster
Quest __temp = self as Quest
vkjFasterLolaFaster kmyQuest = __temp as vkjFasterLolaFaster
;END AUTOCAST
;BEGIN CODE
SetObjectiveDisplayed(1)
SetObjectiveDisplayed(2)
RegisterForSingleUpdate(4.0)
Music.Add()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN AUTOCAST TYPE vkjFasterLolaFaster
Quest __temp = self as Quest
vkjFasterLolaFaster kmyQuest = __temp as vkjFasterLolaFaster
;END AUTOCAST
;BEGIN CODE
Stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property PlayerRef auto
vkjMQ Property MQ auto
Armor Property PlugInv auto
Armor Property PlugRendered auto
LocationRefType Property MapMarkerRefType auto
Keyword Property KwHabitation auto
Keyword Property KwAnalPlug auto
Keyword Property KwGarrison auto
bool Property FoundLandmark auto conditional
int Property ZapCount auto conditional
MusicType Property Music auto

bool showMsg
bool reequippedOnce

Event OnUpdate()
	Location loc = PlayerRef.GetCurrentLocation()
	if loc == none
		FoundLandmark = false
		showMsg = true	
	elseif loc.HasKeyword(KwHabitation)
		Reward()
		EndThisQuest()
		return
	elseif loc.HasRefType(MapMarkerRefType) || loc.HasKeyword(KwGarrison); Helgen has a map market but the location lacks MapMarkerRefType.
		FoundLandmark = true
		if showMsg
			Debug.Notification("Landmark found")
			showMsg = false
		endif
	else
		FoundLandmark = false
		showMsg = true	
	endif
	
	if !MQ.SuspendAll && !PlayerRef.IsEquipped(PlugRendered)
		ZapCount += 10; removing the plug is a major violation
		MQ.PunishForViolation()
		MQ.DisplayWarning("You must wear the Move Your Ass plug")
		; This shouldn't be needed.  It's a one-time attempt to get the plug equipped if there's a problem.
		if !reequippedOnce
			reequippedOnce = true
			MQ.zlib.LockDevice(PlayerRef, PlugInv)
		endif
	endif
	
	RegisterForSingleUpdate(4.0)
EndEvent

Function EquipPlug()
	if PlayerRef.WornHasKeyword(KwAnalPlug)
		; vkjTrick already determined that the existing plug is safe to unequip
		MQ.RemoveDDByKeyword(PlayerRef, KwAnalPlug)
	endif
	Utility.Wait(1)
	MQ.zlib.LockDevice(PlayerRef, PlugInv)
EndFunction

Function Violation()
	ZapCount += 1
	MQ.Hurt()
EndFunction

Function Reward()
	Music.Remove()

	if ZapCount == 0
		MQ.MediumReward()
	elseif ZapCount <= 5
		MQ.MinimalReward()
	elseif ZapCount <= 10
		; nothing
	elseif ZapCount <= 20
		MQ.PunishMinimal()
	elseif ZapCount <= 50
		MQ.PunishForMinor()
	else
		MQ.PunishForViolation()
	endif
EndFunction

Function EndThisQuest()
	Music.Remove(); redundancy
	SetObjectiveCompleted(1)
	SetObjectiveCompleted(2)
	MQ.zlib.UnlockDevice(PlayerRef, PlugInv, destroyDevice=true)
	if PlayerRef.GetItemCount(PlugInv) > 0
		Utility.Wait(1)
		PlayerRef.RemoveItem(PlugInv, 1, true)
	endif
	MQ.SetBlockEvents(false)
	CompleteAllObjectives(); Ensure that all objectives are removed from the quest log
	SetStage(100)
EndFunction