#guard custom_defines

include "cjass\hash_defines.j"

library customDefines

    define
    {
        //constant real max_real_value = 1095267328
        max_real_value = 1095267328

        //string exploded_str
        exploded_str = "exploded"
        //boolean isUnitExploded
        isUnitExploded(u)=LoadBoolean(u,exploded_str)

        //string ability_blocked_str
        ability_blocked_str = "ability_blocked"
        //boolean isAbilityBlocked
        isAbilityBlocked(p,ab)=LoadBoolean(p,ability_blocked_str+I2S(ab))

        //real getParabola
        getParabola(z,d,r)=(4 * z / d) * (d - r) * (r / d)

        //real getSpeededMove
        getSpeededMove(v,t,a)=v*t + a*Pow(t,2)/2

        //real getRectRandomX
        getRectRandomX(r)=GetRandomReal(GetRectMinX(r),GetRectMaxX(r))

        //real getRectRandomY
        getRectRandomY(r)=GetRandomReal(GetRectMinY(r),GetRectMaxY(r))

        //real getAngleCoords
        getAngleCoords(x1,y1,x2,y2)=bj_RADTODEG * Atan2(y2 - y1, x2 - x1)

        //real getAngleUnits
        getAngleUnits(u1,u2)=getAngleCoords(GetUnitX(u1),GetUnitY(u1),GetUnitX(u2),GetUnitY(u2))

        //real getDistanceCoords
        getDistanceCoords(x1,y1,x2,y2)=SquareRoot(Pow(x2-x1,2)+Pow(y2-y1,2))

        //real getDistanceUnits
        getDistanceUnits(u1,u2)=getDistanceCoords(GetUnitX(u1),GetUnitY(u1),GetUnitX(u2),GetUnitY(u2))

        //real getOffsetX
        getOffsetX(x,o,a)=x+o*SinBJ(a)

        //real getOffsetY
        getOffsetY(y,o,a)=y+o*CosBJ(a)

        //player getPlayer
        getPlayer(i)=Player(i)

        // function clearTextMessagesForPlayer
        clearTextMessagesForPlayer(p)=
        {
            if GetLocalPlayer()==p then
                ClearTextMessages()
            endif
        }

        //constant integer fly_ability = 'Arav'
        fly_ability = 'Arav'
        //function getFlyAbility
        getFlyAbility(u)=
        {
            UnitAddAbility(u,fly_ability)
            UnitRemoveAbility(u,fly_ability)
        }

        //boolean unitHasAbility
        unitHasAbility(u,ab) = (GetUnitAbilityLevel(u,ab)>0)

        //boolean isUnitAlive
        isUnitAlive(u)=(GetWidgetLife(u)>=0.405)

        //function forAB
        forAB(i,j,a,b,c,body)=
        {
            i=a
            j=b
            loop
                body
                #if (c==+)
                    exitwhen ++i>j
                #elseif (c==-)
                    exitwhen --i<j
                #endif
            endloop
        }
        forAB(i,a,b,c,body)=
        {
            i=a
            loop
                body
                #if (c==+)
                    exitwhen ++i>b
                #elseif (c==-)
                    exitwhen --i<b
                #endif
            endloop
        }
        forAB(i,a,b,body)=forAB(i,a,b,+,body)

        //string size_str
        size_str = "size"
        //string size_converted_str
        size_converted_str = "sizeConverted"
        //real getTextTagSize
        getTextTagSize(tt,b)=getText##TagSize(tt,b)
        getTextTagSize(tt)=getTextTagSize(tt,true)

        //unit triggerUnit
        triggerUnit=GetTriggerUnit()

        //unit filterUnit
        filterUnit=GetFilterUnit()

        //unit enumUnit
        enumUnit=GetEnumUnit() 

        //boolean memHackEnabled
        memHackEnabled = 0

        isMapContainsCoords(x,y)=GetRectMinX(GetPlayableMapRect())<=x && GetRectMaxX(GetPlayableMapRect())>=x && GetRectMinY(GetPlayableMapRect())<=y && GetRectMaxY(GetPlayableMapRect())>=y
        
        //integer sightAbilityId
        sightAbilityId = 'AIsi'
        //function addUnitSight
        addUnitSight(u,i,b)=
        {
            addInteger(u,"sight",i)
            forAB(gint,1,i,
            UnitAddAbility(u,sightAbilityId)
            SetUnitAbilityLevel(u,sightAbilityId,B2I(true,b))
            UnitRemoveAbility(u,sightAbilityId))
        }
    }

    real getTextTagSize(texttag tt, boolean isConverted)
    {
        if isConverted then
            return LoadReal(tt,size_converted_str)
        else
            return LoadReal(tt,size_str)
        endif
    }

    define 
    {
        B2I(a,b)=B##2I(a,b)
        B2I(b)=B##2I(false,b)
    }
    int B2I(bool isab, bool b)
    {
        if b then
            if isab then
                return 2
            else
                return 1
            endif
        elseif isab then
            return 3
        else
            return -1
        endif
    }

    function B2S takes boolean b returns string
        if b then
            return "TRUE"
        else
            return "FALSE"
        endif
    endfunction

    define
    {
        getStringPos(subs,s,from)=get##StringPos(subs,s,from)
        getStringPos(subs,s)=getStringPos(subs,s,0)
    } 
    //function getStringPos
    integer getStringPos(string s, string subs, integer from)
    {
        local integer i=from
        local integer j=0
        loop
            exitwhen i>StringLength(s)
            set j=i
            loop
                exitwhen j>StringLength(s)
                if SubString(s,i,j)==subs then
                    return i
                endif
                set j=j+1
            endloop
            set i=i+1
        endloop
        return -1
    }

    function getStringWithoutCode takes string s returns string
        if SubString(s,0,2)=="|c" then
            s=SubString(s,10,StringLength(s))
        endif
        if SubString(s,StringLength(s)-2,StringLength(s))=="|r" then
            s=SubString(s,0,StringLength(s)-2)
        endif
        return s
    endfunction

    //constant string author_name
    define author_name = "WriteCoin"
    function isPlayerAuthor takes player p returns boolean
        return (GetPlayerName(p)==author_name)or(getStringWithoutCode(GetPlayerName(p))==author_name)
    endfunction

    scope CommonFunctions

        private item indexItem

        function getInventoryIndexOfItemCode takes unit u, integer id returns integer
            local integer index
            forAB(index,0,bj_MAX_INVENTORY-1,+,
            indexItem=UnitItemInSlot(u,index)
            if (indexItem!=null)and(GetItemTypeId(indexItem)==id) then
                return index
            endif)
            return 0
        endfunction

        function getInventoryIndexOfItemCodeExItem takes unit u, integer id, item it returns integer
            local integer index = 0
            forAB(index,0,bj_MAX_INVENTORY-1,+,
            indexItem=UnitItemInSlot(u,index)
            if (indexItem!=null)and(GetItemTypeId(indexItem)==id)and(indexItem!=it) then
                return index
            endif)
            return 0
        endfunction

        function getInventoryCountOfItemCode takes unit u, integer id returns integer
            local integer i = 0
            local integer c = 0
            forAB(i,0,bj_MAX_INVENTORY-1,+,
            indexItem=UnitItemInSlot(u,i)
            if (indexItem!=null)and(GetItemTypeId(indexItem)==id) then
                c++
            endif)
            return c
        endfunction

        function getInventoryCountOfItemCodeExItem takes unit u, integer id, item it returns integer
            local integer i = 0
            local integer c = 0
            forAB(i,0,bj_MAX_INVENTORY-1,+,
            indexItem=UnitItemInSlot(u,i)
            if (indexItem!=null)and(GetItemTypeId(indexItem)==id)and(indexItem!=it) then
                c++
            endif)
            return c
        endfunction


        boolean isMinLeakInt=false
        boolean isMaxLeakInt=true
        define
        {
            //function getLeakedInt
            getLeakedInt(r,min,minv,max,maxv) = getLeaked##Int(r,min,minv,max,maxv)
            getLeakedInt(r,min,max) = getLeaked##Int(r,min,min,max,max)
        }
        int getLeakedInt(real r, real min, real minv, real max, real maxv)
        {
            isMinLeakInt=false
            isMaxLeakInt=false
            if r<min then
                isMinLeakInt=true
                return R2I(minv)
            elseif r>max then
                isMaxLeakInt=true
                return R2I(maxv)
            endif
            return R2I(r)
        }

        boolean isMinLeakReal=false
        boolean isMaxLeakReal=false
        define
        {
            //function getLeakedReal
            getLeakedReal(r,min,minv,max,maxv)=getLeaked##Real(r,min,minv,max,maxv)
            getLeakedReal(r,min,max)=getLeakedReal(r,min,min,max,max)
        }
        real getLeakedReal(real r, real min, real minv, real max, real maxv)
        {
            isMinLeakReal=false
            isMaxLeakReal=false
            if r<min then
                isMinLeakReal=true
                return minv
            elseif r>max then
                isMaxLeakReal=true
                return maxv
            endif
            return r
        }

        define
        {
            //real getLeakedPercent
            getLeakedPercent(p) = getLeakedReal(p,0,100)

            //integer getLeakedColor
            getLeakedColor(c) = getLeakedInt(c,0,255)

            //real getLeakedFace
            getLeakedFace(f) = getLeakedReal(f,0,f+360,360,f-360)

            //integer getLeakedStringLength
            getLeakedStringLength(l,s)=getLeakedInt(l,0,StringLength(s))
        }

        function createNUnits takes integer count,player p,integer id,real x,real y,real face returns group
            local integer i=1
            forAB(i,1,count,+,
            bj_lastCreatedUnit=CreateUnit(p,id,x,y,face)
            GroupAddUnit(bj_lastCreatedGroup,bj_lastCreatedUnit)
            )
            return bj_lastCreatedGroup
        endfunction

    endscope

    define
    {

        //function getUnitsInRect
        getUnitsInRect(r,f)=getUnits##InRect(r,f)
        getUnitsInRect(r)=getUnitsInRect(r,null)

        //function getUnitsInMap
        getUnitsInMap(f)=getUnitsInRect(GetPlayableMapRect(),f)
        getUnitsInMap=getUnitsInMap(null)

        //function forUnitsInRect
        forUnitsInRect(r,f,c)=ForGroup(getUnitsInRect(r,f),function c)
        forUnitsInRect(r,c)=forUnitsInRect(r,null,c)

        //function forUnitsInMap
        forUnitsInMap(f,c)=ForGroup(getUnitsInMap(f),function c)
        forUnitsInMap(c)=forUnitsInMap(null,c)
    }
    group getUnitsInRect(rect r, boolexpr filter)
    {
        GroupEnumUnitsInRect(ggroup1,r,filter)
        DestroyBoolExpr(filter)
        return ggroup1
    }

    define
    {
        //string getCopyString
        getCopyString(s,poz,n) = SubString(s,IMinBJ(getLeakedStringLength(poz,s),getLeakedStringLength(poz+n,s)),IMaxBJ(getLeakedStringLength(poz,s),getLeakedStringLength(poz+n,s)))

        //string deleteFromString
        deleteFromString(s,poz,n) = getCopyString(s,0,poz) + getCopyString(s,poz+n,StringLength(s))
        deleteFromString(s,s1) = delete##FromString(s,s1)

        //string insertString
        insertString(s,poz,subs) = getCopyString(s,0,poz) + subs + getCopyString(s,poz,StringLength(s))
    }

    string deleteFromString(string s, string s1)
    {
        int poz=getStringPos(s,s1)
        if poz!=-1 then
            return deleteFromString(s,poz,StringLength(s1))
        endif
        return s
    }

    function replaceString takes string s, string s1, string s2 returns string
        int poz=getStringPos(s,s1)
        if poz!=-1 then
            return insertString(deleteFromString(s,s1),poz,s2)
        endif
        return s
    endfunction

    define
    {
        //real colorToPercent
        colorToPercent(r)=PercentToInt(r,100/2.55)

        //function saveColors
        saveColors(w,p,r,g,b,a)=
        {
            #if (p==true)
                SaveReal(w,"red",PercentTo255(getLeakedPercent(r)))
                SaveReal(w,"green",PercentTo255(getLeakedPercent(g)))
                SaveReal(w,"blue",PercentTo255(getLeakedPercent(b)))
                SaveReal(w,"alpha",PercentTo255(100.0-getLeakedPercent(a)))
                SaveReal(w,"red%",getLeakedPercent(r))
                SaveReal(w,"green%",getLeakedPercent(g))
                SaveReal(w,"blue%",getLeakedPercent(b))
                SaveReal(w,"transparency",getLeakedPercent(a))
            #elseif (p==false)
                SaveReal(w,"red",getLeakedColor(r))
                SaveReal(w,"green",getLeakedColor(g))
                SaveReal(w,"blue",getLeakedColor(b))
                SaveReal(w,"alpha",getLeakedColor(a))
                SaveReal(w,"red%",colorToPercent(getLeakedColor(r)))
                SaveReal(w,"green%",colorToPercent(getLeakedColor(g)))
                SaveReal(w,"blue%",colorToPercent(getLeakedColor(b)))
                SaveReal(w,"transparency",colorToPercent(getLeakedColor(a))-100)
            #endif
        }
        saveColors(p,r,g,b,a)=saveColors(StringHash(SCOPE_PREFIX),p,r,g,b,a)

        //getHandleRedColor
        getHandleRedColor(h)=LoadReal(h,"red")
        getHandleRedColorPercent(h)=LoadReal(h,"red%")
        //getHandleGreenColor
        getHandleGreenColor(h)=LoadReal(h,"green")
        getHandleGreenColorPercent(h)=LoadReal(h,"green%")
        //getHandleBlueColor
        getHandleBlueColor(h)=LoadReal(h,"blue")
        getHandleBlueColorPercent(h)=LoadReal(h,"blue%")
        //getHandleAlpha
        getHandleAlpha(h)=LoadReal(h,"alpha")
        //getHandleTransparency
        getHandleTransparency(h)=LoadReal(h,"transparency")

        //real height2TextTagSize
        height2TextTagSize(h)=TextTagSize2Height(10*h/0.023)

        //function createTextTagXY
        createTextTagXY(s,x,y,z,sb,size,cb,r,g,b,t)=createText##TagXY(s,x,y,z,sb,size,cb,r,g,b,t)
        createTextTagXY(s,x,y,z,size,r,g,b,t)=createTextTagXY(s,x,y,z,true,size,false,r,g,b,t)
        createTextTagXY(s,x,y,z,size,r,g,b)=createTextTagXY(s,x,y,z,size,r,g,b,255)
        createTextTagXY(s,x,y,z,size,t)=createTextTagXY(s,x,y,z,size,255,255,255)
        createTextTagXY(s,x,y,z,size)=createTextTagXY(s,x,y,z,size,255)
        createTextTagXY(s,x,y,z)=createTextTagXY(s,x,y,z,10)
        createTextTagXY(s,x,y)=createTextTagXY(s,x,y,0)
    }

    texttag createTextTagXY(string s, real x, real y, real zOffset, boolean size2height, real size, boolean percent, real red, real green, real blue, real transparency)
    {
        bj_lastCreatedTextTag=CreateTextTag()
        SetTextTagText(bj_lastCreatedTextTag,s,size,size2height)
        SetTextTagPos(bj_lastCreatedTextTag,x,y,zOffset)
        SetTextTagColor(bj_lastCreatedTextTag,percent,red,green,blue,transparency)
        return bj_lastCreatedTextTag
    }

    //effects
    define
    {
        //function saveNewEffect
        saveNewEffect(h,s,es,x,y)=SaveEffectHandle(h,s,AddSpecialEffect(es,x,y))
        saveNewEffect(s,es,x,y)=saveNewEffect(hash,s,es,x,y)

        //function saveNewEffectTarget
        saveNewEffectTarget(h,s,es,a)=SaveEffectHandle(h,s,AddSpecialEffectTarget(es,h,a))

        //function destroyLoadEffect
        destroyLoadEffect(h,s)=
        {
            DestroyEffect(LoadEffectHandle(h,s))
            RemoveSavedHandle(h,s)
        }
        destroyLoadEffect(s)=destroyLoadEffect(hash,s)
    }

endlibrary