#guard each_attack_other

include "cjass\common.j"

scope AttackEachOther

    private timer t
    private group g=CreateGroup()
    private unit u
    private unit gu

    private function forik takes nothing returns nothing
        gu=GetEnumUnit()
        if CountUnitsInGroup(g)>1 then
            if GetWidgetLife(gu)>=0.405 and GetUnitCurrentOrder(gu)!=OrderId("attack") then
                loop
                    u=GroupPickRandomUnit(g)
                    exitwhen GetWidgetLife(u)>=0.405 and u!=gu
                endloop
                IssueTargetOrder(gu,"attack",u)
                if GetUnitCurrentOrder(u)!=OrderId("attack") then
                    IssueTargetOrder(u,"attack",gu)
                endif
            endif
        else
            DestroyGroup(g)
            FlushChildHashtable(t)
            DestroyTimer(t)
        endif
    endfunction

    private function filter takes nothing returns boolean
        gu=GetFilterUnit()
        return GetWidgetLife(gu)>=0.405 and GetOwningPlayer(gu)==LoadPlayerHandle(t,"p")
    endfunction
 
    private function time takes nothing returns nothing
        t=GetExpiredTimer()
        GroupEnumUnitsInRect(g,LoadRectHandle(t,"r"),function filter)
        ForGroup(g,function forik)
    endfunction
    
    function AttackEachOther takes player p, rect r returns nothing
        t=CreateTimer()
        SavePlayerHandle(t,"p",p)
        SaveRectHandle(t,"r",r)
        TimerStart(t,0.01,true,function time)
    endfunction
    
endscope