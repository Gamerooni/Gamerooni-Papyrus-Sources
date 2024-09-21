Scriptname vkjMessageFormat extends Quest
; Thanks to Roggvir for Fancy Thoughts concept and code examples.

vkjMCM Property MCM Auto

; Defaults
bool defEnable = true
bool defAnchorTop = true
int defAnchorH = -1; -1 = left, 0 = center, 1 = right
int defOffsetX = 32
int defOffsetY = 64
float defTextSpeed = 0.1
int defTextSize = 24
int defRed = 255
int defGreen = 255
int defBlue = 255
string defFont = "$EverywhereMediumFont"

; Service
string msgOfferService = "You may offer service to your owner"
string msgOwnerBeckons = "Your owner beckons to you"

bool serviceEnable = true
bool serviceAnchorTop = true
int serviceAnchorH = -1
int serviceOffsetX = 32
int serviceOffsetY = 64
float serviceTextSpeed = 0.1
int serviceTextSize = 24
int serviceRed = 255
int serviceGreen = 255
int serviceBlue = 255
string serviceFont = "$EverywhereMediumFont"

; Warnings
bool warningEnable = true
bool warningAnchorTop = true
int warningAnchorH = -1
int warningOffsetX = 32
int warningOffsetY = 64
float warningTextSpeed = 0.1
int warningTextSize = 24
int warningRed = 255
int warningGreen = 255
int warningBlue = 255
string warningFont = "$EverywhereMediumFont"

; Thoughts
bool thoughtEnable = true
bool thoughtAnchorTop = true
int thoughtAnchorH = -1
int thoughtOffsetX = 32
int thoughtOffsetY = 64
float thoughtTextSpeed = 0.1
int thoughtTextSize = 24
int thoughtRed = 255
int thoughtGreen = 255
int thoughtBlue = 255
string thoughtFont = "$EverywhereMediumFont"

; Quest Start
Function Fragment_0()
	Init()
EndFunction

