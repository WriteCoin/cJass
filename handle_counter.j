#guard handle_counter
scope handleCounter
	
	public leaderboard board

	private function update takes nothing returns nothing
		local integer i=0
		local integer id
		local location array p
		local real result=0
		loop
			exitwhen i>=50
			set i=i+1
			set p[i]=Location(0,0)
			set id=GetHandleId(p[i])
			set result=result+id-0x100000
		endloop
		loop
			call RemoveLocation(p[i])
			set p[i]=null
			exitwhen i <= 1
			set i=i-1
		endloop
		call LeaderboardSetItemValue(board,0,R2I(result))
	endfunction

	private function act takes nothing returns nothing
		set board = CreateLeaderboard()
		call LeaderboardSetLabel(board, "Handle Counter")
		call PlayerSetLeaderboard(GetLocalPlayer(),board)
		call LeaderboardDisplay(board,true)
		call LeaderboardAddItem(board,"Handles",0,Player(0))
		call LeaderboardSetSizeByItemCount(board,1)
		call update()
		call TimerStart(GetExpiredTimer(),0.05,true,function update)
	endfunction

	function init_HandleCounter takes nothing returns nothing
		call TimerStart(CreateTimer(),0,false,function act)
	endfunction
endscope