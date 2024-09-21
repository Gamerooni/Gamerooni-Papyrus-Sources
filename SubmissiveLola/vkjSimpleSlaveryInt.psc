Scriptname vkjSimpleSlaveryInt
; Interface class for Simple Slavery

; Assumes SS++, so calling function must check that.
Idle Function GetAuctionPose() Global
	return ((Quest.GetQuest("SSLV_Config")) as SSLV_ConfigScr).GetAuctionPose()
EndFunction
