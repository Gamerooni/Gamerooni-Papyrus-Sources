Scriptname vkjLickFeet extends Quest  

ReferenceAlias Property Partner Auto  
Actor Property PlayerRef  Auto 
vkjMQ property MQ auto

Function StartLick()
	MQ.SceneLocked = true
	MQ.StartLick(Partner.GetActorRef() as Actor)
EndFunction

Function EndLick()
	MQ.EndLick(Partner.GetActorRef() as Actor)
EndFunction

Function UnlockScene()
	MQ.SceneLocked = false
EndFunction