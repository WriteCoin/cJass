#guard memory

// reserved native for call 4 integer function and return BOOLEAN value
native MergeUnits          takes integer qty, integer a, integer b, integer make returns boolean
// reserved native for call 2 integer function and return BOOLEAN value (can be converted to int!)
native ConvertUnits         takes integer qty, integer id               returns boolean
// reserved native for call 1 integer function and return integer value
native IgnoredUnits        takes integer unitid                        returns integer

library Memory uses Typecast, HexNumber

//!nocjass

// Variables must be public so they have undecorated names
    globals
        integer bytecode
        integer array l__bytecode
        integer array Memory
        integer bytecodedata //used to pass data between regular code and bytecode
        integer GameState
        integer pointers
        integer pUnitData
        integer pAbilityData
        
        integer pCameraDefaultHeight
        real array DefaultCameraHeight
	
	// 126a 0xAB65F4
	// 127a 0xBE4238
        integer pGlobalPlayerClass
	
	// 127a 0xBEC464
	// 126a 0xAB4450
        integer pUnitMaxSpeedConstant
        integer pUnitMaxSpeedConstantD

        real 	UnitMaxSpeedConstant
	// 127a 0xBEC460
	// 126a 0xAB444C
        integer pUnitMinSpeedConstant
        integer pUnitMinSpeedConstantD

        real 	UnitMinSpeedConstant
	// 127a 0xBEC46C
	// 126a 0xAB4458
        integer pBuildingMaxSpeedConstant
        integer pBuildingMaxSpeedConstantD

        real	BuildingMaxSpeedConstant
	// 127a 0xBEC468
	// 126a 0xAB4454
        integer pBuildingMinSpeedConstant
        integer pBuildingMinSpeedConstantD

        real 	BuildingMinSpeedConstant
        integer pUnitUIDefAddr
        integer pUnitDataDefAddr
        integer pAbilityUIDefAddr
        integer pAbilityDataDefAddr
	
        integer pAttackSpeedLimit
        real	AttackSpeedLimit
	
        integer pAttackTimeLimit
        real	AttackTimeLimit
	
        integer pWar3MapJLocation = 0

	
        integer pGameClass1 = 0
        integer pGameClass2 = 0
        integer pGameClass3 = 0
        integer pTimerAddr = 0
        integer pCGameState = 0
	
        integer pJassEnvAddress = 0
	
        integer pLightEnv = 0
	
        integer pGetModuleHandle = 0
        integer pGetProcAddress = 0
	
        integer GameDLL = 0
        integer GameVersion = 0
	
        integer pMergeUnits = 0
        integer pMergeUnitsOffset = 0
        integer pIgnoredUnits = 0
        integer pIgnoredUnitsOffset = 0
        integer pConvertUnits = 0
        integer pConvertUnitsOffset = 0
        integer pLeaderboardSetItemLabelColor = 0
	
        integer pSetHPBarColorForPlayer = 0
        integer pSetHPBarXScaleForPlayer = 0
        integer pSetHPBarYScaleForPlayer = 0
	
        integer pSetHPCustomHPBarUnit = 0
	
	
        integer pSetMPBarXScaleForPlayer = 0
        integer pSetMPBarYScaleForPlayer = 0
        integer pSetMPBarYOffsetForPlayer = 0
	
	
        integer pExportFromMpq = 0
        integer pGetFrameItemAddress = 0
        integer pGetFrameSkinAddress = 0
        integer pGetFrameTextAddress = 0
        integer pUpdateFrameText = 0
	
        integer pFrameDefClass = 0
        integer pConvertString = 0
        integer pPacketClass = 0
        integer pPacketSend = 0
	
	
        integer pPingMinimapOffset = 0
        integer pPingMinimapExOffset = 0
	
        integer PingMinimapUnlocker = 0
        integer PingMinimapExUnlocker = 0
        boolean NotLockedPingMinimap = true
        boolean NotLockedPingMinimapEx = true
	
        integer pFindWindowA = 0
        integer pMessageBoxA = 0
        integer pGetAsyncKeyState = 0
        integer pWritePrivateProfileStringA = 0
        integer pGetPrivateProfileStringA = 0
        integer pLoadLibraryA = 0
        integer pGetFileAttributesA = 0
        integer pVirtualAlloc = 0
        integer pVirtualProtect = 0
	
        integer array RJassNativesBuffer
        integer RJassNativesBufferSize = 0
	
	
        integer pReservedExecutableMemory = 0
        integer pReservedExecutableMemory2 = 0
        integer pBitwiseOR_ExecutableMemory
        boolean NeedInitBitwiseOr = true
        integer pBitwiseXOR_ExecutableMemory
        boolean NeedInitBitwiseXor = true
        integer pBitwiseAND_ExecutableMemory
        boolean NeedInitBitwiseAnd = true
	
        integer pReservedWritableMemory
        integer pReservedWritableMemory2
	
        constant integer szReservedWritableMemory = 3000
	
        integer pStorm279
        integer pPrintText1
        integer pPrintText2
        integer pPrintText3
        integer pGetUnitAbility
        integer pGetUnitAddress
        integer p_sprintf
        integer pChangeFont
	
        integer pUpdateRestoreTimer = 0
        integer pAddNewOffsetToRestore = 0
        constant string EXTRADLLNAME = "DotAAllstarsHelper688.dll"

        integer pReserverdIntArg1
        integer pReserverdIntArg2
        integer pReserverdIntArg3
        integer pReserverdIntArg4
        hashtable Addresses = InitHashtable( )
        constant integer DEF_ADR_ABILITY_DATA = 0
        constant integer DEF_ADR_ABILITY_UI = 1
        constant integer DEF_ADR_UNIT_DATA = 2
        constant integer DEF_ADR_UNIT_UI = 3
        constant integer DEF_ADR_ITEM_DATA = 4
        constant integer ILLUSTION_BONUS_DAMAGE_RECEIVES = 0
        constant integer ILLUSTION_BONUS_DAMAGE_DEALS = 1
	
        integer pOrder1_offset
        integer pOrder2_offset
        integer pOrder3_offset
        integer pOrder4_offset
        integer pOrder5_offset
        integer pOrder6_offset
        integer pOrder7_offset
        integer pOrder8_offset
        integer Order1_unlockedvalue = 0
        integer Order2_unlockedvalue = 0
        integer Order3_unlockedvalue = 0
        integer Order4_unlockedvalue = 0
        integer Order5_unlockedvalue = 0
        integer Order6_unlockedvalue = 0
        integer Order7_unlockedvalue = 0
        integer Order8_unlockedvalue = 0
        integer Order1_lockedvalue
        integer Order2_lockedvalue
        integer Order3_lockedvalue
        integer Order4_lockedvalue
        integer Order5_lockedvalue
        integer Order6_lockedvalue
        integer Order7_lockedvalue
        integer Order8_lockedvalue
        boolean IsOrder1Locked = false
        boolean IsOrder2Locked = false
        boolean IsOrder3Locked = false
        boolean IsOrder4Locked = false
        boolean IsOrder5Locked = false
        boolean IsOrder6Locked = false
        boolean IsOrder7Locked = false
        boolean IsOrder8Locked = false
	
        boolean FogUpdateBlocked = false
        integer pUpdateFogManual = 0
        integer pFogUpdateBlockAddr = 0
        integer pFogUpdateBlockAddrOld1 = 0
        integer pFogUpdateBlockAddrOld2 = 0
        integer pFogUpdateBlockAddrNew1 = 0
        integer pFogUpdateBlockAddrNew2 = 0
	
        integer pGetLatestDownloadedString = 0
        integer pGetDownloadStatus = 0
        integer pSaveNewMapFromUrl = 0
        integer pGetDownloadProgress = 0
        integer pGetCurrentMapDir = 0
	
        integer pStartAbilityCD = 0
	
        integer pSendCommandWithoutTarget
        integer pMissile
        integer pWindowIsActive
        integer pSendHttpGetRequest = 0
        integer pAllianceOutput
        integer AllianceLocker = 0
        boolean NotLockedAllianceOutput = true
	
        integer pMutePlayer = 0
        integer pUnMutePlayer = 0
	
        integer pSetWidescreenFixState = 0
        integer pSetCustomFovFix = 0
	
        boolean EXTRADLLLOADED = false
	
        integer RegionEditMode = 0
        real LatestMouseX = 0.
        real LatestMouseY = 0.
        integer LatestSelectRect = 0
        integer LatestOverRect = 0
	
	
        integer gl_hRectID = 0
	
        integer OPLimitAddress1 = 0
        integer OPLimitAddress2 = 0
        integer pCycloneFixCondition = 0
        constant integer CycloneFixCondition026a = 0x808B08EB
        integer CycloneFixBaseValue = 0
        constant integer CycloneFixCondition027a = 0x458B16EB
        integer pCaptionsOverTheCreeps = 0
        integer pPhaseShiftInvisibilityFlagByte = 0
        constant integer PhaseShiftInvisibilityFlagByteFixed0x26 = 0x00000060
        constant integer PhaseShiftInvisibilityFlagByteFixed0x27 = 0x00000060
	
        integer pMemcpy
        integer pSearchStringValue
        integer pSearchStringAddr1
        integer pSearchStringAddr2
	
        integer pReservedMemoryForUpdateFrameText
	
        integer pSimulateAttackInstance
        integer pGameTime
	
        integer pToggleForcedSubSelection = 0
        integer pToggleBlockKeyAndMouseEmulation = 0
        integer pToggleClickHelper = 0
	
        integer pSetStunToUnitTRUE
        integer	pSetStunToUnitFALSE
	
        integer pReservedMemoryForSystemTime
        integer pGetLocalTime = 0
	
        integer pCommonSilence
        integer pAddSilenceOnAbility
        integer pRemoveSilenceFromAbility
        integer pPauseUnitDisabler
	
        integer pUpdateUnitsSpeedCurrent
	
        integer pSendMessageToChat = 0
	
        integer pCastSilenceToTarget
        integer pCastAbility = 0
	
        integer pDamageBlockIllusionCheck = 0
	
        integer pItemDropOrderTriggerFix = 0
	
        integer pFixModelCollisionSphere = 0
	
        integer pGetOrLoadFile
        integer pApplyTerrainFilterDirectly = 0
        integer pSetMainFuncWork = 0
        integer pFixModelTexturePath = 0
	
        integer StoreIntegerOffset = 0
        integer StoreIntegerUnlocker = 0
        boolean StoreIntegerLocked = false
	
        integer pPatchModel = 0
        integer pChangeAnimationSpeed = 0
        integer pSetSequenceValue = 0
        integer pRedirectFile = 0
        integer pReservedMemoryForMissileHandler = 0
        integer pReservedMemoryForDamageHandler = 0
        integer pUnitVtable = 0
        integer pRealUnitDamageHandler = 0
        integer pTriggerExecute = 0
        integer pDamageTarget = 0
        integer pMissileEspData = 0
        integer pDamageEspData = 0
        integer pMissileFuncStart = 0
        integer pMissileJumpBack = 0
        integer pItemDataNode = 0
        integer pJassLog = 0
    endglobals

    function ReadMemory takes integer address returns integer
        return Memory[address / 4] //Inline - friendly
    endfunction

    function WriteMemory takes integer address, integer value returns nothing
        set Memory[address / 4] = value //Inline - friendly
    endfunction
    
    function InitBytecode takes integer id, integer k returns nothing
        set l__bytecode[ 0] = 0x0C010900 	//op: 0C( LITERAL ), type: 09( integer array ), reg: 01, 
        set l__bytecode[ 1] = k 			//value: 0x2114D008
        set l__bytecode[ 2] = 0x11010000 	//op: 11( SETVAR ), reg: 01
        set l__bytecode[ 3] = id		 	//id of variable Memory
        set l__bytecode[ 4] = 0x0C010400 	//op: 0C( LITERAL ), type: 04( integer ), reg: 01, value: 0
        set l__bytecode[ 6] = 0x27000000 	//op: 27( RETURN )

        set l__bytecode[ 8] = 0x07090000 	//op: 07( GLOBAL ), type: 09 ( integer array ) //Create new array
        set l__bytecode[ 9] = 0x0C5F 		//name: C5F( ?stand? )
        set l__bytecode[10] = 0x0E010400 	//op: 0E( GETVAR ), type: 04( integer ), reg: 01 //Obtain the desired amount of bytes
        set l__bytecode[11] = id + 1		 	//id of variable bytecodedata ( variable ids are sequential )
        set l__bytecode[12] = 0x12010100 	//op: 12( SETARRAY ), index = reg01, value = reg01 //Set index of the array, forcing allocation of Memory
        set l__bytecode[13] = 0x0C5F 		//name: C5F( ?stand? )
        set l__bytecode[14] = 0x0E010400 	//op: 0E( GETVAR ), type: 04( integer ), reg: 01 //Read array variable as an integer
        set l__bytecode[15] = 0x0C5F 		//name: C5F( ?stand? )
        set l__bytecode[16] = 0x11010000 	//op: 11( SETVAR ), reg: 01 //pass the value to the jass world
        set l__bytecode[17] = id + 1		 	//id of variable bytecodedata
        set l__bytecode[18] = 0x27000000 	//op: 27( RETURN )
    endfunction
                
    private function Typecast takes nothing returns nothing
        local integer bytecode
    endfunction
