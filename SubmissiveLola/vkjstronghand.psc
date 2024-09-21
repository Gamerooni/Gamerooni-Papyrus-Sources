Scriptname vkjStrongHand extends Quest  conditional

vkjMCM Property MCM Auto
vkjMQ Property MQ Auto
zadLibs Property zlib Auto
Actor Property PlayerRef Auto
Actor Property Follower Auto
Armor Property Collar Auto
Scene Property ForceGreetScene Auto
HirelingQuest property HQ Auto
Bool Property IsNewFollower Auto
Bool Property IsLastOwner Auto
Bool Property WasBought=false Auto
Bool Property WasPaid=false Auto
Bool Property FollowerAsked Auto
Bool Property Resubmitted Auto
int Property Scenario = 0 Auto conditional; 0 = SS, 1 = PW
int Property HowAcquired Auto; 0=Unknown, -1=SS, -2=PW, 1=Gold, 2=Resubmitted, 5=Follower Asked, 10=Not Expecting, 11=Expecting, 12=Forceful, 13=Seductive, 14=Convince Me
bool Property CollarIsManipulated=false auto conditional
bool Property GiveKeys Auto

int property FollowerOptions auto conditional; Used for follower talking the PC into slavery dialog.  1=Unsure, 2=Secretly Interested
formlist property RejectFollowers auto; A list of followers you have hard rejected when they asked to enslave you. They will be unable to do so again.

Event OnInit()
EndEvent

Function GiveCollar(bool equipCollar=false)
	FormList collarList = MCM.collarForm
	int numCollars = collarList.GetSize(); form doesn't include Random
	if MCM.collars == numCollars; random
		int rand = Utility.RandomInt(0, (numCollars - 2)); skip custom
		Collar = collarList.GetAt(rand) as Armor
	else
		Collar = collarList.GetAt(MCM.collars) as Armor
	endif
	
	if equipCollar
		Armor rDev = zlib.GetRenderedDevice(Collar) 
		zlib.EquipDevice(PlayerRef, Collar, rDev, zlib.zad_DeviousCollar)
	else
		PlayerRef.AddItem(Collar)
	endif

	SetObjectiveCompleted(0)
	SetObjectiveDisplayed(0, false)
	SetObjectiveDisplayed(10)
	SetCurrentStageID(10)
EndFunction

Function RemoveCollar()
	PlayerRef.RemoveItem(Collar, 1)
EndFunction

Function TryGiveKeys()
	if !GiveKeys
		return
	endif
	Follower.Additem(zlib.restraintsKey, 3)
	if PlayerRef.WornHasKeyword(zlib.zad_DeviousBelt)
		Follower.Additem(zlib.chastityKey, 1)
	endif
	if PlayerRef.WornHasKeyword(zlib.zad_DeviousPiercingsNipple)
		Follower.Additem(zlib.piercingKey, 1)	
	endif
	if PlayerRef.WornHasKeyword(zlib.zad_DeviousPiercingsVaginal)
		Follower.Additem(zlib.piercingKey, 1)	
	endif
EndFunction

int Function SetHowAcquired()
	if WasBought
		HowAcquired = -1 - Scenario
	elseif WasPaid
		HowAcquired = 1
	elseif Resubmitted
		HowAcquired = 2
	elseif FollowerAsked
		HowAcquired = 5
	else
		HowAcquired = MCM.FollowerKnows + 10
	endif
	return HowAcquired
EndFunction