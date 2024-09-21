Scriptname vkjPublicReactionEffect extends ActiveMagicEffect

vkjMQ Property MQ auto
Spell Property CloakSpell auto
Keyword Property KwNPC auto
Topic Property CommentTopic auto
GlobalVariable Property NextCommentTime auto
float Property CommentDelay = 3.0 auto

Event OnEffectStart(Actor npc, Actor playerRef)
	
	if !playerRef.HasSpell(CloakSpell) || !npc.HasKeyword(KwNPC) || npc.IsPlayerTeammate()
		;Debug.Notification("Public reaction ignored: " + npc.GetBaseObject().GetName())
		return
	endif
	
	;Debug.Notification("Public reaction: " + npc.GetBaseObject().GetName())
	MQ.Humiliation(npc)
	MQ.ActorFacePlayer(npc)
	npc.SetLookAt(PlayerRef)
	
	float now = Utility.GetCurrentRealTime()
	if now > NextCommentTime.GetValue(); Don't have a cluster of people all speak at once.
		NextCommentTime.SetValue(now + CommentDelay)
		;Debug.Notification("Public reaction comment: " + npc.GetBaseObject().GetName())
		npc.Say(CommentTopic)
	endif
EndEvent

Event OnEffectFinish(Actor npc, Actor playerRef)
	npc.ClearLookAt()
EndEvent