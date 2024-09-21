Scriptname vkjPlugPumpsScript extends zadPlugPumpsScript

Function DeviceMenuExt(Int msgChoice)
	if msgChoice == 2
		if libs.zadInflatablePlugStateAnal.GetValueInt() < 5
			(Quest.GetQuest("vkjMQ") as vkjMQ).SqueezedToy()
		endif
	endif
	Parent.DeviceMenuExt(msgChoice)
EndFunction