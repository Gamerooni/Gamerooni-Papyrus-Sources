Scriptname zadDevicesUnderneathPlayerScript extends ReferenceAlias

zadLibs Property libs Auto
import zadNativeFunctions

Bool Property Working Auto

Event OnPlayerLoadGame()
    libs.DevicesUnderneath.Maintenance()
    libs.PlayerRef.RemoveItem(libs.DevicesUnderneath.zad_DeviceHider, 5, true)
    RegisterForSingleUpdate(5.0)
EndEvent

Function OnUpdate()
    libs.DevicesUnderneath.UpdateDeviceHiderSlot()
    RegisterForSingleUpdate(5.0)
EndFunction

;Function Logic(armor akArmor, bool equipOrUnequip)
;    if akArmor
;        if !FormHasKeywordString(akArmor, "NoHide")
;            int slotMask = akArmor.GetSlotMask()
;            ;ConsoleUtil.PrintMessage("Logic("+akArmor+") celled, mask="+slotMask)
;            if slotmask != 0
;                int i = 0
;                While i <= 30
;                    int slot = libs.DevicesUnderneath.ShiftCache[i]
;                    if Math.LogicalAnd(SlotMask, slot)
;                        libs.DevicesUnderneath.UpdateSlotmask(i, slot, equipOrUnequip)
;                    EndIf
;                    i += 1
;                EndWhile
;                libs.DevicesUnderneath.ApplySlotmask(GetActorReference())
;            EndIf
;        EndIf
;    EndIf
;EndFunction

Event OnObjectEquipped(Form akBaseObject, ObjectReference akReference)
    RegisterForSingleUpdate(0.5)
    ;ConsoleUtil.PrintMessage("OnObjectEquipped="+akBaseObject +", mutex="+Working)
    ;int timeout = 0
    ;While Working
    ;    Utility.WaitMenuMode(0.01)
    ;EndWhile
    ;Working = True
    ;Utility.waitMenuMode(0.05)
    ;Armor akArmor = (akBaseObject as Armor)
    ;;ConsoleUtil.PrintMessage("OnObjectEquipped, casted="+akArmor)
    ;if akArmor
    ;    if akArmor != libs.DevicesUnderneath.zad_DeviceHider
    ;        Logic(akArmor, true)
    ;    EndIf
    ;endif
    ;Working = False
EndEvent

Event OnObjectUnequipped(Form akBaseObject, ObjectReference akReference)
    RegisterForSingleUpdate(0.5)
    ;ConsoleUtil.PrintMessage("OnObjectUnEquipped="+akBaseObject +", mutex="+Working)
   ;int timeout = 0
   ;While Working
   ;    Utility.WaitMenuMode(0.01)
   ;EndWhile
   ;Working = True
   ;Utility.waitMenuMode(0.05)
   ;Armor akArmor = (akBaseObject as Armor)
   ;;ConsoleUtil.PrintMessage("OnObjectUnEquipped, casted="+akArmor)
   ;if akArmor
   ;    if akArmor == libs.DevicesUnderneath.zad_DeviceHider
   ;        libs.PlayerRef.EquipItem(libs.DevicesUnderneath.zad_DeviceHider, true, true)
   ;    else
   ;        Logic(akArmor, false)
   ;    EndIf
   ;endif
   ;Working = False
EndEvent