//# +nosemanticerror
    function GetBytecodeAddress takes nothing returns integer
        loop
            return l__bytecode
        endloop
        return 0
    endfunction

    function NewGlobal takes nothing returns integer
        return - 0x0C5F0704 //op: 07( GLOBAL ), type: 04( integer ), name: 0x0C5F( "stand" )
        return 0x2700 //op: 27( RETURN )
    endfunction

    function SetGlobal takes nothing returns nothing
	//This will actually set the value of the global variable, not the local
        local integer stand = 0x2114D008
    endfunction
    
//# +nosemanticerror
    function UnlockMemory takes nothing returns nothing
        local integer array stand //The execution of this line is skipped
        call ForForce( bj_FORCE_PLAYER[0], I2C( 2 + C2I( function NewGlobal ) ) )
        call ForForce( bj_FORCE_PLAYER[0], I2C( 8 + C2I( function SetGlobal ) ) )
//	/*local array "stand" can now read udg_Memory, but not write.
//	The bytecode unlocks the ability to read and write udg_Memory
//	with the "udg_Memory" array*/
        call InitArray( 0 )
        call InitArray( stand[GetArrayAddress( ) / 4] )
        call InitBytecode( stand[C2I( function ReadMemory ) / 4 + 13], stand[GetArrayAddress( ) / 4 + 3] + 4 ) //obtain the id of variable "udg_Memory"
        call ForForce( bj_FORCE_PLAYER[0], I2C( stand[GetBytecodeAddress( ) / 4 + 3] ) ) //run bytecode from the array
    endfunction

    function malloc takes integer bytes returns integer //I?m not at home, I?m writing this from head without testing, not sure if it works
        set bytecodedata = bytes / 4 + 4
        call ForForce( bj_FORCE_PLAYER[0], I2C( Memory[GetBytecodeAddress( ) / 4 + 3] + 32 ) )
        return ( Memory[bytecodedata / 4 + 3] + 4 ) / 4 * 4 //Address of data in the newly created array
    endfunction

// addr 0x10000 data 1C 2C 8A 7D 6D 5F 5A 4C 6C 3C 8C 7A
// read memory at 0x10003   ( 7D 6D 5F 5A )

    function CreateIntegerFromTwoByOffset takes integer i1, integer i2, integer offset returns integer
        local integer array pBytes
        set pBytes[0] = GetByteFromInteger( i1, 4 )
        set pBytes[1] = GetByteFromInteger( i1, 3 )
        set pBytes[2] = GetByteFromInteger( i1, 2 )
        set pBytes[3] = GetByteFromInteger( i1, 1 )
        set pBytes[4] = GetByteFromInteger( i2, 4 )
        set pBytes[5] = GetByteFromInteger( i2, 3 )
        set pBytes[6] = GetByteFromInteger( i2, 2 )
        set pBytes[7] = GetByteFromInteger( i2, 1 )
        return CreateInteger1( pBytes[offset + 3], pBytes[offset + 2], pBytes[offset + 1], pBytes[offset + 0] )
    endfunction

    function CreateDoubleIntegerAndGetOne takes integer i1, integer i2, integer value, integer offset, boolean first returns integer
        local integer array pBytes
        set pBytes[0] = GetByteFromInteger( i1, 4 )
        set pBytes[1] = GetByteFromInteger( i1, 3 )
        set pBytes[2] = GetByteFromInteger( i1, 2 )
        set pBytes[3] = GetByteFromInteger( i1, 1 )
        set pBytes[4] = GetByteFromInteger( i2, 4 )
        set pBytes[5] = GetByteFromInteger( i2, 3 )
        set pBytes[6] = GetByteFromInteger( i2, 2 )
        set pBytes[7] = GetByteFromInteger( i2, 1 )
	
        set pBytes[offset] = GetByteFromInteger( value, 4 )
        set pBytes[offset + 1] = GetByteFromInteger( value, 3 )
        set pBytes[offset + 2] = GetByteFromInteger( value, 2 )
        set pBytes[offset + 3] = GetByteFromInteger( value, 1 )
	
        if ( first ) then
            return CreateInteger1( pBytes[3], pBytes[2], pBytes[1], pBytes[0] )
        else
            return CreateInteger1( pBytes[7], pBytes[6], pBytes[5], pBytes[4] )
        endif
    endfunction

    function ReadRealMemory_FIX takes integer addr returns integer
        local integer ByteOffset = addr - ( addr / 4 * 4 )
        local integer FirstAddr = addr - ByteOffset
        return CreateIntegerFromTwoByOffset( Memory[FirstAddr / 4], Memory[FirstAddr / 4 + 1], ByteOffset )
    endfunction

    function ReadRealMemory takes integer addr returns integer
        if addr / 4 * 4 != addr then
            call BJDebugMsg( "ReadMemory WARNING! : " + Int2Hex( addr ) )
            return ReadRealMemory_FIX( addr )
        endif
        return Memory[addr / 4]
    endfunction
    
    function WriteRealMemory_FIX takes integer addr, integer val returns nothing
        local integer Int_1
        local integer Int_2
        local integer ByteOffset = addr - ( addr / 4 * 4 )
        local integer FirstAddr = addr - ByteOffset
        set Int_1 = ReadRealMemory( FirstAddr )
        set Int_2 = ReadRealMemory( FirstAddr + 4 )
        set Memory[FirstAddr / 4] = CreateDoubleIntegerAndGetOne ( Int_1, Int_2, val, ByteOffset, true )
        set Memory[FirstAddr / 4 + 1] = CreateDoubleIntegerAndGetOne ( Int_1, Int_2, val, ByteOffset, false )
    endfunction

    function WriteRealMemory takes integer addr, integer val returns nothing
        if addr / 4 * 4 != addr then
            call BJDebugMsg( "WriteMemory WARNING! : " + Int2Hex( addr ) )
            call WriteRealMemory_FIX( addr, val )
        else
            set Memory[addr / 4] = val
        endif
    endfunction

