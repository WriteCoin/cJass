#guard acii

library ASC2 //initializer Init

globals
    private integer array Ints
	private string array Chars

endglobals

function Char2Ascii takes string s returns integer
	local integer i= Ints[StringHash(s) / 0x1F0748 + 0x3EA]
	if i == 47 and s == "\\" then
		set i=92
	elseif i >= 65 and i <= 90 and s != Chars[i] then
		set i=i + 32
	endif
	return i
endfunction

function Char2Hex takes string s returns integer
	local integer i= Ints[StringHash(s) / 0x1F0748 + 0x3EA]
	if i >= 48 and i <= 57 then
		return i - 48
	elseif i >= 65 and i <= 70 then
		return i - 55
	endif
	return - 1
endfunction

function Ascii2Char takes integer i returns string
	return Chars[i]
endfunction

function Init__ASCII takes nothing returns nothing
	set Ints[931]=8
	set Ints[1075]=9
	set Ints[1586]=10
	set Ints[1340]=12
	set Ints[412]=13
	set Ints[198]=32
	set Ints[1979]=33
	set Ints[1313]=34
	set Ints[1003]=35
	set Ints[1264]=36
	set Ints[983]=37
	set Ints[1277]=38
	set Ints[306]=39
	set Ints[904]=40
	set Ints[934]=41
	set Ints[917]=42
	set Ints[1972]=43
	set Ints[1380]=44
	set Ints[1985]=45
	set Ints[869]=46
	set Ints[1906]=47
	set Ints[883]=48
	set Ints[1558]=49
	set Ints[684]=50
	set Ints[582]=51
	set Ints[668]=52
	set Ints[538]=53
	set Ints[672]=54
	set Ints[1173]=55
	set Ints[71]=56
	set Ints[277]=57
	set Ints[89]=58
	set Ints[1141]=59
	set Ints[39]=60
	set Ints[1171]=61
	set Ints[51]=62
	set Ints[305]=0 //fixme 63
	set Ints[0]=64
	set Ints[222]=65
	set Ints[178]=66
	set Ints[236]=67
	set Ints[184]=68
	set Ints[1295]=69
	set Ints[1390]=70
	set Ints[1276]=71
	set Ints[203]=72
	set Ints[1314]=73
	set Ints[209]=74
	set Ints[1315]=75
	set Ints[170]=76
	set Ints[1357]=77
	set Ints[1343]=78
	set Ints[1397]=79
	set Ints[1420]=80
	set Ints[1419]=81
	set Ints[1396]=82
	set Ints[1374]=83
	set Ints[1407]=84
	set Ints[499]=85
	set Ints[1465]=86
	set Ints[736]=87
	set Ints[289]=88
	set Ints[986]=89
	set Ints[38]=90
	set Ints[1230]=91
	set Ints[1636]=93
	set Ints[1416]=94
	set Ints[1917]=95
	set Ints[217]=96
	set Ints[833]=123
	set Ints[1219]=124
	set Ints[553]=125
	set Ints[58]=126
	
	set Chars[0]="?"
	set Chars[8]="\b"
	set Chars[9]="\t" 
	set Chars[10]="\n"
	set Chars[12]="\f"
	set Chars[13]="\r"
	set Chars[32]=" "
	set Chars[33]="!"
	set Chars[34]="\""
	set Chars[35]="#"
	set Chars[36]="$"
	set Chars[37]="%"
	set Chars[38]="&"
	set Chars[39]="'"//'
	set Chars[40]="("
	set Chars[41]=")"
	set Chars[42]="*"
	set Chars[43]="+"
	set Chars[44]=","
	set Chars[45]="-"
	set Chars[46]="."
	set Chars[47]="/"
	set Chars[48]="0"
	set Chars[49]="1"
	set Chars[50]="2"
	set Chars[51]="3"
	set Chars[52]="4"
	set Chars[53]="5"
	set Chars[54]="6"
	set Chars[55]="7"
	set Chars[56]="8"
	set Chars[57]="9"
	set Chars[58]=":"
	set Chars[59]=";"
	set Chars[60]="<"
	set Chars[61]="="
	set Chars[62]=">"
	set Chars[63]="?"
	set Chars[64]="@"
	set Chars[65]="A"
	set Chars[66]="B"
	set Chars[67]="C"
	set Chars[68]="D"
	set Chars[69]="E"
	set Chars[70]="F"
	set Chars[71]="G"
	set Chars[72]="H"
	set Chars[73]="I"
	set Chars[74]="J"
	set Chars[75]="K"
	set Chars[76]="L"
	set Chars[77]="M"
	set Chars[78]="N"
	set Chars[79]="O"
	set Chars[80]="P"
	set Chars[81]="Q"
	set Chars[82]="R"
	set Chars[83]="S"
	set Chars[84]="T"
	set Chars[85]="U"
	set Chars[86]="V"
	set Chars[87]="W"
	set Chars[88]="X"
	set Chars[89]="Y"
	set Chars[90]="Z"
	set Chars[91]="["
	set Chars[92]="\\"
	set Chars[93]="]"
	set Chars[94]="^"
	set Chars[95]="_"
	set Chars[96]="`"
	set Chars[97]="a"
	set Chars[98]="b"
	set Chars[99]="c"
	set Chars[100]="d"
	set Chars[101]="e"
	set Chars[102]="f"
	set Chars[103]="g"
	set Chars[104]="h"
	set Chars[105]="i"
	set Chars[106]="j"
	set Chars[107]="k"
	set Chars[108]="l"
	set Chars[109]="m"
	set Chars[110]="n"
	set Chars[111]="o"
	set Chars[112]="p"
	set Chars[113]="q"
	set Chars[114]="r"
	set Chars[115]="s"
	set Chars[116]="t"
	set Chars[117]="u"
	set Chars[118]="v"
	set Chars[119]="w"
	set Chars[120]="x"
	set Chars[121]="y"
	set Chars[122]="z"
	set Chars[123]="{"
	set Chars[124]="|"
	set Chars[125]="}"
	set Chars[126]="~"
endfunction

endlibrary