bool Function Init()
	int data = JValue.readFromFile("Data/Interface/Lola/MessageFormat.json")
	if data == 0
		Debug.Notification("Cannot read Data/Interface/Lola/MessageFormat.json")
		Stop()
		return false
	endif
	
	; Defaults
	
	int defaults = JValue.solveObj(data, ".Defaults")
	if defaults > 0
		defEnable = JValue.solveInt(defaults, ".useFormatting", defEnable as int) as bool

		string anchor = JValue.solveStr(defaults, ".anchor")
		if anchor == ""
			anchor = "top,left"
		endif
		defAnchorTop = (StringUtil.Find(anchor, "bottom") == -1)
		defAnchorH = GetAnchorHInt(anchor)
		
		defOffsetX = JValue.solveInt(defaults, ".offsetX", defOffsetX)
		defOffsetY = JValue.solveInt(defaults, ".offsetY", defOffsetY)
		defTextSpeed = JValue.solveFlt(defaults, ".speed", defTextSpeed)
		if defTextSpeed < 0.04
			defTextSpeed = 0.04
		endif
		defTextSize = JValue.solveInt(defaults, ".size", defTextSize)
		if defTextSize < 6
			defTextSize = 24
		endif

		int color = JValue.solveObj(defaults, ".color")
		if JArray.count(color) == 3
			defRed = JArray.getInt(color, 0, defRed)
			defGreen = JArray.getInt(color, 1, defGreen)
			defBlue = JArray.getInt(color, 2, defBlue)
		endif

		defFont = JValue.solveStr(defaults, ".font", defFont)		
	endif
	
	; Thoughts -----------------------------------------------------
	
	int thoughts = JValue.solveObj(data, ".Thoughts")
	if thoughts > 0
		thoughtEnable = JValue.solveInt(thoughts, ".useFormatting", defEnable as int) as bool
	
		string anchor = JValue.solveStr(thoughts, ".anchor")
		if anchor == ""
			thoughtAnchorTop = defAnchorTop
			thoughtAnchorH = defAnchorH
		else
			thoughtAnchorTop = (StringUtil.Find(anchor, "bottom") == -1)
			thoughtAnchorH = GetAnchorHInt(anchor)
		endif
		
		thoughtOffsetX = JValue.solveInt(thoughts, ".offsetX", defOffsetX)
		thoughtOffsetY = JValue.solveInt(thoughts, ".offsetY", defOffsetY)
		thoughtTextSpeed = JValue.solveFlt(thoughts, ".speed", defTextSpeed)
		if thoughtTextSpeed < 0.04
			thoughtTextSpeed = 0.04
		endif
		thoughtTextSize = JValue.solveInt(thoughts, ".size", defTextSize)
		if thoughtTextSize < 6
			thoughtTextSize = 24
		endif

		int color = JValue.solveObj(thoughts, ".color")
		if JArray.count(color) == 3
			thoughtRed = JArray.getInt(color, 0, defRed)
			thoughtGreen = JArray.getInt(color, 1, defGreen)
			thoughtBlue = JArray.getInt(color, 2, defBlue)
		endif

		thoughtFont = JValue.solveStr(thoughts, ".font", defFont)
	else
		thoughtEnable = defEnable
		thoughtAnchorTop = defAnchorTop
		thoughtAnchorH = defAnchorH
		thoughtOffsetX = defOffsetX
		thoughtOffsetY = defOffsetY
		thoughtTextSpeed = defTextSpeed
		thoughtTextSize = defTextSize
		thoughtRed = defRed
		thoughtGreen = defGreen
		thoughtBlue = defBlue
		thoughtFont = defFont
	endif
	
	; Warnings -----------------------------------------------------
	
	int warnings = JValue.solveObj(data, ".Warnings")
	if warnings > 0
		warningEnable = JValue.solveInt(warnings, ".useFormatting", defEnable as int) as bool
	
		string anchor = JValue.solveStr(warnings, ".anchor")
		if anchor == ""
			warningAnchorTop = defAnchorTop
			warningAnchorH = defAnchorH
		else
			warningAnchorTop = (StringUtil.Find(anchor, "bottom") == -1)
			warningAnchorH = GetAnchorHInt(anchor)
		endif
		
		warningOffsetX = JValue.solveInt(warnings, ".offsetX", defOffsetX)
		warningOffsetY = JValue.solveInt(warnings, ".offsetY", defOffsetY)
		warningTextSpeed = JValue.solveFlt(warnings, ".speed", defTextSpeed)
		if warningTextSpeed < 0.04
			warningTextSpeed = 0.04
		endif
		warningTextSize = JValue.solveInt(warnings, ".size", defTextSize)
		if warningTextSize < 6
			warningTextSize = 24
		endif

		int color = JValue.solveObj(warnings, ".color")
		if JArray.count(color) == 3
			warningRed = JArray.getInt(color, 0, defRed)
			warningGreen = JArray.getInt(color, 1, defGreen)
			warningBlue = JArray.getInt(color, 2, defBlue)
		endif

		warningFont = JValue.solveStr(warnings, ".font", defFont)
	else
		warningEnable = defEnable
		warningAnchorTop = defAnchorTop
		warningAnchorH = defAnchorH
		warningOffsetX = defOffsetX
		warningOffsetY = defOffsetY
		warningTextSpeed = defTextSpeed
		warningTextSize = defTextSize
		warningRed = defRed
		warningGreen = defGreen
		warningBlue = defBlue
		warningFont = defFont
	endif
	
	; Service -----------------------------------------------------
	
	int services = JValue.solveObj(data, ".Service")
	if services > 0
		serviceEnable = JValue.solveInt(services, ".useFormatting", defEnable as int) as bool
	
		string anchor = JValue.solveStr(services, ".anchor")
		if anchor == ""
			serviceAnchorTop = defAnchorTop
			serviceAnchorH = defAnchorH
		else
			serviceAnchorTop = (StringUtil.Find(anchor, "bottom") == -1)
			serviceAnchorH = GetAnchorHInt(anchor)
		endif
		
		serviceOffsetX = JValue.solveInt(services, ".offsetX", defOffsetX)
		serviceOffsetY = JValue.solveInt(services, ".offsetY", defOffsetY)
		serviceTextSpeed = JValue.solveFlt(services, ".speed", defTextSpeed)
		if serviceTextSpeed < 0.04
			serviceTextSpeed = 0.04
		endif
		serviceTextSize = JValue.solveInt(services, ".size", defTextSize)
		if serviceTextSize < 6
			serviceTextSize = 24
		endif

		int color = JValue.solveObj(services, ".color")
		if JArray.count(color) == 3
			serviceRed = JArray.getInt(color, 0, defRed)
			serviceGreen = JArray.getInt(color, 1, defGreen)
			serviceBlue = JArray.getInt(color, 2, defBlue)
		endif

		serviceFont = JValue.solveStr(services, ".font", serviceFont)
		
		; Message Text
		msgOfferService = JValue.solveStr(services, ".offerService", msgOfferService)
		msgOwnerBeckons = JValue.solveStr(services, ".ownerBeckons", msgOwnerBeckons)
	else
		serviceEnable = defEnable
		serviceAnchorTop = defAnchorTop
		serviceAnchorH = defAnchorH
		serviceOffsetX = defOffsetX
		serviceOffsetY = defOffsetY
		serviceTextSpeed = defTextSpeed
		serviceTextSize = defTextSize
		serviceRed = defRed
		serviceGreen = defGreen
		serviceBlue = defBlue
		serviceFont = defFont
	endif
	
	; Cleanup

	JValue.zeroLifetime(data)
	if defaults > 0
		JValue.zeroLifetime(defaults)
	endif
	if services > 0
		JValue.zeroLifetime(services)
	endif
	if warnings > 0
		JValue.zeroLifetime(warnings)
	endif
	if thoughts > 0
		JValue.zeroLifetime(thoughts)
	endif
	
	RegisterForModEvent("SLTR-DestroyMessageWidget", "OnDestroyWidget")
	
	return true
