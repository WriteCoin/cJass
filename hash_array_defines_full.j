#guard hash_array_defines_full

include "cjass\hash_defines.j"
include "cjass\custom_defines.j"

define
{
    //constant string index_str
    index_str = "index"

    //function addIndex
    addIndex(s)=addInteger(s+index_str,1)
    addIndex=addIndex(scope_prefix)
    //integer getIndex
    getIndex(s)=LoadInteger(s+index_str)
    getIndex=getIndex(scope_prefix)
    

    //function saveIndexValue
    saveIndexValue(vt,sc,s,v)=saveValue(vt,sc+s+I2S(getIndex(sc)),v)
    saveIndexValue(vt,s,v)=saveIndexValue(vt,scope_prefix,s,v)

    //function saveIndexInteger
    saveIndexInteger(sc,s,v)=SaveInteger(sc+s+I2S(getIndex(sc)),v)
    saveIndexInteger(s,v)=saveIndexInteger(scope_prefix,s,v)

    //function saveIndexReal
    saveIndexReal(sc,s,v)=SaveReal(sc+s+I2S(getIndex(sc)),v)
    saveIndexReal(s,v)=saveIndexReal(scope_prefix,s,v)

    //function saveIndexBoolean
    saveIndexBoolean(sc,s,v)=SaveBoolean(sc+s+I2S(getIndex(sc)),v)
    saveIndexBoolean(s,v)=saveIndexBoolean(scope_prefix,s,v)

    //function saveIndexStr
    saveIndexStr(sc,s,v)=SaveStr(sc+s+I2S(I2S(getIndex(sc))),v)
    saveIndexStr(s,v)=saveIndexStr(scope_prefix,s,v)

    //function saveIndexPlayer
    saveIndexPlayer(sc,s,v)=SavePlayerHandle(sc+s+I2S(getIndex(sc)),v)
    saveIndexPlayer(s,v)=saveIndexPlayer(scope_prefix,s,v)

    //function saveIndexWidget
    saveIndexWidget(sc,s,v)=SaveWidgetHandle(sc+s+I2S(getIndex(sc)),v)
    saveIndexWidget(s,v)=saveIndexWidget(scope_prefix,s,v)

    //function saveIndexDest
    saveIndexDest(sc,s,v)=SaveDestructableHandle(sc+s+I2S(getIndex(sc)),v)
    saveIndexDest(s,v)=saveIndexDest(scope_prefix,s,v)

    //function saveIndexItem
    saveIndexItem(sc,s,v)=SaveItemHandle(sc+s+I2S(getIndex(sc)),v)
    saveIndexItem(s,v)=saveIndexItem(scope_prefix,s,v)

    //function saveIndexUnit
    saveIndexUnit(sc,s,v)=SaveUnitHandle(sc+s+I2S(getIndex(sc)),v)
    saveIndexUnit(s,v)=saveIndexUnit(scope_prefix,s,v)

    //function saveIndexAbility
    saveIndexAbility(sc,s,v)=SaveAbilityHandle(sc+s+I2S(getIndex(sc)),v)
    saveIndexAbility(s,v)=saveIndexAbility(scope_prefix,s,v)

    //function saveIndexTimer
    saveIndexTimer(sc,s,v)=SaveTimerHandle(sc+s+I2S(getIndex(sc)),v)
    saveIndexTimer(s,v)=saveIndexTimer(scope_prefix,s,v)

    //function saveIndexTrigger
    saveIndexTrigger(sc,s,v)=SaveTriggerHandle(sc+s+I2S(getIndex(sc)),v)
    saveIndexTrigger(s,v)=saveIndexTrigger(scope_prefix,s,v)

    //function saveIndexTriggerCondition
    saveIndexTriggerCondition(sc,s,v)=SaveTriggerConditionHandle(sc+s+I2S(getIndex(sc)),v)
    saveIndexTriggerCondition(s,v)=saveIndexTriggerCondition(scope_prefix,s,v)

    //function saveIndexTriggerAction
    saveIndexTriggerAction(sc,s,v)=SaveTriggerActionHandle(sc+s+I2S(getIndex(sc)),v)
    saveIndexTriggerAction(s,v)=saveIndexTriggerAction(scope_prefix,s,v)

    //function saveIndexTriggerEvent
    saveIndexTriggerEvent(sc,s,v)=SaveTriggerEventHandle(sc+s+I2S(getIndex(sc)),v)
    saveIndexTriggerEvent(s,v)=saveIndexTriggerEvent(scope_prefix,s,v)

    //function saveIndexForce
    saveIndexForce(sc,s,v)=SaveForceHandle(sc+s+I2S(getIndex(sc)),v)
    saveIndexForce(s,v)=saveIndexForce(scope_prefix,s,v)

    //function saveIndexGroup
    saveIndexGroup(sc,s,v)=SaveGroupHandle(sc+s+I2S(getIndex(sc)),v)
    saveIndexGroup(s,v)=saveIndexGroup(scope_prefix,s,v)

    //function saveIndexLocation
    saveIndexLocation(sc,s,v)=SaveLocationHandle(sc+s+I2S(getIndex(sc)),v)
    saveIndexLocation(s,v)=saveIndexLocation(scope_prefix,s,v)

    //function saveIndexRect
    saveIndexRect(sc,s,v)=SaveRectHandle(sc+s+I2S(getIndex(sc)),v)
    saveIndexRect(s,v)=saveIndexRect(scope_prefix,s,v)

    //function saveIndexBooleanExpr
    saveIndexBooleanExpr(sc,s,v)=SaveBooleanExprHandle(sc+s+I2S(getIndex(sc)),v)
    saveIndexBooleanExpr(s,v)=saveIndexBooleanExpr(scope_prefix,s,v)

    //function saveIndexSound
    saveIndexSound(sc,s,v)=SaveSoundHandle(sc+s+I2S(getIndex(sc)),v)
    saveIndexSound(s,v)=saveIndexSound(scope_prefix,s,v)

    //function saveIndexEffect
    saveIndexEffect(sc,s,v)=SaveEffectHandle(sc+s+I2S(getIndex(sc)),v)
    saveIndexEffect(s,v)=saveIndexEffect(scope_prefix,s,v)

    //function saveIndexUnitPool
    saveIndexUnitPool(sc,s,v)=SaveUnitPoolHandle(sc+s+I2S(getIndex(sc)),v)
    saveIndexUnitPool(s,v)=saveIndexUnitPool(scope_prefix,s,v)

    //function saveIndexItemPool
    saveIndexItemPool(sc,s,v)=SaveItemPoolHandle(sc+s+I2S(getIndex(sc)),v)
    saveIndexItemPool(s,v)=saveIndexItemPool(scope_prefix,s,v)

    //function saveIndexQuest
    saveIndexQuest(sc,s,v)=SaveQuestHandle(sc+s+I2S(getIndex(sc)),v)
    saveIndexQuest(s,v)=saveIndexQuest(scope_prefix,s,v)

    //function saveIndexQuestItem
    saveIndexQuestItem(sc,s,v)=SaveQuestItemHandle(sc+s+I2S(getIndex(sc)),v)
    saveIndexQuestItem(s,v)=saveIndexQuestItem(scope_prefix,s,v)

    //function saveIndexDefeatCondition
    saveIndexDefeatCondition(sc,s,v)=SaveDefeatConditionHandle(sc+s+I2S(getIndex(sc)),v)
    saveIndexDefeatCondition(s,v)=saveIndexDefeatCondition(scope_prefix,s,v)

    //function saveIndexTimerDialog
    saveIndexTimerDialog(sc,s,v)=SaveTimerDialogHandle(sc+s+I2S(getIndex(sc)),v)
    saveIndexTimerDialog(s,v)=saveIndexTimerDialog(scope_prefix,s,v)

    //function saveIndexLeaderboard
    saveIndexLeaderboard(sc,s,v)=SaveLeaderboardHandle(sc+s+I2S(getIndex(sc)),v)
    saveIndexLeaderboard(s,v)=saveIndexLeaderboard(scope_prefix,s,v)

    //function saveIndexMultiboard
    saveIndexMultiboard(sc,s,v)=SaveMultiboardHandle(sc+s+I2S(getIndex(sc)),v)
    saveIndexMultiboard(s,v)=saveIndexMultiboard(scope_prefix,s,v)

    //function saveIndexMultiboardItem
    saveIndexMultiboardItem(sc,s,v)=SaveMultiboardItemHandle(sc+s+I2S(getIndex(sc)),v)
    saveIndexMultiboardItem(s,v)=saveIndexMultiboardItem(scope_prefix,s,v)

    //function saveIndexTrackable
    saveIndexTrackable(sc,s,v)=SaveTrackableHandle(sc+s+I2S(getIndex(sc)),v)
    saveIndexTrackable(s,v)=saveIndexTrackable(scope_prefix,s,v)

    //function saveIndexDialog
    saveIndexDialog(sc,s,v)=SaveDialogHandle(sc+s+I2S(getIndex(sc)),v)
    saveIndexDialog(s,v)=saveIndexDialog(scope_prefix,s,v)

    //function saveIndexButton
    saveIndexButton(sc,s,v)=SaveButtonHandle(sc+s+I2S(getIndex(sc)),v)
    saveIndexButton(s,v)=saveIndexButton(scope_prefix,s,v)

    //function saveIndexTextTag
    saveIndexTextTag(sc,s,v)=SaveTextTagHandle(sc+s+I2S(getIndex(sc)),v)
    saveIndexTextTag(s,v)=saveIndexTextTag(scope_prefix,s,v)

    //function saveIndexLightning 
    saveIndexLightning(sc,s,v)=SaveLightningHandle(sc+s+I2S(getIndex(sc)),v)
    saveIndexLightning(s,v)=saveIndexLightning(scope_prefix,s,v)

    //function saveIndexImage
    saveIndexImage(sc,s,v)=SaveImageHandle(sc+s+I2S(getIndex(sc)),v)
    saveIndexImage(s,v)=saveIndexImage(scope_prefix,s,v)

    //function saveIndexUbersplat
    saveIndexUbersplat(sc,s,v)=SaveUbersplatHandle(sc+s+I2S(getIndex(sc)),v)
    saveIndexUbersplat(s,v)=saveIndexUbersplat(scope_prefix,s,v)

    //function saveIndexRegion
    saveIndexRegion(sc,s,v)=SaveRegionHandle(sc+s+I2S(getIndex(sc)),v)
    saveIndexRegion(s,v)=saveIndexRegion(scope_prefix,s,v)

    //function saveIndexFogState
    saveIndexFogState(sc,s,v)=SaveFogStateHandle(sc+s+I2S(getIndex(sc)),v)
    saveIndexFogState(s,v)=saveIndexFogState(scope_prefix,s,v)

    //function saveIndexFogModifier
    saveIndexFogModifier(sc,s,v)=SaveFogModifierHandle(sc+s+I2S(getIndex(sc)),v)
    saveIndexFogModifier(s,v)=saveIndexFogModifier(scope_prefix,s,v)

    //function saveIndexAgent
    saveIndexAgent(sc,s,v)=SaveAgentHandle(sc+s+I2S(getIndex(sc)),v)
    saveIndexAgent(s,v)=saveIndexAgent(scope_prefix,s,v)

    //function saveIndexHashtable
    saveIndexHashtable(sc,s,v)=SaveHashtableHandle(sc+s+I2S(getIndex(sc)),v)
    saveIndexHashtable(s,v)=saveIndexHashtable(scope_prefix,s,v)

    //function getIndexValue
    getIndexValue(vt,sc,s)=loadValue(vt,sc+s+I2S(getIndex(sc)))
    getIndexValue(vt,s)=getIndexValue(vt,scope_prefix,s)

    //function getIndexInteger
    getIndexInteger(sc,s)=LoadInteger(sc+s+I2S(getIndex(sc)))
    getIndexInteger(s)=getIndexInteger(scope_prefix,s)

    //function getIndexReal
    getIndexReal(sc,s)=LoadReal(sc+s+I2S(getIndex(sc)))
    getIndexReal(s)=getIndexReal(scope_prefix,s)

    //function getIndexBoolean
    getIndexBoolean(sc,s)=LoadBoolean(sc+s+I2S(getIndex(sc)))
    getIndexBoolean(s)=getIndexBoolean(scope_prefix,s)

    //function getIndexStr
    getIndexStr(sc,s)=LoadStr(sc+s+I2S(getIndex(sc)))
    getIndexStr(s)=getIndexStr(scope_prefix,s)
    
    //function getIndexPlayer
    getIndexPlayer(sc,s)=LoadPlayerHandle(sc+s+I2S(getIndex(sc)))
    getIndexPlayer(s)=getIndexPlayer(scope_prefix,s)

    //function getIndexWidget
    getIndexWidget(sc,s)=LoadWidgetHandle(sc+s+I2S(getIndex(sc)))
    getIndexWidget(s)=getIndexWidget(scope_prefix,s)

    //function getIndexDest
    getIndexDest(sc,s)=LoadDestructableHandle(sc+s+I2S(getIndex(sc)))
    getIndexDest(s)=getIndexDest(scope_prefix,s)

    //function getIndexItem
    getIndexItem(sc,s)=LoadItemHandle(sc+s+I2S(getIndex(sc)))
    getIndexItem(s)=getIndexItem(scope_prefix,s)

    //function getIndexUnit
    getIndexUnit(sc,s)=LoadUnitHandle(sc+s+I2S(getIndex(sc)))
    getIndexUnit(s)=getIndexUnit(scope_prefix,s)

    //function getIndexAbility
    getIndexAbility(sc,s)=LoadAbilityHandle(sc+s+I2S(getIndex(sc)))
    getIndexAbility(s)=getIndexAbility(scope_prefix,s)

    //function getIndexTimer
    getIndexTimer(sc,s)=LoadTimerHandle(sc+s+I2S(getIndex(sc)))
    getIndexTimer(s)=getIndexTimer(scope_prefix,s)

    //function getIndexTrigger
    getIndexTrigger(sc,s)=LoadTriggerHandle(sc+s+I2S(getIndex(sc)))
    getIndexTrigger(s)=getIndexTrigger(scope_prefix,s)

    //function getIndexTriggerCondition
    getIndexTriggerCondition(sc,s)=LoadTriggerConditionHandle(sc+s+I2S(getIndex(sc)))
    getIndexTriggerCondition(s)=getIndexTriggerCondition(scope_prefix,s)

    //function getIndexTriggerAction
    getIndexTriggerAction(sc,s)=LoadTriggerActionHandle(sc+s+I2S(getIndex(sc)))
    getIndexTriggerAction(s)=getIndexTriggerAction(scope_prefix,s)

    //function getIndexTriggerEvent
    getIndexTriggerEvent(sc,s)=LoadTriggerEventHandle(sc+s+I2S(getIndex(sc)))
    getIndexTriggerEvent(s)=getIndexTriggerEvent(scope_prefix,s)

    //function getIndexForce
    getIndexForce(sc,s)=LoadForceHandle(sc+s+I2S(getIndex(sc)))
    getIndexForce(s)=getIndexForce(scope_prefix,s)

    //function getIndexGroup
    getIndexGroup(sc,s)=LoadGroupHandle(sc+s+I2S(getIndex(sc)))
    getIndexGroup(s)=getIndexGroup(scope_prefix,s)

    //function getIndexLocation
    getIndexLocation(sc,s)=LoadLocationHandle(sc+s+I2S(getIndex(sc)))
    getIndexLocation(s)=getIndexLocation(scope_prefix,s)

    //function getIndexRect
    getIndexRect(sc,s)=LoadRectHandle(sc+s+I2S(getIndex(sc)))
    getIndexRect(s)=getIndexRect(scope_prefix,s)

    //function getIndexBooleanExpr
    getIndexBooleanExpr(sc,s)=LoadBooleanExprHandle(sc+s+I2S(getIndex(sc)))
    getIndexBooleanExpr(s)=getIndexBooleanExpr(scope_prefix,s)

    //function getIndexSound
    getIndexSound(sc,s)=LoadSoundHandle(sc+s+I2S(getIndex(sc)))
    getIndexSound(s)=getIndexSound(scope_prefix,s)

    //function getIndexUnitPool
    getIndexUnitPool(sc,s)=LoadUnitPoolHandle(sc+s+I2S(getIndex(sc)))
    getIndexUnitPool(s)=getIndexUnitPool(scope_prefix,s)

    //function getIndexItemPool
    getIndexItemPool(sc,s)=LoadItemPoolHandle(sc+s+I2S(getIndex(sc)))
    getIndexItemPool(s)=getIndexItemPool(scope_prefix,s)

    //function getIndexQuest
    getIndexQuest(sc,s)=LoadQuestHandle(sc+s+I2S(getIndex(sc)))
    getIndexQuest(s)=getIndexQuest(scope_prefix,s)

    //function getIndexQuestItem
    getIndexQuestItem(sc,s)=LoadQuestItemHandle(sc+s+I2S(getIndex(sc)))
    getIndexQuestItem(s)=getIndexQuestItem(scope_prefix,s)

    //function getIndexDefeatCondition
    getIndexDefeatCondition(sc,s)=LoadDefeatConditionHandle(sc+s+I2S(getIndex(sc)))
    getIndexDefeatCondition(s)=getIndexDefeatCondition(scope_prefix,s)

    //function getIndexTimerDialog
    getIndexTimerDialog(sc,s)=LoadTimerDialogHandle(sc+s+I2S(getIndex(sc)))
    getIndexTimerDialog(s)=getIndexTimerDialog(scope_prefix,s)

    //function getIndexLeaderboard
    getIndexLeaderboard(sc,s)=LoadLeaderboardHandle(sc+s+I2S(getIndex(sc)))
    getIndexLeaderboard(s)=getIndexLeaderboard(scope_prefix,s)

    //function getIndexMultiboard
    getIndexMultiboard(sc,s)=LoadMultiboardHandle(sc+s+I2S(getIndex(sc)))
    getIndexMultiboard(s)=getIndexMultiboard(scope_prefix,s)

    //function getIndexMultiboardItem
    getIndexMultiboardItem(sc,s)=LoadMultiboardItemHandle(sc+s+I2S(getIndex(sc)))
    getIndexMultiboardItem(s)=getIndexMultiboardItem(scope_prefix,s)

    //function getIndexTrackable
    getIndexTrackable(sc,s)=LoadTrackableHandle(sc+s+I2S(getIndex(sc)))
    getIndexTrackable(s)=getIndexTrackable(scope_prefix,s)

    //function getIndexDialog
    getIndexDialog(sc,s)=LoadDialogHandle(sc+s+I2S(getIndex(sc)))
    getIndexDialog(s)=getIndexDialog(scope_prefix,s)

    //function getIndexButton
    getIndexButton(sc,s)=LoadButtonHandle(sc+s+I2S(getIndex(sc)))
    getIndexButton(s)=getIndexButton(scope_prefix,s)

    //function getIndexTextTag
    getIndexTextTag(sc,s)=LoadTextTagHandle(sc+s+I2S(getIndex(sc)))
    getIndexTextTag(s)=getIndexTextTag(scope_prefix,s)

    //function getIndexLightning
    getIndexLightning(sc,s)=LoadLightningHandle(sc+s+I2S(getIndex(sc)))
    getIndexLightning(s)=getIndexLightning(scope_prefix,s)

    //function getIndexImage
    getIndexImage(sc,s)=LoadImageHandle(sc+s+I2S(getIndex(sc)))
    getIndexImage(s)=getIndexImage(scope_prefix,s)

    //function getIndexUbersplat
    getIndexUbersplat(sc,s)=LoadUbersplatHandle(sc+s+I2S(getIndex(sc)))
    getIndexUbersplat(s)=getIndexUbersplat(scope_prefix,s)

    //function getIndexRegion
    getIndexRegion(sc,s)=LoadRegionHandle(sc+s+I2S(getIndex(sc)))
    getIndexRegion(s)=getIndexRegion(scope_prefix,s)

    //function getIndexFogState
    getIndexFogState(sc,s)=LoadFogStateHandle(sc+s+I2S(getIndex(sc)))
    getIndexFogState(s)=getIndexFogState(scope_prefix,s)

    //function getIndexFogModifier
    getIndexFogModifier(sc,s)=LoadFogModifierHandle(sc+s+I2S(getIndex(sc)))
    getIndexFogModifier(s)=getIndexFogModifier(scope_prefix,s)

    //function getIndexHashtable
    getIndexHashtable(sc,s)=LoadHashtableHandle(sc+s+I2S(getIndex(sc)))
    getIndexHashtable(s)=getIndexHashtable(scope_prefix,s)

    //function haveIndexValue
    haveIndexValue(vt,sc,s)=haveValue(vt,sc+s+I2S(getIndex(sc)))
    haveIndexValue(vt,s)=haveIndexValue(vt,scope_prefix,s)

    //function haveIndexInteger
    haveIndexInteger(sc,s)=HaveSavedInteger(sc+s+I2S(getIndex(sc)))
    haveIndexInteger(s)=haveIndexInteger(scope_prefix,s)

    //function haveIndexReal
    haveIndexReal(sc,s)=HaveSavedReal(sc+s+I2S(getIndex(sc)))
    haveIndexReal(s)=haveIndexReal(scope_prefix,s)

    //function haveIndexBoolean
    haveIndexBoolean(sc,s)=HaveSavedBoolean(sc+s+I2S(getIndex(sc)))
    haveIndexBoolean(s)=haveIndexBoolean(scope_prefix,s)

    //function haveIndexString
    haveIndexString(sc,s)=HaveSavedString(sc+s+I2S(getIndex(sc)))
    haveIndexString(s)=haveIndexString(scope_prefix,s)

    //function haveIndexHandle
    haveIndexHandle(sc,s)=HaveSavedHandle(sc+s+I2S(getIndex(sc)))
    haveIndexHandle(s)=haveIndexHandle(scope_prefix,s)

    //function removeIndexValue
    removeIndexValue(vt,sc,s)=removeValue(vt,sc+s+I2S(getIndex(sc)))
    removeIndexValue(vt,s)=removeIndexValue(vt,scope_prefix,s)

    //function removeIndexInteger
    removeIndexInteger(sc,s)=RemoveSavedInteger(sc+s+I2S(getIndex(sc)))
    removeIndexInteger(s)=removeIndexInteger(scope_prefix,s)

    //function removeIndexReal
    removeIndexReal(sc,s)=RemoveSavedReal(sc+s+I2S(getIndex(sc)))
    removeIndexReal(s)=removeIndexReal(scope_prefix,s)

    //function removeIndexBoolean
    removeIndexBoolean(sc,s)=RemoveSavedBoolean(sc+s+I2S(getIndex(sc)))
    removeIndexBoolean(s)=removeIndexBoolean(scope_prefix,s)

    //function removeIndexString
    removeIndexString(sc,s)=RemoveSavedString(sc+s+I2S(getIndex(sc)))
    removeIndexString(s)=removeIndexString(scope_prefix,s)
}

