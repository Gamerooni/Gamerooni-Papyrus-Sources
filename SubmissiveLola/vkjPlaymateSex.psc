;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 3
Scriptname vkjPlaymateSex Extends Quest Conditional

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
MQ.SetBlockEvents(true)
int subRank = MQ.PlaymateRef.GetFactionRank(MQ.SubmittedToActorFaction)
if subRank < 0
	subRank = 0
endif
PlayerCanTop = (MQ.PlaymateSexDelayed + 3 - (subRank * 2)) >= Utility.RandomInt(1, 10)

float dist = MQ.PlayerRef.GetDistance(MQ.PlaymateRef)
if MQ.PlayerRef.GetCurrentLocation().HasKeyword(KwPlayerHome)
	if dist > 1024
		MQ.MoveNpcToPlayer(MQ.PlaymateRef)
	endif
elseif dist > 400
	MQ.MoveNpcToPlayer(MQ.PlaymateRef)
endif
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
MQ.SetBlockEvents(false)
Stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

vkjMQ Property MQ auto
Scene Property ForcegreetScene auto
bool Property PlayerCanTop auto conditional
Keyword Property KwPlayerHome auto