#guard typecast

library Typecast

//! nocjass

    globals
       
        code Code //This is not used, it's here just to fool Jasshelper
        code l__Code
        integer Int //This is not used, it's here just to fool Jasshelper
        integer l__Int
        string Str //This is not used, it's here just to fool Jasshelper
        string l__Str
        boolean Bool //This is not used, it's here just to fool Jasshelper
        boolean l__Bool
        integer array l__Array
        integer Array
        
    endglobals

    function InitArray takes integer vtable returns nothing
        set l__Array[4] = 0
        set l__Array[1] = vtable
        set l__Array[2] = -1
        set l__Array[3] = -1
    endfunction

    private function TypecastArray takes nothing returns nothing
        local integer Array //typecast Array to integer
    endfunction

//# +nosemanticerror
    function GetArrayAddress takes nothing returns integer //not really needed
        loop
            return l__Array     
        endloop
        return 0
    endfunction

    function setCode takes code c returns nothing
        set l__Code = c
        return //Prevents Jasshelper from inlining this function
    endfunction

    function setInt takes integer i returns nothing
        set l__Int = i
        return //Prevents JassHelper from inlining this function
    endfunction

    function setStr takes string s returns nothing
        set l__Str = s
        return //Prevents JassHelper from inlining this function
    endfunction

    function setBool takes boolean b returns nothing
        set l__Bool = b
        return //Prevents Jasshelper from inlining this function
    endfunction

    private function Typecast1 takes nothing returns nothing
        local integer Code //Jasshelper will implicitly rename this to l__Code
        local code Int //Jasshelper will implicitly rename this to l__Int
    endfunction

//# +nosemanticerror
    function C2I takes code c returns integer
        call setCode( c )
        return l__Code
    endfunction

//# +nosemanticerror
    function I2C takes integer i returns code
        call setInt( i )
        return l__Int
    endfunction

    private function Typecast2 takes nothing returns nothing
        local integer Str //Jasshelper will implicitly rename this to l__Str
        local string Int //Jasshelper will implicitly rename this to l__Int
    endfunction

//# +nosemanticerror
    function SH2I takes string s returns integer
        call setStr( s )
        return l__Str
    endfunction

//# +nosemanticerror
    function I2SH takes integer i returns string
        call setInt( i )
        return l__Int
    endfunction

    private function Typecast3 takes nothing returns nothing
        local integer Bool //Jasshelper will implicitly rename this to l__Bool
        local boolean Int //Jasshelper will implicitly rename this to l__Int
    endfunction

//# +nosemanticerror
    function B2I takes boolean b returns integer
        call setBool( b )
        return l__Bool
    endfunction

//# +nosemanticerror
    function I2B takes integer i returns boolean
        call setInt( i )
        return l__Int
    endfunction

//# +nosemanticerror
    function realToIndex takes real r returns integer
        return r
    endfunction

    function cleanInt takes integer i returns integer
        return i
    endfunction

//# +nosemanticerror
    function indexToReal takes integer i returns real
        return i
    endfunction

    function cleanReal takes real r returns real
        return r
    endfunction

    function GetRealFromMemory takes integer i returns real
        return cleanReal( indexToReal( i ) )
    endfunction

    function SetRealIntoMemory takes real r returns integer
        return cleanInt( realToIndex( r ) )
    endfunction

//! endnocjass
endlibrary
