#guard object_data

library ObjectData initializer Init uses Memory, Bitwise

globals
    integer array H
    hashtable gg_htb_HashData = InitHashtable( ) // используйте свою хештаблицу чтобы не плодить 10 хештаблиц.
endglobals

//library ObjectData:
function IntegerHash takes integer i returns integer
	local integer a= 0x7FED7FED
	local integer b= 0xEEEEEEEE
	local integer byte
	loop
		set byte=i * 16777216 / 16777216
		set a=BitwiseXor(a + b , H[byte])
		set i=i / 256
		exitwhen i == 0
		set b=b * 32 + a + b + byte + 3
	endloop
	return a
endfunction

function GetObjectData takes integer pData,integer rawcode returns integer
	local integer hash	= IntegerHash(rawcode)
	local integer list	= ReadRealMemory(pData) / 4 + ModuloInteger(hash, ReadRealMemory(pData + 8) + 1) * 3
	local integer i	= Memory[list + 2] / 4
	loop
		exitwhen i <= 0
		if Memory[i] == hash and Memory[i + 5] == rawcode then
			return i
		endif
		set i	=	Memory[Memory[list] / 4 + i + 1] / 4
	endloop
	return 0
endfunction

function GetObjectDataCaching takes integer pData, integer rawcode returns integer
	local integer k
	if HaveSavedInteger(gg_htb_HashData,pData,rawcode) then
		return LoadInteger(gg_htb_HashData,pData,rawcode)
	endif
	set k=GetObjectData(pData,rawcode)
	call SaveInteger(gg_htb_HashData,pData,rawcode,k)
	return k
endfunction

