#guard string_id

library StringId uses HexNumber, ASC2

private function Int2Char takes integer i returns string
	local string s= Ascii2Char(i)
	if s == null then
		set s="\\x" + Int2Hex(i)
	endif
	return s
endfunction

function Id2String takes integer i returns string
	local string result= ""
	local integer char
	loop
		set char=i
		set i=i / 256
		set result=Int2Char(char - i * 256) + result
		exitwhen i == 0
	endloop
	return result
endfunction

function String2Id takes string s returns integer
	local integer result= 0
	local integer i= 0
	loop
		set result=result * 256 + Char2Ascii(SubString(s, i, i + 1))
		set i=i + 1
		exitwhen i == 4
	endloop
	return result
endfunction

endlibrary