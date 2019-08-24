#guard damage_system

include "cjass\global.j"
include "cjass\hash_defines.j"
include "cjass\triggers.j"
include "cjass\custom_defines.j"

//code damageSystem
scope damageSystem initializer init

	public group g = CreateGroup()

	//unit getDamager
	define getDamager = GetEventDamageSource()

	//trigger unitDamaged
	//trigger unitDamagedAttack

	function attackType2string takes attacktype at returns string
		if at==ATTACK_TYPE_NORMAL then
			return "normal"
		elseif at==ATTACK_TYPE_MELEE then
			return "melee"
		elseif at==ATTACK_TYPE_PIERCE then
			return "pierce"
		elseif at==ATTACK_TYPE_SIEGE then
			return "siege"
		elseif at==ATTACK_TYPE_MAGIC then
			return "magic"
		elseif at==ATTACK_TYPE_CHAOS then
			return "chaos"
		elseif at==ATTACK_TYPE_HERO then
			return "hero"
		endif
		return ""
	endfunction

	function damageType2string takes damagetype de returns string
		if de==DAMAGE_TYPE_UNKNOWN then
			return "unknown"
		elseif de==DAMAGE_TYPE_NORMAL then
			return "normal"
		elseif de==DAMAGE_TYPE_ENHANCED then
			return "enhanced"
		elseif de==DAMAGE_TYPE_FIRE then
			return "fire"
		elseif de==DAMAGE_TYPE_COLD then
			return "cold"
		elseif de==DAMAGE_TYPE_LIGHTNING then
			return "lightning"
		elseif de==DAMAGE_TYPE_POISON then
			return "poison"
		elseif de==DAMAGE_TYPE_DISEASE then
			return "disease"
		elseif de==DAMAGE_TYPE_DIVINE then
			return "divine"
		elseif de==DAMAGE_TYPE_MAGIC then
			return "magic"
		elseif de==DAMAGE_TYPE_SONIC then
			return "sonic"
		elseif de==DAMAGE_TYPE_ACID then
			return "acid"
		elseif de==DAMAGE_TYPE_FORCE then
			return "force"
		elseif de==DAMAGE_TYPE_DEATH then
			return "death"
		elseif de==DAMAGE_TYPE_MIND then
			return "mind"
		elseif de==DAMAGE_TYPE_PLANT then
			return "plant"
		elseif de==DAMAGE_TYPE_DEFENSIVE then
			return "defensive"
		elseif de==DAMAGE_TYPE_DEMOLITION then
			return "demolition"
		elseif de==DAMAGE_TYPE_SLOW_POISON then
			return "slow poison"
		elseif de==DAMAGE_TYPE_SPIRIT_LINK then
			return "spirit link"
		elseif de==DAMAGE_TYPE_SHADOW_STRIKE then
			return "shadow strike"
		elseif de==DAMAGE_TYPE_UNIVERSAL then
			return "universal"
		endif
		return ""
	endfunction

	private function add takes unit u returns nothing
		TriggerRegisterUnitEvent(getTrigger(unitDamaged),u,EVENT_UNIT_DAMAGED)
		TriggerRegisterUnitEvent(getTrigger(unitDamagedAttack),u,EVENT_UNIT_DAMAGED)
		GroupAddUnit(g,u)
	endfunction

	private function enum takes nothing returns nothing
		add(enumUnit)
	endfunction
	
	private function rectEnter takes nothing returns nothing
		if !IsUnitInGroup(triggerUnit,g) then
			add(triggerUnit)
		endif
	endfunction

	private function unitDamaged_cond takes nothing returns boolean
		return !LoadBoolean(GetEventDamageSource(),"attack")		
	endfunction

	private function unitAttacked takes nothing returns nothing
		SaveBoolean(GetAttacker(),"attack",true)
		SaveUnitHandle(GetAttacker(),"attackUnit",triggerUnit)
	endfunction

	private function attackCancel takes nothing returns nothing
		RemoveSavedBoolean(triggerUnit,"attack")
		RemoveSavedHandle(triggerUnit,"attackUnit")
	endfunction

	private function unitIssuedOrder takes nothing returns nothing
		if GetUnitCurrentOrder(triggerUnit)!=OrderId("attack") and LoadBoolean(triggerUnit,"attack") then
			attackCancel()
		endif
	endfunction

	private function unitIssuedPointOrder takes nothing returns nothing
		if LoadBoolean(triggerUnit,"attack") then
			attackCancel()
		endif
	endfunction

	private function unitIssuedTargetOrder takes nothing returns nothing
		if GetOrderTarget()!=LoadUnitHandle(triggerUnit,"attackUnit") and LoadBoolean(triggerUnit,"attack") then
			attackCancel()
		endif
	endfunction

	private function unitIssuedUnitOrder takes nothing returns nothing
		if GetOrderTargetUnit()!=LoadUnitHandle(triggerUnit,"attackUnit") and LoadBoolean(triggerUnit,"attack") then
			attackCancel()
		endif
	endfunction

	private function unitDamagedAttack takes nothing returns nothing
		RemoveSavedBoolean(GetEventDamageSource(),"attack")
		RemoveSavedHandle(GetEventDamageSource(),"attackUnit")
	endfunction

	private function unitDamagedAttack_cond takes nothing returns boolean
		return LoadBoolean(GetEventDamageSource(),"attack")
	endfunction
	
	private function init takes nothing returns nothing
		SaveTriggerHandle("unitDamaged",CreateTrigger())
		SaveTriggerHandle("unitDamagedAttack",CreateTrigger())
		triggerAddAction(rectEnter)
		forUnitsInMap(enum)
		TriggerAddCondition(getTrigger(unitDamaged),function unitDamaged_cond)
		triggerAddAction(unitAttacked)
		triggerAddAction(unitIssuedOrder)
		triggerAddAction(unitIssuedPointOrder)
		triggerAddAction(unitIssuedTargetOrder)
		triggerAddAction(unitIssuedUnitOrder)
		TriggerAddCondition(getTrigger(unitDamagedAttack),function unitDamagedAttack_cond)
		triggerAddAction(unitDamagedAttack)
	endfunction
endscope