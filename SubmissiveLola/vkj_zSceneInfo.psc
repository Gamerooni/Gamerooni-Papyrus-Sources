;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_zSceneInfo Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjMQ MQ = GetOwningQuest() as vkjMQ
Scene curScene = MQ.OwnerRef.GetCurrentScene()
if curScene != none
	Debug.Notification(MQ.OwnerRef.GetBaseObject().GetName() + "'s scene is from " + curScene.GetOwningQuest().GetName())
else
	Debug.Notification(MQ.OwnerRef.GetBaseObject().GetName() + " is not in a scene.")
endif
curScene = MQ.PlayerRef.GetCurrentScene()
if curScene != none
	Debug.Notification("My scene is from " + curScene.GetOwningQuest().GetName())
else
	Debug.Notification("I am not in a scene.")
endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
