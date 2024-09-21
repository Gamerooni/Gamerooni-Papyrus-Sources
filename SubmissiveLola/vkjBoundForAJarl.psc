Scriptname vkjBoundForAJarl extends Quest Conditional

vkjMQ Property MQ auto
GlobalVariable Property NextFashionShow auto
int Property TopicNum auto conditional
FormList Property PalaceScenes auto

bool endedQuest

Function Fragment_0(); Quest startup
	TopicNum = 0
	MQ.SetObjectiveDisplayed(11)
EndFunction

Function Fragment_1(); Quest cleanup
	EndThisQuest()
EndFunction

Function SetCooldown()
	NextFashionShow.SetValue(MQ.GameDaysPassed.GetValue() + 7.0)
EndFunction

; Stop all palace conversation scenes.
Function BeQuiet()
	int nScenes = PalaceScenes.GetSize()
	int i = 0
	While i < nScenes
		(PalaceScenes.GetAt(i) as Scene).Stop()
		i += 1
	EndWhile
EndFunction

Function EndThisQuest()
	if !endedQuest
		endedQuest = true
		MQ.SetObjectiveCompleted(11)
		MQ.TravelToMarkerQuest.Stop()
		Game.EnablePlayerControls()
		MQ.zlib.StopVibrating(MQ.PlayerRef); failsafe
		MQ.SetObjectiveDisplayed(11, false)
		Stop()
	endif
EndFunction

Function FailQuest()
	MQ.SetObjectiveFailed(11)
	MQ.WhipPlayer(Punish = true)
	MQ.SetObjectiveDisplayed(11, false)
	EndThisQuest()
EndFunction