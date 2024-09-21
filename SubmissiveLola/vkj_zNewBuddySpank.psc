;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_zNewBuddySpank Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjNewBuddy q = GetOwningQuest() as vkjNewBuddy
q.MQ.LastNewBuddyChoice = 4
akSpeaker.AddToFaction(q.SlutClientFaction)

bool niceSpank = false
bool wasNeutral = false
if !akSpeaker.IsInFaction(q.MQ.FavorableFaction) && !akSpeaker.IsInFaction(q.MQ.UnfavorableFaction); Neutral attitude
	wasNeutral = true
	q.MQ.SetNpcReaction(akSpeaker)
	if akSpeaker.IsInFaction(q.MQ.UnfavorableFaction) && (akSpeaker.GetRelationshipRank(q.MQ.PlayerRef) >= 0)
		; Reroll for favorable attitude due to submitting to neutral non-hostile NPC
		akSpeaker.RemoveFromFaction(q.MQ.UnfavorableFaction)
		q.MQ.SetNpcReaction(akSpeaker)
	endif
endif
if akSpeaker.IsInFaction(q.MQ.UnfavorableFaction) && (akSpeaker.GetRelationshipRank(q.MQ.PlayerRef) > 0)
	; Reroll due to friendship
	akSpeaker.RemoveFromFaction(q.MQ.UnfavorableFaction)
	q.MQ.SetNpcReaction(akSpeaker)
endif

bool willPunish = false
niceSpank = akSpeaker.IsInFaction(q.MQ.FavorableFaction)
if !niceSpank
	q.MQ.SmallReward()
	if !wasNeutral
		willPunish = akSpeaker.IsInFaction(q.MQ.UnfavorableFaction)
	else
		; Arousal-based for originally-neutral actors
		willPunish = Utility.RandomInt(1, 100) <= akSpeaker.GetFactionRank(q.MQ.SLAFaction)
	endif
endif
q.MQ.Humiliate(akSpeaker)
q.MQ.OwnerWillWatchSex()
q.MQ.Spank(akSpeaker, punish = willPunish, reward = niceSpank)
q.SetStage(20)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
