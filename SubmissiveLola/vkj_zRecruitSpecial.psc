;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_zRecruitSpecial Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
vkjStrongHand q = GetOwningQuest() as vkjStrongHand
; Only intended for brawler followers, but the dialog conditions don't prevent submitting without recruiting them if you already beat them.
if !akSpeaker.IsInFaction(CurrentFollowerFaction)
	if akSpeaker.IsInFaction(FavorFaction); For brawler followers
		akSpeaker.RemoveFromFaction(FavorFaction)
		akSpeaker.SetRelationshipRank(q.PlayerRef, 1)
		FavorQuest.Stop()
	endif
	; Recruit
	q.IsNewFollower = true
	(FollowerDialog as DialogueFollowerScript).SetFollower(akSpeaker)
	Utility.Wait(2);  Let follower frameworks settle down
	if !akSpeaker.IsInFaction(CurrentFollowerFaction)
		Debug.Messagebox("Unable to make a follower of " + akSpeaker.GetActorBase().GetName())
		q.Stop(); Halt Strong Hand
	endif
endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Quest Property FavorQuest auto
Quest Property FollowerDialog auto
Faction Property FavorFaction auto
Faction Property CurrentFollowerFaction auto