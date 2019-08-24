#guard mui

include "cjass\hash_defines.j"
include "cjass\hook_defines.j"

library MUI

	private integer i
	
	define
	{
        //private integer maxTimers
        private maxTimers = 1100

        //string muiStr
        muiStr="MUI_"

		//string startedStr
		startedStr = "started"

		//string periodicStr
		periodicStr = "periodic"

		TimerStart(ti,t,b,a)=
		{
			Timer##Start(ti,t,b,a)
			SaveBoolean(ti,startedStr,true)
			SaveBoolean(ti,periodicStr,b)
		}

		//boolean isTimerStarted
		isTimerStarted(t) = LoadBoolean(t,startedStr)

		//boolean isTimerPeriodic
		isTimerPeriodic(t) = LoadBoolean(t,periodicStr)
	}

    //function newMUI
    define newMUI=NewMUI()
    timer NewMUI()
    {
        if getIndex>maxTimers then
            return CreateTimer()
        else
            addIndex
			saveIndexValue(keyTimer,"timer",CreateTimer())
			return getIndexValue(keyTimer,"timer")
        endif
    }

    define 
    {
        //function lastMUI
        lastMUI=getIndexValue(keyTimer,muiStr,"timer")

        //function clearMUI
        clearMUI=
        {
			forID(i,keyTimer,muiStr,"timer",GetExpiredTimer(),shiftIDValue(i,keyTimer,muiStr,"timer"))
			FlushChildHashtable(GetExpiredTimer())
			DestroyTimer(GetExpiredTimer())
        }
    }

    include "cjass\mui_defines.j"

	private function effectTimer takes nothing returns nothing
		if muiIsPeriodic then
			muiAddReal("curtime",muiGetTimeout)
			if muiGetReal("curtime")>=muiGetReal("time") then
				clearMUI
			elseif muiHaveHandle("target") then
				DestroyEffect(AddSpecialEffectTarget(muiGetStr("model"),muiGetWidget("target"),muiGetStr("attach")))
			else
				DestroyEffect(AddSpecialEffect(muiGetStr("model"),muiGetReal("x"),muiGetReal("y")))
			endif
		else
			DestroyEffect(muiGetEffect("effect"))
			clearMUI
		endif
	endfunction

	function addEffectTimed takes string model, real x, real y, real time returns nothing
		newMUI
		SaveEffectHandle(lastMUI,"effect",AddSpecialEffect(model,x,y))
		SaveReal(lastMUI,"time",time)
		TimerStart(lastMUI,time,false,function effectTimer)
	endfunction

	function addPeriodicEffectTimed takes string model, real x, real y, real time, real period returns nothing
		newMUI
		SaveStr(lastMUI,"model",model)
		SaveReal(lastMUI,"x",x)
		SaveReal(lastMUI,"y",y)
		SaveReal(lastMUI,"time",time)
		TimerStart(lastMUI,period,true,function effectTimer)
	endfunction
endlibrary