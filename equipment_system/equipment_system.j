//###########################################################################
//
//  Equipment system v 1.0
//  by Warden | 5.08.2007
//  Warden_xgm@mail.ru | WWW.XGM.RU
//
//###########################################################################
#guard equipment_system

include "cjass\hash_defines.j"
include "cjass\hook_defines.j"
include "cjass\triggers.j"

library equipmentSystem initializer init uses triggers

  integer dummy_eq = 'e000'

  //###########################################################################
  private function get_item_list_eq takes integer id returns string
    return LoadStr(scope_prefix+"l"+I2S(id))
  endfunction

  private function get_item_abc_eq takes integer id returns integer
    return LoadInteger(scope_prefix+"c"+I2S(id))
  endfunction

  function reg_item_eq takes integer id, string ablist, integer c returns nothing
    SaveInteger(scope_prefix+"c"+I2S(id),c)
    SaveStr(scope_prefix+"l"+I2S(id),ablist)
  endfunction

  public function get_abc takes nothing returns string
    return "abcdefghijklmnopqrstuvwxyz"
  endfunction

  public function get_ABC takes nothing returns string
    return "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  endfunction

  public function get_digits takes nothing returns string
    return "0123456789"
  endfunction

  //###########################################################################
  public function chr takes integer i returns string
    if i>=65 and i<=90 then
      return SubString("ABCDEFGHIJKLMNOPQRSTUVWXYZ",i-65,i-64)
    elseif i>=97 and i<=122 then
      return SubString("abcdefghijklmnopqrstuvwxyz",i-97,i-96)
    elseif i>=48 and i<=57 then
      return SubString("0123456789",i-48,i-47)
    endif
    return ""
  endfunction

  public function CPos takes string StrData, string ToFind, integer From returns integer
    local integer FromPos=From
    loop 
      exitwhen SubString(StrData,FromPos,FromPos+1)==ToFind or SubString(StrData,FromPos,FromPos+1)==""
      set FromPos=FromPos + 1
    endloop
    if SubString(StrData,FromPos,FromPos+1)==ToFind then
      return FromPos
    endif
    return -1
  endfunction

  public function int2s takes string Str returns integer
    local integer Pos=CPos("ABCDEFGHIJKLMNOPQRSTUVWXYZ",Str,0)+65
    if Pos==64 then
      set Pos=CPos("0123456789",Str,0)+48
    endif
    if Pos==47 then
      set Pos=CPos("abcdefghijklmnopqrstuvwxyz",Str,0)+97
    endif
    if Str=="" then
      return 0
    else
      return Pos
    endif
  endfunction

  public function id2string takes integer itemid returns string
    return chr(itemid/256/256/256)+chr(ModuloInteger(itemid/256/256,256))+chr(ModuloInteger(itemid/256, 256))+chr(ModuloInteger(itemid,256))
  endfunction

  public function string2id takes string str returns integer
    return int2s(SubString(str,0,1))*256*256*256+int2s(SubString(str,1,2))*256*256+int2s(SubString(str,2,3))*256+int2s(SubString(str,3,4))
  endfunction

  //###########################################################################
  public function get_string_str takes string str, string divisor, integer n returns string
    local integer i=0
    local integer num=0
    local string res=""
    loop
      exitwhen i>=StringLength(str)
      if SubString(str,i,i+1)==divisor then
        if num==n then
          return res
        else
          set res=""
          set i=i+1
        endif
        set num=num+1
      else
        set res=res+SubString(str,i,i+1)
        set i=i+1
      endif
    endloop
    return res
  endfunction

  //###########################################################################
  private function convert_item takes nothing returns nothing
    call RemoveItem(GetManipulatedItem())
  endfunction

  private trigger t
  private unit u
  private item itx

  function equip_item takes unit hero, item it returns nothing
    local integer i=0
    local integer abc=get_item_abc_eq(GetItemTypeId(it))
    if abc==0 then
      return
    endif
    loop
      set itx=UnitItemInSlot(hero,i)
      exitwhen i>5 or itx==null
      set i=i+1
    endloop
    if i>=5 then
      set itx=UnitRemoveItemFromSlotSwapped(5,hero)
    else
      set itx=null
    endif
    set t=CreateTrigger()
    set u=CreateUnit(GetOwningPlayer(hero),dummy_eq,GetUnitX(hero),GetUnitY(hero))
    if not unitHasAbility(u,'AInv') then
      call UnitAddAbility(u,'AInv')
    endif
    call TriggerRegisterUnitEvent(t,u,EVENT_UNIT_DROP_ITEM)
    call TriggerAddAction(t,function convert_item)
    call UnitAddItem(u,it)
    call UnitAddItem(hero,it)
    call DestroyTrigger(t)
    call RemoveUnit(u)
    if itx!=null then
      call UnitAddItem(hero,itx)
    endif
  endfunction

  private item it

  function equip_items_id takes unit hero, integer id, integer c returns nothing
    local integer i=0
    local integer abc=get_item_abc_eq(id)
    if abc==0 then
      return
    endif
    loop
      set itx=UnitItemInSlot(hero,i)
      exitwhen i==5 or itx==null
      set i=i+1
    endloop
    if i>=5 then
      set itx=UnitRemoveItemFromSlotSwapped(5,hero)
    else
      set itx=null
    endif
    set i=1
    set t=CreateTrigger()
    set u=CreateUnit(GetOwningPlayer(hero),dummy_eq,GetUnitX(hero),GetUnitY(hero))
    if not unitHasAbility(u,'AInv') then
      call UnitAddAbility(u,'AInv')
    endif
    call TriggerRegisterUnitEvent(t,u,EVENT_UNIT_DROP_ITEM)
    call TriggerAddAction(t,function convert_item)
    loop
      exitwhen i>c
      set it=createItem(id)
      call UnitAddItem(u,it)
      call UnitAddItem(hero,it)
      set it=null
      set i=i+1
    endloop
    if itx!=null then
      call UnitAddItem(hero,itx)
    endif
    call DestroyTrigger(t)
    call RemoveUnit(u)
  endfunction

  function unequip_item_id takes unit hero, integer id, integer c returns nothing
    local integer i=1
    local integer i2=0
    local string ablist=get_item_list_eq(id)
    local integer abc=get_item_abc_eq(id)
    local integer ab
    loop
    exitwhen i>c
      set i2=0
      loop
        exitwhen i2>abc-1
        set ab=string2id(get_string_str(ablist,",",i2))
        call UnitRemoveAbility(hero,ab)
        set i2=i2+1
      endloop
      set i=i+1
    endloop
    set ablist=null
  endfunction

  //###########################################################################
  private function init takes nothing returns nothing
    call reg_item_eq('ratf',"AItf",1) // Claws of Attack +15
  endfunction
endlibrary