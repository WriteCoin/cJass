include "cjass\triggers.j"

scope AccumulateDamageOnUnit initializer init
    
    globals
        private integer abil = 'A000'
        private real dmg0 = 2.00
        private real dmg = 2.00
        private integer hit0 = 10
        private integer hit = 0
        private real otk0 = 3.00
        private real otk = 0.00
        private string e="Abilities\\Spells\\Orc\\TrollBerserk\\HeadhunterWEAPONSLeft.mdl"
        private string et="Abilities\\Weapons\\Blood\\BloodImpact.mdl"
        private boolean death = false

        private unit u
        private timer t
        private group g
    endglobals

    private function time takes nothing returns nothing
        addInteger(muiGetUnit("dm"),scope_prefix+"hit"+I2S(GetHandleId(muiGetUnit("u"))),-1)
        addReal(muiGetUnit("dm"),scope_prefix+"d"+I2S(GetHandleId(muiGetUnit("u"))),-(dmg0+dmg*GetUnitAbilityLevel(muiGetUnit("dm"),abil)))
        //BJDebugMsg(I2S(LoadInteger(muiGetUnit("dm"),scope_prefix+"hit"+I2S(GetHandleId(muiGetUnit("u"))))))
        if LoadInteger(muiGetUnit("dm"),scope_prefix+"hit"+I2S(GetHandleId(muiGetUnit("u"))))<=0 or (death and not isUnitAlive(muiGetUnit("dm"))) then
            //BJDebugMsg("уничтожение таймера")
            g=LoadGroupHandle(muiGetUnit("u"),scope_prefix+"g")
            GroupRemoveUnit(g,muiGetUnit("dm"))
            if CountUnitsInGroup(g)<=0 then
                DestroyGroup(g)
                RemoveSavedHandle(muiGetUnit("u"),scope_prefix+"g")
            endif
            RemoveSavedInteger(muiGetUnit("dm"),scope_prefix+"hit"+I2S(GetHandleId(muiGetUnit("u"))))
            RemoveSavedReal(muiGetUnit("dm"),scope_prefix+"d"+I2S(GetHandleId(muiGetUnit("u"))))
            g=LoadGroupHandle(muiGetUnit("dm"),scope_prefix+"g")
            GroupRemoveUnit(g,muiGetUnit("u"))
            if CountUnitsInGroup(g)<=0 or (death and not isUnitAlive(muiGetUnit("dm"))) then
                destroyLoadEffect(muiGetUnit("dm"),scope_prefix+"e1")
                destroyLoadEffect(muiGetUnit("dm"),scope_prefix+"e2")
            endif
            DestroyTimer(GetExpiredTimer())
        endif
    endfunction

    private function unitDamagedAttack takes nothing returns nothing
        if not unitHasAbility(getDamager,abil) or IsUnitType(triggerUnit,UNIT_TYPE_STRUCTURE) then
            return
        endif
        if LoadInteger(getDamager,scope_prefix+"hit"+I2S(GetHandleId(triggerUnit)))<hit0+hit*GetUnitAbilityLevel(getDamager,abil) then
            addInteger(getDamager,scope_prefix+"hit"+I2S(GetHandleId(triggerUnit)),1)
            //BJDebugMsg(I2S(LoadInteger(getDamager,scope_prefix+"hit"+I2S(GetHandleId(triggerUnit)))))
        endif
        g=LoadGroupHandle(getDamager,scope_prefix+"g")
        //BJDebugMsg(I2S(CountUnitsInGroup(LoadGroupHandle(getDamager,scope_prefix+"g"))))
        if CountUnitsInGroup(g)<=0 then
            //BJDebugMsg("эффект геройский")
            //BJDebugMsg(B2S(getDamager==null))
            saveNewEffectTarget(getDamager,scope_prefix+"e1",e,"weapon,left")
            saveNewEffectTarget(getDamager,scope_prefix+"e2",e,"weapon,right")
        endif
        if not IsUnitInGroup(triggerUnit,g) then
            GroupAddUnit(g,triggerUnit)
        endif
        t=LoadTimerHandle(triggerUnit,scope_prefix+"t"+I2S(GetHandleId(getDamager)))
        if t==null then
            //BJDebugMsg("новый таймер")
            g=LoadGroupHandle(triggerUnit,scope_prefix+"g")
            if g==null then
                SaveGroupHandle(triggerUnit,scope_prefix+"g",CreateGroup())
                g=LoadGroupHandle(triggerUnit,scope_prefix+"g") 
            endif
            GroupAddUnit(g,getDamager)
            SaveTimerHandle(triggerUnit,scope_prefix+"t"+I2S(GetHandleId(getDamager)),CreateTimer())
            t=LoadTimerHandle(triggerUnit,scope_prefix+"t"+I2S(GetHandleId(getDamager)))
            SaveUnitHandle(t,"u",triggerUnit)
            SaveUnitHandle(t,"dm",getDamager)
        endif
        addSpecialEffectTarget(et,triggerUnit,"chest",true)
        addReal(getDamager,scope_prefix+"d"+I2S(GetHandleId(triggerUnit)),dmg0+dmg*GetUnitAbilityLevel(getDamager,abil))
        UnitDamageTarget(getDamager,triggerUnit,LoadReal(getDamager,scope_prefix+"d"+I2S(GetHandleId(triggerUnit))),ATTACK_TYPE_HERO,DAMAGE_TYPE_NORMAL)
        //BJDebugMsg(R2S(LoadReal(getDamager,scope_prefix+"d"+I2S(GetHandleId(triggerUnit)))))
        //BJDebugMsg("урон: "+R2S(GetEventDamage()+dmg0+dmg*GetUnitAbilityLevel(getDamager,abil)))
        //BJDebugMsg("запуск таймера")
        TimerStart(t,otk0+otk*GetUnitAbilityLevel(getDamager,abil),true,function time)
    endfunction

    private function for takes nothing returns nothing
        //BJDebugMsg("обновление")
        TimerStart(LoadTimerHandle(enumUnit,scope_prefix+"t"+I2S(GetHandleId(triggerUnit))),otk0+otk*GetUnitAbilityLevel(triggerUnit,abil),true,function time)
    endfunction

    private function heroSkill takes nothing returns nothing
        if GetLearnedSkill()!=abil then
            return
        endif
        if GetUnitAbilityLevel(triggerUnit,abil)==1 then
            SaveGroupHandle(triggerUnit,scope_prefix+"g",CreateGroup())
        else
            g=LoadGroupHandle(triggerUnit,scope_prefix+"g")
            if CountUnitsInGroup(g)>0 then
                ForGroup(LoadGroupHandle(triggerUnit,"g"),function for)
            endif
        endif
    endfunction

    private function ifor takes nothing returns nothing
        if unitHasAbility(enumUnit,abil) then
            //BJDebugMsg("гр.")
            SaveGroupHandle(enumUnit,scope_prefix+"g",CreateGroup())
        endif
    endfunction

    private function singleTimer takes nothing returns nothing
        forUnitsInMap(ifor)
    endfunction

    private function rectEnter takes nothing returns nothing
        if unitHasAbility(triggerUnit,abil) and not HaveSavedHandle(triggerUnit,scope_prefix+"g") then
            SaveGroupHandle(triggerUnit,scope_prefix+"g",CreateGroup()) 
        endif
    endfunction

    private function fordm takes nothing returns nothing
        g=LoadGroupHandle(enumUnit,scope_prefix+"g")
        GroupRemoveUnit(g,triggerUnit)
        if CountUnitsInGroup(g)<=0 then
            RemoveSavedInteger(enumUnit,scope_prefix+"hit"+I2S(GetHandleId(triggerUnit)))
            RemoveSavedReal(enumUnit,scope_prefix+"d"+I2S(GetHandleId(triggerUnit)))
            destroyLoadEffect(enumUnit,scope_prefix+"e1")
            destroyLoadEffect(enumUnit,scope_prefix+"e2")
        endif
        DestroyTimer(LoadTimerHandle(triggerUnit,scope_prefix+"t"+I2S(GetHandleId(enumUnit))))
        RemoveSavedHandle(triggerUnit,scope_prefix+"t"+I2S(GetHandleId(enumUnit)))
        RemoveSavedHandle(triggerUnit,scope_prefix+"dm"+I2S(GetHandleId(enumUnit)))
    endfunction

    private function unitDeath takes nothing returns nothing
        if unitHasAbility(triggerUnit,abil) then
            destroyLoadEffect(triggerUnit,scope_prefix+"e1")
            destroyLoadEffect(triggerUnit,scope_prefix+"e2")
        elseif HaveSavedHandle(triggerUnit,scope_prefix+"g")
            ForGroup(LoadGroupHandle(triggerUnit,scope_prefix+"g"),function fordm)
            DestroyGroup(LoadGroupHandle(triggerUnit,scope_prefix+"g"))
            RemoveSavedHandle(triggerUnit,scope_prefix+"g")
        endif
    endfunction

    private function init takes nothing returns nothing
        triggerAddAction(unitDamagedAttack)
        triggerAddAction(heroSkill)
        triggerAddAction(singleTimer)
        triggerAddAction(rectEnter)
        triggerAddAction(unitDeath)
    endfunction

endscope