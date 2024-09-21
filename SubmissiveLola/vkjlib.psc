Scriptname vkjLib   

float Function GetHourOfDay() Global
	float time = Utility.GetCurrentGameTime()
	time -= Math.Floor(time); Remove "previous in-game days passed" bit
	time *= 24; Convert from fraction of a day to number of hours
	return time
EndFunction

; Return a string representation of a float value, rounded to "precision" decimal places.
string Function Round(float number, int precision) Global
	if number == 0.0
		return "0"
	endif

	string result = number as int
	number -= number as int
	if precision > 0
		result += "."
	endif
	while precision > 0
		number *= 10
		precision -= 1
		if precision == 0
			number += 0.5
			if number >= 10
				number = 1
			endif
		endif
		result += Math.abs(number) as int
		number -= number as int
	endwhile
	return result
EndFunction

float Function Min(float v1, float v2) Global
    if v1 < v2 
        return v1
    endif
    return v2
EndFunction

float Function Max(float v1, float v2) Global
    if v1 > v2 
        return v1
    endif
    return v2
EndFunction

int Function MinInt(int v1, int v2) Global
    if v1 < v2 
        return v1
    endif
    return v2
EndFunction

int Function MaxInt(int v1, int v2) Global
    if v1 > v2 
        return v1
    endif
    return v2
EndFunction