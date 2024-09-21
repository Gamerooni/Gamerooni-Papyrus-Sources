scriptname zadDevicesUnderneathScript extends Quest

zadLibs Property libs Auto
import zadNativeFunctions
Armor Property zad_DeviceHider Auto
ArmorAddon Property zad_DeviceHiderAA Auto

int[] Property SlotMaskFilters Auto
int[] Property SlotMaskUsage Auto
int[] Property ShiftCache Auto

int Property SlotMask Auto ; Avoid repeated lookups


;; [30]: 0x00000001
;; [31]: 0x00000002
;; [32]: 0x00000004
;; [33]: 0x00000008
;; [34]: 0x00000010
;; [35]: 0x00000020
;; [36]: 0x00000040
;; [37]: 0x00000080
;; [38]: 0x00000100
;; [39]: 0x00000200
;; [40]: 0x00000400
;; [41]: 0x00000800
;; [42]: 0x00001000
;; [43]: 0x00002000
;; [44]: 0x00004000
;; [45]: 0x00008000
;; [46]: 0x00010000
;; [47]: 0x00020000
;; [48]: 0x00040000
;; [49]: 0x00080000
;; [50]: 0x00100000
;; [51]: 0x00200000
;; [52]: 0x00400000
;; [53]: 0x00800000
;; [54]: 0x01000000
;; [55]: 0x02000000
;; [56]: 0x04000000
;; [57]: 0x08000000
;; [58]: 0x10000000
;; [59]: 0x20000000

; Event OnInit()
; 	Maintenance()
; EndEvent


