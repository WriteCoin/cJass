#guard heroes

include "cjass\RPGSS\common.j"

define
{
    //integer heroDefPerAgi
    heroDefPerAgi
    //integer heroAttPerAgi
    heroAttPerAgi
    //integer heroHPAdd
    heroHPAdd

    //player monPlayer
    monPlayer

    private add(rawCode,animTime,vit,specialClass,lifePerVit,manaPerEnr,lifePerLevel,manaPerLevel,classOnly,item1,item2,item3,item4,item5)=a##dd(rawCode,animTime,vit,specialClass,lifePerVit,manaPerEnr,lifePerLevel,manaPerLevel,classOnly,item1,item2,item3,item4,item5)
    private add(rawcode,animTime,vit,specialClass,lifePerVit,manaPerEnr,lifePerLevel,manaPerLevel,classOnly,item1,item2,item3,item4)=add(rawcode,animTime,vit,specialClass,lifePerVit,manaPerEnr,lifePerLevel,manaPerLevel,classOnly,item1,item2,item3,item4,0)
    private add(rawcode,animTime,vit,specialClass,lifePerVit,manaPerEnr,lifePerLevel,manaPerLevel,classOnly,item1,item2,item3)=add(rawcode,animTime,vit,specialClass,lifePerVit,manaPerEnr,lifePerLevel,manaPerLevel,classOnly,item1,item2,item3,0)
    private add(rawcode,animTime,vit,specialClass,lifePerVit,manaPerEnr,lifePerLevel,manaPerLevel,classOnly,item1,item2)=add(rawcode,animTime,vit,specialClass,lifePerVit,manaPerEnr,lifePerLevel,manaPerLevel,classOnly,item1,item2,0)
    private add(rawcode,animTime,vit,specialClass,lifePerVit,manaPerEnr,lifePerLevel,manaPerLevel,classOnly,item1)=add(rawcode,animTime,vit,specialClass,lifePerVit,manaPerEnr,lifePerLevel,manaPerLevel,classOnly,item1,0)
    private add(rawcode,animTime,vit,specialClass,lifePerVit,manaPerEnr,lifePerLevel,manaPerLevel,classOnly)=add(rawcode,animTime,vit,specialClass,lifePerVit,manaPerEnr,lifePerLevel,manaPerLevel,classOnly,0)
    private add(rawcode,animTime,vit,specialClass,lifePerVit,manaPerEnr,lifePerLevel,manaPerLevel)=add(rawcode,animTime,vit,specialClass,lifePerVit,manaPerEnr,lifePerLevel,manaPerLevel,null)
    private add(rawcode,animTime,vit,specialClass,lifePerVit,manaPerEnr,lifePerLevel)=add(rawcode,animTime,vit,specialClass,lifePerVit,manaPerEnr,lifePerLevel,0)
    private add(rawcode,animTime,vit,specialClass,lifePerVit,manaPerEnr)=add(rawcode,animTime,vit,specialClass,lifePerVit,manaPerEnr,0)
    private add(rawcode,animTime,vit,specialClass,lifePerVit)=add(rawcode,animTime,vit,specialClass,lifePerVit,0)
    private add(rawcode,animTime,vit,specialClass)=add(rawcode,animTime,vit,specialClass,0)
    private add(rawcode,animTime,vit)=add(rawcode,animTime,vit,false)
    private add(rawcode,animTime)=add(rawcode,animTime,0)
    private add(rawcode)=add(rawcode,0)
}

public constant group heroes = CreateGroup()
public constant force heroesPlayers = CreateForce()

define
{
    //string rawCodeStr
    private rawCodeStr = "rawCode"
    //string animTimeStr
    private animTimeStr = "animTime"
    //string vitStr
    private vitStr = "vit"
    //string specialClassStr
    private specialClassStr = "specialClass"
    //string lifePerVitStr
    private lifePerVitStr = "lifePerVit"
    //string manaPerEnrStr
    private manaPerEnrStr = "manaPerEnr"
    //string lifePerLevelStr
    private lifePerLevelStr = "lifePerLevel"
    //string manaPerLevelStr
    private manaPerLevelStr = "manaPerLevel"
    //string classOnlyStr
    private classOnlyStr = "classOnly"
    //string item1Str
    private item1Str = "item1"
    //string item2Str
    private item2Str = "item2"
    //string item3Str
    private item3Str = "item3"
    //string item4Str
    private item4Str = "item4"
    //string item5Str
    private item5Str = "item5"
}
private void add(integer rawCode, real animTime, real vit, boolean specialClass, real lifePerVit, real manaPerEnr, real lifePerLevel, real manaPerLevel, string classOnly, integer item1, integer item2, integer item3, integer item4, integer item5)
{
    addIndex
    saveIndexValue(keyInt,rawCode)
    saveIndexValue(keyReal,animTime)
    saveIndexValue(keyReal,vit)
    saveIndexValue(keyBool,specialClass)
    saveIndexValue(keyReal,lifePerVit)
    saveIndexValue(keyReal,manaPerEnr)
    saveIndexValue(keyReal,lifePerLevel)
    saveIndexValue(keyReal,manaPerLevel)
    saveIndexValue(keyString,classOnly)
    saveIndexValue(keyInt,item1)
    saveIndexValue(keyInt,item2)
    saveIndexValue(keyInt,item3)
    saveIndexValue(keyInt,item4)
    saveIndexValue(keyInt,item5)
}

private function units takes nothing returns nothing
    int k=0
    int i=1
    forAB(i,armorTypesCount,
    if getUnitArmorType(enumUnit)==i then
        setUnitArmorType(enumUnit,i)
    endif
    SaveReal(enumUnit,rpgssPrefix+regenStr,getUnitHPRegen(enumUnit))
    SaveReal(enumUnit,rpgssPrefix+manaRegenStr,getUnitMPRegen(enumUnit))
    if IsUnitType(enumUnit,UNIT_TYPE_HERO) then
        SaveReal(enumUnit,rpgssPrefix+defStr,GetHeroAgi(enumUnit)/heroDefPerAgi)
        getIDValue(keyInt,k,rawCodeStr,GetUnitTypeId(enumUnit))
        setUnitMaxHP(enumUnit,loadValue(keyReal,scope_prefix+rawCodeStr+I2S(k)))
        setUnitMaxMP(enumUnit,GetHeroInt(enumUnit))
        setUnitHP(enumUnit,GetWidgetLife(enumUnit))
        setUnitMP(enumUnit,getUnitMP(enumUnit))
        if GetOwningPlayer(enumUnit)!=monPlayer then
            GroupAddUnit(heroes,enumUnit)
            ForceAddPlayer(heroesPlayers,GetOwningPlayer(enumUnit))
        endif
    endif
    )
endfunction

private function heroLevel takes nothing returns nothing
    
endfunction

private function init takes nothing returns nothing
    ExecuteFunc(scope_private+"data")
    forUnitsInMap(units)
    triggerAddAction(heroLevel)
endfunction