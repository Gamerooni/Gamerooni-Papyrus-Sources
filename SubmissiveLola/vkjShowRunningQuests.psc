;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkjShowRunningQuests Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
int i = QuestList.GetSize()
While i > 0
	i -= 1
	Quest q = QuestList.GetAt(i) as Quest
	If q.IsRunning()
		Debug.Notification(q.GetName() + " is running.")
	EndIf
EndWhile
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

FormList Property QuestList auto