Function SetDefaultSlotMasks()
    SlotMaskFilters = new int[128]
    SlotMaskUsage = new int[128]
    ShiftCache = new int [33]
    int i = 0
    while i <= 32
        ShiftCache[i] = Math.LeftShift(1, i)
        i += 1
    EndWhile
    ; SlotMaskFilters[2*4] = Math.LeftShift(1,26) ; For slot 32, hide slot 56.
    HideEquipment(32, 51) ; When slot 32 is equipped, hide slot 51 (Nipple Piercings).
    HideEquipment(32, 56) ; When slot 32 is equipped, hide slot 56 (Chastity Bra's).
    HideEquipment(32, 58) ; When slot 32 is equipped, hide slot 58 (Corsets).
    HideEquipment(32, 49) ; When slot 32 is equipped, hide slot 49 (Belts).
EndFunction


Function HideEquipment(int slot1, int slot2)
    if slot1 < 30 || slot1 > 61 || slot2 < 30 || slot2 > 61
        libs.Error("HideEquipment received out of bound slot number.")
    else
        int index = ((slot1 - 30) * 4)
        int i = 0
        while i < 4
            if SlotMaskFilters[index+i] == 0
                SlotMaskFilters[index+i] = ShiftCache[slot2 - 30]
                libs.Log("DevicesUnderneath Registered(" + index+i + ":" + (slot2 - 30)+")")
                return
            EndIf
            i += 1
        EndWhile
        libs.Error("Maximum number of equipment slots reached for slot "+ slot1 + " while trying to hide slot "+ slot2)
    EndIf
EndFunction


Function Maintenance()
    libs.Log("DevicesUnderneath::Maintenance()")
    zad_DeviceHiderAA = zad_DeviceHider.GetNthArmorAddon(0)
    if SlotMaskFilters.length <= 0 || ShiftCache.Length <= 0
        SetDefaultSlotMasks()
    EndIf
    if libs.Config.DevicesUnderneathSlot == 0
        ; libs.Config.DevicesUnderneathSlot = libs.Config.DevicesUnderneathSlotDefault
    EndIf
    UpdateDeviceHiderSlot()
EndFunction


Function ApplySlotmask(Actor akActor)
    akActor.EquipItem(zad_DeviceHider, true, true)
    Int loc_slot = FilterMask(akActor, SlotMask)
    ;ConsoleUtil.PrintMessage("ApplySlotmask called for "+akActor + ", mask="+SlotMask+" maskAfterFilter="+loc_slot)
    if loc_slot != zad_DeviceHiderAA.GetSlotMask()
        if loc_slot < 0
            loc_slot = 0
        EndIf
        zad_DeviceHiderAA.SetSlotMask(loc_slot)
        libs.Log("Set slot mask to ["+loc_slot+"]: "+zad_DeviceHiderAA.GetSlotMask())
        if libs.Config.UseQueueNiNode && !akActor.IsOnMount() ; Warning not to do this if mounted in Actor.psc
            akActor.QueueNiNodeUpdate()
            if akActor.WornHasKeyword(libs.zad_DeviousGag)
                libs.ApplyGagEffect(akActor)
            EndIf
        Else
            akActor.UnEquipItem(zad_DeviceHider, false, true)
            akActor.EquipItem(zad_DeviceHider, true, true)
        EndIf
    EndIf
EndFunction

; filter slot mask, so it only hides devious items, and not other items (SoS, bikiny, etc...)
; This is quite slow, but it will make all armor mods compatible without needing of patches
Int Function FilterMask(Actor akActor, Int aiSloMask)
    Int loc_id = 0x00000001
    Int loc_res = aiSloMask
    while loc_id != 0x80000000
        ;check that slot is hidden
        if Math.LogicalAnd(loc_res,loc_id)
            ;get armor in the hidden slot
            Armor loc_armor = akActor.GetWornForm(loc_id) as Armor
            ;check that armor is not none and is DD
            if loc_armor
                ;check if armor is Devious Device, if not, remove the slot from hidder
                if !IsValidForHide(loc_armor)
                    ;remove the slot from hider
                    loc_res = Math.LogicalAnd(loc_res,Math.LogicalNot(loc_id))
                endif
            endif
        endif
        loc_id = Math.LeftShift(loc_id,1)
    endwhile
    return loc_res
EndFunction

Keyword _SOS_SchlongKW
Keyword Property SOS_SchlongKW
    Keyword Function Get()
        if !_SOS_SchlongKW
            _SOS_SchlongKW = Game.GetFormFromFile(0x0012D9,"Schlongs of Skyrim - Core.esm") as Keyword
        endif
        return _SOS_SchlongKW
    EndFunction
EndProperty

;return true if armor should be hidden
Bool Function IsValidForHide(Armor akArmor)
    Bool loc_res = false
    loc_res = loc_res || akArmor.hasKeyword(libs.zad_Lockable)
    loc_res = loc_res || akArmor.hasKeyword(libs.zad_DeviousPlug)   ;there are some plugs which have no zad_Lockable keyword, as so needs to be checked here
    loc_res = loc_res || akArmor.hasKeyword(SOS_SchlongKW)       ;Armor is SoS. Allow user to hide SoS using hidder
    return loc_res
EndFunction

Function UpdateSlotmask(int index, int slot, bool equipOrUnequip)
    index *= 4
    if index >= 124
        libs.Error("UpdateSlotmask received out of bound index: "+index)
    else
        int i = 0
        while i < 4
            if SlotMaskFilters[index+i] != 0
                if equipOrUnequip
                    SlotMask = Math.LogicalOr(SlotMask, SlotMaskFilters[index+i])
                    SlotMaskUsage[index+i] = SlotMaskUsage[index+i] + 1
                Else
                    SlotMaskUsage[index+i] = SlotMaskUsage[index+i] - 1
                    SlotMask = SlotMask - SlotMaskFilters[index+i]
                EndIf
            EndIf
            i += 1
        EndWhile
    EndIf
EndFunction

Function RebuildSlotmask(actor akActor)
    libs.Log("RebuildSlotmask()")
    int i = 0
    while i < 128
        SlotMaskUsage[i] = 0
        i += 1
    EndWhile
    SlotMask = 0
    i = 0
    while i <= 30
        Armor loc_armor = akActor.GetWornForm(ShiftCache[i]) as Armor
        if loc_armor && !FormHasKeywordString(loc_armor as Form, "NoHide")
            int loc_slotmask = loc_armor.GetSlotMask()
            int loc_cacheindx = 0
            While loc_cacheindx <= 30
                int loc_armorslotmask = ShiftCache[loc_cacheindx]
                if Math.LogicalAnd(loc_slotmask, loc_armorslotmask)
                    UpdateSlotmask(loc_cacheindx, loc_armorslotmask, true)
                EndIf
                loc_cacheindx += 1
            EndWhile
        EndIf
        i += 1
    EndWhile
    ApplySlotMask(akActor)
EndFunction

Bool _HiderMutex = False
Function StartHiderMutex()
    if _HiderMutex ;destroy thread, no need to do the action multiple times
        return
    endif
    _HiderMutex = True
EndFunction

Function EndHiderMutex()
    _HiderMutex = False
EndFunction

Function UpdateDeviceHiderSlot()
    StartHiderMutex()
    int slot = libs.Config.DevicesUnderneathSlot - 1
    libs.Log("Set Device Hider slot to "+(slot+30)+".")
    zad_DeviceHider.SetSlotMask(Math.LeftShift(1, slot))
    RebuildSlotMask(libs.PlayerRef)
    ;if !libs.PlayerRef.IsOnMount()
    ;    libs.PlayerRef.QueueNiNodeUpdate()
    ;EndIf
    EndHiderMutex()
EndFunction
