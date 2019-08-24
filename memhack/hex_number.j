#guard hex_number

library HexNumber initializer Init
//library HexNumber:
    globals
        private string array Chars
    endglobals

    function BitwiseNot takes integer i returns integer
        return 0xFFFFFFFF - i
    endfunction

    function PowI takes integer x, integer power returns integer
        local integer res = 1
        local integer y = x
        if power == 0 then
            return 1
        endif
        set power = power - 1
        loop
            set x = x * y
            set power = power - 1
            exitwhen power == 0
        endloop
        return x
    endfunction

    function ShiftLeftForBits takes integer i, integer shiftval returns integer
        return i * ( PowI( 2, shiftval ) )
    endfunction

    function ShiftRightForBits takes integer i, integer shiftval returns integer
        return i / ( PowI( 2, shiftval ) )
    endfunction

    function ShiftLeftForBytes takes integer i, integer shiftval returns integer
        return ShiftLeftForBits( i, shiftval * 8 )
    endfunction

    function ShiftRightForBytes takes integer i, integer shiftval returns integer
        return ShiftRightForBits( i, shiftval * 8 )
    endfunction

    function GetByteFromInteger takes integer i, integer byteid returns integer
        local integer tmpval = i
        local integer retval = 0
        local integer byte1 = 0
        local integer byte2 = 0
        local integer byte3 = 0
        local integer byte4 = 0
        if ( tmpval < 0 ) then
            set tmpval = BitwiseNot( tmpval )
            set byte4 = 255 - ModuloInteger( tmpval, 256 )
            set tmpval = tmpval / 256
            set byte3 = 255 - ModuloInteger( tmpval, 256 )
            set tmpval = tmpval / 256
            set byte2 = 255 - ModuloInteger( tmpval, 256 )
            set tmpval = tmpval / 256
            set byte1 = 255 - tmpval
        else
            set byte4 = ModuloInteger( tmpval, 256 )
            set tmpval = tmpval / 256
            set byte3 = ModuloInteger( tmpval, 256 )
            set tmpval = tmpval / 256
            set byte2 = ModuloInteger( tmpval, 256 )
            set tmpval = tmpval / 256
            set byte1 = tmpval
        endif
	
        if byteid == 1 then
            return byte1
        elseif byteid == 2 then
            return byte2
        elseif byteid == 3 then
            return byte3
        elseif byteid == 4 then
            return byte4
        endif
	
        return retval
    endfunction

    function CreateInteger1 takes integer byte1, integer byte2, integer byte3, integer byte4 returns integer
        local integer retval = byte1
        set retval = ( retval * 256 ) + byte2
        set retval = ( retval * 256 ) + byte3
        set retval = ( retval * 256 ) + byte4
        return retval
    endfunction

    function CreateInteger2 takes integer byte1, integer byte2, integer byte3, integer byte4 returns integer
        local integer retval = byte1
        set retval = ShiftLeftForBytes( retval, 1 ) + byte2
        set retval = ShiftLeftForBytes( retval, 1 ) + byte3
        set retval = ShiftLeftForBytes( retval, 1 ) + byte4
        return retval
    endfunction

    function Hex2Int takes string s returns integer
        local integer result = 0
        local integer i = 0
        local integer char
        loop
            set char = Char2Hex( SubString( s, i, i + 1 ) )
            exitwhen i == 8 or char == -1
            set result = result * 16 + char
            set i = i + 1
        endloop
        return result
    endfunction

    function Int2Hex_FIX takes integer i returns string
        set i = BitwiseNot( i )
        return Chars[255 - ( i / 256 / 256 / 256 )] + Chars[255 - ModuloInteger( i / 256 / 256, 256 )] + Chars[255 - ModuloInteger( i / 256, 256 )] + Chars[255 - ModuloInteger( i, 256 )]
    endfunction

    function Int2Hex takes integer i returns string
        if ( i < 0 ) then
            return Int2Hex_FIX( i )
        endif
        return Chars[( i / 256 / 256 / 256 )] + Chars[ModuloInteger( i / 256 / 256, 256 )] + Chars[ModuloInteger( i / 256, 256 )] + Chars[ModuloInteger( i, 256 )]
    endfunction

    private function Init takes nothing returns nothing
        set Chars[0] = "00"
        set Chars[1] = "01"
        set Chars[2] = "02"
        set Chars[3] = "03"
        set Chars[4] = "04"
        set Chars[5] = "05"
        set Chars[6] = "06"
        set Chars[7] = "07"
        set Chars[8] = "08"
        set Chars[9] = "09"
        set Chars[10] = "0A"
        set Chars[11] = "0B"
        set Chars[12] = "0C"
        set Chars[13] = "0D"
        set Chars[14] = "0E"
        set Chars[15] = "0F"
        set Chars[16] = "10"
        set Chars[17] = "11"
        set Chars[18] = "12"
        set Chars[19] = "13"
        set Chars[20] = "14"
        set Chars[21] = "15"
        set Chars[22] = "16"
        set Chars[23] = "17"
        set Chars[24] = "18"
        set Chars[25] = "19"
        set Chars[26] = "1A"
        set Chars[27] = "1B"
        set Chars[28] = "1C"
        set Chars[29] = "1D"
        set Chars[30] = "1E"
        set Chars[31] = "1F"
        set Chars[32] = "20"
        set Chars[33] = "21"
        set Chars[34] = "22"
        set Chars[35] = "23"
        set Chars[36] = "24"
        set Chars[37] = "25"
        set Chars[38] = "26"
        set Chars[39] = "27"
        set Chars[40] = "28"
        set Chars[41] = "29"
        set Chars[42] = "2A"
        set Chars[43] = "2B"
        set Chars[44] = "2C"
        set Chars[45] = "2D"
        set Chars[46] = "2E"
        set Chars[47] = "2F"
        set Chars[48] = "30"
        set Chars[49] = "31"
        set Chars[50] = "32"
        set Chars[51] = "33"
        set Chars[52] = "34"
        set Chars[53] = "35"
        set Chars[54] = "36"
        set Chars[55] = "37"
        set Chars[56] = "38"
        set Chars[57] = "39"
        set Chars[58] = "3A"
        set Chars[59] = "3B"
        set Chars[60] = "3C"
        set Chars[61] = "3D"
        set Chars[62] = "3E"
        set Chars[63] = "3F"
        set Chars[64] = "40"
        set Chars[65] = "41"
        set Chars[66] = "42"
        set Chars[67] = "43"
        set Chars[68] = "44"
        set Chars[69] = "45"
        set Chars[70] = "46"
        set Chars[71] = "47"
        set Chars[72] = "48"
        set Chars[73] = "49"
        set Chars[74] = "4A"
        set Chars[75] = "4B"
        set Chars[76] = "4C"
        set Chars[77] = "4D"
        set Chars[78] = "4E"
        set Chars[79] = "4F"
        set Chars[80] = "50"
        set Chars[81] = "51"
        set Chars[82] = "52"
        set Chars[83] = "53"
        set Chars[84] = "54"
        set Chars[85] = "55"
        set Chars[86] = "56"
        set Chars[87] = "57"
        set Chars[88] = "58"
        set Chars[89] = "59"
        set Chars[90] = "5A"
        set Chars[91] = "5B"
        set Chars[92] = "5C"
        set Chars[93] = "5D"
        set Chars[94] = "5E"
        set Chars[95] = "5F"
        set Chars[96] = "60"
        set Chars[97] = "61"
        set Chars[98] = "62"
        set Chars[99] = "63"
        set Chars[100] = "64"
        set Chars[101] = "65"
        set Chars[102] = "66"
        set Chars[103] = "67"
        set Chars[104] = "68"
        set Chars[105] = "69"
        set Chars[106] = "6A"
        set Chars[107] = "6B"
        set Chars[108] = "6C"
        set Chars[109] = "6D"
        set Chars[110] = "6E"
        set Chars[111] = "6F"
        set Chars[112] = "70"
        set Chars[113] = "71"
        set Chars[114] = "72"
        set Chars[115] = "73"
        set Chars[116] = "74"
        set Chars[117] = "75"
        set Chars[118] = "76"
        set Chars[119] = "77"
        set Chars[120] = "78"
        set Chars[121] = "79"
        set Chars[122] = "7A"
        set Chars[123] = "7B"
        set Chars[124] = "7C"
        set Chars[125] = "7D"
        set Chars[126] = "7E"
        set Chars[127] = "7F"
        set Chars[128] = "80"
        set Chars[129] = "81"
        set Chars[130] = "82"
        set Chars[131] = "83"
        set Chars[132] = "84"
        set Chars[133] = "85"
        set Chars[134] = "86"
        set Chars[135] = "87"
        set Chars[136] = "88"
        set Chars[137] = "89"
        set Chars[138] = "8A"
        set Chars[139] = "8B"
        set Chars[140] = "8C"
        set Chars[141] = "8D"
        set Chars[142] = "8E"
        set Chars[143] = "8F"
        set Chars[144] = "90"
        set Chars[145] = "91"
        set Chars[146] = "92"
        set Chars[147] = "93"
        set Chars[148] = "94"
        set Chars[149] = "95"
        set Chars[150] = "96"
        set Chars[151] = "97"
        set Chars[152] = "98"
        set Chars[153] = "99"
        set Chars[154] = "9A"
        set Chars[155] = "9B"
        set Chars[156] = "9C"
        set Chars[157] = "9D"
        set Chars[158] = "9E"
        set Chars[159] = "9F"
        set Chars[160] = "A0"
        set Chars[161] = "A1"
        set Chars[162] = "A2"
        set Chars[163] = "A3"
        set Chars[164] = "A4"
        set Chars[165] = "A5"
        set Chars[166] = "A6"
        set Chars[167] = "A7"
        set Chars[168] = "A8"
        set Chars[169] = "A9"
        set Chars[170] = "AA"
        set Chars[171] = "AB"
        set Chars[172] = "AC"
        set Chars[173] = "AD"
        set Chars[174] = "AE"
        set Chars[175] = "AF"
        set Chars[176] = "B0"
        set Chars[177] = "B1"
        set Chars[178] = "B2"
        set Chars[179] = "B3"
        set Chars[180] = "B4"
        set Chars[181] = "B5"
        set Chars[182] = "B6"
        set Chars[183] = "B7"
        set Chars[184] = "B8"
        set Chars[185] = "B9"
        set Chars[186] = "BA"
        set Chars[187] = "BB"
        set Chars[188] = "BC"
        set Chars[189] = "BD"
        set Chars[190] = "BE"
        set Chars[191] = "BF"
        set Chars[192] = "C0"
        set Chars[193] = "C1"
        set Chars[194] = "C2"
        set Chars[195] = "C3"
        set Chars[196] = "C4"
        set Chars[197] = "C5"
        set Chars[198] = "C6"
        set Chars[199] = "C7"
        set Chars[200] = "C8"
        set Chars[201] = "C9"
        set Chars[202] = "CA"
        set Chars[203] = "CB"
        set Chars[204] = "CC"
        set Chars[205] = "CD"
        set Chars[206] = "CE"
        set Chars[207] = "CF"
        set Chars[208] = "D0"
        set Chars[209] = "D1"
        set Chars[210] = "D2"
        set Chars[211] = "D3"
        set Chars[212] = "D4"
        set Chars[213] = "D5"
        set Chars[214] = "D6"
        set Chars[215] = "D7"
        set Chars[216] = "D8"
        set Chars[217] = "D9"
        set Chars[218] = "DA"
        set Chars[219] = "DB"
        set Chars[220] = "DC"
        set Chars[221] = "DD"
        set Chars[222] = "DE"
        set Chars[223] = "DF"
        set Chars[224] = "E0"
        set Chars[225] = "E1"
        set Chars[226] = "E2"
        set Chars[227] = "E3"
        set Chars[228] = "E4"
        set Chars[229] = "E5"
        set Chars[230] = "E6"
        set Chars[231] = "E7"
        set Chars[232] = "E8"
        set Chars[233] = "E9"
        set Chars[234] = "EA"
        set Chars[235] = "EB"
        set Chars[236] = "EC"
        set Chars[237] = "ED"
        set Chars[238] = "EE"
        set Chars[239] = "EF"
        set Chars[240] = "F0"
        set Chars[241] = "F1"
        set Chars[242] = "F2"
        set Chars[243] = "F3"
        set Chars[244] = "F4"
        set Chars[245] = "F5"
        set Chars[246] = "F6"
        set Chars[247] = "F7"
        set Chars[248] = "F8"
        set Chars[249] = "F9"
        set Chars[250] = "FA"
        set Chars[251] = "FB"
        set Chars[252] = "FC"
        set Chars[253] = "FD"
        set Chars[254] = "FE"
        set Chars[255] = "FF"
    endfunction

    function GetChar takes string s, integer pos returns string
        return SubString( s, pos, pos + 1 )
    endfunction

endlibrary

//===========================================================================
function InitTrig_Hex_Number takes nothing returns nothing
endfunction