// read Game.dll + real offset
    function ReadOffset takes integer i returns integer
        return ReadRealMemory( GameDLL + i )
    endfunction

    function ReadOffsetUnsafe takes integer i returns integer
        return Memory[( GameDLL + i ) / 4]
    endfunction

    function ReadRealPointer1LVL takes integer addr, integer offset1 returns integer
        local integer retval = 0
        if addr > 0 then
            set retval = ReadRealMemory( addr )
            if addr > 0 then
                set retval = ReadRealMemory( retval + offset1 )
            else
                set retval = 0
            endif
        endif
        return retval
    endfunction

    function WriteRealPointer1LVL takes integer addr, integer offset1, integer val returns nothing
        local integer retval = 0
        if addr > 0 then
            set retval = ReadRealMemory( addr )
            if addr > 0 then
                call WriteRealMemory( retval + offset1, val )
            endif
        endif
    endfunction

    function ReadRealPointer2LVL takes integer addr, integer offset1, integer offset2 returns integer
        local integer retval = ReadRealPointer1LVL( addr, offset1 )
        if retval > 0 then
            set retval = ReadRealMemory( retval + offset2 )
        else
            set retval = 0
        endif
        return retval
    endfunction

    function WriteRealPointer2LVL takes integer addr, integer offset1, integer offset2, integer val returns nothing
        local integer retval = 0
        if addr > 0 then
            set retval = ReadRealPointer1LVL( addr, offset1 )
            if addr > 0 then
                call WriteRealMemory( retval + offset2, val )
            endif
        endif
    endfunction

    function ReadRealPointer3LVL takes integer addr, integer offset1, integer offset2, integer offset3 returns integer
        local integer retval = ReadRealPointer2LVL( addr, offset1, offset2 )
        if retval > 0 then
            set retval = ReadRealMemory( retval + offset3 )
        else
            set retval = 0
        endif
        return retval
    endfunction

    function WriteRealPointer3LVL takes integer addr, integer offset1, integer offset2, integer offset3, integer val returns nothing
        local integer retval = 0
        if addr > 0 then
            set retval = ReadRealPointer2LVL( addr, offset1, offset2 )
            if addr > 0 then
                call WriteRealMemory( retval + offset3, val )
            endif
        endif
    endfunction

    function ReadRealPointer4LVL takes integer addr, integer offset1, integer offset2, integer offset3, integer offset4 returns integer
        local integer retval = ReadRealPointer3LVL( addr, offset1, offset2, offset3 )
        if retval > 0 then
            set retval = ReadRealMemory( retval + offset4 )
        else
            set retval = 0
        endif
        return retval
    endfunction

    function WriteRealPointer4LVL takes integer addr, integer offset1, integer offset2, integer offset3, integer offset4, integer val returns nothing
        local integer retval = 0
        if addr > 0 then
            set retval = ReadRealPointer3LVL( addr, offset1, offset2, offset3 )
            if addr > 0 then
                call WriteRealMemory( retval + offset4, val )
            endif
        endif
    endfunction

    function ReadRealPointer5LVL takes integer addr, integer offset1, integer offset2, integer offset3, integer offset4, integer offset5 returns integer
        local integer retval = ReadRealPointer4LVL( addr, offset1, offset2, offset3, offset4 )
        if retval > 0 then
            set retval = ReadRealMemory( retval + offset5 )
        else
            set retval = 0
        endif
        return retval
    endfunction

    function WriteRealPointer5LVL takes integer addr, integer offset1, integer offset2, integer offset3, integer offset4, integer offset5, integer val returns nothing
        local integer retval = 0
        if addr > 0 then
            set retval = ReadRealPointer4LVL( addr, offset1, offset2, offset3, offset4 )
            if addr > 0 then
                call WriteRealMemory( retval + offset5, val )
            endif
        endif
    endfunction

    function IsJassNativeExists takes integer nativeaddress returns boolean
	//local integer FirstAddress = Memory[Memory[Memory[pJassEnvAddress]/4+0x5]/4+8]/4
        local integer FirstAddress = ReadRealPointer2LVL( pJassEnvAddress * 4, 0x14, 0x20 ) / 4
        local integer NextAddress = FirstAddress
        local integer i = 0
        loop
            if Memory[NextAddress + 3] / 4 == nativeaddress then
                return NextAddress + 3 > 0
            endif
		
            set NextAddress = Memory[NextAddress] / 4
            if NextAddress == FirstAddress or NextAddress == 0 then
                return false
            endif
        endloop
        return false
    endfunction

    function CreateJassNativeHook takes integer oldaddress, integer newaddress returns integer
	//[[[[Game.dll+ADA848]+14]+20]
	//local integer FirstAddress = Memory[Memory[Memory[pJassEnvAddress]/4+0x5]/4+8]/4
        local integer FirstAddress = ReadRealPointer2LVL( pJassEnvAddress * 4, 0x14, 0x20 )
        local integer NextAddress = FirstAddress
        local integer i = 0
	
        if RJassNativesBufferSize > 0 then
            loop
                set i = i + 1
			
                if RJassNativesBuffer[ i * 3 - 3 ] == oldaddress or RJassNativesBuffer[ i * 3 - 2 ] == oldaddress or RJassNativesBuffer[ i * 3 - 3 ] == newaddress or RJassNativesBuffer[ i * 3 - 2 ] == newaddress then
                    call WriteRealMemory( RJassNativesBuffer[ i * 3 - 1 ], newaddress )
				//call BJDebugMsg("Loaded from buffset.")
                    return RJassNativesBuffer[ i * 3 - 1 ]
                endif
			
                exitwhen i == RJassNativesBufferSize
            endloop
        endif
	
        loop
            if ReadRealMemory( NextAddress + 12 ) < 0x3000 then
                return 0
            endif
            if ReadRealMemory( NextAddress + 12 ) == oldaddress then
                call WriteRealMemory( NextAddress + 12, newaddress )
			
			// Maximum store 100 values for fast load
                if RJassNativesBufferSize < 100 then
                    set RJassNativesBufferSize = RJassNativesBufferSize + 1
                    set RJassNativesBuffer[ RJassNativesBufferSize * 3 - 1 ] = NextAddress + 12
                    set RJassNativesBuffer[ RJassNativesBufferSize * 3 - 2 ] = oldaddress
                    set RJassNativesBuffer[ RJassNativesBufferSize * 3 - 3 ] = newaddress
                endif
			
                return NextAddress + 12
            endif
		
            set NextAddress = ReadRealMemory( NextAddress )
            if NextAddress == FirstAddress or NextAddress == 0 then
                return 0
            endif
        endloop
        return 0
    endfunction

    function Init27 takes nothing returns nothing
        local integer base
        set GameDLL = ReadRealMemory( GetBytecodeAddress( ) ) - 0xA63B30
        set base = GameDLL / 4
        set GameState = base + 0x2F908E
        set pGameClass1 = base + 0x2F902A
        set pGameClass2 = base + 0xBE6350 / 4
        set pCGameState = base + 0xBE4EAC / 4
		
        set pointers = Memory[pGameClass1] / 4
        set pUnitData = GameDLL + 0xBEC48C
        set pAbilityData = GameDLL + 0xBECD44
        set pGlobalPlayerClass = GameState //They are the same thing
	
        set pUnitMaxSpeedConstant = base + 0xBEC454 / 4
        set pUnitMinSpeedConstant = base + 0xBEC450 / 4
        set pBuildingMaxSpeedConstant = base + 0xBEC45C / 4
        set pBuildingMinSpeedConstant = base + 0xBEC458 / 4
	
        set pUnitMaxSpeedConstantD = base + 0xBEC464 / 4
        set pUnitMinSpeedConstantD = base + 0xBEC460 / 4
        set pBuildingMaxSpeedConstantD = base + 0xBEC46C / 4
        set pBuildingMinSpeedConstantD = base + 0xBEC468 / 4
	
        set pUnitUIDefAddr = GameDLL + 0xBE6130
        set pUnitDataDefAddr = pUnitData// base + 0xBEC48C / 4
	
        set pAbilityUIDefAddr = GameDLL + 0xBE6158
        set pAbilityDataDefAddr = pAbilityData//base + 0xBECD44 / 4
        set pAttackSpeedLimit = base + 0xBE7A04 / 4
        set pAttackTimeLimit = base + 0xb593a0 / 4
	
	
        set pJassEnvAddress = base + 0xBE3740 / 4
        set pLightEnv = base + 0xBEE150 / 4
        set pGameClass3 = base + 0xBB9D8C / 4
	
        set pTimerAddr = base + 0xBB82BC / 4
	
	
        set pGetModuleHandle = base + 0x94E184 / 4
        set pGetProcAddress = base + 0x94E168 / 4
        set pVirtualAlloc = base + 0x94E270 / 4
	
		
        set pMergeUnits = GameDLL + 0x891F20
        set pIgnoredUnits = GameDLL + 0x890FB0
        set pConvertUnits = GameDLL + 0x88E350
        set pLeaderboardSetItemLabelColor = base + 0x1EFF90 / 4
	
        set pExportFromMpq = GameDLL + 0x702C50
        set pGetFrameItemAddress = GameDLL + 0x09EF40
        set pGetFrameSkinAddress = GameDLL + 0x324AD0
        set pGetFrameTextAddress = GameDLL + 0x0C8EF0
        set pUpdateFrameText = GameDLL + 0x0C1020
        set pFrameDefClass = GameDLL + 0xBB9CFC
	
        set pPacketClass = GameDLL + 0x973210
        set pPacketSend = GameDLL + 0x30F1B0
	
	
        set pConvertString = GameDLL + 0x1DA520
	
        set pStorm279 = base + 0x94E6C4 / 4
	
        set pPrintText1 = GameDLL + 0x3574B0
        set pPrintText2 = GameDLL + 0x356A60
        set pPrintText3 = GameDLL + 0xc2070
	
        set pChangeFont = GameDLL + 0x153E10
	
        set pCameraDefaultHeight = base + 0x9714D0 / 4
	
        set pPingMinimapOffset = GameDLL + 0x1F1BD0
        set pPingMinimapExOffset = GameDLL + 0x1F1C30
        set pAllianceOutput = GameDLL + 0x34E2C0
	
        set pWindowIsActive = base + 0xB673EC / 4
        set pSendCommandWithoutTarget = GameDLL + 0x3AE4E0
        set pMissile = base + 0xBED23C / 4
	
	
        set pOrder1_offset = GameDLL + 0x3AE4E0
        set pOrder2_offset = GameDLL + 0x3AE540
        set pOrder3_offset = GameDLL + 0x3AE5D0
        set pOrder4_offset = GameDLL + 0x3AE660
        set pOrder5_offset = GameDLL + 0x3AE6F0
        set pOrder6_offset = GameDLL + 0x3AE780
        set pOrder7_offset = GameDLL + 0x3AE810
        set pOrder8_offset = GameDLL + 0x3AE880
			
        set Order1_lockedvalue = 0x900010C2
        set Order2_lockedvalue = 0x900018C2
        set Order3_lockedvalue = 0x900020C2
        set Order4_lockedvalue = 0x90001CC2
        set Order5_lockedvalue = 0x90001CC2
        set Order6_lockedvalue = 0x900020C2
        set Order7_lockedvalue = 0x900014C2
        set Order8_lockedvalue = 0x900014C2
		
        set pStartAbilityCD = GameDLL + 0x62D4C0
	
        set pUpdateFogManual = GameDLL + 0x26B600
	
        set pFogUpdateBlockAddr = base + 0x26B5A8 / 4
        set pFogUpdateBlockAddrNew1 = 0xC25D0004
        set pFogUpdateBlockAddrNew2 = 0xB8900004
	
        set OPLimitAddress1 = GameDLL + 0x1BFB48
        set OPLimitAddress2 = GameDLL + 0x1BFB4C
	
        set pCycloneFixCondition = GameDLL + 0x65B3F0
	
	
        set pCaptionsOverTheCreeps = GameDLL + 0x3B4180
	
        set pPhaseShiftInvisibilityFlagByte = GameDLL + 0x7ffdb8
	
        set pGetUnitAbility = GameDLL + 0x46F440
        set pGetUnitAddress = GameDLL + 0x1D1550
	
        set p_sprintf = GameDLL + 0x94E464
	
        set pMemcpy = GameDLL + 0x94E468
        set pSearchStringValue = GameDLL + 0x06B030
        set pSearchStringAddr1 = GameDLL + 0xBB9CD4
        set pSearchStringAddr2 = GameDLL + 0xBB9CAC
	
        set pSimulateAttackInstance = GameDLL + 0x476F80
        set pGameTime = GameDLL + 0xBE3D70
	
	
        set pSetStunToUnitTRUE = GameDLL + 0x66B600
        set	pSetStunToUnitFALSE = GameDLL + 0x65AE60
	
        set pCommonSilence = GameDLL + 0x471C40
        set pAddSilenceOnAbility = GameDLL + 0x3E9FA0
        set pRemoveSilenceFromAbility = GameDLL + 0x3EE3C0
        set pPauseUnitDisabler = GameDLL + 0x46F180
	
        set pUpdateUnitsSpeedCurrent = GameDLL + 0x10C690
	
        set pCastSilenceToTarget = GameDLL + 0x3DA3C0
	
        set pCastAbility = GameDLL + 0x3ECB70
	
        set pDamageBlockIllusionCheck = GameDLL + 0x4E3040
	
        set pItemDropOrderTriggerFix = GameDLL + 0x65D520//9090f03b
	
        set pGetOrLoadFile = GameDLL + 0x4A800
	
        set StoreIntegerOffset = GameDLL + 0x1F8280
	
        set pUnitVtable = GameDLL + 0xA4A704
        set pRealUnitDamageHandler = GameDLL + 0x67DC40
        set pTriggerExecute = GameDLL + 0x1F9100
	
	
        set pMissileFuncStart = GameDLL + 0x476F80
        set pMissileJumpBack = GameDLL + 0x476F85
        set pItemDataNode = GameDLL + 0xBEC254 + 0x10
	
        set GameVersion = 0x27a
    endfunction

    function Init26 takes nothing returns nothing
        local integer base
        set GameDLL = ReadRealMemory( GetBytecodeAddress( ) ) - 0x951060
        set base = GameDLL / 4
        set GameState = base + 0x2AD97D
        set pGameClass1 = base + 0x2ADDE2
        set pGameClass2 = base + 0xAB4F80 / 4
        set pCGameState = base + 0xAB6EA4 / 4
	
        set pointers = Memory[pGameClass1] / 4
        set pUnitData = GameDLL + 0xAB4478
        set pAbilityData = GameDLL + 0xAB3E64
	
        set pGlobalPlayerClass = GameState //base + 0xAB65F4 / 4
        set pUnitMaxSpeedConstant = base + 0xAB4440 / 4
        set pUnitMinSpeedConstant = base + 0xAB443C / 4
        set pBuildingMaxSpeedConstant = base + 0xAB4448 / 4
        set pBuildingMinSpeedConstant = base + 0xAB4444 / 4
	
        set pUnitMaxSpeedConstantD = base + 0xAB4450 / 4
        set pUnitMinSpeedConstantD = base + 0xAB444C / 4
        set pBuildingMaxSpeedConstantD = base + 0xAB4458 / 4
        set pBuildingMinSpeedConstantD = base + 0xAB4454 / 4
	
        set pUnitUIDefAddr = GameDLL + 0xAB58F0
        set pUnitDataDefAddr = pUnitData
	
        set pAbilityUIDefAddr = GameDLL + 0xAB5918
        set pAbilityDataDefAddr = pAbilityData
	
        set pAttackSpeedLimit = base + 0xAB0074 / 4
        set pAttackTimeLimit = base + 0xAAE484 / 4
	
        set pJassEnvAddress = base + 0xADA848 / 4
        set pLightEnv = base + 0xAAE788 / 4
        set pGameClass3 = base + 0xACE670 / 4
	
        set pTimerAddr = base + 0xAB7368 / 4
	
	
        set pGetModuleHandle = base + 0x86D1D0 / 4
        set pGetProcAddress = base + 0x86D280 / 4
        set pVirtualAlloc = base + 0x86D0F4 / 4
	
	
        set pMergeUnits = GameDLL + 0x2DD320
        set pIgnoredUnits = GameDLL + 0x2DCE80
        set pConvertUnits = GameDLL + 0x2DD2E0
        set pLeaderboardSetItemLabelColor = base + 0x3CC5B0 / 4
	
        set pExportFromMpq = GameDLL + 0x737F00
        set pGetFrameItemAddress = GameDLL + 0x5FA970
        set pGetFrameSkinAddress = GameDLL + 0x31F530
        set pGetFrameTextAddress = GameDLL + 0x61C7B0
        set pUpdateFrameText = GameDLL + 0x60CA10
        set pFrameDefClass = GameDLL + 0xACD264
	
        set pPacketClass = GameDLL + 0x932D2C
        set pPacketSend = GameDLL + 0x54D970
	
	
        set pConvertString = GameDLL + 0x3BAA20
	
        set pStorm279 = base + 0x86D5B8 / 4
	
        set pPrintText1 = GameDLL + 0x2F3CF0
        set pPrintText2 = GameDLL + 0x2F3CB0
        set pPrintText3 = GameDLL + 0x6049B0
	
        set pChangeFont = GameDLL + 0x7AE910
	
        set pCameraDefaultHeight = base + 0x93645C / 4
	
        set pPingMinimapOffset = GameDLL + 0x3B4650
        set pPingMinimapExOffset = GameDLL + 0x3B8660
	
        set pAllianceOutput = GameDLL + 0x2FB1F0
	
        set pWindowIsActive = base + 0xA9E7A4 / 4
        set pSendCommandWithoutTarget = GameDLL + 0x339C60
        set pMissile = base + 0xAB4CD8 / 4
	
		
        set pOrder1_offset = GameDLL + 0x339C60
        set pOrder2_offset = GameDLL + 0x339CC0
        set pOrder3_offset = GameDLL + 0x339D50
        set pOrder4_offset = GameDLL + 0x339DD0
        set pOrder5_offset = GameDLL + 0x339E60
        set pOrder6_offset = GameDLL + 0x339F00
        set pOrder7_offset = GameDLL + 0x339F80
        set pOrder8_offset = GameDLL + 0x33A010
	
        set Order1_lockedvalue = 0x900010C2
        set Order2_lockedvalue = 0x900018C2
        set Order3_lockedvalue = 0x900014C2
        set Order4_lockedvalue = 0x90001CC2
        set Order5_lockedvalue = 0x900020C2
        set Order6_lockedvalue = 0x900014C2
        set Order7_lockedvalue = 0x90001CC2
        set Order8_lockedvalue = 0x900020C2
	
        set pStartAbilityCD = GameDLL + 0x126990
		
        set pUpdateFogManual = GameDLL + 0x4299e0
	
        set pFogUpdateBlockAddr = base + 0x42fcd4 / 4
        set pFogUpdateBlockAddrNew1 = 0x0004C200
        set pFogUpdateBlockAddrNew2 = 0x01B89090
	
        set OPLimitAddress1 = GameDLL + 0x3A8388
        set OPLimitAddress2 = GameDLL + 0x3A838C
	
        set pCycloneFixCondition = GameDLL + 0x29C25C
	
        set pCaptionsOverTheCreeps = GameDLL + 0x35BB20
	
        set pPhaseShiftInvisibilityFlagByte = GameDLL + 0x135D9C
	
        set pGetUnitAbility = GameDLL + 0x787D0
        set pGetUnitAddress = GameDLL + 0x3BDCB0
        set p_sprintf = GameDLL + 0x86D32C
	
        set pMemcpy = GameDLL + 0x86D3CC
	
        set pSearchStringValue = GameDLL + 0x5C8ED0
        set pSearchStringAddr1 = GameDLL + 0xACD23C
        set pSearchStringAddr2 = GameDLL + 0xACD214
	
        set pSimulateAttackInstance = GameDLL + 0xCF660
        set pGameTime = GameDLL + 0xAB7E98
	
        set pSetStunToUnitTRUE = GameDLL + 0x2A6440
        set pSetStunToUnitFALSE = GameDLL + 0x282B30
	
	
        set pCommonSilence = GameDLL + 0x076770
        set pAddSilenceOnAbility = GameDLL + 0x052B60
        set pRemoveSilenceFromAbility = GameDLL + 0x052BC0
        set pPauseUnitDisabler = GameDLL + 0x0767F0
	
        set pUpdateUnitsSpeedCurrent = GameDLL + 0x4A73F0
	
        set pCastSilenceToTarget = GameDLL + 0xB65F0
	
        set pCastAbility = GameDLL + 0x05C3A0
	
        set pDamageBlockIllusionCheck = GameDLL + 0x1EA0F0
	
        set pItemDropOrderTriggerFix = GameDLL + 0x29E064//9090c83b
        set pGetOrLoadFile = GameDLL + 0x4C1300
	
        set StoreIntegerOffset = GameDLL + 0x3CA0A0
	
        set pUnitVtable = GameDLL + 0x931934
        set pRealUnitDamageHandler = GameDLL + 0x2A40D0
        set pTriggerExecute = GameDLL + 0x3C3F40
        set pMissileFuncStart = GameDLL + 0xCF660
        set pMissileJumpBack = GameDLL + 0xCF667
	
        set pItemDataNode = GameDLL + 0xAB4BF4 + 0x10
	
        set GameVersion = 0x26a
    endfunction

    function Init24b takes nothing returns nothing
        local integer base = ReadRealMemory( GetBytecodeAddress( ) ) - 0x9631A0
        set GameDLL = base
        set base = base / 4
        set GameState = base + 0x2B3513
        set pGameClass1 = base + 0x2B3978
        set pointers = Memory[pGameClass1] / 4
        set pUnitData = GameDLL + 0xACB2D0
        set pAbilityData = GameDLL + 0xACACBC
		
        set pUnitDataDefAddr = pUnitData
        set pGlobalPlayerClass = GameState
        set pAbilityDataDefAddr = pAbilityData
	
	
	
        set GameVersion = 0x24b
    endfunction

    function SetMaxUnitSpeed takes real r returns nothing
        set Memory[pUnitMaxSpeedConstant] = cleanInt( realToIndex( r ) )
        set Memory[pUnitMaxSpeedConstantD] = cleanInt( realToIndex( r ) )
    endfunction

    function GetMaxUnitSpeed takes nothing returns real
        return GetRealFromMemory( Memory[pUnitMaxSpeedConstant] )
    endfunction

    function SetMinUnitSpeed takes real r returns nothing
        set Memory[pUnitMinSpeedConstant] = cleanInt( realToIndex( r ) )
        set Memory[pUnitMinSpeedConstantD] = cleanInt( realToIndex( r ) )
    endfunction

    function GetMinUnitSpeed takes nothing returns real
        return cleanReal( indexToReal( Memory[pUnitMinSpeedConstant] ) )
    endfunction

    function SetMaxBuildingSpeed takes real r returns nothing
        set Memory[pBuildingMaxSpeedConstant] = cleanInt( realToIndex( r ) )
        set Memory[pBuildingMaxSpeedConstantD] = cleanInt( realToIndex( r ) )
    endfunction

    function GetMaxBuildingSpeed takes nothing returns real
        return cleanReal( indexToReal( Memory[pBuildingMaxSpeedConstant] ) )
    endfunction

    function SetMinBuildingSpeed takes real r returns nothing
        set Memory[pBuildingMinSpeedConstant] = cleanInt( realToIndex( r ) )
        set Memory[pBuildingMinSpeedConstantD] = cleanInt( realToIndex( r ) )
    endfunction

    function GetMinBuildingSpeed takes nothing returns real
        return cleanReal( indexToReal( Memory[pBuildingMinSpeedConstant] ) )
    endfunction

    function GetAttackSpeedLimit takes nothing returns real
        return cleanReal( indexToReal( Memory[pAttackSpeedLimit] ) )
    endfunction

    function SetAttackSpeedLimit takes real r returns nothing
        set Memory[pAttackSpeedLimit] = cleanInt( realToIndex( r ) )
    endfunction

    function GetAttackTimeLimit takes nothing returns real
        return cleanReal( indexToReal( Memory[pAttackTimeLimit] ) )
    endfunction

    function SetAttackTimeLimit takes real r returns nothing
        set Memory[pAttackTimeLimit] = cleanInt( realToIndex( r ) )
    endfunction

    function SaveConstantsValues takes nothing returns nothing
        set UnitMaxSpeedConstant = 		GetMaxUnitSpeed( )
        set UnitMinSpeedConstant = 		GetMinUnitSpeed( )
        set BuildingMaxSpeedConstant = 	GetMaxBuildingSpeed( )
        set BuildingMinSpeedConstant = 	GetMinBuildingSpeed( )
        set AttackSpeedLimit = 			GetAttackSpeedLimit( )
        set AttackTimeLimit = 			GetAttackTimeLimit( )
    endfunction

    function ResetConstantsValues takes nothing returns nothing
        call SetMaxUnitSpeed( 		UnitMaxSpeedConstant )
        call SetMinUnitSpeed( 		UnitMinSpeedConstant )
        call SetMaxBuildingSpeed( 	BuildingMaxSpeedConstant )
        call SetMinBuildingSpeed( 	BuildingMinSpeedConstant )
        call SetAttackSpeedLimit( 	AttackSpeedLimit )
        call SetAttackTimeLimit( 	AttackTimeLimit )
        call ExecuteFunc( "RestoreCameraOffsets" )
    endfunction
