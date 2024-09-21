Scriptname vkjBook extends ObjectReference  

Event OnRead()
	if !StrongHandQuest.IsRunning() && !MQ.IsRunning() 
		StrongHandQuest.Reset()
		StrongHandQuest.Start()
		StrongHandQuest.SetStage(0)
;	else
;		Debug.Notification("is already running")
	endIf
EndEvent

Quest Property StrongHandQuest Auto
Quest Property MQ Auto  
