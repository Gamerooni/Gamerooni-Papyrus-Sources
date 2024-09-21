;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 17
Scriptname vkj_qStrongHand Extends Quest Hidden

;BEGIN ALIAS PROPERTY Owner
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Owner Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Title
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Title Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN AUTOCAST TYPE vkjStrongHand
Quest __temp = self as Quest
vkjStrongHand kmyQuest = __temp as vkjStrongHand
;END AUTOCAST
;BEGIN CODE
SetObjectiveDisplayed(0)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN CODE
CompleteAllObjectives()
stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN AUTOCAST TYPE vkjStrongHand
Quest __temp = self as Quest
vkjStrongHand kmyQuest = __temp as vkjStrongHand
;END AUTOCAST
;BEGIN CODE
SetObjectiveDisplayed(0)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN AUTOCAST TYPE vkjStrongHand
Quest __temp = self as Quest
vkjStrongHand kmyQuest = __temp as vkjStrongHand
;END AUTOCAST
;BEGIN CODE
CompleteAllObjectives()
stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN AUTOCAST TYPE vkjStrongHand
Quest __temp = self as Quest
vkjStrongHand kmyQuest = __temp as vkjStrongHand
;END AUTOCAST
;BEGIN CODE
Alias_Owner.ForceRefTo(MQ.BuyerRef)
SetObjectiveDisplayed(5)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

vkjMQ Property MQ Auto