// replace war3map.j to recovery.j
    function LockOtherMaps takes nothing returns nothing
	//0x6F636572
	//0x726576
	
	
    endfunction
// replace recovery.j back to war3map.j
    function UnlockOtherMaps takes nothing returns nothing
	//0x33726177
	//0x70616D
	

    endfunction

    function CallStdcallWith1Args takes integer pFuncStdcallAddr, integer arg1 returns integer
        local integer pOffset1
        call WriteRealMemory( pReservedExecutableMemory2, 0x68C98B51 ) // push ecx. mov ecx, ecx
        call WriteRealMemory( pReservedExecutableMemory2 + 4, arg1 ) // push arg1
        call WriteRealMemory( pReservedExecutableMemory2 + 8, 0xB990C98B ) // mov ecx, ecx , nop
        call WriteRealMemory( pReservedExecutableMemory2 + 12, pFuncStdcallAddr ) // mov ecx, pFuncStdcallAddr
        call WriteRealMemory( pReservedExecutableMemory2 + 16, 0xC359D1FF ) // call ecx, pop ecx, ret
	
	
        if pIgnoredUnitsOffset == 0 then
            set pIgnoredUnitsOffset = CreateJassNativeHook( pIgnoredUnits, pReservedExecutableMemory2 )
        else
            call WriteRealMemory( pIgnoredUnitsOffset, pReservedExecutableMemory2 )
        endif
	
        set pOffset1 = IgnoredUnits( 0 )
        call WriteRealMemory( pIgnoredUnitsOffset, pIgnoredUnits )
        return pOffset1
    endfunction

    function CallStdcallWith2Args takes integer pFuncStdcallAddr, integer arg1, integer arg2 returns integer
        local integer pOffset1
        call WriteRealMemory( pReservedExecutableMemory2, 0x68C98B51 ) // push ecx. mov ecx, ecx
        call WriteRealMemory( pReservedExecutableMemory2 + 4, arg2 ) // push arg2
        call WriteRealMemory( pReservedExecutableMemory2 + 8, 0x6890C98B ) // mov ecx, ecx
        call WriteRealMemory( pReservedExecutableMemory2 + 12, arg1 ) // push arg1
        call WriteRealMemory( pReservedExecutableMemory2 + 16, 0xB990C98B ) // mov ecx, ecx , nop
        call WriteRealMemory( pReservedExecutableMemory2 + 20, pFuncStdcallAddr ) // mov ecx, pFuncStdcallAddr
        call WriteRealMemory( pReservedExecutableMemory2 + 24, 0xC359D1FF ) // call ecx, pop ecx, ret
	
	
        if pIgnoredUnitsOffset == 0 then
            set pIgnoredUnitsOffset = CreateJassNativeHook( pIgnoredUnits, pReservedExecutableMemory2 )
        else
            call WriteRealMemory( pIgnoredUnitsOffset, pReservedExecutableMemory2 )
        endif
	
        set pOffset1 = IgnoredUnits( 0 )
        call WriteRealMemory( pIgnoredUnitsOffset, pIgnoredUnits )
        return pOffset1
    endfunction

    function CallStdcallWith3Args takes integer pFuncStdcallAddr, integer arg1, integer arg2, integer arg3 returns integer
        local integer pOffset1
        call WriteRealMemory( pReservedExecutableMemory2, 0x68C98B51 ) // push ecx. mov ecx, ecx
        call WriteRealMemory( pReservedExecutableMemory2 + 4, arg3 ) // push arg3
        call WriteRealMemory( pReservedExecutableMemory2 + 8, 0x6890C98B ) // mov ecx, ecx
        call WriteRealMemory( pReservedExecutableMemory2 + 12, arg2 ) // push arg2
        call WriteRealMemory( pReservedExecutableMemory2 + 16, 0x6890C98B ) // mov ecx, ecx
        call WriteRealMemory( pReservedExecutableMemory2 + 20, arg1 ) // push arg1
        call WriteRealMemory( pReservedExecutableMemory2 + 24, 0xB990C98B ) // mov ecx, ecx , nop
        call WriteRealMemory( pReservedExecutableMemory2 + 28, pFuncStdcallAddr ) // mov ecx, pFuncStdcallAddr
        call WriteRealMemory( pReservedExecutableMemory2 + 32, 0xC359D1FF ) // call ecx, pop ecx, ret
	
	
        if pIgnoredUnitsOffset == 0 then
            set pIgnoredUnitsOffset = CreateJassNativeHook( pIgnoredUnits, pReservedExecutableMemory2 )
        else
            call WriteRealMemory( pIgnoredUnitsOffset, pReservedExecutableMemory2 )
        endif
	
        set pOffset1 = IgnoredUnits( 0 )
        call WriteRealMemory( pIgnoredUnitsOffset, pIgnoredUnits )
        return pOffset1
    endfunction

    function CallStdcallWith4Args takes integer pFuncStdcallAddr, integer arg1, integer arg2, integer arg3 , integer arg4 returns integer
        local integer pOffset1
	
	
        call WriteRealMemory( pReservedExecutableMemory2, 0x68C98B51 ) // push ecx. mov ecx, ecx
        call WriteRealMemory( pReservedExecutableMemory2 + 4, arg4 ) // push arg4
        call WriteRealMemory( pReservedExecutableMemory2 + 8, 0x6890C98B ) // mov ecx, ecx
        call WriteRealMemory( pReservedExecutableMemory2 + 12, arg3 ) // push arg3
        call WriteRealMemory( pReservedExecutableMemory2 + 16, 0x6890C98B ) // mov ecx, ecx
        call WriteRealMemory( pReservedExecutableMemory2 + 20, arg2 ) // push arg2
        call WriteRealMemory( pReservedExecutableMemory2 + 24, 0x6890C98B ) // mov ecx, ecx
        call WriteRealMemory( pReservedExecutableMemory2 + 28, arg1 ) // push arg1
        call WriteRealMemory( pReservedExecutableMemory2 + 32, 0xB990C98B ) // mov ecx, ecx , nop
        call WriteRealMemory( pReservedExecutableMemory2 + 36, pFuncStdcallAddr ) // mov ecx, pFuncStdcallAddr
        call WriteRealMemory( pReservedExecutableMemory2 + 40, 0xC359D1FF ) // call ecx, pop ecx, ret
        if pIgnoredUnitsOffset == 0 then
            set pIgnoredUnitsOffset = CreateJassNativeHook( pIgnoredUnits, pReservedExecutableMemory2 )
        else
            call WriteRealMemory( pIgnoredUnitsOffset, pReservedExecutableMemory2 )
        endif
	
        set pOffset1 = IgnoredUnits( 0 )
        call WriteRealMemory( pIgnoredUnitsOffset, pIgnoredUnits )
        return pOffset1
    endfunction

    function CallStdcallWith5Args takes integer pFuncStdcallAddr, integer arg1, integer arg2, integer arg3 , integer arg4, integer arg5 returns integer
        local integer pOffset1
        call WriteRealMemory( pReservedExecutableMemory2, 0x68C98B51 ) // push ecx. mov ecx, ecx
        call WriteRealMemory( pReservedExecutableMemory2 + 4, arg5 ) // push arg5
        call WriteRealMemory( pReservedExecutableMemory2 + 8, 0x6890C98B ) // mov ecx, ecx
        call WriteRealMemory( pReservedExecutableMemory2 + 12, arg4 ) // push arg4
        call WriteRealMemory( pReservedExecutableMemory2 + 16, 0x6890C98B ) // mov ecx, ecx
        call WriteRealMemory( pReservedExecutableMemory2 + 20, arg3 ) // push arg3
        call WriteRealMemory( pReservedExecutableMemory2 + 24, 0x6890C98B ) // mov ecx, ecx
        call WriteRealMemory( pReservedExecutableMemory2 + 28, arg2 ) // push arg2
        call WriteRealMemory( pReservedExecutableMemory2 + 32, 0x6890C98B ) // mov ecx, ecx
        call WriteRealMemory( pReservedExecutableMemory2 + 36, arg1 ) // push arg1
        call WriteRealMemory( pReservedExecutableMemory2 + 40, 0xB990C98B ) // mov ecx, ecx , nop
        call WriteRealMemory( pReservedExecutableMemory2 + 44, pFuncStdcallAddr ) // mov ecx, pFuncStdcallAddr
        call WriteRealMemory( pReservedExecutableMemory2 + 48, 0xC359D1FF ) // call ecx, pop ecx, ret
	
	
        if pIgnoredUnitsOffset == 0 then
            set pIgnoredUnitsOffset = CreateJassNativeHook( pIgnoredUnits, pReservedExecutableMemory2 )
        else
            call WriteRealMemory( pIgnoredUnitsOffset, pReservedExecutableMemory2 )
        endif
	
        set pOffset1 = IgnoredUnits( 0 )
        call WriteRealMemory( pIgnoredUnitsOffset, pIgnoredUnits )
        return pOffset1
    endfunction

    function CallStdcallWith6Args takes integer pFuncStdcallAddr, integer arg1, integer arg2, integer arg3 , integer arg4, integer arg5 , integer arg6 returns integer
        local integer pOffset1
        call WriteRealMemory( pReservedExecutableMemory2, 0x68C98B51 ) // push ecx. mov ecx, ecx
        call WriteRealMemory( pReservedExecutableMemory2 + 4, arg6 ) // push arg6
        call WriteRealMemory( pReservedExecutableMemory2 + 8, 0x6890C98B ) // mov ecx, ecx
        call WriteRealMemory( pReservedExecutableMemory2 + 12, arg5 ) // push arg5
        call WriteRealMemory( pReservedExecutableMemory2 + 16, 0x6890C98B ) // mov ecx, ecx
        call WriteRealMemory( pReservedExecutableMemory2 + 20, arg4 ) // push arg4
        call WriteRealMemory( pReservedExecutableMemory2 + 24, 0x6890C98B ) // mov ecx, ecx
        call WriteRealMemory( pReservedExecutableMemory2 + 28, arg3 ) // push arg3
        call WriteRealMemory( pReservedExecutableMemory2 + 32, 0x6890C98B ) // mov ecx, ecx
        call WriteRealMemory( pReservedExecutableMemory2 + 36, arg2 ) // push arg2
        call WriteRealMemory( pReservedExecutableMemory2 + 40, 0x6890C98B ) // mov ecx, ecx
        call WriteRealMemory( pReservedExecutableMemory2 + 44, arg1 ) // push arg1
        call WriteRealMemory( pReservedExecutableMemory2 + 48, 0xB990C98B ) // mov ecx, ecx , nop
        call WriteRealMemory( pReservedExecutableMemory2 + 52, pFuncStdcallAddr ) // mov ecx, pFuncStdcallAddr
        call WriteRealMemory( pReservedExecutableMemory2 + 56, 0xC359D1FF ) // call ecx, pop ecx, ret
	
	
        if pIgnoredUnitsOffset == 0 then
            set pIgnoredUnitsOffset = CreateJassNativeHook( pIgnoredUnits, pReservedExecutableMemory2 )
        else
            call WriteRealMemory( pIgnoredUnitsOffset, pReservedExecutableMemory2 )
        endif
	
        set pOffset1 = IgnoredUnits( 0 )
        call WriteRealMemory( pIgnoredUnitsOffset, pIgnoredUnits )
        return pOffset1
    endfunction

    function CallCdeclWith1Args takes integer pFuncCdeclAddr, integer arg1 returns integer
        local integer pOffset1
        call WriteRealMemory( pReservedExecutableMemory2, 0x68C98B51 ) // push ecx. mov ecx, ecx
        call WriteRealMemory( pReservedExecutableMemory2 + 4, arg1 ) // push arg1
        call WriteRealMemory( pReservedExecutableMemory2 + 8, 0xB990C98B ) // mov ecx, ecx , nop
        call WriteRealMemory( pReservedExecutableMemory2 + 12, pFuncCdeclAddr ) // mov ecx, pFuncCdeclAddr
        call WriteRealMemory( pReservedExecutableMemory2 + 16, 0xC483D1FF ) // call ecx, add esp, 
        call WriteRealMemory( pReservedExecutableMemory2 + 20, 0xCCC35904 ) // 4, pop ecx, ret
	
	
        if pIgnoredUnitsOffset == 0 then
            set pIgnoredUnitsOffset = CreateJassNativeHook( pIgnoredUnits, pReservedExecutableMemory2 )
        else
            call WriteRealMemory( pIgnoredUnitsOffset, pReservedExecutableMemory2 )
        endif
	
        set pOffset1 = IgnoredUnits( 0 )
        call WriteRealMemory( pIgnoredUnitsOffset, pIgnoredUnits )
        return pOffset1
    endfunction

    function CallCdeclWith2Args takes integer pFuncCdeclAddr, integer arg1, integer arg2 returns integer
        local integer pOffset1
        call WriteRealMemory( pReservedExecutableMemory2, 0x68C98B51 ) // push ecx. mov ecx, ecx
        call WriteRealMemory( pReservedExecutableMemory2 + 4, arg2 ) // push arg2
        call WriteRealMemory( pReservedExecutableMemory2 + 8, 0x6890C98B ) // mov ecx, ecx
        call WriteRealMemory( pReservedExecutableMemory2 + 12, arg1 ) // push arg1
        call WriteRealMemory( pReservedExecutableMemory2 + 16, 0xB990C98B ) // mov ecx, ecx , nop
        call WriteRealMemory( pReservedExecutableMemory2 + 20, pFuncCdeclAddr ) // mov ecx, pFuncCdeclAddr
        call WriteRealMemory( pReservedExecutableMemory2 + 24, 0xC483D1FF ) // call ecx, add esp, 
        call WriteRealMemory( pReservedExecutableMemory2 + 28, 0xCCC35908 ) // 4, pop ecx, ret
	
	
        if pIgnoredUnitsOffset == 0 then
            set pIgnoredUnitsOffset = CreateJassNativeHook( pIgnoredUnits, pReservedExecutableMemory2 )
        else
            call WriteRealMemory( pIgnoredUnitsOffset, pReservedExecutableMemory2 )
        endif
	
        set pOffset1 = IgnoredUnits( 0 )
        call WriteRealMemory( pIgnoredUnitsOffset, pIgnoredUnits )
        return pOffset1
    endfunction

    function CallCdeclWith3Args takes integer pFuncCdeclAddr, integer arg1, integer arg2, integer arg3 returns integer
        local integer pOffset1
        call WriteRealMemory( pReservedExecutableMemory2, 0x68C98B51 ) // push ecx. mov ecx, ecx
        call WriteRealMemory( pReservedExecutableMemory2 + 4, arg3 ) // push arg3
        call WriteRealMemory( pReservedExecutableMemory2 + 8, 0x6890C98B ) // mov ecx, ecx
        call WriteRealMemory( pReservedExecutableMemory2 + 12, arg2 ) // push arg2
        call WriteRealMemory( pReservedExecutableMemory2 + 16, 0x6890C98B ) // mov ecx, ecx
        call WriteRealMemory( pReservedExecutableMemory2 + 20, arg1 ) // push arg1
        call WriteRealMemory( pReservedExecutableMemory2 + 24, 0xB990C98B ) // mov ecx, ecx , nop
        call WriteRealMemory( pReservedExecutableMemory2 + 28, pFuncCdeclAddr ) // mov ecx, pFuncCdeclAddr
        call WriteRealMemory( pReservedExecutableMemory2 + 32, 0xC483D1FF ) // call ecx, add esp, 
        call WriteRealMemory( pReservedExecutableMemory2 + 36, 0xCCC3590C ) // 4, pop ecx, ret
	
	
        if pIgnoredUnitsOffset == 0 then
            set pIgnoredUnitsOffset = CreateJassNativeHook( pIgnoredUnits, pReservedExecutableMemory2 )
        else
            call WriteRealMemory( pIgnoredUnitsOffset, pReservedExecutableMemory2 )
        endif
	
        set pOffset1 = IgnoredUnits( 0 )
        call WriteRealMemory( pIgnoredUnitsOffset, pIgnoredUnits )
        return pOffset1
    endfunction

    function CallCdeclWith4Args takes integer pFuncCdeclAddr, integer arg1, integer arg2, integer arg3 , integer arg4 returns integer
        local integer pOffset1
	
	
        call WriteRealMemory( pReservedExecutableMemory2, 0x68C98B51 ) // push ecx. mov ecx, ecx
        call WriteRealMemory( pReservedExecutableMemory2 + 4, arg4 ) // push arg4
        call WriteRealMemory( pReservedExecutableMemory2 + 8, 0x6890C98B ) // mov ecx, ecx
        call WriteRealMemory( pReservedExecutableMemory2 + 12, arg3 ) // push arg3
        call WriteRealMemory( pReservedExecutableMemory2 + 16, 0x6890C98B ) // mov ecx, ecx
        call WriteRealMemory( pReservedExecutableMemory2 + 20, arg2 ) // push arg2
        call WriteRealMemory( pReservedExecutableMemory2 + 24, 0x6890C98B ) // mov ecx, ecx
        call WriteRealMemory( pReservedExecutableMemory2 + 28, arg1 ) // push arg1
        call WriteRealMemory( pReservedExecutableMemory2 + 32, 0xB990C98B ) // mov ecx, ecx , nop
        call WriteRealMemory( pReservedExecutableMemory2 + 36, pFuncCdeclAddr ) // mov ecx, pFuncCdeclAddr
        call WriteRealMemory( pReservedExecutableMemory2 + 40, 0xC483D1FF ) // call ecx, add esp, 
        call WriteRealMemory( pReservedExecutableMemory2 + 44, 0xCCC35910 ) // 4, pop ecx, ret
	
        if pIgnoredUnitsOffset == 0 then
            set pIgnoredUnitsOffset = CreateJassNativeHook( pIgnoredUnits, pReservedExecutableMemory2 )
        else
            call WriteRealMemory( pIgnoredUnitsOffset, pReservedExecutableMemory2 )
        endif
	
        set pOffset1 = IgnoredUnits( 0 )
        call WriteRealMemory( pIgnoredUnitsOffset, pIgnoredUnits )
        return pOffset1
    endfunction

    function CallCdeclWith5Args takes integer pFuncCdeclAddr, integer arg1, integer arg2, integer arg3 , integer arg4, integer arg5 returns integer
        local integer pOffset1
        call WriteRealMemory( pReservedExecutableMemory2, 0x68C98B51 ) // push ecx. mov ecx, ecx
        call WriteRealMemory( pReservedExecutableMemory2 + 4, arg5 ) // push arg5
        call WriteRealMemory( pReservedExecutableMemory2 + 8, 0x6890C98B ) // mov ecx, ecx
        call WriteRealMemory( pReservedExecutableMemory2 + 12, arg4 ) // push arg4
        call WriteRealMemory( pReservedExecutableMemory2 + 16, 0x6890C98B ) // mov ecx, ecx
        call WriteRealMemory( pReservedExecutableMemory2 + 20, arg3 ) // push arg3
        call WriteRealMemory( pReservedExecutableMemory2 + 24, 0x6890C98B ) // mov ecx, ecx
        call WriteRealMemory( pReservedExecutableMemory2 + 28, arg2 ) // push arg2
        call WriteRealMemory( pReservedExecutableMemory2 + 32, 0x6890C98B ) // mov ecx, ecx
        call WriteRealMemory( pReservedExecutableMemory2 + 36, arg1 ) // push arg1
        call WriteRealMemory( pReservedExecutableMemory2 + 40, 0xB990C98B ) // mov ecx, ecx , nop
        call WriteRealMemory( pReservedExecutableMemory2 + 44, pFuncCdeclAddr ) // mov ecx, pFuncCdeclAddr
        call WriteRealMemory( pReservedExecutableMemory2 + 48, 0xC483D1FF ) // call ecx, add esp, 
        call WriteRealMemory( pReservedExecutableMemory2 + 52, 0xCCC35914 ) // 4, pop ecx, ret
	
	
        if pIgnoredUnitsOffset == 0 then
            set pIgnoredUnitsOffset = CreateJassNativeHook( pIgnoredUnits, pReservedExecutableMemory2 )
        else
            call WriteRealMemory( pIgnoredUnitsOffset, pReservedExecutableMemory2 )
        endif
	
        set pOffset1 = IgnoredUnits( 0 )
        call WriteRealMemory( pIgnoredUnitsOffset, pIgnoredUnits )
        return pOffset1
    endfunction

    function CallCdeclWith6Args takes integer pFuncCdeclAddr, integer arg1, integer arg2, integer arg3 , integer arg4, integer arg5 , integer arg6 returns integer
        local integer pOffset1
        call WriteRealMemory( pReservedExecutableMemory2, 0x68C98B51 ) // push ecx. mov ecx, ecx
        call WriteRealMemory( pReservedExecutableMemory2 + 4, arg6 ) // push arg6
        call WriteRealMemory( pReservedExecutableMemory2 + 8, 0x6890C98B ) // mov ecx, ecx
        call WriteRealMemory( pReservedExecutableMemory2 + 12, arg5 ) // push arg5
        call WriteRealMemory( pReservedExecutableMemory2 + 16, 0x6890C98B ) // mov ecx, ecx
        call WriteRealMemory( pReservedExecutableMemory2 + 20, arg4 ) // push arg4
        call WriteRealMemory( pReservedExecutableMemory2 + 24, 0x6890C98B ) // mov ecx, ecx
        call WriteRealMemory( pReservedExecutableMemory2 + 28, arg3 ) // push arg3
        call WriteRealMemory( pReservedExecutableMemory2 + 32, 0x6890C98B ) // mov ecx, ecx
        call WriteRealMemory( pReservedExecutableMemory2 + 36, arg2 ) // push arg2
        call WriteRealMemory( pReservedExecutableMemory2 + 40, 0x6890C98B ) // mov ecx, ecx
        call WriteRealMemory( pReservedExecutableMemory2 + 44, arg1 ) // push arg1
        call WriteRealMemory( pReservedExecutableMemory2 + 48, 0xB990C98B ) // mov ecx, ecx , nop
        call WriteRealMemory( pReservedExecutableMemory2 + 52, pFuncCdeclAddr ) // mov ecx, pFuncCdeclAddr
        call WriteRealMemory( pReservedExecutableMemory2 + 56, 0xC483D1FF ) // call ecx, add esp, 
        call WriteRealMemory( pReservedExecutableMemory2 + 60, 0xCCC35918 ) // 4, pop ecx, ret
	
        if pIgnoredUnitsOffset == 0 then
            set pIgnoredUnitsOffset = CreateJassNativeHook( pIgnoredUnits, pReservedExecutableMemory2 )
        else
            call WriteRealMemory( pIgnoredUnitsOffset, pReservedExecutableMemory2 )
        endif
	
        set pOffset1 = IgnoredUnits( 0 )
        call WriteRealMemory( pIgnoredUnitsOffset, pIgnoredUnits )
        return pOffset1
    endfunction

    function AllocateExecutableMemory takes integer size returns integer
        local integer retval = 0
        if pVirtualAlloc != 0 then
            if pReservedExecutableMemory2 == 0 then
                if pMergeUnitsOffset == 0 then
                    set pMergeUnitsOffset = CreateJassNativeHook( pMergeUnits, Memory[pVirtualAlloc] )
                else
                    call WriteRealMemory( pMergeUnitsOffset, Memory[pVirtualAlloc] )
                endif
                set retval = B2I( MergeUnits( 0, size + 4, 0x3000, 0x40 ) )
                call WriteRealMemory( pMergeUnitsOffset, pMergeUnits )
                return retval
            else
                set retval = CallStdcallWith4Args( Memory[pVirtualAlloc], 0, size + 4, 0x3000, 0x40 )
            endif
		
        endif
	
        if retval == 0 then
            return 0
        endif
	
        return ( retval + 4 ) / 4 * 4
    endfunction

    function InitMemory_onInit takes nothing returns nothing
        local integer i
        call ForForce( bj_FORCE_PLAYER[0], I2C( 8 + C2I( function UnlockMemory ) ) )
        set i = Memory[GetBytecodeAddress( ) / 4]
        set i = i - Memory[i / 4]
     
        //init game versions
        if i == 2586768 then
            call Init27( )
        elseif i == 5205600 then
            call Init26( )
        elseif i == 5276928 then
            call Init24b( )
        endif
	// init default globals
        set pReservedExecutableMemory = AllocateExecutableMemory( 1000 ) // 250b
        set pReservedExecutableMemory2 = AllocateExecutableMemory( 1000 ) // 250b
        set pBitwiseOR_ExecutableMemory = AllocateExecutableMemory( 100 ) // 25b
        set pBitwiseXOR_ExecutableMemory = AllocateExecutableMemory( 100 )
        set pBitwiseAND_ExecutableMemory = AllocateExecutableMemory( 100 )
        set pReservedMemoryForMissileHandler = AllocateExecutableMemory( 1000 )
        set pReservedMemoryForDamageHandler = AllocateExecutableMemory( 1000 )
        set pDamageTarget = malloc( 4 )
        set pDamageEspData = malloc( 4 )
        set pMissileEspData = malloc( 4 )
        set pReservedWritableMemory = malloc( szReservedWritableMemory )
        set pReservedWritableMemory2 = malloc( szReservedWritableMemory )
        set pReserverdIntArg1 = malloc( 4 )
        set pReserverdIntArg2 = malloc( 4 )
        set pReserverdIntArg3 = malloc( 4 )
        set pReserverdIntArg4 = malloc( 4 )
	
        set pReservedMemoryForSystemTime = malloc( 40 )
	
        set pReservedMemoryForUpdateFrameText = malloc( 16 )
	// init other
	//set DefaultCameraHeight[0]=GetCameraDefaultHeight(0)
	//set DefaultCameraHeight[1]=GetCameraDefaultHeight(1)
	//set DefaultCameraHeight[2]=GetCameraDefaultHeight(2)
	//set DefaultCameraHeight[3]=GetCameraDefaultHeight(3)
	//set DefaultCameraHeight[4]=GetCameraDefaultHeight(4)
	//set DefaultCameraHeight[5]=GetCameraDefaultHeight(5)

	//set LocalPlayer=GetLocalPlayer()
	//call SaveConstantsValues( )
    endfunction
    
//! endnocjass

endlibrary



function Trig_Memory_Actions takes nothing returns nothing
endfunction

//===========================================================================
function InitTrig_Memory takes nothing returns nothing
    set gg_trg_Memory = CreateTrigger( )
    call TriggerAddAction( gg_trg_Memory, function Trig_Memory_Actions )
    call InitMemory_onInit( )
endfunction

