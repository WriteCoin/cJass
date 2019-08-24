#guard bitwise

library Bitwise uses Typecast, Memory, HexNumber
function GetGameTypeSupported takes nothing returns integer
	//return Memory[Memory[Memory[GameState] / 4 + 12] / 4 + 12]
	return ReadRealPointer2LVL(GameState*4,48,48)
endfunction
//function BitwiseNot takes integer i returns integer
//	return 0xFFFFFFFF - i
//endfunction
//
//function BitwiseOrOld takes integer a,integer b returns integer
//	//set Memory[Memory[Memory[GameState]/4+12]/4+12] = a
//	call SetGameTypeSupported(GAME_TYPE_ALL, false)
//	call SetGameTypeSupported(ConvertGameType(a), true)
//	call SetGameTypeSupported(ConvertGameType(b), true)
//	return GetGameTypeSupported()
//endfunction
//
//function BitwiseAndOld takes integer a,integer b returns integer
//	//set Memory[Memory[Memory[GameState]/4+12]/4+12] = a
//	call SetGameTypeSupported(GAME_TYPE_ALL, false)
//	call SetGameTypeSupported(ConvertGameType(a), true)
//	call SetGameTypeSupported(ConvertGameType(BitwiseNot(b)), false)
//	return GetGameTypeSupported()
//endfunction
//function BitwiseXorOld takes integer a,integer b returns integer
//	local integer i
//	//set Memory[Memory[Memory[GameState]/4+12]/4+12] = a
//	call SetGameTypeSupported(GAME_TYPE_ALL, false)
//	call SetGameTypeSupported(ConvertGameType(a), true)
//	call SetGameTypeSupported(ConvertGameType(b), false)
//	set i=GetGameTypeSupported()
//	call SetGameTypeSupported(ConvertGameType(b), true)
//	call SetGameTypeSupported(ConvertGameType(a), false)
//	call SetGameTypeSupported(ConvertGameType(i), true)
//	return GetGameTypeSupported()
//endfunction
function BitwiseOr takes integer arg1, integer arg2 returns integer
	local integer retval
	
	if NeedInitBitwiseOr == true then
		set NeedInitBitwiseOr = false
		set Memory[pBitwiseOR_ExecutableMemory/4] = 0x0424448B 
		set Memory[pBitwiseOR_ExecutableMemory/4 + 1] = 0x0824548B 
		set Memory[pBitwiseOR_ExecutableMemory/4 + 2] = 0xCCC3D009 
	endif
	
	if pConvertUnitsOffset == 0 then 
		set pConvertUnitsOffset = CreateJassNativeHook(pConvertUnits,pBitwiseOR_ExecutableMemory )
	else
		call WriteRealMemory(pConvertUnitsOffset, pBitwiseOR_ExecutableMemory)
	endif
	
	if pConvertUnitsOffset != 0 then 
		set retval = B2I(ConvertUnits( arg1,arg2 ))
		call WriteRealMemory(pConvertUnitsOffset, pConvertUnits)
		return retval
	endif
	return 0
endfunction
function BitwiseXor takes integer arg1, integer arg2 returns integer
	local integer retval
	
	if NeedInitBitwiseXor == true then
		set NeedInitBitwiseXor = false
		set Memory[pBitwiseXOR_ExecutableMemory/4] = 0x0424448B 
		set Memory[pBitwiseXOR_ExecutableMemory/4 + 1] = 0x0824548B 
		set Memory[pBitwiseXOR_ExecutableMemory/4 + 2] = 0xCCC3D031 
	endif
	
	if pConvertUnitsOffset == 0 then 
		set pConvertUnitsOffset = CreateJassNativeHook(pConvertUnits,pBitwiseXOR_ExecutableMemory )
	else
		call WriteRealMemory(pConvertUnitsOffset, pBitwiseXOR_ExecutableMemory)
	endif
	
	if pConvertUnitsOffset != 0 then 
		set retval = B2I(ConvertUnits( arg1,arg2 ))
		call WriteRealMemory(pConvertUnitsOffset,pConvertUnits)
		return retval
	endif
	return 0
endfunction
function BitwiseAnd takes integer arg1, integer arg2 returns integer
	local integer retval
	
	if NeedInitBitwiseAnd == true then
		set NeedInitBitwiseAnd = false
		set Memory[pBitwiseAND_ExecutableMemory/4] = 0x0424448B 
		set Memory[pBitwiseAND_ExecutableMemory/4 + 1] = 0x0824548B 
		set Memory[pBitwiseAND_ExecutableMemory/4 + 2] = 0xCCC3D021 
	endif
	
	if pConvertUnitsOffset == 0 then 
		set pConvertUnitsOffset = CreateJassNativeHook(pConvertUnits,pBitwiseAND_ExecutableMemory )
	else
		call WriteRealMemory(pConvertUnitsOffset, pBitwiseAND_ExecutableMemory)
	endif
	
	if pConvertUnitsOffset != 0 then 
		set retval = B2I(ConvertUnits( arg1,arg2 ))
		call WriteRealMemory(pConvertUnitsOffset, pConvertUnits)
		return retval
	endif
	return 0
endfunction

endlibrary

//===========================================================================
function InitTrig_Bitwise_lib takes nothing returns nothing
endfunction

