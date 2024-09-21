;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname vkjFashionSlaveKicker Extends Quest Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN AUTOCAST TYPE vkjDeviceControl
Quest __temp = self as Quest
vkjFashionSlave kmyQuest = __temp as vkjFashionSlave
;END AUTOCAST
;BEGIN CODE
; Test whether the Fashion Slave quest should start.
; If yes, start it.  If not, set that quest's cooldown.
if MCM.FashionSlaveChance == 100; Ignore cooldown and always start if 100%.
	FashionSlaveQuest.Start()
elseif NextFashionSlave.GetValue() < GameDaysPassed.GetValue()
	if Utility.RandomInt(1, 100) <= MCM.FashionSlaveChance
		FashionSlaveQuest.Start()
	elseif MCM.FashionSlaveChance > 0
		MiscUtil.PrintConsole("SLTR: Fashion Slave roll failed; it won't be checked again for 1 day.")
	endif
	; Do not try to start Fashion Slave again for one day.
	NextFashionSlave.SetValue(GameDaysPassed.GetValue() + 1.0)
endif
Stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

vkjMCM Property MCM auto
Quest Property FashionSlaveQuest auto
GlobalVariable Property NextFashionSlave auto
GlobalVariable Property GameDaysPassed auto