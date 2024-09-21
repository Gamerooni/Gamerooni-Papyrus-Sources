Scriptname vkjIwwInt
; Interface class for iWant Widgets

Function Display(string text, Quest q, string fontName, int textSize, float speed, bool anchorTop, int anchorH, int offsetX, int offsetY, int red, int green, int blue) Global
	iWant_Widgets iWidgets = q as iWant_Widgets
	int widget = iWidgets.loadText(text, font = fontName, size = textSize)

	int width = iWidgets.GetXSize(widget)
	int height = iWidgets.GetYSize(widget)
	int widthHalf = (width / 2) as int
	int heightHalf = (height / 2) as int

	int x = offsetX + widthHalf; left
	if anchorH == 0; center
		x = 640 + offsetX
	elseif anchorH == 1; right
		x = (1279 - offsetX) - widthHalf
	endif
	
	int y = offsetY + heightHalf
	if !anchorTop
		y = (719 - offsetY) - heightHalf
	endif
	
	iWidgets.setPos(widget, x, y)
	iWidgets.setRGB(widget, red, green, blue)
	iWidgets.setVisible(widget)
	
	;Utility.Wait(speed * (StringUtil.GetLength(text) as float))
	;iWidgets.destroy(widget)
	int handle = ModEvent.Create("SLTR-DestroyMessageWidget")
	ModEvent.PushInt(handle, widget)
	ModEvent.PushFloat(handle, speed * (StringUtil.GetLength(text) as float))
	ModEvent.Send(handle)
	;MiscUtil.PrintConsole("SLTR-DestroyMessageWidget sent: " + Utility.GetCurrentRealTime())
EndFunction

Function DestroyWidget(Quest q, int widget, float duration) Global
	;MiscUtil.PrintConsole("SLTR-DestroyMessageWidget received: " + Utility.GetCurrentRealTime())
	Utility.Wait(duration)
	iWant_Widgets iWidgets = q as iWant_Widgets
	iWidgets.destroy(widget)
EndFunction