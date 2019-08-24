#guard activeskills

include "cjass\triggers.j"

scope ActiveSkills initializer init

    define
    {
        private add(s,p)=
        {
            addIndex
            #if p==o
                saveIndexValue(keyInt,"on",OrderId(`s`+"on"))
                saveIndexValue(keyInt,"off",OrderId(`s`+"off"))
            #elseif p==a
                saveIndexValue(keyInt,"on",OrderId(`s`))
                saveIndexValue(keyInt,"off",OrderId(`s`+"off"))
            #elseif p==u
                saveIndexValue(keyInt,"on",OrderId(`s`))
                saveIndexValue(keyInt,"off",OrderId("un"+`s`))
            #else
                saveIndexValue(keyInt,"on",OrderId(`s`))
                saveIndexValue(keyInt,"off",OrderId(`p`))
            #endif
            // BJDebugMsg(I2S(getIndex))
            // BJDebugMsg(OrderId2String(getIndexValue(keyInt,"on")))
            // BJDebugMsg(OrderId2String(getIndexValue(keyInt,"off")))

        }
    }

    private function oi takes nothing returns nothing
        add(militia,a)
        add(townbell,o)
        add(magicdefense,magicundefense)
        add(defend,u)
        add(divineshield,u)
        //add(avatar,a)
        add(corporealform,u)
        add(etherealform,u)
        add(burrow,u)
        add(stoneform,u)
        //add(sphinxform,u)
        add(manaflare,o)
        add(ravenform,u)
        add(bearform,u)
        add(root,u)
        add(immolation,u)
        add(manashield,o)
        add(submerge,u)
        //add(thornyshield,u)
        add(robogoblin,u)
    endfunction

    function isOrderActiveSkillOn takes integer o returns boolean
        int j=0
        getIDValue(keyInt,j,"on",o)
        return j>0
    endfunction

    function isOrderActiveSkillOff takes integer o returns boolean
        int j=0
        getIDValue(keyInt,j,"off",o)
        return j>0
    endfunction

    define
    {
        //boolean isAbilityOrderActivated
        isAbilityOrderActivated(u,o)=LoadBoolean(u,"abilOrder"+I2S(o)+"isactivated")
    }
    
    private function unitIssuedOrder takes nothing returns nothing
        if isOrderActiveSkillOn(GetIssuedOrderId()) then
            //BJDebugMsg("активация "+OrderId2String(GetIssuedOrderId()))
            SaveBoolean(triggerUnit,"abilOrder"+I2S(GetIssuedOrderId())+"isactivated",true)
        elseif isOrderActiveSkillOff(GetIssuedOrderId()) then
            //BJDebugMsg("дезактивация "+OrderId2String(GetIssuedOrderId()))
            RemoveSavedBoolean(triggerUnit,"abilOrder"+I2S(GetIssuedOrderId())+"isactivated")
        endif
    endfunction

    // private function singleTimer takes nothing returns nothing
    //     oi()
    // endfunction
    
    private function init takes nothing returns nothing
        oi()
        //triggerAddAction(singleTimer)
        triggerAddAction(unitIssuedOrder)
    endfunction
endscope