EndFunction

int Function GetAnchorHInt(string str)
	int val = -1
	if StringUtil.Find(str, "center") >= 0
		val = 0
	elseif StringUtil.Find(str, "right") >= 0
		val = 1
	endif
	return val
EndFunction

Function DisplayThought(string text)
	if !thoughtEnable
		Debug.Notification(text)
		return
	endif

	vkjIwwInt.Display(text, MCM.iwwQuest, thoughtFont, thoughtTextSize, thoughtTextSpeed, thoughtAnchorTop, thoughtAnchorH, thoughtOffsetX, thoughtOffsetY, thoughtRed, thoughtGreen, thoughtBlue)
EndFunction

Function DisplayWarning(string text)
	if !warningEnable
		Debug.Notification(text)
		return
	endif

	vkjIwwInt.Display(text, MCM.iwwQuest, warningFont, warningTextSize, warningTextSpeed, warningAnchorTop, warningAnchorH, warningOffsetX, warningOffsetY, warningRed, warningGreen, warningBlue)
EndFunction

Function DisplayOfferService(Message defaultMsg)
	if !serviceEnable
		defaultMsg.Show()
		return
	endif

	vkjIwwInt.Display(msgOfferService, MCM.iwwQuest, serviceFont, serviceTextSize, serviceTextSpeed, serviceAnchorTop, serviceAnchorH, serviceOffsetX, serviceOffsetY, serviceRed, serviceGreen, serviceBlue)
EndFunction

Function DisplayOwnerBeckons(Message defaultMsg)
	if !serviceEnable
		defaultMsg.Show()
		return
	endif

	vkjIwwInt.Display(msgOwnerBeckons, MCM.iwwQuest, serviceFont, serviceTextSize, serviceTextSpeed, serviceAnchorTop, serviceAnchorH, serviceOffsetX, serviceOffsetY, serviceRed, serviceGreen, serviceBlue)
EndFunction


Event OnDestroyWidget(int widget, float duration)
	vkjIwwInt.DestroyWidget(MCM.iwwQuest, widget, duration)
EndEvent