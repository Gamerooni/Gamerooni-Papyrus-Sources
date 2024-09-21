;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname pf_vkjNazeemFlee Extends Package Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(Actor akActor)
;BEGIN CODE
Utility.Wait(2)
Armor tunic = (GetOwningQuest() as vkj_qSpankNazeem).Tunic
if tunic != none
	akActor.EquipItem(tunic)
endif
akActor.Say(FleeTopic)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(Actor akActor)
;BEGIN CODE
GetOwningQuest().SetStage(20)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Topic Property FleeTopic auto