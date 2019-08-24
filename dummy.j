#guard dummy

include "cjass\hash_defines.j"
include "cjass\custom_defines.j"

scope dummy

	define 
    {
		//integer dummy_default_id
		//integer dummyId
		dummy_default_id = 'uloc'
		

        //integer dummy_ability_id
		//integer dummyAbilId
        dummy_ability_id = 'Aloc'
		dummyAbilId = dummy_ability_id

        dummy_str = "dummy"

        dummyid_str = "dummyid"

        hasdummy_str = "hasDummy"
    }

	integer dummyId = dummy_default_id

	function isUnitDummy takes unit u returns boolean
		return GetUnitAbilityLevel(u,dummy_ability_id)>0
	endfunction

	function getDummyPlayer takes player p returns unit
		return LoadUnitHandle(p,dummy_str)
	endfunction
	
	function init_Dummy takes integer id returns nothing
		call SaveInteger(dummyid_str,id)
		local integer i=0
		loop
			exitwhen i>bj_MAX_PLAYERS-1
			if not LoadBoolean(getPlayer(i),hasdummy_str) then
				call SaveUnitHandle(getPlayer(i),dummy_str,CreateUnit(getPlayer(i),id))
				if LoadUnitHandle(getPlayer(i),dummy_str)==null then
					call SaveUnitHandle(getPlayer(i),dummy_str,CreateUnit(getPlayer(i),dummy_default_id))
				endif
                call SaveBoolean(getPlayer(i),hasdummy_str,true)
			endif
			set i=i+1
		endloop
	endfunction
endscope