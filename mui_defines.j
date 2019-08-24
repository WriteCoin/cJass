#guard mui_defines

include "cjass\hash_defines.j"
include "cjass\mui.j"

define
{

    //function muiHandle
    muiHandle=GetHandleId(GetExpiredTimer())

    //function muiIsPeriodic
    muiIsPeriodic=isTimerPeriodic(GetExpiredTimer())

    //function muiGetTimeout
    muiGetTimeout=TimerGetTimeout(GetExpiredTimer())


    //function muiSaveValue
    muiSaveValue(vt,s,v)=saveValue(vt,GetExpiredTimer(),s,v)

    //function muiLoadValue
    muiGetValue(vt,s)=loadValue(vt,GetExpiredTimer(),s)


    //function muiSaveInteger
    muiSaveInteger(s,v)=SaveInteger(GetExpiredTimer(),s,v)

    //function muiSaveReal
    muiSaveReal(s,v)=SaveReal(GetExpiredTimer(),s,v)

    //function muiSaveBoolean
    muiSaveBoolean(s,v)=SaveBoolean(GetExpiredTimer(),s,v)

    //function muiSaveStr
    muiSaveStr(s,v)=SaveStr(GetExpiredTimer(),s,v)

    //function muiSavePlayer
    muiSavePlayer(s,v)=SavePlayerHandle(GetExpiredTimer(),s,v)

    //function muiSaveWidget
    muiSaveWidget(s,v)=SaveWidgetHandle(GetExpiredTimer(),s,v)

    //function muiSaveDest
    muiSaveDest(s,v)=SaveDestructableHandle(GetExpiredTimer(),s,v)

    //function muiSaveItem
    muiSaveItem(s,v)=SaveItemHandle(GetExpiredTimer(),s,v)

    //function muiSaveUnit
    muiSaveUnit(s,v)=SaveUnitHandle(GetExpiredTimer(),s,v)

    //function muiSaveAbility
    muiSaveAbility(s,v)=SaveAbilityHandle(GetExpiredTimer(),s,v)

    //function muiSaveTimer
    muiSaveTimer(s,v)=SaveTimerHandle(GetExpiredTimer(),s,v)

    //function muiSaveTrigger
    muiSaveTrigger(s,v)=SaveTriggerHandle(GetExpiredTimer(),s,v)

    //function muiSaveTriggerCondition
    muiSaveTriggerCondition(s,v)=SaveTriggerConditionHandle(GetExpiredTimer(),s,v)

    //function muiSaveTriggerAction
    muiSaveTriggerAction(s,v)=SaveTriggerActionHandle(GetExpiredTimer(),s,v)

    //function muiSaveTriggerEvent
    muiSaveTriggerEvent(s,v)=SaveTriggerEventHandle(GetExpiredTimer(),s,v)

    //function muiSaveForce
    muiSaveForce(s,v)=SaveForceHandle(GetExpiredTimer(),s,v)

    //function muiSaveGroup
    muiSaveGroup(s,v)=SaveGroupHandle(GetExpiredTimer(),s,v)

    //function muiSaveLocation
    muiSaveLocation(s,v)=SaveLocationHandle(GetExpiredTimer(),s,v)

    //function muiSaveRect
    muiSaveRect(s,v)=SaveRectHandle(GetExpiredTimer(),s,v)

    //function muiSaveBooleanExpr
    muiSaveBooleanExpr(s,v)=SaveBooleanExprHandle(GetExpiredTimer(),s,v)

    //function muiSaveSound
    muiSaveSound(s,v)=SaveSoundHandle(GetExpiredTimer(),s,v)

    //function muiSaveEffect
    muiSaveEffect(s,v)=SaveEffectHandle(GetExpiredTimer(),s,v)

    //function muiSaveUnitPool
    muiSaveUnitPool(s,v)=SaveUnitPoolHandle(GetExpiredTimer(),s,v)

    //function muiSaveItemPool
    muiSaveItemPool(s,v)=SaveItemPoolHandle(GetExpiredTimer(),s,v)

    //function muiSaveQuest
    muiSaveQuest(s,v)=SaveQuestHandle(GetExpiredTimer(),s,v)

    //function muiSaveQuestItem
    muiSaveQuestItem(s,v)=SaveQuestItemHandle(GetExpiredTimer(),s,v)

    //function muiSaveDefeatCondition
    muiSaveDefeatCondition(s,v)=SaveDefeatConditionHandle(GetExpiredTimer(),s,v)

    //function muiSaveTimerDialog
    muiSaveTimerDialog(s,v)=SaveTimerDialogHandle(GetExpiredTimer(),s,v)

    //function muiSaveLeaderboard
    muiSaveLeaderboard(s,v)=SaveLeaderboardHandle(GetExpiredTimer(),s,v)

    //function muiSaveMultiboard
    muiSaveMultiboard(s,v)=SaveMultiboardHandle(GetExpiredTimer(),s,v)

    //function muiSaveMultiboardItem
    muiSaveMultiboardItem(s,v)=SaveMultiboardItemHandle(GetExpiredTimer(),s,v)

    //function muiSaveTrackable
    muiSaveTrackable(s,v)=SaveTrackableHandle(GetExpiredTimer(),s,v)

    //function muiSaveDialog
    muiSaveDialog(s,v)=SaveDialogHandle(GetExpiredTimer(),s,v)

    //function muiSaveButton
    muiSaveButton(s,v)=SaveButtonHandle(GetExpiredTimer(),s,v)

    //function muiSaveTextTag
    muiSaveTextTag(s,v)=SaveTextTagHandle(GetExpiredTimer(),s,v)

    //function muiSaveLightning
    muiSaveLightning(s,v)=SaveLightningHandle(GetExpiredTimer(),s,v)

    //function muiSaveImage
    muiSaveImage(s,v)=SaveImageHandle(GetExpiredTimer(),s,v)

    //function muiSaveUbersplat
    muiSaveUbersplat(s,v)=SaveUbersplatHandle(GetExpiredTimer(),s,v)

    //function muiSaveRegion
    muiSaveRegion(s,v)=SaveRegionHandle(GetExpiredTimer(),s,v)

    //function muiSaveFogState
    muiSaveFogState(s,v)=SaveFogStateHandle(GetExpiredTimer(),s,v)

    //function muiSaveFogModifier
    muiSaveFogModifier(s,v)=SaveFogModifierHandle(GetExpiredTimer(),s,v)

    //function muiSaveAgent
    muiSaveAgent(s,v)=SaveAgentHandle(GetExpiredTimer(),s,v)
    
    //function muiSaveHashtable
    muiSaveHashtable(s,v)=SaveHashtableHandle(GetExpiredTimer(),s,v)

    
    //function muiGetInteger
    muiGetInteger(s)=LoadInteger(GetExpiredTimer(),s)

    //function muiGetReal
    muiGetReal(s)=LoadReal(GetExpiredTimer(),s)

    //function muiGetBoolean
    muiGetBoolean(s)=LoadBoolean(GetExpiredTimer(),s)

    //function muiGetStr
    muiGetStr(s)=LoadStr(GetExpiredTimer(),s)

    //function muiGetPlayer
    muiGetPlayer(s)=LoadPlayerHandle(GetExpiredTimer(),s)

    //function muiGetWidget
    muiGetWidget(s)=LoadWidgetHandle(GetExpiredTimer(),s)

    //function muiGetDest
    muiGetDest(s)=LoadDestructableHandle(GetExpiredTimer(),s)

    //function muiGetItem
    muiGetItem(s)=LoadItemHandle(GetExpiredTimer(),s)

    //function muiGetUnit
    muiGetUnit(s)=LoadUnitHandle(GetExpiredTimer(),s)

    //function muiGetAbility
    muiGetAbility(s)=LoadAbilityHandle(GetExpiredTimer(),s)

    //function muiGetTimer
    muiGetTimer(s)=LoadTimerHandle(GetExpiredTimer(),s)

    //function muiGetTrigger
    muiGetTrigger(s)=LoadTriggerHandle(GetExpiredTimer(),s)

    //function muiGetTriggerCondition
    muiGetTriggerCondition(s)=LoadTriggerConditionHandle(GetExpiredTimer(),s)

    //function muiGetTriggerAction
    muiGetTriggerAction(s)=LoadTriggerActionHandle(GetExpiredTimer(),s)

    //function muiGetTriggerEvent
    muiGetTriggerEvent(s)=LoadTriggerEventHandle(GetExpiredTimer(),s)

    //function muiGetForce
    muiGetForce(s)=LoadForceHandle(GetExpiredTimer(),s)

    //function muiGetGroup
    muiGetGroup(s)=LoadGroupHandle(GetExpiredTimer(),s)

    //function muiGetLocation
    muiGetLocation(s)=LoadLocationHandle(GetExpiredTimer(),s)

    //function muiGetRect
    muiGetRect(s)=LoadRectHandle(GetExpiredTimer(),s)

    //function muiGetBooleanExpr
    muiGetBooleanExpr(s)=LoadBooleanExprHandle(GetExpiredTimer(),s)

    //function muiGetSound
    muiGetSound(s)=LoadSoundHandle(GetExpiredTimer(),s)

    //function muiGetEffect
    muiGetEffect(s)=LoadEffectHandle(GetExpiredTimer(),s)

    //function muiGetUnitPool
    muiGetUnitPool(s)=LoadUnitPoolHandle(GetExpiredTimer(),s)

    //function muiGetItemPool
    muiGetItemPool(s)=LoadItemPoolHandle(GetExpiredTimer(),s)

    //function muiGetQuest
    muiGetQuest(s)=LoadQuestHandle(GetExpiredTimer(),s)

    //function muiGetQuestItem
    muiGetQuestItem(s)=LoadQuestItemHandle(GetExpiredTimer(),s)

    //function muiGetDefeatCondition
    muiGetDefeatCondition(s)=LoadDefeatConditionHandle(GetExpiredTimer(),s)

    //function muiGetTimerDialog
    muiGetTimerDialog(s)=LoadTimerDialogHandle(GetExpiredTimer(),s)

    //function muiGetLeaderboard
    muiGetLeaderboard(s)=LoadLeaderboardHandle(GetExpiredTimer(),s)

    //function muiGetMultiboard
    muiGetMultiboard(s)=LoadMultiboardHandle(GetExpiredTimer(),s)

    //function muiGetMultiboardItem
    muiGetMultiboardItem(s)=LoadMultiboardItemHandle(GetExpiredTimer(),s)

    //function muiGetTrackable
    muiGetTrackable(s)=LoadTrackableHandle(GetExpiredTimer(),s)

    //function muiGetDialog
    muiGetDialog(s)=LoadDialogHandle(GetExpiredTimer(),s)

    //function muiGetButton
    muiGetButton(s)=LoadButtonHandle(GetExpiredTimer(),s)

    //function muiGetTextTag
    muiGetTextTag(s)=LoadTextTagHandle(GetExpiredTimer(),s)

    //function muiGetLightning
    muiGetLightning(s)=LoadLightningHandle(GetExpiredTimer(),s)

    //function muiGetImage
    muiGetImage(s)=LoadImageHandle(GetExpiredTimer(),s)

    //function muiGetUbersplat
    muiGetUbersplat(s)=LoadUbersplatHandle(GetExpiredTimer(),s)

    //function muiGetRegion
    muiGetRegion(s)=LoadRegionHandle(GetExpiredTimer(),s)

    //function muiGetFogState
    muiGetFogState(s)=LoadFogStateHandle(GetExpiredTimer(),s)

    //function muiGetFogModifier
    muiGetFogModifier(s)=LoadFogModifierHandle(GetExpiredTimer(),s)

    //function muiGetHashtable
    muiGetHashtable(s)=LoadHashtableHandle(GetExpiredTimer(),s)


    //function muiHaveInteger
    muiHaveInteger(s)=HaveSavedInteger(GetExpiredTimer(),s)

    //function muiHaveReal
    muiHaveReal(s)=HaveSavedReal(GetExpiredTimer(),s)

    //function muiHaveBoolean
    muiHaveBoolean(s)=HaveSavedBoolean(GetExpiredTimer(),s)

    //function muiHaveString
    muiHaveString(s)=HaveSavedString(GetExpiredTimer(),s)

    //function muiHaveHandle
    muiHaveHandle(s)=HaveSavedHandle(GetExpiredTimer(),s)


    //function muiRemoveInteger
    muiRemoveInteger(s)=RemoveSavedInteger(GetExpiredTimer(),s)

    //function muiRemoveReal
    muiRemoveReal(s)=RemoveSavedReal(GetExpiredTimer(),s)

    //function muiRemoveBoolean
    muiRemoveBoolean(s)=RemoveSavedBoolean(GetExpiredTimer(),s)

    //function muiRemoveString
    muiRemoveString(s)=RemoveSavedString(GetExpiredTimer(),s)

    //function muiRemoveHandle
    muiRemoveHandle(s)=RemoveSavedHandle(GetExpiredTimer(),s)


    //function muiAddInteger
    muiAddInteger(s,v)=addInteger(GetExpiredTimer(),s,v) 

    //function muiAddReal
    muiAddReal(s,v)=addReal(GetExpiredTimer(),s,v)

    //function muiAddStrPre
    muiAddStrPre(s,v)=addStrPre(GetExpiredTimer(),s,v)

    //function muiAddStrPost
    muiAddStrPost(s,v)=addStrPost(GetExpiredTimer(),s,v)
}