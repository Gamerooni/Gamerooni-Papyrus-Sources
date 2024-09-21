Scriptname vkjOwnerBleedoutPunishment Extends Quest Conditional

vkjMQ Property MQ auto
vkjMCM Property MCM auto
Keyword Property KwRestoreHealth auto
bool Property SayIntro=true auto conditional
bool Property PunishDays auto conditional
bool Property PunishProst auto conditional
bool Property PunishPotions auto conditional

int Bleedouts

Function Fragment_0(); Quest startup
	Init()
EndFunction

Function Init()
	Bleedouts = MQ.BleedoutCount
	MQ.BleedoutCount = 0; clear for the next combat

	PunishDays = ((MCM.BleedoutDays > 0) && MQ.CanAddContractDays())
	PunishProst = ((MCM.BleedoutDays > 0) && MQ.CanProstitute())
	PunishPotions = ((MCM.BleedoutPotions > 0) && MQ.CanTakeHealingPotions())
EndFunction

Function AddDays()
	MQ.AddContractDays(Bleedouts * MCM.BleedoutDays)
EndFunction

Function AddQuota()
	MQ.UpdateBonusProstQuota(Bleedouts * MCM.BleedoutProstQuota)
	MCM.NextWhore.SetValue(MCM.NextWhore.GetValue() - 1.0); Reduce the cooldown by a day so Lola gets to work soon.
EndFunction

Function TakePotions()
	MQ.OwnerTakesCombatPotions(Bleedouts * MCM.BleedoutPotions)
EndFunction