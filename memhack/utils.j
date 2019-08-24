#guard utils

include "cjass\triggers.j"

library MemHackUtils initializer init requires Typecast, Memory, Bitwise, StringId, ObjectData

    setdef memHackEnabled = 1

    integer Temp_GetSomeAdd1=0
    integer Temp_GetSomeAdd2=0

    define
    {
        echo(s)=BJDebugMsg(s)
    }

    function ConvertHandle takes handle h returns integer
        if GetHandleId( h ) > 0 then
            return Memory[Memory[Memory[Memory[GameState] / 4 + 7] / 4 + 103] / 4 + GetHandleId( h ) * 3 - 0x2FFFFF]
        endif
        return 0
    endfunction

    function ConvertPointer takes integer ptr returns integer
        local integer i = Memory[ptr / 4]
        if i < 0 then
            return Memory[Memory[pointers + 11] / 4 - i * 2 + 1]
        endif
        return Memory[Memory[pointers + 3] / 4 + i * 2 + 1]
    endfunction

    function GetUnitFlags takes unit u returns integer
        return Memory[ConvertHandle( u ) / 4 + 23]
    endfunction

    function SetUnitFlags takes unit u, integer i returns nothing
        set Memory[ConvertHandle( u ) / 4 + 23] = i
    endfunction
    
    function IsFlagBitSet takes integer flags, integer bit returns boolean
        return flags/bit*2147483648 != 0
    endfunction

    function GetJassContext takes integer id returns integer
        return Memory[Memory[Memory[Memory[pJassEnvAddress]/4+5]/4+36]/4+id]
    endfunction

    function GetStringAddress takes string s returns integer
        return Memory[Memory[Memory[Memory[GetJassContext(1)/4+2589]/4+2]/4+SH2I(s)*4+2]/4+7]
    endfunction

    function WriteNullTerminatedString takes string s, integer i_address returns nothing
        set Memory[i_address/4] = GetStringAddress(s)
    endfunction

    function GetDefAddr takes integer id, integer class, integer first, integer currentOffset returns integer
        local integer FirstDataDefEntry = ReadRealMemory(first)
        local integer CurrentDefAddr = Memory[FirstDataDefEntry/4 + 2] + currentOffset
        local integer FirstDefAddr = CurrentDefAddr
        local integer CurrentDefId = 0
        local integer CurrentDefId2 = 0
        if FirstDataDefEntry == 0 then
            return 0
        endif
    //    if HaveSavedInteger(Addresses,id,class)then
    //        return LoadInteger(Addresses,id,class) - 0xC
    //    endif
    
    //    if HaveSavedInteger(Addresses,class,0)then
    //        set CurrentDefAddr=LoadInteger(Addresses,class,0)
    //        set FirstDefAddr=LoadInteger(Addresses,class,1)
    //        call echo("address preloaded")
    //    elseif HaveSavedInteger(Addresses,class,1)==false then
    //        call echo("first address saved")
    //        call SaveInteger(Addresses,class,1,FirstDefAddr)
    //    endif
    
        loop
            set CurrentDefId = Memory[CurrentDefAddr/4+2]
    
    //        call SaveInteger(Addresses,CurrentDefId,class,CurrentDefAddr)
    //        call SaveInteger(Addresses,class,0,CurrentDefAddr)
    //        call echo(Id2String(CurrentDefId))
            if HaveSavedInteger(hash,class,CurrentDefId)==false then
    //            call echo("Cached "+Id2String(CurrentDefId))
                call SaveInteger(hash,class,CurrentDefId,CurrentDefAddr - 0xC)
            endif
            exitwhen CurrentDefId == id
    
            set CurrentDefAddr = Memory[CurrentDefAddr/4]
            if CurrentDefAddr == 0 or CurrentDefAddr == FirstDefAddr then
    //            if CurrentDefAddr == 0 then
    //                call echo("drop for null")
    //            else
    //                call echo("drop for start")
    //            endif
                return 0
            endif
        endloop
    
        if CurrentDefAddr == 0 then
    //        call echo("drop for zero")
            return 0
        endif
        return CurrentDefAddr - 0xC// as GetObjectData*4 but search only by id..
    endfunction

    function GetDefAddrCaching takes integer id, integer class, integer first, integer currentOffset returns integer
        if HaveSavedInteger(hash,class,id) then
    //        call echo("loaded")
            return LoadInteger(hash,class,id)
        endif
        return GetDefAddr(id,class,first,currentOffset)
    endfunction

    function GetUnitDataDefAddr takes integer id returns integer
        return GetDefAddrCaching(id,DEF_ADR_UNIT_DATA,pUnitDataDefAddr,0xC)
    endfunction

    function GetUnitUIDefAddr takes integer id returns integer
        return GetDefAddrCaching(id,DEF_ADR_UNIT_UI,pUnitUIDefAddr,0x10)
    endfunction

    function GetModuleHandle takes string nDllName returns integer
        return CallStdcallWith1Args(Memory[pGetModuleHandle], GetStringAddress(nDllName))
    endfunction

    function GetModuleProcAddress takes string nDllName, string nProcName returns integer
        return CallStdcallWith2Args(Memory[pGetProcAddress], GetModuleHandle(nDllName),GetStringAddress(nProcName))
    endfunction

    function SetMainFuncWork takes boolean b returns nothing
        if pSetMainFuncWork == 0 then
            set pSetMainFuncWork = GetModuleProcAddress(EXTRADLLNAME, "SetMainFuncWork")
        endif
        if pSetMainFuncWork != 0 then
            call CallStdcallWith1Args(pSetMainFuncWork,B2I(b))
        endif
    endfunction

    function CallFastCallWith2Args takes integer pFuncFastcallAddr, integer arg1, integer arg2 returns integer
        local integer pOffset1=0

        call WriteRealMemory(pReservedExecutableMemory2, 0xBAF68B56)
        call WriteRealMemory(pReservedExecutableMemory2+4, arg2)
        call WriteRealMemory(pReservedExecutableMemory2+8, 0xB9F68B90)
        call WriteRealMemory(pReservedExecutableMemory2+12, arg1)
        call WriteRealMemory(pReservedExecutableMemory2+16, 0xBEF68B90)
        call WriteRealMemory(pReservedExecutableMemory2+20, pFuncFastcallAddr)
        call WriteRealMemory(pReservedExecutableMemory2+24, 0xC35ED6FF)
    
        if pIgnoredUnitsOffset == 0 then
            set pIgnoredUnitsOffset = CreateJassNativeHook(pIgnoredUnits, pReservedExecutableMemory2 )
        else
            call WriteRealMemory(pIgnoredUnitsOffset,pReservedExecutableMemory2)
        endif
    

        set pOffset1 = IgnoredUnits(0)
        call WriteRealMemory(pIgnoredUnitsOffset, pIgnoredUnits)
        return pOffset1
    endfunction

    function CallFastCallWith3Args takes integer pFuncFastcallAddr, integer arg1, integer arg2, integer arg3 returns integer
        local integer pOffset1=0

        call WriteRealMemory(pReservedExecutableMemory2, 0x68F68B56)
        call WriteRealMemory(pReservedExecutableMemory2+4, arg3)
        call WriteRealMemory(pReservedExecutableMemory2+8, 0xBAF68B90)
        call WriteRealMemory(pReservedExecutableMemory2+12, arg2)
        call WriteRealMemory(pReservedExecutableMemory2+16, 0xB9F68B90)
        call WriteRealMemory(pReservedExecutableMemory2+20, arg1)
        call WriteRealMemory(pReservedExecutableMemory2+24, 0xBEF68B90)
        call WriteRealMemory(pReservedExecutableMemory2+28, pFuncFastcallAddr)
        call WriteRealMemory(pReservedExecutableMemory2+32, 0xC35ED6FF)
    
    
        if pIgnoredUnitsOffset == 0 then
            set pIgnoredUnitsOffset = CreateJassNativeHook(pIgnoredUnits, pReservedExecutableMemory2 )
        else
            call WriteRealMemory(pIgnoredUnitsOffset,pReservedExecutableMemory2)
        endif

        set pOffset1 = IgnoredUnits(0)
        call WriteRealMemory(pIgnoredUnitsOffset, pIgnoredUnits)
        return pOffset1
    endfunction

    function CallThisCallWith1Args takes integer pFuncThiscallAddr, integer arg1 returns integer
        return CallFastCallWith2Args(pFuncThiscallAddr,arg1,0)
    endfunction

    function CallThisCallWith2Args takes integer pFuncThiscallAddr, integer arg1, integer arg2 returns integer
        return CallFastCallWith3Args(pFuncThiscallAddr,arg1,0,arg2)
    endfunction

    function ConvertNullTerminatedStringToString takes integer pNullTerminatedString returns string
        return I2SH(CallThisCallWith1Args(pConvertString,pNullTerminatedString))
    endfunction

    function SearchStringValueAddress takes string str returns integer
        local integer retaddr = CallThisCallWith2Args(pSearchStringValue,pSearchStringAddr1,GetStringAddress(str))
        if retaddr == 0 or ReadRealMemory( retaddr + 0x1C ) == 0 then
            set retaddr = CallThisCallWith2Args(pSearchStringValue,pSearchStringAddr2,GetStringAddress(str))
        endif
        if retaddr == 0 or ReadRealMemory( retaddr + 0x1C ) == 0 then
            return 0
        endif
        return ReadRealMemory( retaddr + 0x1C )
    endfunction

    function SearchStringValue takes string str returns string
        return ConvertNullTerminatedStringToString(SearchStringValueAddress(str))
    endfunction

    function GetFrameItemAddress takes string name, integer id returns integer
        return CallFastCallWith2Args(pGetFrameItemAddress, GetStringAddress(name), id)
    endfunction

    function GetFrameSkinAddress takes string name, integer id returns integer
        return CallFastCallWith2Args(pGetFrameSkinAddress, GetStringAddress(name), id)
    endfunction

    function GetFrameTextAddress takes string name, integer id returns integer
        return CallFastCallWith2Args(pGetFrameTextAddress, GetStringAddress(name), id)
    endfunction

    // Alternative for sub_6F4786B0 (126a)
    function GetSomeAddress takes integer pAddr1 ,integer pAddr2 returns integer //I just split your function into 2, it should be working as before
        local integer pOff1 = 44
    
        if BitwiseAnd(pAddr1,pAddr2) == -1 then
        return 0
        endif
    
        if pAddr1 >= 0 then
        set pOff1 = 12
        endif
    
        set pOff1 = Memory[pGameClass1]/4 + pOff1/4
        set pOff1 = Memory[pOff1]
    
        if pOff1 == 0 then
        return 0
        endif
    
        set pOff1 = pOff1 + 8 * pAddr1 + 4
    
        set pOff1 = Memory[pOff1/4]
    
        if pOff1 == 0 or Memory[pOff1/4 + 0x18/4] != pAddr2 then
        return 0
        endif
    
        return pOff1
    
    endfunction

    function GetSomeAddressForAbility takes integer pAddr1 ,integer pAddr2 returns integer //Second part of GetSomeAddressForAbility
        local integer pOff1 = GetSomeAddress(pAddr1,pAddr2)
        if pOff1==0 or Memory[pOff1/4 + 0x20/4] != 0 then
        return 0
        endif
        return Memory[pOff1/4+0x54/4]
    endfunction

    function GetUnitAddressFloatsRelated takes integer pConvertedHandle, integer step returns integer
        local integer pOffset1 = pConvertedHandle + step
        local integer pOffset2 = Memory[pGameClass1]
        set pOffset1 = Memory[pOffset1/4]
        set pOffset2 = Memory[(pOffset2+0xC)/4]
        set pOffset2 = Memory[(( pOffset1 * 8 ) + pOffset2 + 4)/4]
        return pOffset2
    endfunction

    function revealFn takes nothing returns nothing
        local group g=CreateGroup()
        local unit u
        local integer h
        call GroupEnumUnitsSelected(g,GetTriggerPlayer(),null)
        loop
            set u=FirstOfGroup(g)
            exitwhen u==null
            call GroupRemoveUnit(g,u)
            set h=ConvertHandle(u)
            call echo(I2S(h))
            call echo("Unit: "+Int2Hex(h)+"; handle="+Int2Hex(GetHandleId(u)))
            call echo("Widget's base: "+Int2Hex(GetUnitAddressFloatsRelated(h,0xA0)))
        endloop
        call DestroyGroup(g)
    endfunction

    function GetSomeAddWrapper takes nothing returns nothing
        local string s=SubString(GetEventPlayerChatString(),4,999)
        local integer k=Hex2Int(s)
        call echo("Add: "+s+" translated as "+I2S(k)+" or "+Int2Hex(k))
        if k==0 then
            set Temp_GetSomeAdd1=0
            set Temp_GetSomeAdd2=0
            return
        endif
        if Temp_GetSomeAdd1==0 then
            set Temp_GetSomeAdd1=k
        else
            set Temp_GetSomeAdd2=k
            call echo("GetSomeAddressForAbility: "+Int2Hex(Temp_GetSomeAdd1)+" & "+Int2Hex(Temp_GetSomeAdd2)+" = "+Int2Hex(GetSomeAddressForAbility(Temp_GetSomeAdd1,Temp_GetSomeAdd2)))
            set Temp_GetSomeAdd1=0
            set Temp_GetSomeAdd2=0
        endif
    endfunction

    function GetFrameAddressWrapper takes nothing returns nothing
        local string s=SubString(GetEventPlayerChatString(),4,999)
        local integer a=GetFrameItemAddress(s,0)
        local integer b=GetFrameTextAddress(s,0)
        local integer c=GetFrameSkinAddress(s,0)
        if a == 0 then
            call BJDebugMsg("Item frame: "+s+" - BAD!")
        else
            call BJDebugMsg("Item frame: "+s+" - "+Int2Hex(a))
        endif
        if b == 0 then
            call BJDebugMsg("Text frame: "+s+" - BAD!")
        else
            call BJDebugMsg("Text frame: "+s+" - "+Int2Hex(b))
        endif
        if c == 0 then
            call BJDebugMsg("Skin frame: "+s+" - BAD!")
        else
            call BJDebugMsg("Skin frame: "+s+" - "+Int2Hex(c))
        endif
     
    endfunction
    
    function GetTestTrigger takes nothing returns nothing
        local trigger t=CreateTrigger()
        call TriggerRegisterPlayerChatEvent(t,Player(0),"-cc",true)
        call TriggerAddAction(t,function revealFn)
        set t=CreateTrigger()
        call TriggerRegisterPlayerChatEvent(t,Player(0),"-gs ",false)
        call TriggerAddAction(t,function GetSomeAddWrapper)
        call TriggerRegisterPlayerChatEvent(t,Player(0),"-gf ",false)
        call TriggerAddAction(t,function GetFrameAddressWrapper)
        set t=null
    endfunction

    function setUnitIdUIStringParam takes integer id, integer includedLevel, integer offset, string val returns nothing
        local integer k=GetUnitUIDefAddr(id)
        if k < 1 then
            return
        endif
        //call echo("Set str for "+Id2String(id)+" for val="+val)
        set k=(k+offset)
        if includedLevel==0 then
            call WriteMemory(k,GetStringAddress(val))
        else
            if includedLevel==1 then
                if ReadMemory(k)<1 then
                    call WriteMemory(k,GetStringAddress(val))
                endif
                call WriteMemory(ReadMemory(k),GetStringAddress(val))
            
            endif
        endif
    endfunction

    function getUnitIdUIStringParam takes integer id, integer includedLevel, integer offset returns string
        local integer k=GetUnitUIDefAddr(id)
        if k < 1 then
            return null
        endif
        set k=k+offset
        if includedLevel==0 then
            if ReadMemory(k)>0 then
                return ConvertNullTerminatedStringToString(ReadMemory(k))
            endif
        else
            if includedLevel==1 then
                if ReadMemory(k)>0 and ReadMemory(ReadMemory(k))>0 then
                    return ConvertNullTerminatedStringToString(ReadMemory(ReadMemory(k)))
                endif
            endif
        endif
        return null
    endfunction

    function getUnitIdModel takes integer id returns string
        return getUnitIdUIStringParam(id,0,0x30)
    endfunction

    function setUnitIdModel takes integer id, string path returns nothing
        call setUnitIdUIStringParam(id,0,0x30,path)
    endfunction

    function getUnitIdSpecialArt takes integer id returns string
        return getUnitIdUIStringParam(id,1,0x23C)
    endfunction

    function setUnitIdSpecialArt takes integer id, string path returns nothing
        call setUnitIdUIStringParam(id,1,0x23C,path)
    endfunction

    function getUnitIdUbertip takes integer id returns string
        return getUnitIdUIStringParam(id,1,0x268)
    endfunction

    function setUnitIdUbertip takes integer id, string s returns nothing
        call setUnitIdUIStringParam(id,1,0x268,s)
    endfunction

    function setUnitTypeId takes unit u,integer i returns nothing
        set Memory[ConvertHandle(u) / 4 + 12]=i
    endfunction
    
    function getUnitVertexColorB takes unit u returns integer
        return GetByteFromInteger(Memory[(Memory[ConvertHandle(u) / 4 + 0xA]+328)/4],4)
    endfunction

    function getUnitVertexColorG takes unit u returns integer
        return GetByteFromInteger(Memory[(Memory[ConvertHandle(u) / 4 + 0xA]+328)/4],3)
    endfunction

    function getUnitVertexColorR takes unit u returns integer
        return GetByteFromInteger(Memory[(Memory[ConvertHandle(u) / 4 + 0xA]+328)/4],2)
    endfunction
    
    function getUnitVertexColorA takes unit u returns integer
        return GetByteFromInteger(Memory[(Memory[ConvertHandle(u) / 4 + 0xA]+328)/4],1)
    endfunction

    function setItemTypeId takes item it, integer i returns nothing
        set Memory[ConvertHandle(it)/4 + 12]=i
    endfunction

    // private function for takes nothing returns nothing
    //     saveColors(enumUnit,false,getUnitVertexColorR(enumUnit),getUnitVertexColorG(enumUnit),getUnitVertexColorB(enumUnit),getUnitVertexColorA(enumUnit))
    // endfunction
    
    private function singleTimer takes nothing returns nothing
        //forUnitsInMap(for)
        GetTestTrigger()
        SetMainFuncWork(true)
        SetMainFuncWork(false)
    endfunction
    
    private function init takes nothing returns nothing
        triggerAddAction(singleTimer)
    endfunction
endlibrary