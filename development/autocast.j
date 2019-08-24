#guard autocast

include "cjass\triggers.j"

scope Autocast initializer init

    define
    {
        private a(s,p)=
        {
            addIndex
            #if (p==o)
                saveIndexValue(keyInt,"on",OrderId(`s`+"on"))
                saveIndexValue(keyInt,"off",OrderId(`s`+"off"))
            #elseif (p==u)
                saveIndexValue(keyInt,"on",OrderId(`s`))
                saveIndexValue(keyInt,"off",OrderId("un"+`s`))
            #endif
            //BJDebugMsg(I2S(getIndex))
            //BJDebugMsg(OrderId2String(getIndexValue(keyInt,"on")))
            //BJDebugMsg(OrderId2String(getIndexValue(keyInt,"off")))
        }
    }

    private function oi takes nothing returns nothing
        a(innerfire,o)
        a(slow,o)
        a(heal,o)
        a(spellsteal,o)
        a(repair,o)
        a(bloodlust,o)
        //a(unstableconcoction,o)
        a(replenishlife,o)
        a(replenishmana,o)
        a(restoration,o)
        a(raisedead,o)
        a(web,o)
        a(curse,o)
        //a(flamingattack,o)
        a(replenish,o)
        a(frostarmor,o)
        a(carrionscarabs,o)
        a(phaseshift,o)
        a(faeriefire,o)
        a(vengeance,o)
        a(renew,o)
        a(autodispel,o)
        a(flamingarrows,u)
        a(selfdestruct,o)
        a(coldarrows,u)
        a(parasite,o)
        a(blackarrow,o)
        a(frenzy,o)
        //a(incitearrow,o)
        a(poisonarrows,u)
    endfunction

    function isOrderAutocastOn takes integer o returns boolean
        int j=0
        getIDValue(keyInt,j,"on",o)
        //BJDebugMsg("index on "+I2S(j))
        //BJDebugMsg("finded order on "+OrderId2String(loadValue(keyInt,scope_prefix+"on"+I2S(j))))
        return j>0
    endfunction

    function isOrderAutocastOff takes integer o returns boolean
        int j=0
        getIDValue(keyInt,j,"off",o)
        //BJDebugMsg("index off "+I2S(j))
        //BJDebugMsg("finded order off "+OrderId2String(loadValue(keyInt,scope_prefix+"off"+I2S(j))))
        return j>0
    endfunction

    define
    {
        //boolean hasUnitAutocast
        hasUnitAutocast(u)=LoadBoolean(u,"isAutocast")
    }

    private function unitIssuedOrder takes nothing returns nothing
        if isOrderAutocastOn(GetIssuedOrderId()) then
            //BJDebugMsg("автокаст")
            SaveBoolean(triggerUnit,"isAutocast",true)
        endif
        if isOrderAutocastOff(GetIssuedOrderId()) then
            //BJDebugMsg("автокаст откл.")
            RemoveSavedBoolean(triggerUnit,"isAutocast")
        endif
    endfunction
    
    private function init takes nothing returns nothing
        oi()
        triggerAddAction(unitIssuedOrder)
    endfunction
endscope