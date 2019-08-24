#guard test

function write_memory takes integer h, integer addr returns nothing
    //BJDebugMsg(I2S(Memory[h/4 + addr]))
    //BJDebugMsg("str: "+ConvertNullTerminatedStringToString(Memory[h/4 + addr]))
    BJDebugMsg("hex: "+Int2Hex(Memory[h/4 + addr]))
    BJDebugMsg("rawcode: "+equipmentSystem_id2string(Memory[h/4 + addr]))
    BJDebugMsg("byte: "+I2S(GetByteFromInteger(Memory[h/4 + addr],1)))
    BJDebugMsg("\n")
endfunction
function get_memory takes integer h, integer addr returns integer
    return Memory[h/4+addr]
endfunction
function get_memory1 takes integer h, integer addr returns integer
    return Memory[(h+addr)/4]
endfunction
function edit_memory takes integer h, integer addr, integer val returns nothing
    Memory[h/4 + addr] = val
endfunction
function edit_memory1 takes integer h, integer addr, integer val returns nothing
    Memory[(h+addr)/4] = val
endfunction

function test_unit1 takes unit u1, unit u2 returns nothing
    BJDebugMsg(getUnitIdModel(GetUnitTypeId(u1)))
    setUnitTypeId(u1,'nepl')
    setUnitIdModel(GetUnitTypeId(u1),"units\\creeps\\CorruptedEnt\\CorruptedEnt.mdx")
    RemoveUnit(u1)
    u1=CreateUnit(GetOwningPlayer(u1),GetUnitTypeId(u1),GetUnitX(u1),GetUnitY(u1),GetUnitFacing(u1))
    BJDebugMsg(getUnitIdModel(GetUnitTypeId(u1)))
endfunction
function test_unit2 takes unit u returns nothing
    int h=ConvertHandle(u)
    int i, addr=0
    forAB(i,1,20,
    addr+=0x4
    BJDebugMsg(Int2Hex(addr))
    write_memory(h,addr))
endfunction

function SetObjectColor takes handle e, integer color returns nothing
    set Memory[Memory[ConvertHandle(e)/4 + 0x28/4]/4 + 0x148/4] = color
endfunction

function test_item takes item it returns nothing
    BJDebugMsg(I2S(GetItemTypeId(it)))
    set Memory[ConvertHandle(it)/4 + 12]='sorf'
    SetItemVisible(it,false)
    SetItemVisible(it,true)
    BJDebugMsg(I2S(GetItemTypeId(it)))
    //gitem1=createItem(GetItemTypeId(it),GetItemX(it),GetItemY(it))
    //RemoveItem(it)
    //BJDebugMsg(I2S(GetItemTypeId(gitem1)))
endfunction
function test_item2 takes item it returns nothing
    //BJDebugMsg(Id2String(GetItemTypeId(it)))
    int h = ConvertHandle(it)
    int i, addr=0x4*11
    loop
        exitwhen addr>0x4*30
        addr+=0x4
        BJDebugMsg(Int2Hex(addr))
        write_memory(h,addr)
    endloop

    edit_memory(h,0x30,0)
    SetItemVisible(it,false)
    SetItemVisible(it,true)
    createItem(GetItemTypeId(it),GetItemX(it),GetItemY(it))
endfunction