#guard host

include "cjass\hash_defines.j"
include "cjass\triggers.j"

scope getHost initializer init

    define
    {
        //string host_str
        host_str = "Host"

        private map_str = "Map"
        private map_file_str = "Map.w3v"

        //player getHostPlayer
        getHostPlayer = LoadPlayerHandle(host_str)
    }

	private function singleTimer takes nothing returns nothing
		local gamecache g = InitGameCache(map_file_str)
		call StoreInteger(g, map_str, host_str, GetPlayerId(GetLocalPlayer())+1)
		call TriggerSyncStart()
		call SyncStoredInteger(g, map_str, host_str)
		call TriggerSyncReady()
		call SavePlayerHandle(host_str,Player(GetStoredInteger(g, map_str, host_str)-1))
		call FlushGameCache(g)
        set g = null
	endfunction

	private function init takes nothing returns nothing
		call triggerAddAction(singleTimer)
	endfunction
endscope