private function Init takes nothing returns nothing
	set H[1]=0xA22E726E
	set H[2]=0xD43D94C0
	set H[3]=0x6DE064C7
	set H[4]=0xFE8D4B2F
	set H[5]=0x345A287E
	set H[6]=0x13941BCF
	set H[7]=0xD822114D
	set H[8]=0xA79E1270
	set H[9]=0xFB2D4CF9
	set H[10]=0xCB25DDAE
	set H[11]=0x7B5E64D5
	set H[12]=0x88544672
	set H[13]=0xF201BF3F
	set H[14]=0x677CAF6E
	set H[15]=0x34502020
	set H[16]=0x5DD18D92
	set H[18]=0x320F2252
	set H[19]=0xCBB1F259
	set H[20]=0x5C5ED8C1
	set H[21]=0x922BB610
	set H[22]=0x7165A961
	set H[23]=0x35F39EDF
	set H[24]=0x056FA002
	set H[25]=0x58FEDA8B
	set H[26]=0x28F76B40
	set H[27]=0xD92FF267
	set H[28]=0xE625D404
	set H[29]=0x4FD34CD1
	set H[30]=0xC54E3D00
	set H[31]=0x9221ADB2
	set H[32]=0x2BC26B40
	set H[33]=0xCDF0DDAE
	set H[35]=0x99A2D007
	set H[36]=0x2A4FB66F
	set H[37]=0x601C93BE
	set H[38]=0x3F56870F
	set H[39]=0x03E47C8D
	set H[40]=0xD3607DB0
	set H[41]=0x26EFB839
	set H[42]=0xF6E848EE
	set H[43]=0xA720D015
	set H[44]=0xB416B1B2
	set H[45]=0x1DC42A7F
	set H[46]=0x933F1AAE
	set H[47]=0x60128B60
	set H[48]=0x921F9B39
	set H[49]=0x344E0DA7
	set H[50]=0x665D2FF9
	set H[52]=0x90ACE668
	set H[53]=0xC679C3B7
	set H[54]=0xA5B3B708
	set H[55]=0x6A41AC86
	set H[56]=0x39BDADA9
	set H[57]=0x8D4CE832
	set H[58]=0x5D4578E7
	set H[59]=0x0D7E000E
	set H[60]=0x1A73E1AB
	set H[61]=0x84215A78
	set H[62]=0xF99C4AA7
	set H[63]=0xC66FBB59
	set H[64]=0x0172B4D1
	set H[65]=0xA3A1273F
	set H[66]=0xD5B04991
	set H[67]=0x6F531998
	set H[69]=0x35CCDD4F
	set H[70]=0x1506D0A0
	set H[71]=0xD994C61E
	set H[72]=0xA910C741
	set H[73]=0xFCA001CA
	set H[74]=0xCC98927F
	set H[75]=0x7CD119A6
	set H[76]=0x89C6FB43
	set H[77]=0xF3747410
	set H[78]=0x68EF643F
	set H[79]=0x35C2D4F1
	set H[80]=0xCBA5D782
	set H[81]=0x6DD449F0
	set H[82]=0x9FE36C42
	set H[83]=0x39863C49
	set H[84]=0xCA3322B1
	set H[86]=0xDF39F351
	set H[87]=0xA3C7E8CF
	set H[88]=0x7343E9F2
	set H[89]=0xC6D3247B
	set H[90]=0x96CBB530
	set H[91]=0x47043C57
	set H[92]=0x53FA1DF4
	set H[93]=0xBDA796C1
	set H[94]=0x332286F0
	set H[95]=0xFFF5F7A2
	set H[96]=0xEC6BE431
	set H[97]=0x8E9A569F
	set H[98]=0xC0A978F1
	set H[99]=0x5A4C48F8
	set H[100]=0xEAF92F60
	set H[101]=0x20C60CAF
	set H[103]=0xC48DF57E
	set H[104]=0x9409F6A1
	set H[105]=0xE799312A
	set H[106]=0xB791C1DF
	set H[107]=0x67CA4906
	set H[108]=0x74C02AA3
	set H[109]=0xDE6DA370
	set H[110]=0x53E8939F
	set H[111]=0x20BC0451
	set H[112]=0x27DDEEB3
	set H[113]=0xCA0C6121
	set H[114]=0xFC1B8373
	set H[115]=0x95BE537A
	set H[116]=0x266B39E2
	set H[117]=0x5C381731
	set H[118]=0x3B720A82
	set H[120]=0xCF7C0123
	set H[121]=0x230B3BAC
	set H[122]=0xF303CC61
	set H[123]=0xA33C5388
	set H[124]=0xB0323525
	set H[125]=0x19DFADF2
	set H[126]=0x8F5A9E21
	set H[127]=0x5C2E0ED3
	set H[128]=0x5861ED90
	set H[129]=0xFA905FFE
	set H[130]=0x2C9F8250
	set H[131]=0xC6425257
	set H[132]=0x56EF38BF
	set H[133]=0x8CBC160E
	set H[134]=0x6BF6095F
	set H[135]=0x3083FEDD
	set H[137]=0x538F3A89
	set H[138]=0x2387CB3E
	set H[139]=0xD3C05265
	set H[140]=0xE0B63402
	set H[141]=0x4A63ACCF
	set H[142]=0xBFDE9CFE
	set H[143]=0x8CB20DB0
	set H[144]=0x04D2B307
	set H[145]=0xA7012575
	set H[146]=0xD91047C7
	set H[147]=0x72B317CE
	set H[148]=0x035FFE36
	set H[149]=0x392CDB85
	set H[150]=0x1866CED6
	set H[151]=0xDCF4C454
	set H[152]=0xAC70C577
	set H[154]=0xCFF890B5
	set H[155]=0x803117DC
	set H[156]=0x8D26F979
	set H[157]=0xF6D47246
	set H[158]=0x6C4F6275
	set H[159]=0x3922D327
	set H[160]=0x34DA2252
	set H[161]=0xD70894C0
	set H[162]=0x0917B712
	set H[163]=0xA2BA8719
	set H[164]=0x33676D81
	set H[165]=0x69344AD0
	set H[166]=0x486E3E21
	set H[167]=0x0CFC339F
	set H[168]=0xDC7834C2
	set H[169]=0x30076F4B
	set H[171]=0xB0388727
	set H[172]=0xBD2E68C4
	set H[173]=0x26DBE191
	set H[174]=0x9C56D1C0
	set H[175]=0x692A4272
	set H[176]=0x84A19B2B
	set H[177]=0x26D00D99
	set H[178]=0x58DF2FEB
	set H[179]=0xF281FFF2
	set H[180]=0x832EE65A
	set H[181]=0xB8FBC3A9
	set H[182]=0x9835B6FA
	set H[183]=0x5CC3AC78
	set H[184]=0x2C3FAD9B
	set H[185]=0x7FCEE824
	set H[186]=0x4FC778D9
	set H[188]=0x0CF5E19D
	set H[189]=0x76A35A6A
	set H[190]=0xEC1E4A99
	set H[191]=0xB8F1BB4B
	set H[192]=0x77ABB98E
	set H[193]=0x19DA2BFC
	set H[194]=0x4BE94E4E
	set H[195]=0xE58C1E55
	set H[196]=0x763904BD
	set H[197]=0xAC05E20C
	set H[198]=0x8B3FD55D
	set H[199]=0x4FCDCADB
	set H[200]=0x1F49CBFE
	set H[201]=0x72D90687
	set H[202]=0x42D1973C
	set H[203]=0xF30A1E63
	set H[205]=0x69AD78CD
	set H[206]=0xDF2868FC
	set H[207]=0xABFBD9AE
	set H[208]=0x0DFE40C1
	set H[209]=0xB02CB32F
	set H[210]=0xE23BD581
	set H[211]=0x7BDEA588
	set H[212]=0x0C8B8BF0
	set H[213]=0x4258693F
	set H[214]=0x21925C90
	set H[215]=0xE620520E
	set H[216]=0xB59C5331
	set H[217]=0x092B8DBA
	set H[218]=0xD9241E6F
	set H[219]=0x895CA596
	set H[220]=0x96528733
	set H[222]=0x757AF02F
	set H[223]=0x424E60E1
	set H[224]=0x98835092
	set H[225]=0x3AB1C300
	set H[226]=0x6CC0E552
	set H[227]=0x0663B559
	set H[228]=0x97109BC1
	set H[229]=0xCCDD7910
	set H[230]=0xAC176C61
	set H[231]=0x70A561DF
	set H[232]=0x40216302
	set H[233]=0x93B09D8B
	set H[234]=0x63A92E40
	set H[235]=0x13E1B567
	set H[236]=0x20D79704
	set H[237]=0x8A850FD1
	set H[239]=0xCCD370B2
	set H[240]=0xCBAFDFE0
	set H[241]=0x6DDE524E
	set H[242]=0x9FED74A0
	set H[243]=0x399044A7
	set H[244]=0xCA3D2B0F
	set H[245]=0x000A085E
	set H[246]=0xDF43FBAF
	set H[247]=0xA3D1F12D
	set H[248]=0x734DF250
	set H[249]=0xC6DD2CD9
	set H[250]=0x96D5BD8E
	set H[251]=0x470E44B5
	set H[252]=0x54042652
	set H[253]=0xBDB19F1F
	set H[254]=0x332C8F4E
endfunction

endlibrary




//===========================================================================
function InitTrig_Object_Data takes nothing returns nothing
endfunction