define
{
    //constant string index2_str
    index2_str = "index2"

    //function add2Index
    add2Index(s)=addInteger(s+I2S(getIndex(s))+index2_str,1)
    add2Index=add2Index(scope_prefix)
    //integer get2Index
    get2Index(s)=LoadInteger(s+I2S(getIndex(s))+index2_str)
    get2Index=get2Index(scope_prefix)

    //function save2IndexValue
    save2IndexValue(vt,sc,s,v)=saveValue(vt,sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexValue(vt,s,v)=save2IndexValue(vt,scope_prefix,s,v)
    
    //function save2IndexInteger
    save2IndexInteger(sc,s,v)=SaveInteger(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexInteger(s,v)=save2IndexInteger(scope_prefix,s,v)

    //function save2IndexReal
    save2IndexReal(sc,s,v)=SaveReal(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexReal(s,v)=save2IndexReal(scope_prefix,s,v)

    //function save2IndexBoolean
    save2IndexBoolean(sc,s,v)=SaveBoolean(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexBoolean(s,v)=save2IndexBoolean(scope_prefix,s,v)

    //function save2IndexStr
    save2IndexStr(sc,s,v)=SaveStr(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexStr(s,v)=save2IndexStr(scope_prefix,s,v)

    //function save2IndexPlayer
    save2IndexPlayer(sc,s,v)=SavePlayerHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexPlayer(s,v)=save2IndexPlayer(scope_prefix,s,v)

    //function save2IndexWidget
    save2IndexWidget(sc,s,v)=SaveWidgetHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexWidget(s,v)=save2IndexWidget(scope_prefix,s,v)

    //function save2IndexDest
    save2IndexDest(sc,s,v)=SaveDestructableHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexDest(s,v)=save2IndexDest(scope_prefix,s,v)

    //function save2IndexItem
    save2IndexItem(sc,s,v)=SaveItemHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexItem(s,v)=save2IndexItem(scope_prefix,s,v)

    //function save2IndexUnit
    save2IndexUnit(sc,s,v)=SaveUnitHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexUnit(s,v)=save2IndexUnit(scope_prefix,s,v)

    //function save2IndexAbility
    save2IndexAbility(sc,s,v)=SaveAbilityHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexAbility(s,v)=save2IndexAbility(scope_prefix,s,v)

    //function save2IndexTimer
    save2IndexTimer(sc,s,v)=SaveTimerHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexTimer(s,v)=save2IndexTimer(scope_prefix,s,v)

    //function save2IndexTrigger
    save2IndexTrigger(sc,s,v)=SaveTriggerHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexTrigger(s,v)=save2IndexTrigger(scope_prefix,s,v)

    //function save2IndexTriggerCondition
    save2IndexTriggerCondition(sc,s,v)=SaveTriggerConditionHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexTriggerCondition(s,v)=save2IndexTriggerCondition(scope_prefix,s,v)

    //function save2IndexTriggerAction
    save2IndexTriggerAction(sc,s,v)=SaveTriggerActionHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexTriggerAction(s,v)=save2IndexTriggerAction(scope_prefix,s,v)

    //function save2IndexTriggerEvent
    save2IndexTriggerEvent(sc,s,v)=SaveTriggerEventHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexTriggerEvent(s,v)=save2IndexTriggerEvent(scope_prefix,s,v)

    //function save2IndexForce
    save2IndexForce(sc,s,v)=SaveForceHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexForce(s,v)=save2IndexForce(scope_prefix,s,v)

    //function save2IndexGroup
    save2IndexGroup(sc,s,v)=SaveGroupHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexGroup(s,v)=save2IndexGroup(scope_prefix,s,v)

    //function save2IndexLocation
    save2IndexLocation(sc,s,v)=SaveLocationHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexLocation(s,v)=save2IndexLocation(scope_prefix,s,v)

    //function save2IndexRect
    save2IndexRect(sc,s,v)=SaveRectHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexRect(s,v)=save2IndexRect(scope_prefix,s,v)

    //function save2IndexBooleanExpr
    save2IndexBooleanExpr(sc,s,v)=SaveBooleanExprHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexBooleanExpr(s,v)=save2IndexBooleanExpr(scope_prefix,s,v)

    //function save2IndexSound
    save2IndexSound(sc,s,v)=SaveSoundHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexSound(s,v)=save2IndexSound(scope_prefix,s,v)

    //function save2IndexEffect
    save2IndexEffect(sc,s,v)=SaveEffectHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexEffect(s,v)=save2IndexEffect(scope_prefix,s,v)

    //function save2IndexUnitPool
    save2IndexUnitPool(sc,s,v)=SaveUnitPoolHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexUnitPool(s,v)=save2IndexUnitPool(scope_prefix,s,v)

    //function save2IndexItemPool
    save2IndexItemPool(sc,s,v)=SaveItemPoolHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexItemPool(s,v)=save2IndexItemPool(scope_prefix,s,v)

    //function save2IndexQuest
    save2IndexQuest(sc,s,v)=SaveQuestHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexQuest(s,v)=save2IndexQuest(scope_prefix,s,v)

    //function save2IndexQuestItem
    save2IndexQuestItem(sc,s,v)=SaveQuestItemHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexQuestItem(s,v)=save2IndexQuestItem(scope_prefix,s,v)

    //function save2IndexDefeatCondition
    save2IndexDefeatCondition(sc,s,v)=SaveDefeatConditionHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexDefeatCondition(s,v)=save2IndexDefeatCondition(scope_prefix,s,v)

    //function save2IndexTimerDialog
    save2IndexTimerDialog(sc,s,v)=SaveTimerDialogHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexTimerDialog(s,v)=save2IndexTimerDialog(scope_prefix,s,v)

    //function save2IndexLeaderboard
    save2IndexLeaderboard(sc,s,v)=SaveLeaderboardHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexLeaderboard(s,v)=save2IndexLeaderboard(scope_prefix,s,v)

    //function save2IndexMultiboard
    save2IndexMultiboard(sc,s,v)=SaveMultiboardHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexMultiboard(s,v)=save2IndexMultiboard(scope_prefix,s,v)

    //function save2IndexMultiboardItem
    save2IndexMultiboardItem(sc,s,v)=SaveMultiboardItemHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexMultiboardItem(s,v)=save2IndexMultiboardItem(scope_prefix,s,v)

    //function save2IndexTrackable
    save2IndexTrackable(sc,s,v)=SaveTrackableHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexTrackable(s,v)=save2IndexTrackable(scope_prefix,s,v)

    //function save2IndexDialog
    save2IndexDialog(sc,s,v)=SaveDialogHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexDialog(s,v)=save2IndexDialog(scope_prefix,s,v)

    //function save2IndexButton
    save2IndexButton(sc,s,v)=SaveButtonHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexButton(s,v)=save2IndexButton(scope_prefix,s,v)

    //function save2IndexTextTag
    save2IndexTextTag(sc,s,v)=SaveTextTagHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexTextTag(s,v)=save2IndexTextTag(scope_prefix,s,v)

    //function save2IndexLightning 
    save2IndexLightning(sc,s,v)=SaveLightningHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexLightning(s,v)=save2IndexLightning(scope_prefix,s,v)

    //function save2IndexImage
    save2IndexImage(sc,s,v)=SaveImageHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexImage(s,v)=save2IndexImage(scope_prefix,s,v)

    //function save2IndexUbersplat
    save2IndexUbersplat(sc,s,v)=SaveUbersplatHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexUbersplat(s,v)=save2IndexUbersplat(scope_prefix,s,v)

    //function save2IndexRegion
    save2IndexRegion(sc,s,v)=SaveRegionHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexRegion(s,v)=save2IndexRegion(scope_prefix,s,v)

    //function save2IndexFogState
    save2IndexFogState(sc,s,v)=SaveFogStateHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexFogState(s,v)=save2IndexFogState(scope_prefix,s,v)

    //function save2IndexFogModifier
    save2IndexFogModifier(sc,s,v)=SaveFogModifierHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexFogModifier(s,v)=save2IndexFogModifier(scope_prefix,s,v)

    //function save2IndexAgent
    save2IndexAgent(sc,s,v)=SaveAgentHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexAgent(s,v)=save2IndexAgent(scope_prefix,s,v)

    //function save2IndexHashtable
    save2IndexHashtable(sc,s,v)=SaveHashtableHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)),v)
    save2IndexHashtable(s,v)=save2IndexHashtable(scope_prefix,s,v)

    //function get2IndexValue
    get2IndexValue(vt,sc,s)=loadValue(vt,sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    get2IndexValue(vt,s)=get2IndexValue(vt,scope_prefix,s)

    //function get2IndexInteger
    get2IndexInteger(sc,s)=LoadInteger(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    get2IndexInteger(s)=get2IndexInteger(scope_prefix,s)

    //function get2IndexReal
    get2IndexReal(sc,s)=LoadReal(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    get2IndexReal(s)=get2IndexReal(scope_prefix,s)

    //function get2IndexBoolean
    get2IndexBoolean(sc,s)=LoadBoolean(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    get2IndexBoolean(s)=get2IndexBoolean(scope_prefix,s)

    //function get2IndexStr
    get2IndexStr(sc,s)=LoadStr(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    get2IndexStr(s)=get2IndexStr(scope_prefix,s)
    
    //function get2IndexPlayer
    get2IndexPlayer(sc,s)=LoadPlayerHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    get2IndexPlayer(s)=get2IndexPlayer(scope_prefix,s)

    //function get2IndexWidget
    get2IndexWidget(sc,s)=LoadWidgetHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    get2IndexWidget(s)=get2IndexWidget(scope_prefix,s)

    //function get2IndexDest
    get2IndexDest(sc,s)=LoadDestructableHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    get2IndexDest(s)=get2IndexDest(scope_prefix,s)

    //function get2IndexItem
    get2IndexItem(sc,s)=LoadItemHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    get2IndexItem(s)=get2IndexItem(scope_prefix,s)

    //function get2IndexUnit
    get2IndexUnit(sc,s)=LoadUnitHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    get2IndexUnit(s)=get2IndexUnit(scope_prefix,s)

    //function get2IndexAbility
    get2IndexAbility(sc,s)=LoadAbilityHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    get2IndexAbility(s)=get2IndexAbility(scope_prefix,s)

    //function get2IndexTimer
    get2IndexTimer(sc,s)=LoadTimerHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    get2IndexTimer(s)=get2IndexTimer(scope_prefix,s)

    //function get2IndexTrigger
    get2IndexTrigger(sc,s)=LoadTriggerHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    get2IndexTrigger(s)=get2IndexTrigger(scope_prefix,s)

    //function get2IndexTriggerCondition
    get2IndexTriggerCondition(sc,s)=LoadTriggerConditionHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    get2IndexTriggerCondition(s)=get2IndexTriggerCondition(scope_prefix,s)

    //function get2IndexTriggerAction
    get2IndexTriggerAction(sc,s)=LoadTriggerActionHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    get2IndexTriggerAction(s)=get2IndexTriggerAction(scope_prefix,s)

    //function get2IndexTriggerEvent
    get2IndexTriggerEvent(sc,s)=LoadTriggerEventHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    get2IndexTriggerEvent(s)=get2IndexTriggerEvent(scope_prefix,s)

    //function get2IndexForce
    get2IndexForce(sc,s)=LoadForceHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    get2IndexForce(s)=get2IndexForce(scope_prefix,s)

    //function get2IndexGroup
    get2IndexGroup(sc,s)=LoadGroupHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    get2IndexGroup(s)=get2IndexGroup(scope_prefix,s)

    //function get2IndexLocation
    get2IndexLocation(sc,s)=LoadLocationHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    get2IndexLocation(s)=get2IndexLocation(scope_prefix,s)

    //function get2IndexRect
    get2IndexRect(sc,s)=LoadRectHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    get2IndexRect(s)=get2IndexRect(scope_prefix,s)

    //function get2IndexBooleanExpr
    get2IndexBooleanExpr(sc,s)=LoadBooleanExprHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    get2IndexBooleanExpr(s)=get2IndexBooleanExpr(scope_prefix,s)

    //function get2IndexSound
    get2IndexSound(sc,s)=LoadSoundHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    get2IndexSound(s)=get2IndexSound(scope_prefix,s)

    //function get2IndexUnitPool
    get2IndexUnitPool(sc,s)=LoadUnitPoolHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    get2IndexUnitPool(s)=get2IndexUnitPool(scope_prefix,s)

    //function get2IndexItemPool
    get2IndexItemPool(sc,s)=LoadItemPoolHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    get2IndexItemPool(s)=get2IndexItemPool(scope_prefix,s)

    //function get2IndexQuest
    get2IndexQuest(sc,s)=LoadQuestHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    get2IndexQuest(s)=get2IndexQuest(scope_prefix,s)

    //function get2IndexQuestItem
    get2IndexQuestItem(sc,s)=LoadQuestItemHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    get2IndexQuestItem(s)=get2IndexQuestItem(scope_prefix,s)

    //function get2IndexDefeatCondition
    get2IndexDefeatCondition(sc,s)=LoadDefeatConditionHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    get2IndexDefeatCondition(s)=get2IndexDefeatCondition(scope_prefix,s)

    //function get2IndexTimerDialog
    get2IndexTimerDialog(sc,s)=LoadTimerDialogHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    get2IndexTimerDialog(s)=get2IndexTimerDialog(scope_prefix,s)

    //function get2IndexLeaderboard
    get2IndexLeaderboard(sc,s)=LoadLeaderboardHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    get2IndexLeaderboard(s)=get2IndexLeaderboard(scope_prefix,s)

    //function get2IndexMultiboard
    get2IndexMultiboard(sc,s)=LoadMultiboardHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    get2IndexMultiboard(s)=get2IndexMultiboard(scope_prefix,s)

    //function get2IndexMultiboardItem
    get2IndexMultiboardItem(sc,s)=LoadMultiboardItemHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    get2IndexMultiboardItem(s)=get2IndexMultiboardItem(scope_prefix,s)

    //function get2IndexTrackable
    get2IndexTrackable(sc,s)=LoadTrackableHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    get2IndexTrackable(s)=get2IndexTrackable(scope_prefix,s)

    //function get2IndexDialog
    get2IndexDialog(sc,s)=LoadDialogHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    get2IndexDialog(s)=get2IndexDialog(scope_prefix,s)

    //function get2IndexButton
    get2IndexButton(sc,s)=LoadButtonHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    get2IndexButton(s)=get2IndexButton(scope_prefix,s)

    //function get2IndexTextTag
    get2IndexTextTag(sc,s)=LoadTextTagHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    get2IndexTextTag(s)=get2IndexTextTag(scope_prefix,s)

    //function get2IndexLightning
    get2IndexLightning(sc,s)=LoadLightningHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    get2IndexLightning(s)=get2IndexLightning(scope_prefix,s)

    //function get2IndexImage
    get2IndexImage(sc,s)=LoadImageHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    get2IndexImage(s)=get2IndexImage(scope_prefix,s)

    //function get2IndexUbersplat
    get2IndexUbersplat(sc,s)=LoadUbersplatHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    get2IndexUbersplat(s)=get2IndexUbersplat(scope_prefix,s)

    //function get2IndexRegion
    get2IndexRegion(sc,s)=LoadRegionHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    get2IndexRegion(s)=get2IndexRegion(scope_prefix,s)

    //function get2IndexFogState
    get2IndexFogState(sc,s)=LoadFogStateHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    get2IndexFogState(s)=get2IndexFogState(scope_prefix,s)

    //function get2IndexFogModifier
    get2IndexFogModifier(sc,s)=LoadFogModifierHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    get2IndexFogModifier(s)=get2IndexFogModifier(scope_prefix,s)

    //function get2IndexHashtable
    get2IndexHashtable(sc,s)=LoadHashtableHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    get2IndexHashtable(s)=get2IndexHashtable(scope_prefix,s)

    //function have2IndexValue
    have2IndexValue(vt,sc,s)=haveValue(vt,sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    have2IndexValue(vt,s)=have2IndexValue(vt,scope_prefix,s)

    //function have2IndexInteger
    have2IndexInteger(sc,s)=HaveSavedInteger(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    have2IndexInteger(s)=have2IndexInteger(scope_prefix,s)

    //function have2IndexReal
    have2IndexReal(sc,s)=HaveSavedReal(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    have2IndexReal(s)=have2IndexReal(scope_prefix,s)

    //function have2IndexBoolean
    have2IndexBoolean(sc,s)=HaveSavedBoolean(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    have2IndexBoolean(s)=have2IndexBoolean(scope_prefix,s)

    //function have2IndexString
    have2IndexString(sc,s)=HaveSavedString(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    have2IndexString(s)=have2IndexString(scope_prefix,s)

    //function have2IndexHandle
    have2IndexHandle(sc,s)=HaveSavedHandle(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    have2IndexHandle(s)=have2IndexHandle(scope_prefix,s)

    //function remove2IndexValue
    remove2IndexValue(vt,sc,s)=removeValue(vt,sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    remove2IndexValue(vt,s)=remove2IndexValue(vt,scope_prefix,s)

    //function remove2IndexInteger
    remove2IndexInteger(sc,s)=RemoveSavedInteger(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    remove2IndexInteger(s)=remove2IndexInteger(scope_prefix,s)

    //function remove2IndexReal
    remove2IndexReal(sc,s)=RemoveSavedReal(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    remove2IndexReal(s)=remove2IndexReal(scope_prefix,s)

    //function remove2IndexBoolean
    remove2IndexBoolean(sc,s)=RemoveSavedBoolean(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    remove2IndexBoolean(s)=remove2IndexBoolean(scope_prefix,s)

    //function remove2IndexString
    remove2IndexString(sc,s)=RemoveSavedString(sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    remove2IndexString(s)=remove2IndexString(scope_prefix,s)
}
define
{
    //function addIndexHandle
    addIndexHandle(h,s)=addInteger(h,s+index_str,1)
    addIndexHandle(h)=addIndexHandle(h,scope_prefix)
    //integer getIndexHandle
    getIndexHandle(h,s)=LoadInteger(h,s+index_str)
    getIndexHandle(h)=getIndexHandle(h,scope_prefix)

    //function saveIndexHandleValue
    saveIndexHandleValue(vt,h,sc,s,v)=saveValue(vt,h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandleValue(vt,h,s,v)=saveIndexHandleValue(vt,h,scope_prefix,s,v)

    //function saveIndexHandleInteger
    saveIndexHandleInteger(h,sc,s,v)=SaveInteger(h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandleInteger(h,s,v)=saveIndexHandleInteger(h,scope_prefix,s,v)

    //function saveIndexHandleReal
    saveIndexHandleReal(h,sc,s,v)=SaveReal(h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandleReal(h,s,v)=saveIndexHandleReal(h,scope_prefix,s,v)

    //function saveIndexHandleBoolean
    saveIndexHandleBoolean(h,sc,s,v)=SaveBoolean(h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandleBoolean(h,s,v)=saveIndexHandleBoolean(h,scope_prefix,s,v)

    //function saveIndexHandleStr
    saveIndexHandleStr(h,sc,s,v)=SaveStr(h,sc+s+I2S(I2S(getIndexHandle(h,sc))),v)
    saveIndexHandleStr(h,s,v)=saveIndexHandleStr(h,scope_prefix,s,v)

    //function saveIndexHandlePlayer
    saveIndexHandlePlayer(h,sc,s,v)=SavePlayerHandle(h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandlePlayer(h,s,v)=saveIndexHandlePlayer(h,scope_prefix,s,v)

    //function saveIndexHandleWidget
    saveIndexHandleWidget(h,sc,s,v)=SaveWidgetHandle(h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandleWidget(h,s,v)=saveIndexHandleWidget(h,scope_prefix,s,v)

    //function saveIndexHandleDest
    saveIndexHandleDest(h,sc,s,v)=SaveDestructableHandle(h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandleDest(h,s,v)=saveIndexHandleDest(h,scope_prefix,s,v)

    //function saveIndexHandleItem
    saveIndexHandleItem(h,sc,s,v)=SaveItemHandle(h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandleItem(h,s,v)=saveIndexHandleItem(h,scope_prefix,s,v)

    //function saveIndexHandleUnit
    saveIndexHandleUnit(h,sc,s,v)=SaveUnitHandle(h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandleUnit(h,s,v)=saveIndexHandleUnit(h,scope_prefix,s,v)

    //function saveIndexHandleAbility
    saveIndexHandleAbility(h,sc,s,v)=SaveAbilityHandle(h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandleAbility(h,s,v)=saveIndexHandleAbility(h,scope_prefix,s,v)

    //function saveIndexHandleTimer
    saveIndexHandleTimer(h,sc,s,v)=SaveTimerHandle(h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandleTimer(h,s,v)=saveIndexHandleTimer(h,scope_prefix,s,v)

    //function saveIndexHandleTrigger
    saveIndexHandleTrigger(h,sc,s,v)=SaveTriggerHandle(h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandleTrigger(h,s,v)=saveIndexHandleTrigger(h,scope_prefix,s,v)

    //function saveIndexHandleTriggerCondition
    saveIndexHandleTriggerCondition(h,sc,s,v)=SaveTriggerConditionHandle(h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandleTriggerCondition(h,s,v)=saveIndexHandleTriggerCondition(h,scope_prefix,s,v)

    //function saveIndexHandleTriggerAction
    saveIndexHandleTriggerAction(h,sc,s,v)=SaveTriggerActionHandle(h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandleTriggerAction(h,s,v)=saveIndexHandleTriggerAction(h,scope_prefix,s,v)

    //function saveIndexHandleTriggerEvent
    saveIndexHandleTriggerEvent(h,sc,s,v)=SaveTriggerEventHandle(h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandleTriggerEvent(h,s,v)=saveIndexHandleTriggerEvent(h,scope_prefix,s,v)

    //function saveIndexHandleForce
    saveIndexHandleForce(h,sc,s,v)=SaveForceHandle(h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandleForce(h,s,v)=saveIndexHandleForce(h,scope_prefix,s,v)

    //function saveIndexHandleGroup
    saveIndexHandleGroup(h,sc,s,v)=SaveGroupHandle(h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandleGroup(h,s,v)=saveIndexHandleGroup(h,scope_prefix,s,v)

    //function saveIndexHandleLocation
    saveIndexHandleLocation(h,sc,s,v)=SaveLocationHandle(h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandleLocation(h,s,v)=saveIndexHandleLocation(h,scope_prefix,s,v)

    //function saveIndexHandleRect
    saveIndexHandleRect(h,sc,s,v)=SaveRectHandle(h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandleRect(h,s,v)=saveIndexHandleRect(h,scope_prefix,s,v)

    //function saveIndexHandleBooleanExpr
    saveIndexHandleBooleanExpr(h,sc,s,v)=SaveBooleanExprHandle(h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandleBooleanExpr(h,s,v)=saveIndexHandleBooleanExpr(h,scope_prefix,s,v)

    //function saveIndexHandleSound
    saveIndexHandleSound(h,sc,s,v)=SaveSoundHandle(h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandleSound(h,s,v)=saveIndexHandleSound(h,scope_prefix,s,v)

    //function saveIndexHandleEffect
    saveIndexHandleEffect(h,sc,s,v)=SaveEffectHandle(h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandleEffect(h,s,v)=saveIndexHandleEffect(h,scope_prefix,s,v)

    //function saveIndexHandleUnitPool
    saveIndexHandleUnitPool(h,sc,s,v)=SaveUnitPoolHandle(h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandleUnitPool(h,s,v)=saveIndexHandleUnitPool(h,scope_prefix,s,v)

    //function saveIndexHandleItemPool
    saveIndexHandleItemPool(h,sc,s,v)=SaveItemPoolHandle(h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandleItemPool(h,s,v)=saveIndexHandleItemPool(h,scope_prefix,s,v)

    //function saveIndexHandleQuest
    saveIndexHandleQuest(h,sc,s,v)=SaveQuestHandle(h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandleQuest(h,s,v)=saveIndexHandleQuest(h,scope_prefix,s,v)

    //function saveIndexHandleQuestItem
    saveIndexHandleQuestItem(h,sc,s,v)=SaveQuestItemHandle(h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandleQuestItem(h,s,v)=saveIndexHandleQuestItem(h,scope_prefix,s,v)

    //function saveIndexHandleDefeatCondition
    saveIndexHandleDefeatCondition(h,sc,s,v)=SaveDefeatConditionHandle(h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandleDefeatCondition(h,s,v)=saveIndexHandleDefeatCondition(h,scope_prefix,s,v)

    //function saveIndexHandleTimerDialog
    saveIndexHandleTimerDialog(h,sc,s,v)=SaveTimerDialogHandle(h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandleTimerDialog(h,s,v)=saveIndexHandleTimerDialog(h,scope_prefix,s,v)

    //function saveIndexHandleLeaderboard
    saveIndexHandleLeaderboard(h,sc,s,v)=SaveLeaderboardHandle(h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandleLeaderboard(h,s,v)=saveIndexHandleLeaderboard(h,scope_prefix,s,v)

    //function saveIndexHandleMultiboard
    saveIndexHandleMultiboard(h,sc,s,v)=SaveMultiboardHandle(h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandleMultiboard(h,s,v)=saveIndexHandleMultiboard(h,scope_prefix,s,v)

    //function saveIndexHandleMultiboardItem
    saveIndexHandleMultiboardItem(h,sc,s,v)=SaveMultiboardItemHandle(h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandleMultiboardItem(h,s,v)=saveIndexHandleMultiboardItem(h,scope_prefix,s,v)

    //function saveIndexHandleTrackable
    saveIndexHandleTrackable(h,sc,s,v)=SaveTrackableHandle(h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandleTrackable(h,s,v)=saveIndexHandleTrackable(h,scope_prefix,s,v)

    //function saveIndexHandleDialog
    saveIndexHandleDialog(h,sc,s,v)=SaveDialogHandle(h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandleDialog(h,s,v)=saveIndexHandleDialog(h,scope_prefix,s,v)

    //function saveIndexHandleButton
    saveIndexHandleButton(h,sc,s,v)=SaveButtonHandle(h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandleButton(h,s,v)=saveIndexHandleButton(h,scope_prefix,s,v)

    //function saveIndexHandleTextTag
    saveIndexHandleTextTag(h,sc,s,v)=SaveTextTagHandle(h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandleTextTag(h,s,v)=saveIndexHandleTextTag(h,scope_prefix,s,v)

    //function saveIndexHandleLightning 
    saveIndexHandleLightning(h,sc,s,v)=SaveLightningHandle(h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandleLightning(h,s,v)=saveIndexHandleLightning(h,scope_prefix,s,v)

    //function saveIndexHandleImage
    saveIndexHandleImage(h,sc,s,v)=SaveImageHandle(h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandleImage(h,s,v)=saveIndexHandleImage(h,scope_prefix,s,v)

    //function saveIndexHandleUbersplat
    saveIndexHandleUbersplat(h,sc,s,v)=SaveUbersplatHandle(h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandleUbersplat(h,s,v)=saveIndexHandleUbersplat(h,scope_prefix,s,v)

    //function saveIndexHandleRegion
    saveIndexHandleRegion(h,sc,s,v)=SaveRegionHandle(h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandleRegion(h,s,v)=saveIndexHandleRegion(h,scope_prefix,s,v)

    //function saveIndexHandleFogState
    saveIndexHandleFogState(h,sc,s,v)=SaveFogStateHandle(h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandleFogState(h,s,v)=saveIndexHandleFogState(h,scope_prefix,s,v)

    //function saveIndexHandleFogModifier
    saveIndexHandleFogModifier(h,sc,s,v)=SaveFogModifierHandle(h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandleFogModifier(h,s,v)=saveIndexHandleFogModifier(h,scope_prefix,s,v)

    //function saveIndexHandleAgent
    saveIndexHandleAgent(h,sc,s,v)=SaveAgentHandle(h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandleAgent(h,s,v)=saveIndexHandleAgent(h,scope_prefix,s,v)

    //function saveIndexHandleHashtable
    saveIndexHandleHashtable(h,sc,s,v)=SaveHashtableHandle(h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandleHashtable(h,s,v)=saveIndexHandleHashtable(h,scope_prefix,s,v)
}
define
{
    //function getIndexHandleValue
    getIndexHandleValue(vt,h,sc,s)=loadValue(vt,h,sc+s+I2S(getIndexHandle(h,sc)))
    getIndexHandleValue(vt,h,s)=getIndexHandleValue(vt,h,scope_prefix,s)

    //function getIndexHandleInteger
    getIndexHandleInteger(h,sc,s)=LoadInteger(h,sc+s+I2S(getIndexHandle(h,sc)))
    getIndexHandleInteger(h,s)=getIndexHandleInteger(h,scope_prefix,s)

    //function getIndexHandleReal
    getIndexHandleReal(h,sc,s)=LoadReal(h,sc+s+I2S(getIndexHandle(h,sc)))
    getIndexHandleReal(h,s)=getIndexHandleReal(h,scope_prefix,s)

    //function getIndexHandleBoolean
    getIndexHandleBoolean(h,sc,s)=LoadBoolean(h,sc+s+I2S(getIndexHandle(h,sc)))
    getIndexHandleBoolean(h,s)=getIndexHandleBoolean(h,scope_prefix,s)

    //function getIndexHandleStr
    getIndexHandleStr(h,sc,s)=LoadStr(h,sc+s+I2S(getIndexHandle(h,sc)))
    getIndexHandleStr(h,s)=getIndexHandleStr(h,scope_prefix,s)
    
    //function getIndexHandlePlayer
    getIndexHandlePlayer(h,sc,s)=LoadPlayerHandle(h,sc+s+I2S(getIndexHandle(h,sc)))
    getIndexHandlePlayer(h,s)=getIndexHandlePlayer(h,scope_prefix,s)

    //function getIndexHandleWidget
    getIndexHandleWidget(h,sc,s)=LoadWidgetHandle(h,sc+s+I2S(getIndexHandle(h,sc)))
    getIndexHandleWidget(h,s)=getIndexHandleWidget(h,scope_prefix,s)

    //function getIndexHandleDest
    getIndexHandleDest(h,sc,s)=LoadDestructableHandle(h,sc+s+I2S(getIndexHandle(h,sc)))
    getIndexHandleDest(h,s)=getIndexHandleDest(h,scope_prefix,s)

    //function getIndexHandleItem
    getIndexHandleItem(h,sc,s)=LoadItemHandle(h,sc+s+I2S(getIndexHandle(h,sc)))
    getIndexHandleItem(h,s)=getIndexHandleItem(h,scope_prefix,s)

    //function getIndexHandleUnit
    getIndexHandleUnit(h,sc,s)=LoadUnitHandle(h,sc+s+I2S(getIndexHandle(h,sc)))
    getIndexHandleUnit(h,s)=getIndexHandleUnit(h,scope_prefix,s)

    //function getIndexHandleAbility
    getIndexHandleAbility(h,sc,s)=LoadAbilityHandle(h,sc+s+I2S(getIndexHandle(h,sc)))
    getIndexHandleAbility(h,s)=getIndexHandleAbility(h,scope_prefix,s)

    //function getIndexHandleTimer
    getIndexHandleTimer(h,sc,s)=LoadTimerHandle(h,sc+s+I2S(getIndexHandle(h,sc)))
    getIndexHandleTimer(h,s)=getIndexHandleTimer(h,scope_prefix,s)

    //function getIndexHandleTrigger
    getIndexHandleTrigger(h,sc,s)=LoadTriggerHandle(h,sc+s+I2S(getIndexHandle(h,sc)))
    getIndexHandleTrigger(h,s)=getIndexHandleTrigger(h,scope_prefix,s)

    //function getIndexHandleTriggerCondition
    getIndexHandleTriggerCondition(h,sc,s)=LoadTriggerConditionHandle(h,sc+s+I2S(getIndexHandle(h,sc)))
    getIndexHandleTriggerCondition(h,s)=getIndexHandleTriggerCondition(h,scope_prefix,s)

    //function getIndexHandleTriggerAction
    getIndexHandleTriggerAction(h,sc,s)=LoadTriggerActionHandle(h,sc+s+I2S(getIndexHandle(h,sc)))
    getIndexHandleTriggerAction(h,s)=getIndexHandleTriggerAction(h,scope_prefix,s)

    //function getIndexHandleTriggerEvent
    getIndexHandleTriggerEvent(h,sc,s)=LoadTriggerEventHandle(h,sc+s+I2S(getIndexHandle(h,sc)))
    getIndexHandleTriggerEvent(h,s)=getIndexHandleTriggerEvent(h,scope_prefix,s)

    //function getIndexHandleForce
    getIndexHandleForce(h,sc,s)=LoadForceHandle(h,sc+s+I2S(getIndexHandle(h,sc)))
    getIndexHandleForce(h,s)=getIndexHandleForce(h,scope_prefix,s)

    //function getIndexHandleGroup
    getIndexHandleGroup(h,sc,s)=LoadGroupHandle(h,sc+s+I2S(getIndexHandle(h,sc)))
    getIndexHandleGroup(h,s)=getIndexHandleGroup(h,scope_prefix,s)

    //function getIndexHandleLocation
    getIndexHandleLocation(h,sc,s)=LoadLocationHandle(h,sc+s+I2S(getIndexHandle(h,sc)))
    getIndexHandleLocation(h,s)=getIndexHandleLocation(h,scope_prefix,s)

    //function getIndexHandleRect
    getIndexHandleRect(h,sc,s)=LoadRectHandle(h,sc+s+I2S(getIndexHandle(h,sc)))
    getIndexHandleRect(h,s)=getIndexHandleRect(h,scope_prefix,s)

    //function getIndexHandleBooleanExpr
    getIndexHandleBooleanExpr(h,sc,s)=LoadBooleanExprHandle(h,sc+s+I2S(getIndexHandle(h,sc)))
    getIndexHandleBooleanExpr(h,s)=getIndexHandleBooleanExpr(h,scope_prefix,s)

    //function getIndexHandleSound
    getIndexHandleSound(h,sc,s)=LoadSoundHandle(h,sc+s+I2S(getIndexHandle(h,sc)))
    getIndexHandleSound(h,s)=getIndexHandleSound(h,scope_prefix,s)

    //function getIndexHandleUnitPool
    getIndexHandleUnitPool(h,sc,s)=LoadUnitPoolHandle(h,sc+s+I2S(getIndexHandle(h,sc)))
    getIndexHandleUnitPool(h,s)=getIndexHandleUnitPool(h,scope_prefix,s)

    //function getIndexHandleItemPool
    getIndexHandleItemPool(h,sc,s)=LoadItemPoolHandle(h,sc+s+I2S(getIndexHandle(h,sc)))
    getIndexHandleItemPool(h,s)=getIndexHandleItemPool(h,scope_prefix,s)

    //function getIndexHandleQuest
    getIndexHandleQuest(h,sc,s)=LoadQuestHandle(h,sc+s+I2S(getIndexHandle(h,sc)))
    getIndexHandleQuest(h,s)=getIndexHandleQuest(h,scope_prefix,s)

    //function getIndexHandleQuestItem
    getIndexHandleQuestItem(h,sc,s)=LoadQuestItemHandle(h,sc+s+I2S(getIndexHandle(h,sc)))
    getIndexHandleQuestItem(h,s)=getIndexHandleQuestItem(h,scope_prefix,s)

    //function getIndexHandleDefeatCondition
    getIndexHandleDefeatCondition(h,sc,s)=LoadDefeatConditionHandle(h,sc+s+I2S(getIndexHandle(h,sc)))
    getIndexHandleDefeatCondition(h,s)=getIndexHandleDefeatCondition(h,scope_prefix,s)

    //function getIndexHandleTimerDialog
    getIndexHandleTimerDialog(h,sc,s)=LoadTimerDialogHandle(h,sc+s+I2S(getIndexHandle(h,sc)))
    getIndexHandleTimerDialog(h,s)=getIndexHandleTimerDialog(h,scope_prefix,s)

    //function getIndexHandleLeaderboard
    getIndexHandleLeaderboard(h,sc,s)=LoadLeaderboardHandle(h,sc+s+I2S(getIndexHandle(h,sc)))
    getIndexHandleLeaderboard(h,s)=getIndexHandleLeaderboard(h,scope_prefix,s)

    //function getIndexHandleMultiboard
    getIndexHandleMultiboard(h,sc,s)=LoadMultiboardHandle(h,sc+s+I2S(getIndexHandle(h,sc)))
    getIndexHandleMultiboard(h,s)=getIndexHandleMultiboard(h,scope_prefix,s)

    //function getIndexHandleMultiboardItem
    getIndexHandleMultiboardItem(h,sc,s)=LoadMultiboardItemHandle(h,sc+s+I2S(getIndexHandle(h,sc)))
    getIndexHandleMultiboardItem(h,s)=getIndexHandleMultiboardItem(h,scope_prefix,s)

    //function getIndexHandleTrackable
    getIndexHandleTrackable(h,sc,s)=LoadTrackableHandle(h,sc+s+I2S(getIndexHandle(h,sc)))
    getIndexHandleTrackable(h,s)=getIndexHandleTrackable(h,scope_prefix,s)

    //function getIndexHandleDialog
    getIndexHandleDialog(h,sc,s)=LoadDialogHandle(h,sc+s+I2S(getIndexHandle(h,sc)))
    getIndexHandleDialog(h,s)=getIndexHandleDialog(h,scope_prefix,s)

    //function getIndexHandleButton
    getIndexHandleButton(h,sc,s)=LoadButtonHandle(h,sc+s+I2S(getIndexHandle(h,sc)))
    getIndexHandleButton(h,s)=getIndexHandleButton(h,scope_prefix,s)

    //function getIndexHandleTextTag
    getIndexHandleTextTag(h,sc,s)=LoadTextTagHandle(h,sc+s+I2S(getIndexHandle(h,sc)))
    getIndexHandleTextTag(h,s)=getIndexHandleTextTag(h,scope_prefix,s)

    //function getIndexHandleLightning
    getIndexHandleLightning(h,sc,s)=LoadLightningHandle(h,sc+s+I2S(getIndexHandle(h,sc)))
    getIndexHandleLightning(h,s)=getIndexHandleLightning(h,scope_prefix,s)

    //function getIndexHandleImage
    getIndexHandleImage(h,sc,s)=LoadImageHandle(h,sc+s+I2S(getIndexHandle(h,sc)))
    getIndexHandleImage(h,s)=getIndexHandleImage(h,scope_prefix,s)

    //function getIndexHandleUbersplat
    getIndexHandleUbersplat(h,sc,s)=LoadUbersplatHandle(h,sc+s+I2S(getIndexHandle(h,sc)))
    getIndexHandleUbersplat(h,s)=getIndexHandleUbersplat(h,scope_prefix,s)

    //function getIndexHandleRegion
    getIndexHandleRegion(h,sc,s)=LoadRegionHandle(h,sc+s+I2S(getIndexHandle(h,sc)))
    getIndexHandleRegion(h,s)=getIndexHandleRegion(h,scope_prefix,s)

    //function getIndexHandleFogState
    getIndexHandleFogState(h,sc,s)=LoadFogStateHandle(h,sc+s+I2S(getIndexHandle(h,sc)))
    getIndexHandleFogState(h,s)=getIndexHandleFogState(h,scope_prefix,s)

    //function getIndexHandleFogModifier
    getIndexHandleFogModifier(h,sc,s)=LoadFogModifierHandle(h,sc+s+I2S(getIndexHandle(h,sc)))
    getIndexHandleFogModifier(h,s)=getIndexHandleFogModifier(h,scope_prefix,s)

    //function getIndexHandleHashtable
    getIndexHandleHashtable(h,sc,s)=LoadHashtableHandle(h,sc+s+I2S(getIndexHandle(h,sc)))
    getIndexHandleHashtable(h,s)=getIndexHandleHashtable(h,scope_prefix,s)

    //function haveIndexHandleValue
    haveIndexHandleValue(vt,h,sc,s)=haveValue(vt,h,sc+s+I2S(getIndexHandle(h,sc)))
    haveIndexHandleValue(vt,h,s)=haveIndexHandleValue(vt,h,scope_prefix,s)

    //function haveIndexHandleInteger
    haveIndexHandleInteger(h,sc,s)=HaveSavedInteger(h,sc+s+I2S(getIndexHandle(h,sc)))
    haveIndexHandleInteger(h,s)=haveIndexHandleInteger(h,scope_prefix,s)

    //function haveIndexHandleReal
    haveIndexHandleReal(h,sc,s)=HaveSavedReal(h,sc+s+I2S(getIndexHandle(h,sc)))
    haveIndexHandleReal(h,s)=haveIndexHandleReal(h,scope_prefix,s)

    //function haveIndexHandleBoolean
    haveIndexHandleBoolean(h,sc,s)=HaveSavedBoolean(h,sc+s+I2S(getIndexHandle(h,sc)))
    haveIndexHandleBoolean(h,s)=haveIndexHandleBoolean(h,scope_prefix,s)

    //function haveIndexHandleString
    haveIndexHandleString(h,sc,s)=HaveSavedString(h,sc+s+I2S(getIndexHandle(h,sc)))
    haveIndexHandleString(h,s)=haveIndexHandleString(h,scope_prefix,s)

    //function haveIndexHandleHandle
    haveIndexHandleHandle(h,sc,s)=HaveSavedHandle(h,sc+s+I2S(getIndexHandle(h,sc)))
    haveIndexHandleHandle(h,s)=haveIndexHandleHandle(h,scope_prefix,s)

    //function removeIndexHandleValue
    removeIndexHandleValue(vt,h,sc,s)=removeValue(vt,h,sc+s+I2S(getIndexHandle(h,sc)))
    removeIndexHandleValue(vt,h,s)=removeIndexHandleValue(vt,h,scope_prefix,s)

    //function removeIndexHandleInteger
    removeIndexHandleInteger(h,sc,s)=RemoveSavedInteger(h,sc+s+I2S(getIndexHandle(h,sc)))
    removeIndexHandleInteger(h,s)=removeIndexHandleInteger(h,scope_prefix,s)

    //function removeIndexHandleReal
    removeIndexHandleReal(h,sc,s)=RemoveSavedReal(h,sc+s+I2S(getIndexHandle(h,sc)))
    removeIndexHandleReal(h,s)=removeIndexHandleReal(h,scope_prefix,s)

    //function removeIndexHandleBoolean
    removeIndexHandleBoolean(h,sc,s)=RemoveSavedBoolean(h,sc+s+I2S(getIndexHandle(h,sc)))
    removeIndexHandleBoolean(h,s)=removeIndexHandleBoolean(h,scope_prefix,s)

    //function removeIndexHandleString
    removeIndexHandleString(h,sc,s)=RemoveSavedString(h,sc+s+I2S(getIndexHandle(h,sc)))
    removeIndexHandleString(h,s)=removeIndexHandleString(h,scope_prefix,s)
}
define
{
    //function add2IndexHandle
    add2IndexHandle(h,s)=addInteger(h,s+I2S(getIndexHandle(h,s))+index2_str,1)
    add2IndexHandle(h)=add2IndexHandle(h,scope_prefix)
    //integer get2IndexHandle
    get2IndexHandle(h,s)=LoadInteger(hash,GetHandleId(h),StringHash(s+I2S(getIndexHandle(h,s))+index2_str))
    get2IndexHandle(h)=get2IndexHandle(h,scope_prefix)

    //function save2IndexHandleValue
    save2IndexHandleValue(vt,h,sc,s,v)=saveValue(vt,h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleValue(vt,h,s,v)=save2IndexHandleValue(vt,h,scope_prefix,s,v)
    
    //function save2IndexHandleInteger
    save2IndexHandleInteger(h,sc,s,v)=SaveInteger(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleInteger(h,s,v)=save2IndexHandleInteger(h,scope_prefix,s,v)

    //function save2IndexHandleReal
    save2IndexHandleReal(h,sc,s,v)=SaveReal(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleReal(h,s,v)=save2IndexHandleReal(h,scope_prefix,s,v)

    //function save2IndexHandleBoolean
    save2IndexHandleBoolean(h,sc,s,v)=SaveBoolean(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleBoolean(h,s,v)=save2IndexHandleBoolean(h,scope_prefix,s,v)

    //function save2IndexHandleStr
    save2IndexHandleStr(h,sc,s,v)=SaveStr(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleStr(h,s,v)=save2IndexHandleStr(h,scope_prefix,s,v)

    //function save2IndexHandlePlayer
    save2IndexHandlePlayer(h,sc,s,v)=SavePlayerHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandlePlayer(h,s,v)=save2IndexHandlePlayer(h,scope_prefix,s,v)

    //function save2IndexHandleWidget
    save2IndexHandleWidget(h,sc,s,v)=SaveWidgetHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleWidget(h,s,v)=save2IndexHandleWidget(h,scope_prefix,s,v)

    //function save2IndexHandleDest
    save2IndexHandleDest(h,sc,s,v)=SaveDestructableHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleDest(h,s,v)=save2IndexHandleDest(h,scope_prefix,s,v)

    //function save2IndexHandleItem
    save2IndexHandleItem(h,sc,s,v)=SaveItemHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleItem(h,s,v)=save2IndexHandleItem(h,scope_prefix,s,v)

    //function save2IndexHandleUnit
    save2IndexHandleUnit(h,sc,s,v)=SaveUnitHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleUnit(h,s,v)=save2IndexHandleUnit(h,scope_prefix,s,v)

    //function save2IndexHandleAbility
    save2IndexHandleAbility(h,sc,s,v)=SaveAbilityHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleAbility(h,s,v)=save2IndexHandleAbility(h,scope_prefix,s,v)

    //function save2IndexHandleTimer
    save2IndexHandleTimer(h,sc,s,v)=SaveTimerHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleTimer(h,s,v)=save2IndexHandleTimer(h,scope_prefix,s,v)

    //function save2IndexHandleTrigger
    save2IndexHandleTrigger(h,sc,s,v)=SaveTriggerHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleTrigger(h,s,v)=save2IndexHandleTrigger(h,scope_prefix,s,v)

    //function save2IndexHandleTriggerCondition
    save2IndexHandleTriggerCondition(h,sc,s,v)=SaveTriggerConditionHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleTriggerCondition(h,s,v)=save2IndexHandleTriggerCondition(h,scope_prefix,s,v)

    //function save2IndexHandleTriggerAction
    save2IndexHandleTriggerAction(h,sc,s,v)=SaveTriggerActionHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleTriggerAction(h,s,v)=save2IndexHandleTriggerAction(h,scope_prefix,s,v)

    //function save2IndexHandleTriggerEvent
    save2IndexHandleTriggerEvent(h,sc,s,v)=SaveTriggerEventHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleTriggerEvent(h,s,v)=save2IndexHandleTriggerEvent(h,scope_prefix,s,v)

    //function save2IndexHandleForce
    save2IndexHandleForce(h,sc,s,v)=SaveForceHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleForce(h,s,v)=save2IndexHandleForce(h,scope_prefix,s,v)

    //function save2IndexHandleGroup
    save2IndexHandleGroup(h,sc,s,v)=SaveGroupHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleGroup(h,s,v)=save2IndexHandleGroup(h,scope_prefix,s,v)

    //function save2IndexHandleLocation
    save2IndexHandleLocation(h,sc,s,v)=SaveLocationHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleLocation(h,s,v)=save2IndexHandleLocation(h,scope_prefix,s,v)

    //function save2IndexHandleRect
    save2IndexHandleRect(h,sc,s,v)=SaveRectHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleRect(h,s,v)=save2IndexHandleRect(h,scope_prefix,s,v)

    //function save2IndexHandleBooleanExpr
    save2IndexHandleBooleanExpr(h,sc,s,v)=SaveBooleanExprHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleBooleanExpr(h,s,v)=save2IndexHandleBooleanExpr(h,scope_prefix,s,v)

    //function save2IndexHandleSound
    save2IndexHandleSound(h,sc,s,v)=SaveSoundHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleSound(h,s,v)=save2IndexHandleSound(h,scope_prefix,s,v)

    //function save2IndexHandleEffect
    save2IndexHandleEffect(h,sc,s,v)=SaveEffectHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleEffect(h,s,v)=save2IndexHandleEffect(h,scope_prefix,s,v)

    //function save2IndexHandleUnitPool
    save2IndexHandleUnitPool(h,sc,s,v)=SaveUnitPoolHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleUnitPool(h,s,v)=save2IndexHandleUnitPool(h,scope_prefix,s,v)

    //function save2IndexHandleItemPool
    save2IndexHandleItemPool(h,sc,s,v)=SaveItemPoolHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleItemPool(h,s,v)=save2IndexHandleItemPool(h,scope_prefix,s,v)

    //function save2IndexHandleQuest
    save2IndexHandleQuest(h,sc,s,v)=SaveQuestHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleQuest(h,s,v)=save2IndexHandleQuest(h,scope_prefix,s,v)

    //function save2IndexHandleQuestItem
    save2IndexHandleQuestItem(h,sc,s,v)=SaveQuestItemHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleQuestItem(h,s,v)=save2IndexHandleQuestItem(h,scope_prefix,s,v)

    //function save2IndexHandleDefeatCondition
    save2IndexHandleDefeatCondition(h,sc,s,v)=SaveDefeatConditionHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleDefeatCondition(h,s,v)=save2IndexHandleDefeatCondition(h,scope_prefix,s,v)

    //function save2IndexHandleTimerDialog
    save2IndexHandleTimerDialog(h,sc,s,v)=SaveTimerDialogHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleTimerDialog(h,s,v)=save2IndexHandleTimerDialog(h,scope_prefix,s,v)

    //function save2IndexHandleLeaderboard
    save2IndexHandleLeaderboard(h,sc,s,v)=SaveLeaderboardHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleLeaderboard(h,s,v)=save2IndexHandleLeaderboard(h,scope_prefix,s,v)

    //function save2IndexHandleMultiboard
    save2IndexHandleMultiboard(h,sc,s,v)=SaveMultiboardHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleMultiboard(h,s,v)=save2IndexHandleMultiboard(h,scope_prefix,s,v)

    //function save2IndexHandleMultiboardItem
    save2IndexHandleMultiboardItem(h,sc,s,v)=SaveMultiboardItemHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleMultiboardItem(h,s,v)=save2IndexHandleMultiboardItem(h,scope_prefix,s,v)

    //function save2IndexHandleTrackable
    save2IndexHandleTrackable(h,sc,s,v)=SaveTrackableHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleTrackable(h,s,v)=save2IndexHandleTrackable(h,scope_prefix,s,v)

    //function save2IndexHandleDialog
    save2IndexHandleDialog(h,sc,s,v)=SaveDialogHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleDialog(h,s,v)=save2IndexHandleDialog(h,scope_prefix,s,v)

    //function save2IndexHandleButton
    save2IndexHandleButton(h,sc,s,v)=SaveButtonHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleButton(h,s,v)=save2IndexHandleButton(h,scope_prefix,s,v)

    //function save2IndexHandleTextTag
    save2IndexHandleTextTag(h,sc,s,v)=SaveTextTagHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleTextTag(h,s,v)=save2IndexHandleTextTag(h,scope_prefix,s,v)

    //function save2IndexHandleLightning 
    save2IndexHandleLightning(h,sc,s,v)=SaveLightningHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleLightning(h,s,v)=save2IndexHandleLightning(h,scope_prefix,s,v)

    //function save2IndexHandleImage
    save2IndexHandleImage(h,sc,s,v)=SaveImageHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleImage(h,s,v)=save2IndexHandleImage(h,scope_prefix,s,v)

    //function save2IndexHandleUbersplat
    save2IndexHandleUbersplat(h,sc,s,v)=SaveUbersplatHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleUbersplat(h,s,v)=save2IndexHandleUbersplat(h,scope_prefix,s,v)

    //function save2IndexHandleRegion
    save2IndexHandleRegion(h,sc,s,v)=SaveRegionHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleRegion(h,s,v)=save2IndexHandleRegion(h,scope_prefix,s,v)

    //function save2IndexHandleFogState
    save2IndexHandleFogState(h,sc,s,v)=SaveFogStateHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleFogState(h,s,v)=save2IndexHandleFogState(h,scope_prefix,s,v)

    //function save2IndexHandleFogModifier
    save2IndexHandleFogModifier(h,sc,s,v)=SaveFogModifierHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleFogModifier(h,s,v)=save2IndexHandleFogModifier(h,scope_prefix,s,v)

    //function save2IndexHandleAgent
    save2IndexHandleAgent(h,sc,s,v)=SaveAgentHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleAgent(h,s,v)=save2IndexHandleAgent(h,scope_prefix,s,v)

    //function save2IndexHandleHashtable
    save2IndexHandleHashtable(h,sc,s,v)=SaveHashtableHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleHashtable(h,s,v)=save2IndexHandleHashtable(h,scope_prefix,s,v)
}
define
{
    //function get2IndexHandleValue
    get2IndexHandleValue(vt,h,sc,s)=loadValue(vt,h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    get2IndexHandleValue(vt,h,s)=get2IndexHandleValue(vt,h,scope_prefix,s)

    //function get2IndexHandleInteger
    get2IndexHandleInteger(h,sc,s)=LoadInteger(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    get2IndexHandleInteger(h,s)=get2IndexHandleInteger(h,scope_prefix,s)

    //function get2IndexHandleReal
    get2IndexHandleReal(h,sc,s)=LoadReal(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    get2IndexHandleReal(h,s)=get2IndexHandleReal(h,scope_prefix,s)

    //function get2IndexHandleBoolean
    get2IndexHandleBoolean(h,sc,s)=LoadBoolean(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    get2IndexHandleBoolean(h,s)=get2IndexHandleBoolean(h,scope_prefix,s)

    //function get2IndexHandleStr
    get2IndexHandleStr(h,sc,s)=LoadStr(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    get2IndexHandleStr(h,s)=get2IndexHandleStr(h,scope_prefix,s)
    
    //function get2IndexHandlePlayer
    get2IndexHandlePlayer(h,sc,s)=LoadPlayerHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    get2IndexHandlePlayer(h,s)=get2IndexHandlePlayer(h,scope_prefix,s)

    //function get2IndexHandleWidget
    get2IndexHandleWidget(h,sc,s)=LoadWidgetHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    get2IndexHandleWidget(h,s)=get2IndexHandleWidget(h,scope_prefix,s)

    //function get2IndexHandleDest
    get2IndexHandleDest(h,sc,s)=LoadDestructableHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    get2IndexHandleDest(h,s)=get2IndexHandleDest(h,scope_prefix,s)

    //function get2IndexHandleItem
    get2IndexHandleItem(h,sc,s)=LoadItemHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    get2IndexHandleItem(h,s)=get2IndexHandleItem(h,scope_prefix,s)

    //function get2IndexHandleUnit
    get2IndexHandleUnit(h,sc,s)=LoadUnitHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    get2IndexHandleUnit(h,s)=get2IndexHandleUnit(h,scope_prefix,s)

    //function get2IndexHandleAbility
    get2IndexHandleAbility(h,sc,s)=LoadAbilityHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    get2IndexHandleAbility(h,s)=get2IndexHandleAbility(h,scope_prefix,s)

    //function get2IndexHandleTimer
    get2IndexHandleTimer(h,sc,s)=LoadTimerHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    get2IndexHandleTimer(h,s)=get2IndexHandleTimer(h,scope_prefix,s)

    //function get2IndexHandleTrigger
    get2IndexHandleTrigger(h,sc,s)=LoadTriggerHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    get2IndexHandleTrigger(h,s)=get2IndexHandleTrigger(h,scope_prefix,s)

    //function get2IndexHandleTriggerCondition
    get2IndexHandleTriggerCondition(h,sc,s)=LoadTriggerConditionHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    get2IndexHandleTriggerCondition(h,s)=get2IndexHandleTriggerCondition(h,scope_prefix,s)

    //function get2IndexHandleTriggerAction
    get2IndexHandleTriggerAction(h,sc,s)=LoadTriggerActionHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    get2IndexHandleTriggerAction(h,s)=get2IndexHandleTriggerAction(h,scope_prefix,s)

    //function get2IndexHandleTriggerEvent
    get2IndexHandleTriggerEvent(h,sc,s)=LoadTriggerEventHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    get2IndexHandleTriggerEvent(h,s)=get2IndexHandleTriggerEvent(h,scope_prefix,s)

    //function get2IndexHandleForce
    get2IndexHandleForce(h,sc,s)=LoadForceHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    get2IndexHandleForce(h,s)=get2IndexHandleForce(h,scope_prefix,s)

    //function get2IndexHandleGroup
    get2IndexHandleGroup(h,sc,s)=LoadGroupHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    get2IndexHandleGroup(h,s)=get2IndexHandleGroup(h,scope_prefix,s)

    //function get2IndexHandleLocation
    get2IndexHandleLocation(h,sc,s)=LoadLocationHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    get2IndexHandleLocation(h,s)=get2IndexHandleLocation(h,scope_prefix,s)

    //function get2IndexHandleRect
    get2IndexHandleRect(h,sc,s)=LoadRectHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    get2IndexHandleRect(h,s)=get2IndexHandleRect(h,scope_prefix,s)

    //function get2IndexHandleBooleanExpr
    get2IndexHandleBooleanExpr(h,sc,s)=LoadBooleanExprHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    get2IndexHandleBooleanExpr(h,s)=get2IndexHandleBooleanExpr(h,scope_prefix,s)

    //function get2IndexHandleSound
    get2IndexHandleSound(h,sc,s)=LoadSoundHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    get2IndexHandleSound(h,s)=get2IndexHandleSound(h,scope_prefix,s)

    //function get2IndexHandleUnitPool
    get2IndexHandleUnitPool(h,sc,s)=LoadUnitPoolHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    get2IndexHandleUnitPool(h,s)=get2IndexHandleUnitPool(h,scope_prefix,s)

    //function get2IndexHandleItemPool
    get2IndexHandleItemPool(h,sc,s)=LoadItemPoolHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    get2IndexHandleItemPool(h,s)=get2IndexHandleItemPool(h,scope_prefix,s)

    //function get2IndexHandleQuest
    get2IndexHandleQuest(h,sc,s)=LoadQuestHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    get2IndexHandleQuest(h,s)=get2IndexHandleQuest(h,scope_prefix,s)

    //function get2IndexHandleQuestItem
    get2IndexHandleQuestItem(h,sc,s)=LoadQuestItemHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    get2IndexHandleQuestItem(h,s)=get2IndexHandleQuestItem(h,scope_prefix,s)

    //function get2IndexHandleDefeatCondition
    get2IndexHandleDefeatCondition(h,sc,s)=LoadDefeatConditionHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    get2IndexHandleDefeatCondition(h,s)=get2IndexHandleDefeatCondition(h,scope_prefix,s)

    //function get2IndexHandleTimerDialog
    get2IndexHandleTimerDialog(h,sc,s)=LoadTimerDialogHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    get2IndexHandleTimerDialog(h,s)=get2IndexHandleTimerDialog(h,scope_prefix,s)

    //function get2IndexHandleLeaderboard
    get2IndexHandleLeaderboard(h,sc,s)=LoadLeaderboardHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    get2IndexHandleLeaderboard(h,s)=get2IndexHandleLeaderboard(h,scope_prefix,s)

    //function get2IndexHandleMultiboard
    get2IndexHandleMultiboard(h,sc,s)=LoadMultiboardHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    get2IndexHandleMultiboard(h,s)=get2IndexHandleMultiboard(h,scope_prefix,s)

    //function get2IndexHandleMultiboardItem
    get2IndexHandleMultiboardItem(h,sc,s)=LoadMultiboardItemHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    get2IndexHandleMultiboardItem(h,s)=get2IndexHandleMultiboardItem(h,scope_prefix,s)

    //function get2IndexHandleTrackable
    get2IndexHandleTrackable(h,sc,s)=LoadTrackableHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    get2IndexHandleTrackable(h,s)=get2IndexHandleTrackable(h,scope_prefix,s)

    //function get2IndexHandleDialog
    get2IndexHandleDialog(h,sc,s)=LoadDialogHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    get2IndexHandleDialog(h,s)=get2IndexHandleDialog(h,scope_prefix,s)

    //function get2IndexHandleButton
    get2IndexHandleButton(h,sc,s)=LoadButtonHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    get2IndexHandleButton(h,s)=get2IndexHandleButton(h,scope_prefix,s)

    //function get2IndexHandleTextTag
    get2IndexHandleTextTag(h,sc,s)=LoadTextTagHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    get2IndexHandleTextTag(h,s)=get2IndexHandleTextTag(h,scope_prefix,s)

    //function get2IndexHandleLightning
    get2IndexHandleLightning(h,sc,s)=LoadLightningHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    get2IndexHandleLightning(h,s)=get2IndexHandleLightning(h,scope_prefix,s)

    //function get2IndexHandleImage
    get2IndexHandleImage(h,sc,s)=LoadImageHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    get2IndexHandleImage(h,s)=get2IndexHandleImage(h,scope_prefix,s)

    //function get2IndexHandleUbersplat
    get2IndexHandleUbersplat(h,sc,s)=LoadUbersplatHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    get2IndexHandleUbersplat(h,s)=get2IndexHandleUbersplat(h,scope_prefix,s)

    //function get2IndexHandleRegion
    get2IndexHandleRegion(h,sc,s)=LoadRegionHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    get2IndexHandleRegion(h,s)=get2IndexHandleRegion(h,scope_prefix,s)

    //function get2IndexHandleFogState
    get2IndexHandleFogState(h,sc,s)=LoadFogStateHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    get2IndexHandleFogState(h,s)=get2IndexHandleFogState(h,scope_prefix,s)

    //function get2IndexHandleFogModifier
    get2IndexHandleFogModifier(h,sc,s)=LoadFogModifierHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    get2IndexHandleFogModifier(h,s)=get2IndexHandleFogModifier(h,scope_prefix,s)

    //function get2IndexHandleHashtable
    get2IndexHandleHashtable(h,sc,s)=LoadHashtableHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    get2IndexHandleHashtable(h,s)=get2IndexHandleHashtable(h,scope_prefix,s)

    //function have2IndexHandleValue
    have2IndexHandleValue(vt,h,sc,s)=haveValue(vt,h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    have2IndexHandleValue(vt,h,s)=have2IndexHandleValue(vt,h,scope_prefix,s)

    //function have2IndexHandleInteger
    have2IndexHandleInteger(h,sc,s)=HaveSavedInteger(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    have2IndexHandleInteger(h,s)=have2IndexHandleInteger(h,scope_prefix,s)

    //function have2IndexHandleReal
    have2IndexHandleReal(h,sc,s)=HaveSavedReal(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    have2IndexHandleReal(h,s)=have2IndexHandleReal(h,scope_prefix,s)

    //function have2IndexHandleBoolean
    have2IndexHandleBoolean(h,sc,s)=HaveSavedBoolean(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    have2IndexHandleBoolean(h,s)=have2IndexHandleBoolean(h,scope_prefix,s)

    //function have2IndexHandleString
    have2IndexHandleString(h,sc,s)=HaveSavedString(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc))) h2hh
    have2IndexHandleString(h,s)=have2IndexHandleString(h,scope_prefix,s)

    //function have2IndexHandleHandle
    have2IndexHandleHandle(h,sc,s)=HaveSavedHandle(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    have2IndexHandleHandle(h,s)=have2IndexHandleHandle(h,scope_prefix,s)

    //function remove2IndexHandleValue
    remove2IndexHandleValue(vt,h,sc,s)=removeValue(vt,h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    remove2IndexHandleValue(vt,h,s)=remove2IndexHandleValue(vt,h,scope_prefix,s)

    //function remove2IndexHandleInteger
    remove2IndexHandleInteger(h,sc,s)=RemoveSavedInteger(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    remove2IndexHandleInteger(h,s)=remove2IndexHandleInteger(h,scope_prefix,s)

    //function remove2IndexHandleReal
    remove2IndexHandleReal(h,sc,s)=RemoveSavedReal(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    remove2IndexHandleReal(h,s)=remove2IndexHandleReal(h,scope_prefix,s)

    //function remove2IndexHandleBoolean
    remove2IndexHandleBoolean(h,sc,s)=RemoveSavedBoolean(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    remove2IndexHandleBoolean(h,s)=remove2IndexHandleBoolean(h,scope_prefix,s)

    //function remove2IndexHandleString
    remove2IndexHandleString(h,sc,s)=RemoveSavedString(h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    remove2IndexHandleString(h,s)=remove2IndexHandleString(h,scope_prefix,s)
}

scope HashScope
    
    define
    {
        //function register_getID
        private register_getID(t,vt)=
        {
            int getIDHandle##t##(handle h,string sc,string s,vt val)
            {
                int j
                forAB(j,1,getIndexHandle(h,sc),+,
                if loadValue(t,h,sc+s+I2S(j))==val then
                    return j
                endif)
                return 0
            }
        }
        //function register_get2ID
        private register_get2ID(t,vt)=
        {
            int get2IDHandle##t##(handle h,string sc,string s,int i,vt val)
            {
                int j
                forAB(j,1,get2IndexHandle(h,sc),+,
                if loadValue(t,h,sc+s+I2S(i)+I2S(j))==val then
                    return j
                endif)
                return 0
            }
        }
        //function register_getIDHandle
        private register_getIDHandle(t,vt)=
        {
            int getIDHandle##t##(handle h,string sc,string s,vt val)
            {
                int j
                forAB(j,1,getIndexHandle(h,sc),+,
                if loadValue(t##Handle,h,sc+s+I2S(j))==val then
                    return j
                endif)
                return 0
            }
        }
        //function register_get2IDHandle
        private register_get2IDHandle(t,vt)=
        {
            int get2IDHandle##t##(handle h,string sc,string s,int i,vt val)
            {
                int j
                forAB(j,1,get2IndexHandle(h,sc),+,
                if loadValue(t##Handle,h,sc+s+I2S(i)+I2S(j))==val then
                    return j
                endif)
                return 0
            }
        }
    }

    define
    {
        //function getIDHandleInteger
        getIDHandleInteger(h,sc,s,v)=getID##HandleInteger(h,sc,s,v)
        getIDHandleInteger(h,s,v)=getIDHandleInteger(h,scope_prefix,s,v)

        //function getIDInteger
        getIDInteger(sc,s,v)=getIDHandleInteger(hash,sc,s,v)
        getIDInteger(s,v)=getIDInteger(scope_prefix,s,v)

        //function get2IDHandleInteger
        get2IDHandleInteger(h,sc,s,i,v)=get2ID##HandleInteger(h,sc,s,i,v)
        get2IDHandleInteger(h,s,i,v)=get2IDHandleInteger(h,scope_prefix,s,i,v)

        //function get2IDInteger
        get2IDInteger(sc,s,i,v)=get2IDHandleInteger(hash,sc,s,i,v)
        get2IDInteger(s,i,v)=get2IDInteger(scope_prefix,s,i,v)
    }
    register_getID(Integer,int)
    register_get2ID(Integer,int)

    define
    {
        //function getIDHandleReal
        getIDHandleReal(h,sc,s,v)=getID##HandleReal(h,sc,s,v)
        getIDHandleReal(h,s,v)=getIDHandleReal(h,scope_prefix,s,v)

        //function getIDReal
        getIDReal(sc,s,v)=getIDHandleReal(hash,sc,s,v)
        getIDReal(s,v)=getIDReal(scope_prefix,s,v)

        //function get2IDHandleReal
        get2IDHandleReal(h,sc,s,i,v)=get2ID##HandleReal(h,sc,s,i,v)
        get2IDHandleReal(h,s,i,v)=get2IDHandleReal(h,scope_prefix,s,i,v)

        //function get2IDReal
        get2IDReal(sc,s,i,v)=get2IDHandleReal(hash,sc,s,i,v)
        get2IDReal(s,i,v)=get2IDReal(scope_prefix,s,i,v)
    }
    register_getID(Real,real)
    register_get2ID(Real,real)

    define
    {
        //function getIDHandleBoolean
        getIDHandleBoolean(h,sc,s,v)=getID##HandleBoolean(h,sc,s,v)
        getIDHandleBoolean(h,s,v)=getIDHandleBoolean(h,scope_prefix,s,v)

        //function getIDBoolean
        getIDBoolean(sc,s,v)=getIDHandleBoolean(hash,sc,s,v)
        getIDBoolean(s,v)=getIDBoolean(scope_prefix,s,v)

        //function get2IDHandleBoolean
        get2IDHandleBoolean(h,sc,s,i,v)=get2ID##HandleBoolean(h,sc,s,i,v)
        get2IDHandleBoolean(h,s,i,v)=get2IDHandleBoolean(h,scope_prefix,s,i,v)

        //function get2IDBoolean
        get2IDBoolean(sc,s,i,v)=get2IDHandleBoolean(hash,sc,s,i,v)
        get2IDBoolean(s,i,v)=get2IDBoolean(scope_prefix,s,i,v)
    }
    register_getID(Boolean,bool)
    register_get2ID(Boolean,bool)

    define
    {
        //function getIDHandleStr
        getIDHandleStr(h,sc,s,v)=getID##HandleStr(h,sc,s,v)
        getIDHandleStr(h,s,v)=getIDHandleStr(h,scope_prefix,s,v)

        //function getIDStr
        getIDStr(sc,s,v)=getIDHandleStr(hash,sc,s,v)
        getIDStr(s,v)=getIDStr(scope_prefix,s,v)

        //function get2IDHandleStr
        get2IDHandleStr(h,sc,s,i,v)=get2ID##HandleStr(h,sc,s,i,v)
        get2IDHandleStr(h,s,i,v)=get2IDHandleStr(h,scope_prefix,s,i,v)

        //function get2IDStr
        get2IDStr(sc,s,i,v)=get2IDHandleStr(hash,sc,s,i,v)
        get2IDStr(s,i,v)=get2IDStr(scope_prefix,s,i,v)
    }
    register_getID(Str,string)
    register_get2ID(Str,string)

    define
    {
        //function getIDHandlePlayer
        getIDHandlePlayer(h,sc,s,v)=getID##HandlePlayer(h,sc,s,v)
        getIDHandlePlayer(h,s,v)=getIDHandlePlayer(h,scope_prefix,s,v)

        //function getIDPlayer
        getIDPlayer(sc,s,v)=getIDHandlePlayer(hash,sc,s,v)
        getIDPlayer(s,v)=getIDPlayer(scope_prefix,s,v)

        //function get2IDHandlePlayer
        get2IDHandlePlayer(h,sc,s,i,v)=get2ID##HandlePlayer(h,sc,s,i,v)
        get2IDHandlePlayer(h,s,i,v)=get2IDHandlePlayer(h,scope_prefix,s,i,v)

        //function get2IDPlayer
        get2IDPlayer(sc,s,i,v)=get2IDHandlePlayer(hash,sc,s,i,v)
        get2IDPlayer(s,i,v)=get2IDPlayer(scope_prefix,s,i,v)
    }
    register_getIDHandle(Player,player)
    register_get2IDHandle(Player,player)

    define
    {
        //function getIDHandleWidget
        getIDHandleWidget(h,sc,s,v)=getID##HandleWidget(h,sc,s,v)
        getIDHandleWidget(h,s,v)=getIDHandleWidget(h,scope_prefix,s,v)

        //function getIDWidget
        getIDWidget(sc,s,v)=getIDHandleWidget(hash,sc,s,v)
        getIDWidget(s,v)=getIDWidget(scope_prefix,s,v)

        //function get2IDHandleWidget
        get2IDHandleWidget(h,sc,s,i,v)=get2ID##HandleWidget(h,sc,s,i,v)
        get2IDHandleWidget(h,s,i,v)=get2IDHandleWidget(h,scope_prefix,s,i,v)

        //function get2IDWidget
        get2IDWidget(sc,s,i,v)=get2IDHandleWidget(hash,sc,s,i,v)
        get2IDWidget(s,i,v)=get2IDWidget(scope_prefix,s,i,v)
    }
    register_getIDHandle(Widget,widget)
    register_get2IDHandle(Widget,widget)

    define
    {
        //function getIDHandleDestructable
        getIDHandleDestructable(h,sc,s,v)=getID##HandleDestructable(h,sc,s,v)
        getIDHandleDestructable(h,s,v)=getIDHandleDestructable(h,scope_prefix,s,v)

        //function getIDDestructable
        getIDDestructable(sc,s,v)=getIDHandleDestructable(hash,sc,s,v)
        getIDDestructable(s,v)=getIDDestructable(scope_prefix,s,v)

        //function get2IDHandleDestructable
        get2IDHandleDestructable(h,sc,s,i,v)=get2ID##HandleDestructable(h,sc,s,i,v)
        get2IDHandleDestructable(h,s,i,v)=get2IDHandleDestructable(h,scope_prefix,s,i,v)

        //function get2IDDestructable
        get2IDDestructable(sc,s,i,v)=get2IDHandleDestructable(hash,sc,s,i,v)
        get2IDDestructable(s,i,v)=get2IDDestructable(scope_prefix,s,i,v)
    }
    register_getIDHandle(Destructable,destructable)
    register_get2IDHandle(Destructable,destructable)

    define
    {
        //function getIDHandleItem
        getIDHandleItem(h,sc,s,v)=getID##HandleItem(h,sc,s,v)
        getIDHandleItem(h,s,v)=getIDHandleItem(h,scope_prefix,s,v)

        //function getIDItem
        getIDItem(sc,s,v)=getIDHandleItem(hash,sc,s,v)
        getIDItem(s,v)=getIDItem(scope_prefix,s,v)

        //function get2IDHandleItem
        get2IDHandleItem(h,sc,s,i,v)=get2ID##HandleItem(h,sc,s,i,v)
        get2IDHandleItem(h,s,i,v)=get2IDHandleItem(h,scope_prefix,s,i,v)

        //function get2IDItem
        get2IDItem(sc,s,i,v)=get2IDHandleItem(hash,sc,s,i,v)
        get2IDItem(s,i,v)=get2IDItem(scope_prefix,s,i,v)
    }
    register_getIDHandle(Item,item)
    register_get2IDHandle(Item,item)

    define
    {
        //function getIDHandleUnit
        getIDHandleUnit(h,sc,s,v)=getID##HandleUnit(h,sc,s,v)
        getIDHandleUnit(h,s,v)=getIDHandleUnit(h,scope_prefix,s,v)

        //function getIDUnit
        getIDUnit(sc,s,v)=getIDHandleUnit(hash,sc,s,v)
        getIDUnit(s,v)=getIDUnit(scope_prefix,s,v)

        //function get2IDHandleUnit
        get2IDHandleUnit(h,sc,s,i,v)=get2ID##HandleUnit(h,sc,s,i,v)
        get2IDHandleUnit(h,s,i,v)=get2IDHandleUnit(h,scope_prefix,s,i,v)

        //function get2IDUnit
        get2IDUnit(sc,s,i,v)=get2IDHandleUnit(hash,sc,s,i,v)
        get2IDUnit(s,i,v)=get2IDUnit(scope_prefix,s,i,v)
    }
    register_getIDHandle(Unit,unit)
    register_get2IDHandle(Unit,unit)

    define
    {
        //function getIDHandleAbility
        getIDHandleAbility(h,sc,s,v)=getID##HandleAbility(h,sc,s,v)
        getIDHandleAbility(h,s,v)=getIDHandleAbility(h,scope_prefix,s,v)

        //function getIDAbility
        getIDAbility(sc,s,v)=getIDHandleAbility(hash,sc,s,v)
        getIDAbility(s,v)=getIDAbility(scope_prefix,s,v)

        //function get2IDHandleAbility
        get2IDHandleAbility(h,sc,s,i,v)=get2ID##HandleAbility(h,sc,s,i,v)
        get2IDHandleAbility(h,s,i,v)=get2IDHandleAbility(h,scope_prefix,s,i,v)

        //function get2IDAbility
        get2IDAbility(sc,s,i,v)=get2IDHandleAbility(hash,sc,s,i,v)
        get2IDAbility(s,i,v)=get2IDAbility(scope_prefix,s,i,v)
    }
    register_getIDHandle(Ability,ability)
    register_get2IDHandle(Ability,ability)

    define
    {
        //function getIDHandleTimer
        getIDHandleTimer(h,sc,s,v)=getID##HandleTimer(h,sc,s,v)
        getIDHandleTimer(h,s,v)=getIDHandleTimer(h,scope_prefix,s,v)

        //function getIDTimer
        getIDTimer(sc,s,v)=getIDHandleTimer(hash,sc,s,v)
        getIDTimer(s,v)=getIDTimer(scope_prefix,s,v)

        //function get2IDHandleTimer
        get2IDHandleTimer(h,sc,s,i,v)=get2ID##HandleTimer(h,sc,s,i,v)
        get2IDHandleTimer(h,s,i,v)=get2IDHandleTimer(h,scope_prefix,s,i,v)

        //function get2IDTimer
        get2IDTimer(sc,s,i,v)=get2IDHandleTimer(hash,sc,s,i,v)
        get2IDTimer(s,i,v)=get2IDTimer(scope_prefix,s,i,v)
    }
    register_getIDHandle(Timer,timer)
    register_get2IDHandle(Timer,timer)

    define
    {
        //function getIDHandleTrigger
        getIDHandleTrigger(h,sc,s,v)=getID##HandleTrigger(h,sc,s,v)
        getIDHandleTrigger(h,s,v)=getIDHandleTrigger(h,scope_prefix,s,v)

        //function getIDTrigger
        getIDTrigger(sc,s,v)=getIDHandleTrigger(hash,sc,s,v)
        getIDTrigger(s,v)=getIDTrigger(scope_prefix,s,v)

        //function get2IDHandleTrigger
        get2IDHandleTrigger(h,sc,s,i,v)=get2ID##HandleTrigger(h,sc,s,i,v)
        get2IDHandleTrigger(h,s,i,v)=get2IDHandleTrigger(h,scope_prefix,s,i,v)

        //function get2IDTrigger
        get2IDTrigger(sc,s,i,v)=get2IDHandleTrigger(hash,sc,s,i,v)
        get2IDTrigger(s,i,v)=get2IDTrigger(scope_prefix,s,i,v)
    }
    register_getIDHandle(Trigger,trigger)
    register_get2IDHandle(Trigger,trigger)

    define
    {
        //function getIDHandleTriggerCondition
        getIDHandleTriggerCondition(h,sc,s,v)=getID##HandleTriggerCondition(h,sc,s,v)
        getIDHandleTriggerCondition(h,s,v)=getIDHandleTriggerCondition(h,scope_prefix,s,v)

        //function getIDTriggerCondition
        getIDTriggerCondition(sc,s,v)=getIDHandleTriggerCondition(hash,sc,s,v)
        getIDTriggerCondition(s,v)=getIDTriggerCondition(scope_prefix,s,v)

        //function get2IDHandleTriggerCondition
        get2IDHandleTriggerCondition(h,sc,s,i,v)=get2ID##HandleTriggerCondition(h,sc,s,i,v)
        get2IDHandleTriggerCondition(h,s,i,v)=get2IDHandleTriggerCondition(h,scope_prefix,s,i,v)

        //function get2IDTriggerCondition
        get2IDTriggerCondition(sc,s,i,v)=get2IDHandleTriggerCondition(hash,sc,s,i,v)
        get2IDTriggerCondition(s,i,v)=get2IDTriggerCondition(scope_prefix,s,i,v)
    }
    register_getIDHandle(TriggerCondition,triggercondition)
    register_get2IDHandle(TriggerCondition,triggercondition)

    define
    {
        //function getIDHandleTriggerAction
        getIDHandleTriggerAction(h,sc,s,v)=getID##HandleTriggerAction(h,sc,s,v)
        getIDHandleTriggerAction(h,s,v)=getIDHandleTriggerAction(h,scope_prefix,s,v)

        //function getIDTriggerAction
        getIDTriggerAction(sc,s,v)=getIDHandleTriggerAction(hash,sc,s,v)
        getIDTriggerAction(s,v)=getIDTriggerAction(scope_prefix,s,v)

        //function get2IDHandleTriggerAction
        get2IDHandleTriggerAction(h,sc,s,i,v)=get2ID##HandleTriggerAction(h,sc,s,i,v)
        get2IDHandleTriggerAction(h,s,i,v)=get2IDHandleTriggerAction(h,scope_prefix,s,i,v)

        //function get2IDTriggerAction
        get2IDTriggerAction(sc,s,i,v)=get2IDHandleTriggerAction(hash,sc,s,i,v)
        get2IDTriggerAction(s,i,v)=get2IDTriggerAction(scope_prefix,s,i,v)
    }
    register_getIDHandle(TriggerAction,triggeraction)
    register_get2IDHandle(TriggerAction,triggeraction)

    define
    {
        //function getIDHandleTriggerEvent
        getIDHandleTriggerEvent(h,sc,s,v)=getID##HandleTriggerEvent(h,sc,s,v)
        getIDHandleTriggerEvent(h,s,v)=getIDHandleTriggerEvent(h,scope_prefix,s,v)

        //function getIDTriggerEvent
        getIDTriggerEvent(sc,s,v)=getIDHandleTriggerEvent(hash,sc,s,v)
        getIDTriggerEvent(s,v)=getIDTriggerEvent(scope_prefix,s,v)

        //function get2IDHandleTriggerEvent
        get2IDHandleTriggerEvent(h,sc,s,i,v)=get2ID##HandleTriggerEvent(h,sc,s,i,v)
        get2IDHandleTriggerEvent(h,s,i,v)=get2IDHandleTriggerEvent(h,scope_prefix,s,i,v)

        //function get2IDTriggerEvent
        get2IDTriggerEvent(sc,s,i,v)=get2IDHandleTriggerEvent(hash,sc,s,i,v)
        get2IDTriggerEvent(s,i,v)=get2IDTriggerEvent(scope_prefix,s,i,v)
    }
    register_getIDHandle(TriggerEvent,event)
    register_get2IDHandle(TriggerEvent,event)

    define
    {
        //function getIDHandleForce
        getIDHandleForce(h,sc,s,v)=getID##HandleForce(h,sc,s,v)
        getIDHandleForce(h,s,v)=getIDHandleForce(h,scope_prefix,s,v)

        //function getIDForce
        getIDForce(sc,s,v)=getIDHandleForce(hash,sc,s,v)
        getIDForce(s,v)=getIDForce(scope_prefix,s,v)

        //function get2IDHandleForce
        get2IDHandleForce(h,sc,s,i,v)=get2ID##HandleForce(h,sc,s,i,v)
        get2IDHandleForce(h,s,i,v)=get2IDHandleForce(h,scope_prefix,s,i,v)

        //function get2IDForce
        get2IDForce(sc,s,i,v)=get2IDHandleForce(hash,sc,s,i,v)
        get2IDForce(s,i,v)=get2IDForce(scope_prefix,s,i,v)
    }
    register_getIDHandle(Force,force)
    register_get2IDHandle(Force,force)

    define
    {
        //function getIDHandleGroup
        getIDHandleGroup(h,sc,s,v)=getID##HandleGroup(h,sc,s,v)
        getIDHandleGroup(h,s,v)=getIDHandleGroup(h,scope_prefix,s,v)

        //function getIDGroup
        getIDGroup(sc,s,v)=getIDHandleGroup(hash,sc,s,v)
        getIDGroup(s,v)=getIDGroup(scope_prefix,s,v)

        //function get2IDHandleGroup
        get2IDHandleGroup(h,sc,s,i,v)=get2ID##HandleGroup(h,sc,s,i,v)
        get2IDHandleGroup(h,s,i,v)=get2IDHandleGroup(h,scope_prefix,s,i,v)

        //function get2IDGroup
        get2IDGroup(sc,s,i,v)=get2IDHandleGroup(hash,sc,s,i,v)
        get2IDGroup(s,i,v)=get2IDGroup(scope_prefix,s,i,v)
    }
    register_getIDHandle(Group,group)
    register_get2IDHandle(Group,group)

    define
    {
        //function getIDHandleLocation
        getIDHandleLocation(h,sc,s,v)=getID##HandleLocation(h,sc,s,v)
        getIDHandleLocation(h,s,v)=getIDHandleLocation(h,scope_prefix,s,v)

        //function getIDLocation
        getIDLocation(sc,s,v)=getIDHandleLocation(hash,sc,s,v)
        getIDLocation(s,v)=getIDLocation(scope_prefix,s,v)

        //function get2IDHandleLocation
        get2IDHandleLocation(h,sc,s,i,v)=get2ID##HandleLocation(h,sc,s,i,v)
        get2IDHandleLocation(h,s,i,v)=get2IDHandleLocation(h,scope_prefix,s,i,v)

        //function get2IDLocation
        get2IDLocation(sc,s,i,v)=get2IDHandleLocation(hash,sc,s,i,v)
        get2IDLocation(s,i,v)=get2IDLocation(scope_prefix,s,i,v)
    }
    register_getIDHandle(Location,location)
    register_get2IDHandle(Location,location)

    define
    {
        //function getIDHandleRect
        getIDHandleRect(h,sc,s,v)=getID##HandleRect(h,sc,s,v)
        getIDHandleRect(h,s,v)=getIDHandleRect(h,scope_prefix,s,v)

        //function getIDRect
        getIDRect(sc,s,v)=getIDHandleRect(hash,sc,s,v)
        getIDRect(s,v)=getIDRect(scope_prefix,s,v)

        //function get2IDHandleRect
        get2IDHandleRect(h,sc,s,i,v)=get2ID##HandleRect(h,sc,s,i,v)
        get2IDHandleRect(h,s,i,v)=get2IDHandleRect(h,scope_prefix,s,i,v)

        //function get2IDRect
        get2IDRect(sc,s,i,v)=get2IDHandleRect(hash,sc,s,i,v)
        get2IDRect(s,i,v)=get2IDRect(scope_prefix,s,i,v)
    }
    register_getIDHandle(Rect,rect)
    register_get2IDHandle(Rect,rect)

    define
    {
        //function getIDHandleBooleanExpr
        getIDHandleBooleanExpr(h,sc,s,v)=getID##HandleBooleanExpr(h,sc,s,v)
        getIDHandleBooleanExpr(h,s,v)=getIDHandleBooleanExpr(h,scope_prefix,s,v)

        //function getIDBooleanExpr
        getIDBooleanExpr(sc,s,v)=getIDHandleBooleanExpr(hash,sc,s,v)
        getIDBooleanExpr(s,v)=getIDBooleanExpr(scope_prefix,s,v)

        //function get2IDHandleBooleanExpr
        get2IDHandleBooleanExpr(h,sc,s,i,v)=get2ID##HandleBooleanExpr(h,sc,s,i,v)
        get2IDHandleBooleanExpr(h,s,i,v)=get2IDHandleBooleanExpr(h,scope_prefix,s,i,v)

        //function get2IDBooleanExpr
        get2IDBooleanExpr(sc,s,i,v)=get2IDHandleBooleanExpr(hash,sc,s,i,v)
        get2IDBooleanExpr(s,i,v)=get2IDBooleanExpr(scope_prefix,s,i,v)
    }
    register_getIDHandle(BooleanExpr,boolexpr)
    register_get2IDHandle(BooleanExpr,boolexpr)

    define
    {
        //function getIDHandleSound
        getIDHandleSound(h,sc,s,v)=getID##HandleSound(h,sc,s,v)
        getIDHandleSound(h,s,v)=getIDHandleSound(h,scope_prefix,s,v)

        //function getIDSound
        getIDSound(sc,s,v)=getIDHandleSound(hash,sc,s,v)
        getIDSound(s,v)=getIDSound(scope_prefix,s,v)

        //function get2IDHandleSound
        get2IDHandleSound(h,sc,s,i,v)=get2ID##HandleSound(h,sc,s,i,v)
        get2IDHandleSound(h,s,i,v)=get2IDHandleSound(h,scope_prefix,s,i,v)

        //function get2IDSound
        get2IDSound(sc,s,i,v)=get2IDHandleSound(hash,sc,s,i,v)
        get2IDSound(s,i,v)=get2IDSound(scope_prefix,s,i,v)
    }
    register_getIDHandle(Sound,sound)
    register_get2IDHandle(Sound,sound)

    define
    {
        //function getIDHandleEffect
        getIDHandleEffect(h,sc,s,v)=getID##HandleEffect(h,sc,s,v)
        getIDHandleEffect(h,s,v)=getIDHandleEffect(h,scope_prefix,s,v)

        //function getIDEffect
        getIDEffect(sc,s,v)=getIDHandleEffect(hash,sc,s,v)
        getIDEffect(s,v)=getIDEffect(scope_prefix,s,v)

        //function get2IDHandleEffect
        get2IDHandleEffect(h,sc,s,i,v)=get2ID##HandleEffect(h,sc,s,i,v)
        get2IDHandleEffect(h,s,i,v)=get2IDHandleEffect(h,scope_prefix,s,i,v)

        //function get2IDEffect
        get2IDEffect(sc,s,i,v)=get2IDHandleEffect(hash,sc,s,i,v)
        get2IDEffect(s,i,v)=get2IDEffect(scope_prefix,s,i,v)
    }
    register_getIDHandle(Effect,effect)
    register_get2IDHandle(Effect,effect)

    define
    {
        //function getIDHandleUnitPool
        getIDHandleUnitPool(h,sc,s,v)=getID##HandleUnitPool(h,sc,s,v)
        getIDHandleUnitPool(h,s,v)=getIDHandleUnitPool(h,scope_prefix,s,v)

        //function getIDUnitPool
        getIDUnitPool(sc,s,v)=getIDHandleUnitPool(hash,sc,s,v)
        getIDUnitPool(s,v)=getIDUnitPool(scope_prefix,s,v)

        //function get2IDHandleUnitPool
        get2IDHandleUnitPool(h,sc,s,i,v)=get2ID##HandleUnitPool(h,sc,s,i,v)
        get2IDHandleUnitPool(h,s,i,v)=get2IDHandleUnitPool(h,scope_prefix,s,i,v)

        //function get2IDUnitPool
        get2IDUnitPool(sc,s,i,v)=get2IDHandleUnitPool(hash,sc,s,i,v)
        get2IDUnitPool(s,i,v)=get2IDUnitPool(scope_prefix,s,i,v)
    }
    register_getIDHandle(UnitPool,unitpool)
    register_get2IDHandle(UnitPool,unitpool)

    define
    {
        //function getIDHandleItemPool
        getIDHandleItemPool(h,sc,s,v)=getID##HandleItemPool(h,sc,s,v)
        getIDHandleItemPool(h,s,v)=getIDHandleItemPool(h,scope_prefix,s,v)

        //function getIDItemPool
        getIDItemPool(sc,s,v)=getIDHandleItemPool(hash,sc,s,v)
        getIDItemPool(s,v)=getIDItemPool(scope_prefix,s,v)

        //function get2IDHandleItemPool
        get2IDHandleItemPool(h,sc,s,i,v)=get2ID##HandleItemPool(h,sc,s,i,v)
        get2IDHandleItemPool(h,s,i,v)=get2IDHandleItemPool(h,scope_prefix,s,i,v)

        //function get2IDItemPool
        get2IDItemPool(sc,s,i,v)=get2IDHandleItemPool(hash,sc,s,i,v)
        get2IDItemPool(s,i,v)=get2IDItemPool(scope_prefix,s,i,v)
    }
    register_getIDHandle(ItemPool,itempool)
    register_get2IDHandle(ItemPool,itempool)

    define
    {
        //function getIDHandleQuest
        getIDHandleQuest(h,sc,s,v)=getID##HandleQuest(h,sc,s,v)
        getIDHandleQuest(h,s,v)=getIDHandleQuest(h,scope_prefix,s,v)

        //function getIDQuest
        getIDQuest(sc,s,v)=getIDHandleQuest(hash,sc,s,v)
        getIDQuest(s,v)=getIDQuest(scope_prefix,s,v)

        //function get2IDHandleQuest
        get2IDHandleQuest(h,sc,s,i,v)=get2ID##HandleQuest(h,sc,s,i,v)
        get2IDHandleQuest(h,s,i,v)=get2IDHandleQuest(h,scope_prefix,s,i,v)

        //function get2IDQuest
        get2IDQuest(sc,s,i,v)=get2IDHandleQuest(hash,sc,s,i,v)
        get2IDQuest(s,i,v)=get2IDQuest(scope_prefix,s,i,v)
    }
    register_getIDHandle(Quest,quest)
    register_get2IDHandle(Quest,quest)

    define
    {
        //function getIDHandleQuestItem
        getIDHandleQuestItem(h,sc,s,v)=getID##HandleQuestItem(h,sc,s,v)
        getIDHandleQuestItem(h,s,v)=getIDHandleQuestItem(h,scope_prefix,s,v)

        //function getIDQuestItem
        getIDQuestItem(sc,s,v)=getIDHandleQuestItem(hash,sc,s,v)
        getIDQuestItem(s,v)=getIDQuestItem(scope_prefix,s,v)

        //function get2IDHandleQuestItem
        get2IDHandleQuestItem(h,sc,s,i,v)=get2ID##HandleQuestItem(h,sc,s,i,v)
        get2IDHandleQuestItem(h,s,i,v)=get2IDHandleQuestItem(h,scope_prefix,s,i,v)

        //function get2IDQuestItem
        get2IDQuestItem(sc,s,i,v)=get2IDHandleQuestItem(hash,sc,s,i,v)
        get2IDQuestItem(s,i,v)=get2IDQuestItem(scope_prefix,s,i,v)
    }
    register_getIDHandle(QuestItem,questitem)
    register_get2IDHandle(QuestItem,questitem)

    define
    {
        //function getIDHandleDefeatCondition
        getIDHandleDefeatCondition(h,sc,s,v)=getID##HandleDefeatCondition(h,sc,s,v)
        getIDHandleDefeatCondition(h,s,v)=getIDHandleDefeatCondition(h,scope_prefix,s,v)

        //function getIDDefeatCondition
        getIDDefeatCondition(sc,s,v)=getIDHandleDefeatCondition(hash,sc,s,v)
        getIDDefeatCondition(s,v)=getIDDefeatCondition(scope_prefix,s,v)

        //function get2IDHandleDefeatCondition
        get2IDHandleDefeatCondition(h,sc,s,i,v)=get2ID##HandleDefeatCondition(h,sc,s,i,v)
        get2IDHandleDefeatCondition(h,s,i,v)=get2IDHandleDefeatCondition(h,scope_prefix,s,i,v)

        //function get2IDDefeatCondition
        get2IDDefeatCondition(sc,s,i,v)=get2IDHandleDefeatCondition(hash,sc,s,i,v)
        get2IDDefeatCondition(s,i,v)=get2IDDefeatCondition(scope_prefix,s,i,v)
    }
    register_getIDHandle(DefeatCondition,defeatcondition)
    register_get2IDHandle(DefeatCondition,defeatcondition)

    define
    {
        //function getIDHandleTimerDialog
        getIDHandleTimerDialog(h,sc,s,v)=getID##HandleTimerDialog(h,sc,s,v)
        getIDHandleTimerDialog(h,s,v)=getIDHandleTimerDialog(h,scope_prefix,s,v)

        //function getIDTimerDialog
        getIDTimerDialog(sc,s,v)=getIDHandleTimerDialog(hash,sc,s,v)
        getIDTimerDialog(s,v)=getIDTimerDialog(scope_prefix,s,v)

        //function get2IDHandleTimerDialog
        get2IDHandleTimerDialog(h,sc,s,i,v)=get2ID##HandleTimerDialog(h,sc,s,i,v)
        get2IDHandleTimerDialog(h,s,i,v)=get2IDHandleTimerDialog(h,scope_prefix,s,i,v)

        //function get2IDTimerDialog
        get2IDTimerDialog(sc,s,i,v)=get2IDHandleTimerDialog(hash,sc,s,i,v)
        get2IDTimerDialog(s,i,v)=get2IDTimerDialog(scope_prefix,s,i,v)
    }
    register_getIDHandle(TimerDialog,timerdialog)
    register_get2IDHandle(TimerDialog,timerdialog)

    define
    {
        //function getIDHandleLeaderboard
        getIDHandleLeaderboard(h,sc,s,v)=getID##HandleLeaderboard(h,sc,s,v)
        getIDHandleLeaderboard(h,s,v)=getIDHandleLeaderboard(h,scope_prefix,s,v)

        //function getIDLeaderboard
        getIDLeaderboard(sc,s,v)=getIDHandleLeaderboard(hash,sc,s,v)
        getIDLeaderboard(s,v)=getIDLeaderboard(scope_prefix,s,v)

        //function get2IDHandleLeaderboard
        get2IDHandleLeaderboard(h,sc,s,i,v)=get2ID##HandleLeaderboard(h,sc,s,i,v)
        get2IDHandleLeaderboard(h,s,i,v)=get2IDHandleLeaderboard(h,scope_prefix,s,i,v)

        //function get2IDLeaderboard
        get2IDLeaderboard(sc,s,i,v)=get2IDHandleLeaderboard(hash,sc,s,i,v)
        get2IDLeaderboard(s,i,v)=get2IDLeaderboard(scope_prefix,s,i,v)
    }
    register_getIDHandle(Leaderboard,leaderboard)
    register_get2IDHandle(Leaderboard,leaderboard)

    define
    {
        //function getIDHandleMultiboard
        getIDHandleMultiboard(h,sc,s,v)=getID##HandleMultiboard(h,sc,s,v)
        getIDHandleMultiboard(h,s,v)=getIDHandleMultiboard(h,scope_prefix,s,v)

        //function getIDMultiboard
        getIDMultiboard(sc,s,v)=getIDHandleMultiboard(hash,sc,s,v)
        getIDMultiboard(s,v)=getIDMultiboard(scope_prefix,s,v)

        //function get2IDHandleMultiboard
        get2IDHandleMultiboard(h,sc,s,i,v)=get2ID##HandleMultiboard(h,sc,s,i,v)
        get2IDHandleMultiboard(h,s,i,v)=get2IDHandleMultiboard(h,scope_prefix,s,i,v)

        //function get2IDMultiboard
        get2IDMultiboard(sc,s,i,v)=get2IDHandleMultiboard(hash,sc,s,i,v)
        get2IDMultiboard(s,i,v)=get2IDMultiboard(scope_prefix,s,i,v)
    }
    register_getIDHandle(Multiboard,multiboard)
    register_get2IDHandle(Multiboard,multiboard)

    define
    {
        //function getIDHandleMultiboardItem
        getIDHandleMultiboardItem(h,sc,s,v)=getID##HandleMultiboardItem(h,sc,s,v)
        getIDHandleMultiboardItem(h,s,v)=getIDHandleMultiboardItem(h,scope_prefix,s,v)

        //function getIDMultiboardItem
        getIDMultiboardItem(sc,s,v)=getIDHandleMultiboardItem(hash,sc,s,v)
        getIDMultiboardItem(s,v)=getIDMultiboardItem(scope_prefix,s,v)

        //function get2IDHandleMultiboardItem
        get2IDHandleMultiboardItem(h,sc,s,i,v)=get2ID##HandleMultiboardItem(h,sc,s,i,v)
        get2IDHandleMultiboardItem(h,s,i,v)=get2IDHandleMultiboardItem(h,scope_prefix,s,i,v)

        //function get2IDMultiboardItem
        get2IDMultiboardItem(sc,s,i,v)=get2IDHandleMultiboardItem(hash,sc,s,i,v)
        get2IDMultiboardItem(s,i,v)=get2IDMultiboardItem(scope_prefix,s,i,v)
    }
    register_getIDHandle(MultiboardItem,multiboarditem)
    register_get2IDHandle(MultiboardItem,multiboarditem)

    define
    {
        //function getIDHandleTrackable
        getIDHandleTrackable(h,sc,s,v)=getID##HandleTrackable(h,sc,s,v)
        getIDHandleTrackable(h,s,v)=getIDHandleTrackable(h,scope_prefix,s,v)

        //function getIDTrackable
        getIDTrackable(sc,s,v)=getIDHandleTrackable(hash,sc,s,v)
        getIDTrackable(s,v)=getIDTrackable(scope_prefix,s,v)

        //function get2IDHandleTrackable
        get2IDHandleTrackable(h,sc,s,i,v)=get2ID##HandleTrackable(h,sc,s,i,v)
        get2IDHandleTrackable(h,s,i,v)=get2IDHandleTrackable(h,scope_prefix,s,i,v)

        //function get2IDTrackable
        get2IDTrackable(sc,s,i,v)=get2IDHandleTrackable(hash,sc,s,i,v)
        get2IDTrackable(s,i,v)=get2IDTrackable(scope_prefix,s,i,v)
    }
    register_getIDHandle(Trackable,trackable)
    register_get2IDHandle(Trackable,trackable)

    define
    {
        //function getIDHandleDialog
        getIDHandleDialog(h,sc,s,v)=getID##HandleDialog(h,sc,s,v)
        getIDHandleDialog(h,s,v)=getIDHandleDialog(h,scope_prefix,s,v)

        //function getIDDialog
        getIDDialog(sc,s,v)=getIDHandleDialog(hash,sc,s,v)
        getIDDialog(s,v)=getIDDialog(scope_prefix,s,v)

        //function get2IDHandleDialog
        get2IDHandleDialog(h,sc,s,i,v)=get2ID##HandleDialog(h,sc,s,i,v)
        get2IDHandleDialog(h,s,i,v)=get2IDHandleDialog(h,scope_prefix,s,i,v)

        //function get2IDDialog
        get2IDDialog(sc,s,i,v)=get2IDHandleDialog(hash,sc,s,i,v)
        get2IDDialog(s,i,v)=get2IDDialog(scope_prefix,s,i,v)
    }
    register_getIDHandle(Dialog,dialog)
    register_get2IDHandle(Dialog,dialog)

    define
    {
        //function getIDHandleButton
        getIDHandleButton(h,sc,s,v)=getID##HandleButton(h,sc,s,v)
        getIDHandleButton(h,s,v)=getIDHandleButton(h,scope_prefix,s,v)

        //function getIDButton
        getIDButton(sc,s,v)=getIDHandleButton(hash,sc,s,v)
        getIDButton(s,v)=getIDButton(scope_prefix,s,v)

        //function get2IDHandleButton
        get2IDHandleButton(h,sc,s,i,v)=get2ID##HandleButton(h,sc,s,i,v)
        get2IDHandleButton(h,s,i,v)=get2IDHandleButton(h,scope_prefix,s,i,v)

        //function get2IDButton
        get2IDButton(sc,s,i,v)=get2IDHandleButton(hash,sc,s,i,v)
        get2IDButton(s,i,v)=get2IDButton(scope_prefix,s,i,v)
    }
    register_getIDHandle(Button,button)
    register_get2IDHandle(Button,button)

    define
    {
        //function getIDHandleTextTag
        getIDHandleTextTag(h,sc,s,v)=getID##HandleTextTag(h,sc,s,v)
        getIDHandleTextTag(h,s,v)=getIDHandleTextTag(h,scope_prefix,s,v)

        //function getIDTextTag
        getIDTextTag(sc,s,v)=getIDHandleTextTag(hash,sc,s,v)
        getIDTextTag(s,v)=getIDTextTag(scope_prefix,s,v)

        //function get2IDHandleTextTag
        get2IDHandleTextTag(h,sc,s,i,v)=get2ID##HandleTextTag(h,sc,s,i,v)
        get2IDHandleTextTag(h,s,i,v)=get2IDHandleTextTag(h,scope_prefix,s,i,v)

        //function get2IDTextTag
        get2IDTextTag(sc,s,i,v)=get2IDHandleTextTag(hash,sc,s,i,v)
        get2IDTextTag(s,i,v)=get2IDTextTag(scope_prefix,s,i,v)
    }
    register_getIDHandle(TextTag,texttag)
    register_get2IDHandle(TextTag,texttag)

    define
    {
        //function getIDHandleLightning
        getIDHandleLightning(h,sc,s,v)=getID##HandleLightning(h,sc,s,v)
        getIDHandleLightning(h,s,v)=getIDHandleLightning(h,scope_prefix,s,v)

        //function getIDLightning
        getIDLightning(sc,s,v)=getIDHandleLightning(hash,sc,s,v)
        getIDLightning(s,v)=getIDLightning(scope_prefix,s,v)

        //function get2IDHandleLightning
        get2IDHandleLightning(h,sc,s,i,v)=get2ID##HandleLightning(h,sc,s,i,v)
        get2IDHandleLightning(h,s,i,v)=get2IDHandleLightning(h,scope_prefix,s,i,v)

        //function get2IDLightning
        get2IDLightning(sc,s,i,v)=get2IDHandleLightning(hash,sc,s,i,v)
        get2IDLightning(s,i,v)=get2IDLightning(scope_prefix,s,i,v)
    }
    register_getIDHandle(Lightning,lightning)
    register_get2IDHandle(Lightning,lightning)

    define
    {
        //function getIDHandleImage
        getIDHandleImage(h,sc,s,v)=getID##HandleImage(h,sc,s,v)
        getIDHandleImage(h,s,v)=getIDHandleImage(h,scope_prefix,s,v)

        //function getIDImage
        getIDImage(sc,s,v)=getIDHandleImage(hash,sc,s,v)
        getIDImage(s,v)=getIDImage(scope_prefix,s,v)

        //function get2IDHandleImage
        get2IDHandleImage(h,sc,s,i,v)=get2ID##HandleImage(h,sc,s,i,v)
        get2IDHandleImage(h,s,i,v)=get2IDHandleImage(h,scope_prefix,s,i,v)

        //function get2IDImage
        get2IDImage(sc,s,i,v)=get2IDHandleImage(hash,sc,s,i,v)
        get2IDImage(s,i,v)=get2IDImage(scope_prefix,s,i,v)
    }
    register_getIDHandle(Image,image)
    register_get2IDHandle(Image,image)

    define
    {
        //function getIDHandleUbersplat
        getIDHandleUbersplat(h,sc,s,v)=getID##HandleUbersplat(h,sc,s,v)
        getIDHandleUbersplat(h,s,v)=getIDHandleUbersplat(h,scope_prefix,s,v)

        //function getIDUbersplat
        getIDUbersplat(sc,s,v)=getIDHandleUbersplat(hash,sc,s,v)
        getIDUbersplat(s,v)=getIDUbersplat(scope_prefix,s,v)

        //function get2IDHandleUbersplat
        get2IDHandleUbersplat(h,sc,s,i,v)=get2ID##HandleUbersplat(h,sc,s,i,v)
        get2IDHandleUbersplat(h,s,i,v)=get2IDHandleUbersplat(h,scope_prefix,s,i,v)

        //function get2IDUbersplat
        get2IDUbersplat(sc,s,i,v)=get2IDHandleUbersplat(hash,sc,s,i,v)
        get2IDUbersplat(s,i,v)=get2IDUbersplat(scope_prefix,s,i,v)
    }
    register_getIDHandle(Ubersplat,ubersplat)
    register_get2IDHandle(Ubersplat,ubersplat)

    define
    {
        //function getIDHandleRegion
        getIDHandleRegion(h,sc,s,v)=getID##HandleRegion(h,sc,s,v)
        getIDHandleRegion(h,s,v)=getIDHandleRegion(h,scope_prefix,s,v)

        //function getIDRegion
        getIDRegion(sc,s,v)=getIDHandleRegion(hash,sc,s,v)
        getIDRegion(s,v)=getIDRegion(scope_prefix,s,v)

        //function get2IDHandleRegion
        get2IDHandleRegion(h,sc,s,i,v)=get2ID##HandleRegion(h,sc,s,i,v)
        get2IDHandleRegion(h,s,i,v)=get2IDHandleRegion(h,scope_prefix,s,i,v)

        //function get2IDRegion
        get2IDRegion(sc,s,i,v)=get2IDHandleRegion(hash,sc,s,i,v)
        get2IDRegion(s,i,v)=get2IDRegion(scope_prefix,s,i,v)
    }
    register_getIDHandle(Region,region)
    register_get2IDHandle(Region,region)

    define
    {
        //function getIDHandleFogState
        getIDHandleFogState(h,sc,s,v)=getID##HandleFogState(h,sc,s,v)
        getIDHandleFogState(h,s,v)=getIDHandleFogState(h,scope_prefix,s,v)

        //function getIDFogState
        getIDFogState(sc,s,v)=getIDHandleFogState(hash,sc,s,v)
        getIDFogState(s,v)=getIDFogState(scope_prefix,s,v)

        //function get2IDHandleFogState
        get2IDHandleFogState(h,sc,s,i,v)=get2ID##HandleFogState(h,sc,s,i,v)
        get2IDHandleFogState(h,s,i,v)=get2IDHandleFogState(h,scope_prefix,s,i,v)

        //function get2IDFogState
        get2IDFogState(sc,s,i,v)=get2IDHandleFogState(hash,sc,s,i,v)
        get2IDFogState(s,i,v)=get2IDFogState(scope_prefix,s,i,v)
    }
    register_getIDHandle(FogState,fogstate)
    register_get2IDHandle(FogState,fogstate)

    define
    {
        //function getIDHandleFogModifier
        getIDHandleFogModifier(h,sc,s,v)=getID##HandleFogModifier(h,sc,s,v)
        getIDHandleFogModifier(h,s,v)=getIDHandleFogModifier(h,scope_prefix,s,v)

        //function getIDFogModifier
        getIDFogModifier(sc,s,v)=getIDHandleFogModifier(hash,sc,s,v)
        getIDFogModifier(s,v)=getIDFogModifier(scope_prefix,s,v)

        //function get2IDHandleFogModifier
        get2IDHandleFogModifier(h,sc,s,i,v)=get2ID##HandleFogModifier(h,sc,s,i,v)
        get2IDHandleFogModifier(h,s,i,v)=get2IDHandleFogModifier(h,scope_prefix,s,i,v)

        //function get2IDFogModifier
        get2IDFogModifier(sc,s,i,v)=get2IDHandleFogModifier(hash,sc,s,i,v)
        get2IDFogModifier(s,i,v)=get2IDFogModifier(scope_prefix,s,i,v)
    }
    register_getIDHandle(FogModifier,fogmodifier)
    register_get2IDHandle(FogModifier,fogmodifier)

/*     define
    {
        //function getIDHandleAgent
        getIDHandleAgent(h,sc,s,v)=getID##HandleAgent(h,sc,s,v)
        getIDHandleAgent(h,s,v)=getIDHandleAgent(h,scope_prefix,s,v)

        //function getIDAgent
        getIDAgent(sc,s,v)=getIDHandleAgent(hash,sc,s,v)
        getIDAgent(s,v)=getIDAgent(scope_prefix,s,v)

        //function get2IDHandleAgent
        get2IDHandleAgent(h,sc,s,i,v)=get2ID##HandleAgent(h,sc,s,i,v)
        get2IDHandleAgent(h,s,i,v)=get2IDHandleAgent(h,scope_prefix,s,i,v)

        //function get2IDAgent
        get2IDAgent(sc,s,i,v)=get2IDHandleAgent(hash,sc,s,i,v)
        get2IDAgent(s,i,v)=get2IDAgent(scope_prefix,s,i,v)
    }
    register_getIDHandle(Agent,agent)
    register_get2IDHandle(Agent,agent)
 */
    define
    {
        //function getIDHandleHashtable
        getIDHandleHashtable(h,sc,s,v)=getID##HandleHashtable(h,sc,s,v)
        getIDHandleHashtable(h,s,v)=getIDHandleHashtable(h,scope_prefix,s,v)

        //function getIDHashtable
        getIDHashtable(sc,s,v)=getIDHandleHashtable(hash,sc,s,v)
        getIDHashtable(s,v)=getIDHashtable(scope_prefix,s,v)

        //function get2IDHandleHashtable
        get2IDHandleHashtable(h,sc,s,i,v)=get2ID##HandleHashtable(h,sc,s,i,v)
        get2IDHandleHashtable(h,s,i,v)=get2IDHandleHashtable(h,scope_prefix,s,i,v)

        //function get2IDHashtable
        get2IDHashtable(sc,s,i,v)=get2IDHandleHashtable(hash,sc,s,i,v)
        get2IDHashtable(s,i,v)=get2IDHashtable(scope_prefix,s,i,v)
    }
    register_getIDHandle(Hashtable,hashtable)
    register_get2IDHandle(Hashtable,hashtable)
    
endscope