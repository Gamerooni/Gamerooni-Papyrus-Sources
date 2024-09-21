Scriptname vkjOwnerComment extends Quest conditional

vkjMQ Property MQ Auto
Scene Property ForcegreetScene Auto
ActorBase Property TellMe Auto
GlobalVariable Property ChanceRoll auto conditional
bool Property CollarIsManipulated=false auto conditional
bool Property CanAskServeReason=false auto conditional
bool Property SaidThisBefore=false auto conditional
int Property ThisReason=-1 auto conditional
int Property ReasonCount=1 auto conditional
bool Property EndSex=false auto conditional

float Reward

Function Init()
	ChanceRoll.SetValue(Math.Floor(Utility.RandomInt(0,99)))
	CanAskServeReason = MQ.GetScore() >= MQ.NextServeReasonScore
EndFunction

Function EndMe(bool basicP = false, bool basicR = false)
	if basicR
		MQ.MinimalReward()
	elseif basicP
		MQ.PunishForMinor()
	endif
	if Reward != 0
		MQ.UpdateSubmissionScore(Reward)
	endif

	if ThisReason >= 0
		MQ.SetNextServeReasonScore()
	endif
	if EndSex
		MQ.FuckLoving(MQ.OwnerRef)
	endif

	Stop()
endFunction

Function End()
	Stop()
EndFunction

Function StopScene()
	ForcegreetScene.Stop()
EndFunction

Function SetWhatIWantToHear()
	TellMe.SetName(MQ.MCM.WhatIWantToHear)
EndFunction

Function GaveReason(int reason, float rewardVal)
	SaidThisBefore = reason >= 0 && (MQ.ServeReason1 == reason || MQ.ServeReason2 == reason)
	ThisReason = reason
	if ReasonCount == 1
		MQ.ServeReason1 = reason
	else
		MQ.ServeReason2 = reason
	endif
	Reward += rewardVal
	
	if Reward > 6 || reason >= 12
		EndSex = true
	endif
EndFunction