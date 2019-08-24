#guard triggers

include "cjass\common.j"

library triggers initializer init

	define
	{
		//constant real periodic_time
		periodic_time = 0.01

		//string region_str
		region_str = "region"

		//string rect_str
		rect_str = "rect"

		//function rect2region
		rect2region(r) = LoadRegionHandle(r,region_str)

		//function region2rect
		region2rect(r) = LoadRectHandle(r,rect_str)

		//function getTrigger
		getTrigger(t)=LoadTriggerHandle(`t`)

        //function triggerAddAction
		triggerAddAction(t,f)=TriggerAddAction(getTrigger(t),function f)
		triggerAddAction(t)=triggerAddAction(t,t)

		TriggerRegisterEnterRectSimple(t,r)=
		{
			gregion1 = CreateRegion()
			RegionAddRect(gregion1,r)
			SaveRectHandle(gregion1,rect_str,r)
			SaveRegionHandle(r,region_str,gregion1)
			TriggerRegisterEnterRegion(t,gregion1,null)
		}
		TriggerRegisterEnterRectSimple(r)=TriggerRegister##EnterRectSimple(getTrigger(rectEnter),r)
		<call TriggerRegisterEnterRectSimple>(t,r)=TriggerRegisterEnterRectSimple(t,r)

		TriggerRegisterLeaveRectSimple(t,r)=
		{
			gregion1 = CreateRegion()
			RegionAddRect(gregion1,r)
			SaveRectHandle(gregion1,rect_str,r)
			SaveRegionHandle(r,region_str,gregion1)
			TriggerRegisterLeaveRegion(t,gregion1,null)
		}
		TriggerRegisterLeaveRectSimple(r)=TriggerRegister##LeaveRectSimple(getTrigger(rectLeave),r)
		<call TriggerRegisterLeaveRectSimple>(t,r)=TriggerRegisterLeaveRectSimple(t,r)
	}

	//trigger playerAllianceChanged
	//trigger playerKeyRight
	//trigger playerKeyLeft
	//trigger playerKeyUp
	//trigger playerKeyDown
	//trigger playerKeyReleaseRight
	//trigger playerKeyReleaseLeft
	//trigger playerKeyReleaseUp
	//trigger playerKeyReleaseDown
	//trigger playerChat
	//trigger playerEndCinematic
	//trigger playerUnitSelected
	//trigger playerUnitDeselected
	//trigger playerVictory
	//trigger playerDefeat
	//trigger playerLeave
	//trigger unitAttacked
	//trigger unitChangeOwner
	//trigger unitConstructStart
	//trigger unitConstructCancel
	//trigger unitConstructFinish
	//trigger unitDeath
	//trigger unitDecay
	//trigger unitDeselected
	//trigger unitDetected
	//trigger unitDropItem
	//trigger unitHidden
	//trigger unitIssuedOrder
	//trigger unitIssuedPointOrder
	//trigger unitIssuedTargetOrder
	//trigger unitIssuedUnitOrder
	//trigger unitLoaded
	//trigger unitPawnItem
	//trigger unitPickUpItem
	//trigger unitRescued
	//trigger unitResearchStart
	//trigger unitResearchCancel
	//trigger unitResearchFinish
	//trigger unitSelected
	//trigger unitSell
	//trigger unitSellItem
	//trigger unitSpellCast
	//trigger unitSpellChannel
	//trigger unitSpellEffect
	//trigger unitSpellEndCast
	//trigger unitSpellFinish
	//trigger unitSummon
	//trigger unitTrainStart
	//trigger unitTrainCancel
	//trigger unitTrainFinish
	//trigger unitUpgradeStart
	//trigger unitUpgradeCancel
	//trigger unitUpgradeFinish
	//trigger unitUseItem
	//trigger heroLevel
	//trigger heroSkill
	//trigger heroReviveStart
	//trigger heroReviveCancel
	//trigger heroReviveFinish
	//trigger rectEnter
	//trigger rectLeave
	//trigger singleTimer
	//trigger periodicTimer
	//trigger death

	//function createDestructable
	
	define 
	{
		createDestructable(id,x,y,z,face,scale,var)=createDestructableZ(id,x,y,z,face,scale,var)
		createDestructable(id,x,y,face,scale,var)=createDestructable(id,x,y,0,face,scale,var)
	}
	destructable createDestructableZ(integer id,real x,real y,real z,real face,real scale,integer var)
	{
		gdest1 = CreateDestructableZ(id,x,y,z,face,scale,var)
		TriggerRegisterDeathEvent(getTrigger(death),gdest1)
		return gdest1
	}

	define
	{
		createItem(id,x,y)=create##Item(id,x,y)
		createItem(id)=createItem(id,0,0)
	}
	item createItem(integer id,real x,real y)
	{
		gitem1=CreateItem(id,x,y)
		TriggerRegisterDeathEvent(getTrigger(death),gitem1)
		return gitem1
	}

	private function playerChat takes nothing returns nothing
		if SubString(GetEventPlayerChatString(),0,1)=="/" or SubString(GetEventPlayerChatString(),0,1)=="-" and SubString(GetEventPlayerChatString(),1,6)=="clear" then
			clearTextMessagesForPlayer(GetTriggerPlayer())
		endif
	endfunction
	
	private function init takes nothing returns nothing
		int i=0

        //any player event

		SaveTriggerHandle("playerAllianceChanged",CreateTrigger())
        forAB(i,0,bj_MAX_PLAYERS-1,+,TriggerRegisterPlayerEventAllianceChanged(getTrigger(playerAllianceChanged),Player(i)))

		SaveTriggerHandle("PlayerKeyRight",CreateTrigger())
        forAB(i,0,bj_MAX_PLAYERS-1,+,TriggerRegisterPlayerKeyEventBJ(getTrigger(playerKeyRight),Player(i),bj_KEYEVENTTYPE_DEPRESS,bj_KEYEVENTKEY_RIGHT))

		SaveTriggerHandle("PlayerKeyLeft",CreateTrigger())
		forAB(i,0,bj_MAX_PLAYERS-1,+,TriggerRegisterPlayerKeyEventBJ(getTrigger(playerKeyLeft),Player(i),bj_KEYEVENTTYPE_DEPRESS,bj_KEYEVENTKEY_LEFT))

		SaveTriggerHandle("PlayerKeyUp",CreateTrigger())
        forAB(i,0,bj_MAX_PLAYERS-1,+,TriggerRegisterPlayerKeyEventBJ(getTrigger(playerKeyUp),Player(i),bj_KEYEVENTTYPE_DEPRESS,bj_KEYEVENTKEY_UP))

		SaveTriggerHandle("PlayerKeyDown",CreateTrigger())
        forAB(i,0,bj_MAX_PLAYERS-1,+,TriggerRegisterPlayerKeyEventBJ(getTrigger(playerKeyDown),Player(i),bj_KEYEVENTTYPE_DEPRESS,bj_KEYEVENTKEY_DOWN))

		SaveTriggerHandle("PlayerKeyReleaseRight",CreateTrigger())
        forAB(i,0,bj_MAX_PLAYERS-1,+,TriggerRegisterPlayerKeyEventBJ(getTrigger(playerKeyReleaseRight),Player(i),bj_KEYEVENTTYPE_RELEASE,bj_KEYEVENTKEY_RIGHT))

		SaveTriggerHandle("PlayerKeyReleaseLeft",CreateTrigger())
        forAB(i,0,bj_MAX_PLAYERS-1,+,TriggerRegisterPlayerKeyEventBJ(getTrigger(playerKeyReleaseLeft),Player(i),bj_KEYEVENTTYPE_RELEASE,bj_KEYEVENTKEY_LEFT))

		SaveTriggerHandle("PlayerKeyReleaseUp",CreateTrigger())
        forAB(i,0,bj_MAX_PLAYERS-1,+,TriggerRegisterPlayerKeyEventBJ(getTrigger(playerKeyReleaseUp),Player(i),bj_KEYEVENTTYPE_RELEASE,bj_KEYEVENTKEY_UP))

		SaveTriggerHandle("PlayerKeyReleaseDown",CreateTrigger())
        forAB(i,0,bj_MAX_PLAYERS-1,+,TriggerRegisterPlayerKeyEventBJ(getTrigger(playerKeyReleaseDown),Player(i),bj_KEYEVENTTYPE_RELEASE,bj_KEYEVENTKEY_DOWN))

		SaveTriggerHandle("PlayerChat",CreateTrigger())
        forAB(i,0,bj_MAX_PLAYERS-1,+,TriggerRegisterPlayerChatEvent(getTrigger(playerChat),Player(i),"",false))

		SaveTriggerHandle("PlayerEndCinematic",CreateTrigger())
        forAB(i,0,bj_MAX_PLAYERS-1,+,TriggerRegisterPlayerEventEndCinematic(getTrigger(playerEndCinematic),Player(i)))

		SaveTriggerHandle("PlayerUnitSelected",CreateTrigger())
        forAB(i,0,bj_MAX_PLAYERS-1,+,TriggerRegisterPlayerSelectionEventBJ(getTrigger(playerUnitSelected),Player(i),true))

		SaveTriggerHandle("PlayerUnitDeselected",CreateTrigger())
        forAB(i,0,bj_MAX_PLAYERS-1,+,TriggerRegisterPlayerSelectionEventBJ(getTrigger(playerUnitDeselected),Player(i),false))

		SaveTriggerHandle("PlayerVictory",CreateTrigger())
        forAB(i,0,bj_MAX_PLAYERS-1,+,TriggerRegisterPlayerEventVictory(getTrigger(playerVictory),Player(i)))

		SaveTriggerHandle("PlayerDefeat",CreateTrigger())
        forAB(i,0,bj_MAX_PLAYERS-1,+,TriggerRegisterPlayerEventDefeat(getTrigger(playerDefeat),Player(i)))

		SaveTriggerHandle("PlayerLeave",CreateTrigger())
        forAB(i,0,bj_MAX_PLAYERS-1,+,TriggerRegisterPlayerEventLeave(getTrigger(playerLeave),Player(i)))

		triggerAddAction(playerChat)

        //any unit event

		SaveTriggerHandle("UnitAttacked",CreateTrigger())
		TriggerRegisterAnyUnitEventBJ(getTrigger(unitAttacked),EVENT_PLAYER_UNIT_ATTACKED)

		SaveTriggerHandle("UnitChangeOwner",CreateTrigger())
		TriggerRegisterAnyUnitEventBJ(getTrigger(unitChangeOwner),EVENT_PLAYER_UNIT_CHANGE_OWNER)

		SaveTriggerHandle("UnitConstructStart",CreateTrigger())
		TriggerRegisterAnyUnitEventBJ(getTrigger(unitConstructStart),EVENT_PLAYER_UNIT_CONSTRUCT_START)

		SaveTriggerHandle("UnitConstructCancel",CreateTrigger())
		TriggerRegisterAnyUnitEventBJ(getTrigger(unitConstructCancel),EVENT_PLAYER_UNIT_CONSTRUCT_CANCEL)

		SaveTriggerHandle("UnitConstructFinish",CreateTrigger())
		TriggerRegisterAnyUnitEventBJ(getTrigger(unitConstructFinish),EVENT_PLAYER_UNIT_CONSTRUCT_FINISH)

		SaveTriggerHandle("UnitDeath",CreateTrigger())
		TriggerRegisterAnyUnitEventBJ(getTrigger(unitDeath),EVENT_PLAYER_UNIT_DEATH)

		SaveTriggerHandle("UnitDecay",CreateTrigger())
		TriggerRegisterAnyUnitEventBJ(getTrigger(unitDecay),EVENT_PLAYER_UNIT_DECAY)

		SaveTriggerHandle("UnitDeselected",CreateTrigger())
		TriggerRegisterAnyUnitEventBJ(getTrigger(unitDeselected),EVENT_PLAYER_UNIT_DESELECTED)

		SaveTriggerHandle("UnitDetected",CreateTrigger())
		TriggerRegisterAnyUnitEventBJ(getTrigger(unitDetected),EVENT_PLAYER_UNIT_DETECTED)

		SaveTriggerHandle("UnitDropItem",CreateTrigger())
		TriggerRegisterAnyUnitEventBJ(getTrigger(unitDropItem),EVENT_PLAYER_UNIT_DROP_ITEM)

		SaveTriggerHandle("UnitHidden",CreateTrigger())
		TriggerRegisterAnyUnitEventBJ(getTrigger(unitHidden),EVENT_PLAYER_UNIT_HIDDEN)

		SaveTriggerHandle("UnitIssuedOrder",CreateTrigger())
		TriggerRegisterAnyUnitEventBJ(getTrigger(unitIssuedOrder),EVENT_PLAYER_UNIT_ISSUED_ORDER)

		SaveTriggerHandle("UnitIssuedPointOrder",CreateTrigger())
		TriggerRegisterAnyUnitEventBJ(getTrigger(unitIssuedPointOrder),EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER)

		SaveTriggerHandle("UnitIssuedTargetOrder",CreateTrigger())
		TriggerRegisterAnyUnitEventBJ(getTrigger(unitIssuedTargetOrder),EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)

		SaveTriggerHandle("UnitIssuedUnitOrder",CreateTrigger())
		TriggerRegisterAnyUnitEventBJ(getTrigger(unitIssuedUnitOrder),EVENT_PLAYER_UNIT_ISSUED_UNIT_ORDER)

		SaveTriggerHandle("UnitLoaded",CreateTrigger())
		TriggerRegisterAnyUnitEventBJ(getTrigger(unitLoaded),EVENT_PLAYER_UNIT_LOADED)

		SaveTriggerHandle("UnitPawnItem",CreateTrigger())
		TriggerRegisterAnyUnitEventBJ(getTrigger(unitPawnItem),EVENT_PLAYER_UNIT_PAWN_ITEM)

		SaveTriggerHandle("UnitPickUpItem",CreateTrigger())
		TriggerRegisterAnyUnitEventBJ(getTrigger(unitPickUpItem),EVENT_PLAYER_UNIT_PICKUP_ITEM)

		SaveTriggerHandle("UnitRescued",CreateTrigger())
		TriggerRegisterAnyUnitEventBJ(getTrigger(unitRescued),EVENT_PLAYER_UNIT_RESCUED)

		SaveTriggerHandle("UnitResearchStart",CreateTrigger())
		TriggerRegisterAnyUnitEventBJ(getTrigger(unitResearchStart),EVENT_PLAYER_UNIT_RESEARCH_START)

		SaveTriggerHandle("UnitResearchCancel",CreateTrigger())
		TriggerRegisterAnyUnitEventBJ(getTrigger(unitResearchCancel),EVENT_PLAYER_UNIT_RESEARCH_CANCEL)

		SaveTriggerHandle("UnitResearchFinish",CreateTrigger())
		TriggerRegisterAnyUnitEventBJ(getTrigger(unitResearchFinish),EVENT_PLAYER_UNIT_RESEARCH_FINISH)

		SaveTriggerHandle("UnitSelected",CreateTrigger())
		TriggerRegisterAnyUnitEventBJ(getTrigger(unitSelected),EVENT_PLAYER_UNIT_SELECTED)

		SaveTriggerHandle("UnitSell",CreateTrigger())
		TriggerRegisterAnyUnitEventBJ(getTrigger(unitSell),EVENT_PLAYER_UNIT_SELL)

		SaveTriggerHandle("UnitSellItem",CreateTrigger())
		TriggerRegisterAnyUnitEventBJ(getTrigger(unitSellItem),EVENT_PLAYER_UNIT_SELL_ITEM)

		SaveTriggerHandle("UnitSpellCast",CreateTrigger())
		TriggerRegisterAnyUnitEventBJ(getTrigger(unitSpellCast),EVENT_PLAYER_UNIT_SPELL_CAST)

		SaveTriggerHandle("UnitSpellChannel",CreateTrigger())
		TriggerRegisterAnyUnitEventBJ(getTrigger(unitSpellChannel),EVENT_PLAYER_UNIT_SPELL_CHANNEL)

		SaveTriggerHandle("UnitSpellEffect",CreateTrigger())
		TriggerRegisterAnyUnitEventBJ(getTrigger(unitSpellEffect),EVENT_PLAYER_UNIT_SPELL_EFFECT)

		SaveTriggerHandle("UnitSpellEndCast",CreateTrigger())
		TriggerRegisterAnyUnitEventBJ(getTrigger(unitSpellEndCast),EVENT_PLAYER_UNIT_SPELL_ENDCAST)

		SaveTriggerHandle("UnitSpellFinish",CreateTrigger())
		TriggerRegisterAnyUnitEventBJ(getTrigger(unitSpellFinish),EVENT_PLAYER_UNIT_SPELL_FINISH)

		SaveTriggerHandle("UnitSummon",CreateTrigger())
		TriggerRegisterAnyUnitEventBJ(getTrigger(unitSummon),EVENT_PLAYER_UNIT_SUMMON)

		SaveTriggerHandle("UnitTrainStart",CreateTrigger())
		TriggerRegisterAnyUnitEventBJ(getTrigger(unitTrainStart),EVENT_PLAYER_UNIT_TRAIN_START)

		SaveTriggerHandle("UnitTrainCancel",CreateTrigger())
		TriggerRegisterAnyUnitEventBJ(getTrigger(unitTrainCancel),EVENT_PLAYER_UNIT_TRAIN_CANCEL)

		SaveTriggerHandle("UnitTrainFinish",CreateTrigger())
		TriggerRegisterAnyUnitEventBJ(getTrigger(unitTrainFinish),EVENT_PLAYER_UNIT_TRAIN_FINISH)

		SaveTriggerHandle("UnitUpgradeStart",CreateTrigger())
		TriggerRegisterAnyUnitEventBJ(getTrigger(unitUpgradeStart),EVENT_PLAYER_UNIT_UPGRADE_START)

		SaveTriggerHandle("UnitUpgradeCancel",CreateTrigger())
		TriggerRegisterAnyUnitEventBJ(getTrigger(unitUpgradeCancel),EVENT_PLAYER_UNIT_UPGRADE_CANCEL)

		SaveTriggerHandle("UnitUpgradeFinish",CreateTrigger())
		TriggerRegisterAnyUnitEventBJ(getTrigger(unitUpgradeFinish),EVENT_PLAYER_UNIT_UPGRADE_FINISH)

		SaveTriggerHandle("UnitUseItem",CreateTrigger())
		TriggerRegisterAnyUnitEventBJ(getTrigger(unitUseItem),EVENT_PLAYER_UNIT_USE_ITEM)

        //any hero event

		SaveTriggerHandle("HeroLevel",CreateTrigger())
		TriggerRegisterAnyUnitEventBJ(getTrigger(heroLevel),EVENT_PLAYER_HERO_LEVEL)

		SaveTriggerHandle("HeroSkill",CreateTrigger())
		TriggerRegisterAnyUnitEventBJ(getTrigger(heroSkill),EVENT_PLAYER_HERO_SKILL)

		SaveTriggerHandle("HeroReviveStart",CreateTrigger())
		TriggerRegisterAnyUnitEventBJ(getTrigger(heroReviveStart),EVENT_PLAYER_HERO_REVIVE_START)

		SaveTriggerHandle("HeroReviveCancel",CreateTrigger())
		TriggerRegisterAnyUnitEventBJ(getTrigger(heroReviveCancel),EVENT_PLAYER_HERO_REVIVE_CANCEL)

		SaveTriggerHandle("HeroReviveFinish",CreateTrigger())
		TriggerRegisterAnyUnitEventBJ(getTrigger(heroReviveFinish),EVENT_PLAYER_HERO_REVIVE_FINISH)

        //rect map event

		SaveTriggerHandle("RectEnter",CreateTrigger())
		TriggerRegisterEnterRectSimple(GetPlayableMapRect())

		SaveTriggerHandle("RectLeave",CreateTrigger())
		TriggerRegisterLeaveRectSimple(GetPlayableMapRect())

        //timer event

		SaveTriggerHandle("SingleTimer",CreateTrigger())
		TriggerRegisterTimerEventSingle(getTrigger(singleTimer),0.)

		SaveTriggerHandle("PeriodicTimer",CreateTrigger())
		TriggerRegisterTimerEventPeriodic(getTrigger(periodicTimer),periodic_time)

        //death (widget,destructable) event

		SaveTriggerHandle("Death",CreateTrigger())

	endfunction
endlibrary