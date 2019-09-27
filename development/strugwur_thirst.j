#guard strugwur_thirst

define
{
    private abil = 'A0I8'
    private dumvis = 'o020'
    private absph = 'A04R'
    private r=25000+25
}

private timer t
private unit u
private group g,ng

private function time0005 takes nothing returns nothing
    
endfunction

private function time004 takes nothing returns nothing
    
endfunction

private function filter takes nothing returns boolean
    return IsUnitType(filterUnit,UNIT_TYPE_HERO) and IsUnitEnemy(filterUnit,)
endfunction

private function time025 takes nothing returns nothing
    int l
    u=LoadUnitHandle(expiredTimer,"u")
    g=LoadGroupHandle(expiredTimer,"g")
    ng=CreateGroup()
    l=GetUnitAbilityLevel(u,abil)
    GroupEnumUnitsInRange(ng,GetUnitX(u),GetUnitY(u),r,function filter)
endfunction

private function heroSkill takes nothing returns nothing
    int i=0
    if GetLearnedSkill()!=abil or IsUnitIllusion(GetTriggerUnit()) or GetUnitAbilityLevel(GetTriggerUnit())!=1 then
        return 
    endif
    t=CreateTimer()
    SaveUnitHandle(t,"u",triggerUnit)
    SaveGroupHandle(t,scope_prefix+"g",CreateGroup())
    TimerStart(t,0.25,true,function time025)
    t=CreateTimer()
    SaveUnitHandle(t,"u",triggerUnit)
    TimerStart(t,0.04,true,function time004)
    t=CreateTimer()
    SaveUnitHandle(t,"u",triggerUnit)
    SaveReal(t,"xu",GetUnitX(triggerUnit))
    SaveReal(t,"yu",GetUnitY(triggerUnit))
    TimerStart(t,0.005,true,function time0005)
    forAB(i,1,bj_MAX_PLAYERS,
    if Player(i)!=GetOwningPlayer(triggerUnit) then
        SaveUnitHandle(Player(i),dumvis)
    endif)
endfunction

private function init takes nothing returns nothing
    triggerAddAction(heroSkill)

endfunction