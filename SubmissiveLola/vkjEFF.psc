Scriptname vkjEFF Hidden
{ Added by Roggvir }

;/--------------------------------------------------------------------------------------------------
;	Returns the EFF container that is used to store "inventory" items of given follower.
;	Keep it global to prevent the game from instantiating the script, which would result in error
;	when trying to resolve the EFFCore type while the user is not using EFF.
;-------------------------------------------------------------------------------------------------/;
objectReference function FollowerInventory(objectReference _followerRef) global
	actor _follower = _followerRef as actor
	if _follower
		EFFCore _eff = Quest.GetQuest("FollowerExtension") as EFFCore
		if _eff
			if _eff.XFL_FollowerCountEx ; same check is used by EFF to make sure EFF is running, so i blindly do the same
				int _i = _follower.GetActorValue("FavorActive") as int ; the alias index of the follower
				if _i != -1
					return _eff.XFL_FollowerInventories[_i]
				endif
			else
				Debug.Trace("vkjEFF ERROR: FollowerInventory() seems like EFF is not active - XFL_FollowerCountEx is none")
			endIf
		else
			Debug.Trace("vkjEFF ERROR: FollowerInventory() failed to get EFFCore")
		endif
	else
		Debug.Trace("vkjEFF ERROR: FollowerInventory() failed to cast follower reference as actor")
	endif
	return none
endFunction
