;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname vkj_zSpankNazeem Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
if FleeQuest.IsRunning()
	FleeQuest.Reset()
else
	FleeQuest.Start()
	FleeQuest.SetStage(0)
endif

Form bodyWear = Nazeem.GetWornForm(0x00000004)
vkj_qSpankNazeem q = FleeQuest as vkj_qSpankNazeem
if bodyWear != none
	q.Tunic = bodyWear as Armor
else
	q.Tunic = none
endif

int rank = Nazeem.GetRelationshipRank(PlayerRef)
if rank >= 0
	rank -= 1
	Nazeem.SetRelationshipRank(PlayerRef, rank)
endif
rank = Ahlam.GetRelationshipRank(PlayerRef)
if rank < 1
	rank += 1
	Ahlam.SetRelationshipRank(PlayerRef, rank)
endif

sslBaseAnimation[] anims = MQ.GetSpankingAnims()
if PlayerRef.GetDistance(Nazeem) > 500
	MQ.MoveNpcBehindPlayer(Nazeem, 100.0)
endif
MQ.SexlabDomNoStrip(anims, Spanker.GetActorReference(), Nazeem)
int i = 0
While !Nazeem.IsInFaction(MQ.HavingSexFaction) && (i < 30)
	Utility.Wait(1)
	i += 1
EndWhile
if i < 30
	FleeQuest.SetStage(10)
	Utility.Wait(10)
	MQ.OwnerRef.Say(SpankTopic)
endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

vkjMQ Property MQ auto
Actor Property PlayerRef auto
Actor Property Nazeem auto
Actor Property Ahlam auto
ReferenceAlias Property Spanker auto
Quest Property FleeQuest auto
Topic Property SpankTopic auto