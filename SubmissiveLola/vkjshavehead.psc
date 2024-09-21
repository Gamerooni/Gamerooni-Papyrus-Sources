Scriptname vkjShaveHead extends Quest Conditional

vkjMCM Property MCM Auto
vkjMQ Property MQ  Auto  
HeadPart property OldHair Auto
HeadPart property NewHair Auto
FormList property HairColors Auto
ColorForm property OldColor Auto
ColorForm property NewColor Auto
Actor Property PlayerRef Auto
Int Property HairOption Auto Conditional
ImageSpaceModifier Property FadeOut auto
ImageSpaceModifier Property FadeIn auto
bool Property Enthusiastic auto

; Hair Options
; 0 = "Shaved"
; 1 = "Random Color"
; 2 = "New Style"
; 3 = "New Style, Random Color"

Event OnUpdateGameTime()
	Debug.Notification("You may ask to get you hairstyle back now")
	if HairOption == 0
		MQ.SetObjectiveCompleted(104)
	else
		MQ.SetObjectiveCompleted(105)
	endif
	
	MCM.SetNextHairChange()
	SetStage(20)
endEvent

Function SetDuration()
	RegisterForSingleUpdateGameTime(MCM.GetHairChangeDuration())
EndFunction

Function Change()
	HairOption = MCM.hair_option
	if HairOption == 0
		Shave()
	elseif HairOption == 1
		ChangeColor()
	elseif HairOption == 2
		ChangeStyle()
	elseif HairOption == 3
		ChangeStyleAndColor()
	endif
EndFunction

Function Restore()
	if HairOption == 0
		RestoreHair()
	elseif HairOption == 1
		RestoreColor()
	elseif HairOption == 2
		RestoreStyle()
	elseif HairOption == 3
		RestoreStyleAndColor()
	endif
EndFunction

; If the hair change disappears, renew the change
Function Renew()
	if HairOption == 0
		Reshave()
	elseif HairOption == 1
		RenewColor()
	elseif HairOption == 2
		RenewHair()
	elseif HairOption == 3
		RenewHair()
		RenewColor()
	endif
EndFunction

function Shave()
	ActorBase P = PlayerRef.GetActorBase()
	;OldHair = P.GetNthHeadPart(5); Can't assume this index with modded hair
	OldHair = MCM.GetCurrentHair()

	FadeOut.ApplyCrossFade(2)
	Utility.Wait(3)
	HeadPart shavedhairFH = Game.GetForm(0x001017ED) as HeadPart
	PlayerRef.ChangeHeadPart(shavedhairfh)
	FadeIn.ApplyCrossFade(2)

	MQ.SetObjectiveDisplayed(104)
endFunction

function RestoreHair()
	FadeOut.ApplyCrossFade(2)
	Utility.Wait(3)
	PlayerRef.ChangeHeadPart(OldHair)
	FadeIn.ApplyCrossFade(2)
	MQ.SetObjectiveDisplayed(104, false)
	HairOption = -1
endFunction

function Reshave()
	HeadPart shavedhairFH = Game.GetForm(0x001017ED) as HeadPart
	PlayerRef.ChangeHeadPart(shavedhairfh)
endFunction

function ChangeColor()
	ActorBase P = PlayerRef.GetActorBase()
	OldColor = P.GetHairColor()

	int randColor = utility.randomint(0, HairColors.GetSize() - 1)
	NewColor = HairColors.GetAt(randColor) as ColorForm
	
	FadeOut.ApplyCrossFade(2)
	Utility.Wait(3)
	P.SetHairColor(NewColor)
	PlayerRef.QueueNiNodeUpdate()
	FadeIn.ApplyCrossFade(2)
	
	MQ.SetObjectiveDisplayed(105)
endFunction

function RestoreColor()
	FadeOut.ApplyCrossFade(2)
	Utility.Wait(3)
	PlayerRef.GetActorBase().SetHairColor(OldColor)
	PlayerRef.QueueNiNodeUpdate()
	FadeIn.ApplyCrossFade(2)

	MQ.SetObjectiveDisplayed(105, false)
	HairOption = -1
endFunction

function RenewColor()
	PlayerRef.GetActorBase().SetHairColor(NewColor)
	PlayerRef.QueueNiNodeUpdate()
endFunction

Function ChangeStyle()
	OldHair = MCM.GetCurrentHair()
	FadeOut.ApplyCrossFade(2)
	Utility.Wait(3)
	NewHair = MCM.GetHairStyle()
	MiscUtil.PrintConsole("New hair style: " + NewHair.GetName())
	PlayerRef.ChangeHeadPart(NewHair)
	FadeIn.ApplyCrossFade(2)
	MQ.SetObjectiveDisplayed(105)
EndFunction

Function RestoreStyle()
	FadeOut.ApplyCrossFade(2)
	Utility.Wait(3)
	PlayerRef.ChangeHeadPart(OldHair)
	FadeIn.ApplyCrossFade(2)
	MQ.SetObjectiveDisplayed(105, false)
	HairOption = -1
EndFunction

function RenewHair()
	if NewHair != none
		PlayerRef.ChangeHeadPart(NewHair)
	endif
endFunction

Function ChangeStyleAndColor()
	ActorBase P = PlayerRef.GetActorBase()
	FadeOut.ApplyCrossFade(2)
	Utility.Wait(3)
	
	; Change Style
	OldHair = MCM.GetCurrentHair()
	NewHair = MCM.GetHairStyle()
	PlayerRef.ChangeHeadPart(NewHair)
	Utility.Wait(0.2)

	; Change Color
	OldColor = P.GetHairColor()
	int randColor = utility.randomint(0, HairColors.GetSize() - 1)
	NewColor = HairColors.GetAt(randColor) as ColorForm
	P.SetHairColor(NewColor)
	PlayerRef.QueueNiNodeUpdate()
	FadeIn.ApplyCrossFade(2)

	MQ.SetObjectiveDisplayed(105)
EndFunction

Function RestoreStyleAndColor()
	FadeOut.ApplyCrossFade(2)
	Utility.Wait(3)
	
	; Restore Style
	PlayerRef.ChangeHeadPart(OldHair)
	Utility.Wait(0.2)
	
	; Restore Color
	PlayerRef.GetActorBase().SetHairColor(OldColor)
	PlayerRef.QueueNiNodeUpdate()
	FadeIn.ApplyCrossFade(2)
	
	MQ.SetObjectiveDisplayed(105, false)
	HairOption = -1
EndFunction
