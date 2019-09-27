#guard hash_defines

include "cjass\global.j"
include "cjass\hash_array_defines.j"

define
{
	//Hash defines

	//string scope_prefix
	scope_prefix = SCOPE_PREFIX

	//string scope_private
	scope_private = SCOPE_PRIVATE

	//function saveValue
	saveValue(h,vt,k,s,v)=Save##vt##(h,k,s,v)
	saveValue(vt,h,s,v)=saveValue(hash,vt,GetHandleId(h),StringHash(s),v)
	saveValue(vt,s,v)=saveValue(vt,hash,s,v)
	saveValue(vt,v)=saveValue(vt,`v`,v)

	//function loadValue
	loadValue(h,vt,k,s)=Load##vt##(h,k,s)
	loadValue(vt,h,s)=loadValue(hash,vt,GetHandleId(h),StringHash(s))
	loadValue(vt,s)=loadValue(vt,hash,s)

	//function haveValue
	haveValue(h,vt,k,s)=HaveSaved##vt##(h,k,s)
	haveValue(vt,h,s)=haveValue(hash,vt,GetHandleId(h),StringHash(s))
	haveValue(vt,s)=haveValue(vt,hash,s)

	//function removeValue
	removeValue(h,vt,k,s)=RemoveSaved##vt##(h,k,s)
	removeValue(vt,k,s)=removeValue(hash,vt,GetHandleId(k),StringHash(s))
	removeValue(vt,s)=removeValue(vt,hash,s)

	//integer keyInt
	keyInt = Integer
	//integer keyReal
	keyReal = Real
	//integer keyBool
	keyBool = Boolean
	//integer keyString
	keyString = Str
	//integer keyPlayer
	keyPlayer = PlayerHandle
	//integer keyWidget
	keyWidget = WidgetHandle
	//integer keyDestructable
	keyDestructable = DestructableHandle
	//integer keyItem
	keyItem = ItemHandle
	//integer keyUnit
	keyUnit = UnitHandle
	//integer keyAbility
	keyAbility = AbilityHandle
	//integer keyTimer
	keyTimer = TimerHandle
	//integer keyTrigger
	keyTrigger = TriggerHandle
	//integer keyTriggerCondition
	keyTriggerCondition = TriggerConditionHandle
	//integer keyTriggerAction
	keyTriggerAction = TriggerActionHandle
	//integer keyTriggerEvent
	keyTriggerEvent = TriggerEventHandle
	//integer keyForce
	keyForce = ForceHandle
	//integer keyGroup
	keyGroup = GroupHandle
	//integer keyLocation
	keyLocation = LocationHandle
	//integer keyRect
	keyRect = RectHandle
	//integer keyBooleanExpr
	keyBooleanExpr = BooleanExprHandle
	//integer keySound
	keySound = SoundHandle
	//integer keyEffect
	keyEffect = EffectHandle
	//integer keyUnitPool
	keyUnitPool = UnitPoolHandle
	//integer keyItemPool
	keyItemPool = ItemPoolHandle
	//integer keyQuest
	keyQuest = QuestHandle
	//integer keyQuestItem
	keyQuestItem = QuestItemHandle
	//integer keyDefeatCondition
	keyDefeatCondition = DefeatConditionHandle
	//integer keyTimerDialog
	keyTimerDialog = TimerDialogHandle
	//integer keyLeaderboard
	keyLeaderboard = LeaderboardHandle
	//integer keyMultiboard
	keyMultiboard = MultiboardHandle
	//integer keyMultiboardItem
	keyMultiboardItem = MultiboardItemHandle
	//integer keyTrackable
	keyTrackable = TrackableHandle
	//integer keyDialog
	keyDialog = DialogHandle
	//integer keyButton
	keyButton = ButtonHandle
	//integer keyTextTag
	keyTextTag = TextTagHandle
	//integer keyLightning
	keyLightning = LightningHandle
	//integer keyImage
	keyImage = ImageHandle
	//integer keyUbersplat
	keyUbersplat = UbersplatHandle
	//integer keyRegion
	keyRegion = RegionHandle
	//integer keyFogState
	keyFogState = FogStateHandle
	//integer keyFogModifier
	keyFogModifier = FogModifierHandle
	//integer keyAgent
	keyAgent = AgentHandle
	//integer keyHashtable
	keyHashtable = HashtableHandle
	
	SaveInteger(h,k,s,v)=Save##Integer(h,k,s,v)
	SaveInteger(h,s,v) = SaveInteger( hash, GetHandleId(h), StringHash( s ), v )
	SaveInteger(s,v) = SaveInteger(hash,s,v)
	
	SaveReal(h,k,s,v)=Save##Real(h,k,s,v)
	SaveReal(h,s,v) = SaveReal( hash, GetHandleId(h), StringHash( s ), v )
	SaveReal(s,v)=SaveReal(hash,s,v)
	
	SaveBoolean(h,k,s,v)=Save##Boolean(h,k,s,v)
	SaveBoolean(h,s,v) = SaveBoolean( hash, GetHandleId(h), StringHash( s ), v )
	SaveBoolean(s,v)=SaveBoolean(hash,s,v)
	
	SaveStr(h,k,s,v)=Save##Str(h,k,s,v)
	SaveStr(h,s,v) = SaveStr( hash, GetHandleId(h), StringHash( s ), v )
	SaveStr(s,v)=SaveStr(hash,s,v) 
	
	SavePlayerHandle(h,k,s,v)=SavePlayer##Handle(h,k,s,v)
	SavePlayerHandle(h,s,v) = SavePlayerHandle(hash,GetHandleId(h),StringHash(s),v)
	SavePlayerHandle(s,v)=SavePlayerHandle(hash,s,v)
	
	SaveWidgetHandle(h,k,s,v)=Save##WidgetHandle(h,k,s,v)
	SaveWidgetHandle(h,s,v) = SaveWidgetHandle(hash,GetHandleId(h),StringHash(s),v)
	SaveWidgetHandle(s,v)=SaveWidgetHandle(hash,s,v)
	
	SaveDestructableHandle(h,k,s,v)=SaveDestructable##Handle(h,k,s,v)
	SaveDestructableHandle(h,s,v) = SaveDestructableHandle(hash,GetHandleId(h),StringHash(s),v)
	SaveDestructableHandle(s,v)=SaveDestructableHandle(hash,s,v)
	
	SaveItemHandle(h,k,s,v)=SaveItem##Handle(h,k,s,v)
	SaveItemHandle(h,s,v) = SaveItemHandle(hash,GetHandleId(h),StringHash(s),v)
	SaveItemHandle(s,v)=SaveItemHandle(hash,s,v)

	SaveUnitHandle(h,k,s,v)=SaveUnit##Handle(h,k,s,v)
	SaveUnitHandle(h,s,v) = SaveUnitHandle(hash,GetHandleId(h),StringHash(s),v)
	SaveUnitHandle(s,v)=SaveUnitHandle(hash,s,v)
	
	SaveAbilityHandle(h,k,s,v)=SaveAbility##Handle(h,k,s,v)
	SaveAbilityHandle(h,s,v) = SaveAbilityHandle(hash,GetHandleId(h),StringHash(s),v)
	SaveAbilityHandle(s,v)=SaveAbilityHandle(hash,s,v)
	
	SaveTimerHandle(h,k,s,v)=SaveTimer##Handle(h,k,s,v)
	SaveTimerHandle(h,s,v) = SaveTimerHandle(hash,GetHandleId(h),StringHash(s),v)
	SaveTimerHandle(s,v)=SaveTimerHandle(hash,s,v)
	
	SaveTriggerHandle(h,k,s,v)=SaveTrigger##Handle(h,k,s,v)
	SaveTriggerHandle(h,s,v) = SaveTriggerHandle(hash,GetHandleId(h),StringHash(s),v)
	SaveTriggerHandle(s,v)=SaveTriggerHandle(hash,s,v)
	
	SaveTriggerConditionHandle(h,k,s,v)=SaveTriggerCondition##Handle(h,k,s,v)
	SaveTriggerConditionHandle(h,s,v) = SaveTriggerConditionHandle(hash,GetHandleId(h),StringHash(s),v)
	SaveTriggerConditionHandle(s,v)=SaveTriggerConditionHandle(hash,s,v)
	
	SaveTriggerActionHandle(h,k,s,v)=SaveTriggerAction##Handle(h,k,s,v)
	SaveTriggerActionHandle(h,s,v) = SaveTriggerActionHandle(hash,GetHandleId(h),StringHash(s),v)
	SaveTriggerActionHandle(s,v)=SaveTriggerActionHandle(hash,s,v)
	
	SaveTriggerEventHandle(h,k,s,v)=SaveTriggerEvent##Handle(h,k,s,v)
	SaveTriggerEventHandle(h,s,v) = SaveTriggerEventHandle(hash,GetHandleId(h),StringHash(s),v)
	SaveTriggerEventHandle(s,v)=SaveTriggerEventHandle(hash,s,v)
	
	SaveForceHandle(h,k,s,v)=SaveForce##Handle(h,k,s,v)
	SaveForceHandle(h,s,v) = SaveForceHandle(hash,GetHandleId(h),StringHash(s),v)
	SaveForceHandle(s,v)=SaveForceHandle(hash,s,v)
	
	SaveGroupHandle(h,k,s,v)=SaveGroup##Handle(h,k,s,v)
	SaveGroupHandle(h,s,v) = SaveGroupHandle(hash,GetHandleId(h),StringHash(s),v)
	SaveGroupHandle(s,v)=SaveGroupHandle(hash,s,v)
	
	SaveLocationHandle(h,k,s,v)=SaveLocation##Handle(h,k,s,v)
	SaveLocationHandle(h,s,v) = SaveLocationHandle(hash,GetHandleId(h),StringHash(s),v)
	SaveLocationHandle(s,v)=SaveLocationHandle(hash,s,v)
	
	SaveRectHandle(h,k,s,v)=SaveRect##Handle(h,k,s,v)
	SaveRectHandle(h,s,v) = SaveRectHandle(hash,GetHandleId(h),StringHash(s),v)
	SaveRectHandle(s,v)=SaveRectHandle(hash,s,v)
	
	SaveBooleanExprHandle(h,k,s,v)=SaveBooleanExpr##Handle(h,k,s,v)
	SaveBooleanExprHandle(h,s,v) = SaveBooleanExprHandle(hash,GetHandleId(h),StringHash(s),v)
	SaveBooleanExprHandle(s,v)=SaveBooleanExprHandle(hash,s,v)
	
	SaveSoundHandle(h,k,s,v)=SaveSound##Handle(h,k,s,v)
	SaveSoundHandle(h,s,v) = SaveSoundHandle(hash,GetHandleId(h),StringHash(s),v)
	SaveSoundHandle(s,v)=SaveSoundHandle(hash,s,v)
	
	SaveEffectHandle(h,k,s,v)=SaveEffect##Handle(h,k,s,v)
	SaveEffectHandle(h,s,v)=SaveEffectHandle(hash,GetHandleId(h),StringHash(s),v)
	SaveEffectHandle(s,v)=SaveEffectHandle(hash,s,v)
	
	SaveUnitPoolHandle(h,k,s,v)=SaveUnitPool##Handle(h,k,s,v)
	SaveUnitPoolHandle(h,s,v)=SaveUnitPoolHandle(hash,GetHandleId(h),StringHash(s),v)
	SaveUnitPoolHandle(s,v)=SaveUnitPoolHandle(hash,s,v)
	
	SaveItemPoolHandle(h,k,s,v)=SaveItemPool##Handle(h,k,s,v)
	SaveItemPoolHandle(h,s,v)=SaveItemPoolHandle(hash,GetHandleId(h),StringHash(s),v)
	SaveItemPoolHandle(s,v)=SaveItemPoolHandle(hash,s,v)
	
	SaveQuestHandle(h,k,s,v)=SaveQuest##Handle(h,k,s,v)
	SaveQuestHandle(h,s,v)=SaveQuestHandle(hash,GetHandleId(h),StringHash(s),v)
	SaveQuestHandle(s,v)=SaveQuestHandle(hash,s,v)
	
	SaveQuestItemHandle(h,k,s,v)=SaveQuestItem##Handle(h,k,s,v)
	SaveQuestItemHandle(h,s,v)=SaveQuestItemHandle(hash,GetHandleId(h),StringHash(s),v)
	SaveQuestItemHandle(s,v)=SaveQuestItemHandle(hash,s,v)
	
	SaveDefeatConditionHandle(h,k,s,v)=SaveDefeatCondition##Handle(h,k,s,v)
	SaveDefeatConditionHandle(h,s,v)=SaveDefeatConditionHandle(hash,GetHandleId(h),StringHash(s),v)
	SaveDefeatConditionHandle(s,v)=SaveDefeatConditionHandle(hash,s,v)
	
	SaveTimerDialogHandle(h,k,s,v)=SaveTimerDialog##Handle(h,k,s,v)
	SaveTimerDialogHandle(h,s,v)=SaveTimerDialogHandle(hash,GetHandleId(h),StringHash(s),v)
	SaveTimerDialogHandle(s,v)=SaveTimerDialogHandle(hash,s,v)
	
	SaveLeaderboardHandle(h,k,s,v)=SaveLeaderboard##Handle(h,k,s,v)
	SaveLeaderboardHandle(h,s,v)=SaveLeaderboardHandle(hash,GetHandleId(h),StringHash(s),v)
	SaveLeaderboardHandle(s,v)=SaveLeaderboardHandle(hash,s,v)
	
	SaveMultiboardHandle(h,k,s,v)=SaveMultiboard##Handle(h,k,s,v)
	SaveMultiboardHandle(h,s,v)=SaveMultiboardHandle(hash,GetHandleId(h),StringHash(s),v)
	SaveMultiboardHandle(s,v)=SaveMultiboardHandle(hash,s,v)
	
	SaveMultiboardItemHandle(h,k,s,v)=SaveMultiboardItem##Handle(h,k,s,v)
	SaveMultiboardItemHandle(h,s,v)=SaveMultiboardItemHandle(hash,GetHandleId(h),StringHash(s),v)
	SaveMultiboardItemHandle(s,v)=SaveMultiboardItemHandle(hash,s,v)
	
	SaveTrackableHandle(h,k,s,v)=SaveTrackable##Handle(h,k,s,v)
	SaveTrackableHandle(h,s,v)=SaveTrackableHandle(hash,GetHandleId(h),StringHash(s),v)
	SaveTrackableHandle(s,v)=SaveTrackableHandle(hash,s,v)
	
	SaveDialogHandle(h,k,s,v)=SaveDialog##Handle(h,k,s,v)
	SaveDialogHandle(h,s,v)=SaveDialogHandle(hash,GetHandleId(h),StringHash(s),v)
	SaveDialogHandle(s,v)=SaveDialogHandle(hash,s,v)
	
	SaveButtonHandle(h,k,s,v)=SaveButton##Handle(h,k,s,v)
	SaveButtonHandle(h,s,v)=SaveButtonHandle(hash,GetHandleId(h),StringHash(s),v)
	SaveButtonHandle(s,v)=SaveButtonHandle(hash,s,v)
	
	SaveTextTagHandle(h,k,s,v)=SaveTextTag##Handle(h,k,s,v)
	SaveTextTagHandle(h,s,v)=SaveTextTagHandle(hash,GetHandleId(h),StringHash(s),v)
	SaveTextTagHandle(s,v)=SaveTextTagHandle(hash,s,v)
	
	SaveLightningHandle(h,k,s,v)=SaveLightning##Handle(h,k,s,v)
	SaveLightningHandle(h,s,v)=SaveLightningHandle(hash,GetHandleId(h),StringHash(s),v)
	SaveLightningHandle(s,v)=SaveLightningHandle(hash,s,v)
	
	SaveImageHandle(h,k,s,v)=SaveImage##Handle(h,k,s,v)
	SaveImageHandle(h,s,v)=SaveImageHandle(hash,GetHandleId(h),StringHash(s),v)
	SaveImageHandle(s,v)=SaveImageHandle(hash,s,v)
	
	SaveUbersplatHandle(h,k,s,v)=SaveUbersplat##Handle(h,k,s,v)
	SaveUbersplatHandle(h,s,v)=SaveUbersplatHandle(hash,GetHandleId(h),StringHash(s),v)
	SaveUbersplatHandle(s,v)=SaveUbersplatHandle(hash,s,v)
	
	SaveRegionHandle(h,k,s,v)=SaveRegion##Handle(h,k,s,v)
	SaveRegionHandle(h,s,v)=SaveRegionHandle(hash,GetHandleId(h),StringHash(s),v)
	SaveRegionHandle(s,v)=SaveRegionHandle(hash,s,v)
	
	SaveFogStateHandle(h,k,s,v)=SaveFogState##Handle(h,k,s,v)
	SaveFogStateHandle(h,s,v)=SaveFogStateHandle(hash,GetHandleId(h),StringHash(s),v)
	SaveFogStateHandle(s,v)=SaveFogStateHandle(hash,s,v)
	
	SaveFogModifierHandle(h,k,s,v)=SaveFogModifier##Handle(h,k,s,v)
	SaveFogModifierHandle(h,s,v)=SaveFogModifierHandle(hash,GetHandleId(h),StringHash(s),v)
	SaveFogModifierHandle(s,v)=SaveFogModifierHandle(hash,s,v)
	
	SaveAgentHandle(h,k,s,v)=SaveAgent##Handle(h,k,s,v)
	SaveAgentHandle(h,s,v)=SaveAgentHandle(hash,GetHandleId(h),StringHash(s),v)
	SaveAgentHandle(s,v)=SaveAgentHandle(hash,s,v)
	
	SaveHashtableHandle(h,k,s,v)=SaveHashtable##Handle(h,k,s,v)
	SaveHashtableHandle(h,s,v)=SaveHashtableHandle(hash,GetHandleId(h),StringHash(s),v)
	SaveHashtableHandle(s,v)=SaveHashtableHandle(hash,s,v)
	
	
	LoadInteger(h,k,s)=Load##Integer(h,k,s)
	LoadInteger(h,s)=LoadInteger(hash,GetHandleId(h),StringHash(s))
	LoadInteger(s)=LoadInteger(hash,s)
	
	LoadReal(h,k,s)=Load##Real(h,k,s)
	LoadReal(h,s)=LoadReal(hash,GetHandleId(h),StringHash(s))
	LoadReal(s)=LoadReal(hash,s)
	
	LoadBoolean(h,k,s)=Load##Boolean(h,k,s)
	LoadBoolean(h,s)=LoadBoolean(hash,GetHandleId(h),StringHash(s))
	LoadBoolean(s)=LoadBoolean(hash,s)
	
	LoadStr(h,k,s)=Load##Str(h,k,s)
	LoadStr(h,s)=LoadStr(hash,GetHandleId(h),StringHash(s))
	LoadStr(s)=LoadStr(hash,s)
	
	LoadPlayerHandle(h,k,s)=LoadPlayer##Handle(h,k,s)
	LoadPlayerHandle(h,s)=LoadPlayerHandle(hash,GetHandleId(h),StringHash(s))
	LoadPlayerHandle(s)=LoadPlayerHandle(hash,s)
	
	LoadWidgetHandle(h,k,s)=LoadWidget##Handle(h,k,s)
	LoadWidgetHandle(h,s)=LoadWidgetHandle(hash,GetHandleId(h),StringHash(s))
	LoadWidgetHandle(s)=LoadWidgetHandle(hash,s)
	
	LoadDestructableHandle(h,k,s)=LoadDestructable##Handle(h,k,s)
	LoadDestructableHandle(h,s)=LoadDestructableHandle(hash,GetHandleId(h),StringHash(s))
	LoadDestructableHandle(s)=LoadDestructableHandle(hash,s)
	
	LoadItemHandle(h,k,s)=LoadItem##Handle(h,k,s)
	LoadItemHandle(h,s)=LoadItemHandle(hash,GetHandleId(h),StringHash(s))
	LoadItemHandle(s)=LoadItemHandle(hash,s)
	
	LoadUnitHandle(h,k,s)=LoadUnit##Handle(h,k,s)
	LoadUnitHandle(h,s)=LoadUnitHandle(hash,GetHandleId(h),StringHash(s))
	LoadUnitHandle(s)=LoadUnitHandle(hash,s)
	
	LoadAbilityHandle(h,k,s)=LoadAbility##Handle(h,k,s)
	LoadAbilityHandle(h,s)=LoadAbilityHandle(hash,GetHandleId(h),StringHash(s))
	LoadAbilityHandle(s)=LoadAbilityHandle(hash,s)
	
	LoadTimerHandle(h,k,s)=LoadTimer##Handle(h,k,s)
	LoadTimerHandle(h,s)=LoadTimerHandle(hash,GetHandleId(h),StringHash(s))
	LoadTimerHandle(s)=LoadTimerHandle(hash,s)
	
	LoadTriggerHandle(h,k,s)=LoadTrigger##Handle(h,k,s)
	LoadTriggerHandle(h,s)=LoadTriggerHandle(hash,GetHandleId(h),StringHash(s))
	LoadTriggerHandle(s)=LoadTriggerHandle(hash,s)
	
	LoadTriggerConditionHandle(h,k,s)=LoadTriggerCondition##Handle(h,k,s)
	LoadTriggerConditionHandle(h,s)=LoadTriggerConditionHandle(hash,GetHandleId(h),StringHash(s))
	LoadTriggerConditionHandle(s)=LoadTriggerConditionHandle(hash,s)
	
	LoadTriggerActionHandle(h,k,s)=LoadTriggerAction##Handle(h,k,s)
	LoadTriggerActionHandle(h,s)=LoadTriggerActionHandle(hash,GetHandleId(h),StringHash(s))
	LoadTriggerActionHandle(s)=LoadTriggerActionHandle(hash,s)
	
	LoadTriggerEventHandle(h,k,s)=LoadTriggerEvent##Handle(h,k,s)
	LoadTriggerEventHandle(h,s)=LoadTriggerEventHandle(hash,GetHandleId(h),StringHash(s))
	LoadTriggerEventHandle(s)=LoadTriggerEventHandle(hash,s)
	
	LoadForceHandle(h,k,s)=LoadForce##Handle(h,k,s)
	LoadForceHandle(h,s)=LoadForceHandle(hash,GetHandleId(h),StringHash(s))
	LoadForceHandle(s)=LoadForceHandle(hash,s)
	
	LoadGroupHandle(h,k,s)=LoadGroup##Handle(h,k,s)
	LoadGroupHandle(h,s)=LoadGroupHandle(hash,GetHandleId(h),StringHash(s))
	LoadGroupHandle(s)=LoadGroupHandle(hash,s)
	
	LoadLocationHandle(h,k,s)=LoadLocation##Handle(h,k,s)
	LoadLocationHandle(h,s)=LoadLocationHandle(hash,GetHandleId(h),StringHash(s))
	LoadLocationHandle(s)=LoadLocationHandle(hash,s)
	
	LoadRectHandle(h,k,s)=LoadRect##Handle(h,k,s)
	LoadRectHandle(h,s)=LoadRectHandle(hash,GetHandleId(h),StringHash(s))
	LoadRectHandle(s)=LoadRectHandle(hash,s)
	
	LoadBooleanExprHandle(h,k,s)=LoadBooleanExpr##Handle(h,k,s)
	LoadBooleanExprHandle(h,s)=LoadBooleanExprHandle(hash,GetHandleId(h),StringHash(s))
	LoadBooleanExprHandle(s)=LoadBooleanExprHandle(hash,s)
	
	LoadSoundHandle(h,k,s)=LoadSound##Handle(h,k,s)
	LoadSoundHandle(h,s)=LoadSoundHandle(hash,GetHandleId(h),StringHash(s))
	LoadSoundHandle(s)=LoadSoundHandle(hash,s)
	
	LoadEffectHandle(h,k,s)=LoadEffect##Handle(h,k,s)
	LoadEffectHandle(h,s)=LoadEffectHandle(hash,GetHandleId(h),StringHash(s))
	LoadEffectHandle(s)=LoadEffectHandle(hash,s)
	
	LoadUnitPoolHandle(h,k,s)=LoadUnitPool##Handle(h,k,s)
	LoadUnitPoolHandle(h,s)=LoadUnitPoolHandle(hash,GetHandleId(h),StringHash(s))
	LoadUnitPoolHandle(s)=LoadUnitPoolHandle(hash,s)
	
	LoadItemPoolHandle(h,k,s)=LoadItemPool##Handle(h,k,s)
	LoadItemPoolHandle(h,s)=LoadItemPoolHandle(hash,GetHandleId(h),StringHash(s))
	LoadItemPoolHandle(s)=LoadItemPoolHandle(hash,s)
	
	LoadQuestHandle(h,k,s)=LoadQuest##Handle(h,k,s)
	LoadQuestHandle(h,s)=LoadQuestHandle(hash,GetHandleId(h),StringHash(s))
	LoadQuestHandle(s)=LoadQuestHandle(hash,s)

	LoadQuestItemHandle(h,k,s)=LoadQuestItem##Handle(h,k,s)
	LoadQuestItemHandle(h,s)=LoadQuestItemHandle(hash,GetHandleId(h),StringHash(s))
	LoadQuestItemHandle(s)=LoadQuestItemHandle(hash,s)
	
	LoadDefeatConditionHandle(h,k,s)=LoadDefeatCondition##Handle(h,k,s)
	LoadDefeatConditionHandle(h,s)=LoadDefeatConditionHandle(hash,GetHandleId(h),StringHash(s))
	LoadDefeatConditionHandle(s)=LoadDefeatConditionHandle(hash,s)
	
	LoadTimerDialogHandle(h,k,s)=LoadTimerDialog##Handle(h,k,s)
	LoadTimerDialogHandle(h,s)=LoadTimerDialogHandle(hash,GetHandleId(h),StringHash(s))
	LoadTimerDialogHandle(s)=LoadTimerDialogHandle(hash,s)
	
	LoadLeaderboardHandle(h,k,s)=LoadLeaderboard##Handle(h,k,s)
	LoadLeaderboardHandle(h,s)=LoadLeaderboardHandle(hash,GetHandleId(h),StringHash(s))
	LoadLeaderboardHandle(s)=LoadLeaderboardHandle(hash,s)

	LoadMultiboardHandle(h,k,s)=LoadMultiboard##Handle(h,k,s)
	LoadMultiboardHandle(h,s)=LoadMultiboardHandle(hash,GetHandleId(h),StringHash(s))
	LoadMultiboardHandle(s)=LoadMultiboardHandle(hash,s)
	
	LoadMultiboardItemHandle(h,k,s)=LoadMultiboardItem##Handle(h,k,s)
	LoadMultiboardItemHandle(h,s)=LoadMultiboardItemHandle(hash,GetHandleId(h),StringHash(s))
	LoadMultiboardItemHandle(s)=LoadMultiboardItemHandle(hash,s)
	
	LoadTrackableHandle(h,k,s)=LoadTrackable##Handle(h,k,s)
	LoadTrackableHandle(h,s)=LoadTrackableHandle(hash,GetHandleId(h),StringHash(s))
	LoadTrackableHandle(s)=LoadTrackableHandle(hash,s)
	
	LoadDialogHandle(h,k,s)=LoadDialog##Handle(h,k,s)
	LoadDialogHandle(h,s)=LoadDialogHandle(hash,GetHandleId(h),StringHash(s))
	LoadDialogHandle(s)=LoadDialogHandle(hash,s)
	
	LoadButtonHandle(h,k,s)=LoadButton##Handle(h,k,s)
	LoadButtonHandle(h,s)=LoadButtonHandle(hash,GetHandleId(h),StringHash(s))
	LoadButtonHandle(s)=LoadButtonHandle(hash,s)
	
	LoadTextTagHandle(h,k,s)=LoadTextTag##Handle(h,k,s)
	LoadTextTagHandle(h,s)=LoadTextTagHandle(hash,GetHandleId(h),StringHash(s))
	LoadTextTagHandle(s)=LoadTextTagHandle(hash,s)
	
	LoadLightningHandle(h,k,s)=LoadLightning##Handle(h,k,s)
	LoadLightningHandle(h,s)=LoadLightningHandle(hash,GetHandleId(h),StringHash(s))
	LoadLightningHandle(s)=LoadLightningHandle(hash,s)
	
	LoadImageHandle(h,k,s)=LoadImage##Handle(h,k,s)
	LoadImageHandle(h,s)=LoadImageHandle(hash,GetHandleId(h),StringHash(s))
	LoadImageHandle(s)=LoadImageHandle(hash,s)
	
	LoadRegionHandle(h,k,s)=LoadRegion##Handle(h,k,s)
	LoadRegionHandle(h,s)=LoadRegionHandle(hash,GetHandleId(h),StringHash(s))
	LoadRegionHandle(s)=LoadRegionHandle(hash,s)
	
	LoadFogStateHandle(h,k,s)=LoadFogState##Handle(h,k,s)
	LoadFogStateHandle(h,s)=LoadFogStateHandle(hash,GetHandleId(h),StringHash(s))
	LoadFogStateHandle(s)=LoadFogStateHandle(hash,s)
	
	LoadFogModifierHandle(h,k,s)=LoadFogModifier##Handle(h,k,s)
	LoadFogModifierHandle(h,s)=LoadFogModifierHandle(hash,GetHandleId(h),StringHash(s))
	LoadFogModifierHandle(s)=LoadFogModifierHandle(hash,s)
	
	LoadHashtableHandle(h,k,s)=LoadHashtable##Handle(h,k,s)
	LoadHashtableHandle(h,s)=LoadHashtableHandle(hash,GetHandleId(h),StringHash(s))
	LoadHashtableHandle(s)=LoadHashtableHandle(hash,s)

    //function addInteger
    addInteger(h,s,v)=SaveInteger(h,s,LoadInteger(h,s)+v)
	addInteger(s,v)=addInteger(hash,s,v)
    //function addReal
    addReal(h,s,v)=SaveReal(h,s,LoadReal(h,s)+v)
	addReal(s,v)=addReal(hash,s,v)
    //function addStrPre
    addStrPre(h,s,v)=SaveStr(h,s,v+LoadStr(h,s))
	addStrPre(s,v)=addStrPre(hash,s,v)
    //function addStrPost
    addStrPost(h,s,v)=SaveStr(h,s,LoadStr(h,s)+v)
	addStrPost(s,v)=addStrPost(hash,s,v)
	
	HaveSavedInteger(h,k,s)=HaveSaved##Integer(h,k,s)
	HaveSavedInteger(h,s) = HaveSavedInteger(hash,GetHandleId(h),StringHash(s))
	HaveSavedInteger(s)=HaveSavedInteger(hash,s)
	
	HaveSavedReal(h,k,s)=HaveSaved##Real(h,k,s)
	HaveSavedReal(h,s)=HaveSavedReal(hash,GetHandleId(h),StringHash(s))
	HaveSavedReal(s)=HaveSavedReal(hash,s)
	
	HaveSavedBoolean(h,k,s)=HaveSaved##Boolean(h,k,s)
	HaveSavedBoolean(h,s)=HaveSavedBoolean(hash,GetHandleId(h),StringHash(s))
	HaveSavedBoolean(s)=HaveSavedBoolean(hash,s)
	
	HaveSavedString(h,k,s)=HaveSaved##String(h,k,s)
	HaveSavedString(h,s)=HaveSavedString(hash,GetHandleId(h),StringHash(s))
	HaveSavedString(s)=HaveSavedString(hash,s)
	
	HaveSavedHandle(h,k,s)=HaveSaved##Handle(h,k,s)
	HaveSavedHandle(h,s)=HaveSavedHandle(hash,GetHandleId(h),StringHash(s))
	HaveSavedHandle(s)=HaveSavedHandle(hash,s)
	
	RemoveSavedInteger(h,k,s)=RemoveSaved##Integer(h,k,s)
	RemoveSavedInteger(h,s)=RemoveSavedInteger(hash,GetHandleId(h),StringHash(s))
	RemoveSavedInteger(s)=RemoveSavedInteger(hash,s)
	
	RemoveSavedReal(h,k,s)=RemoveSaved##Real(h,k,s)
	RemoveSavedReal(h,s)=RemoveSavedReal(hash,GetHandleId(h),StringHash(s))
	RemoveSavedReal(s)=RemoveSavedReal(hash,s)
	
	RemoveSavedBoolean(h,k,s)=RemoveSaved##Boolean(h,k,s)
	RemoveSavedBoolean(h,s)=RemoveSavedBoolean(hash,GetHandleId(h),StringHash(s))
	RemoveSavedBoolean(s)=RemoveSavedBoolean(hash,s)
	
	RemoveSavedString(h,k,s)=RemoveSaved##String(h,k,s)
	RemoveSavedString(h,s)=RemoveSavedString(hash,GetHandleId(h),StringHash(s))
	RemoveSavedString(s)=RemoveSavedString(hash,s)
	
	RemoveSavedHandle(h,k,s)=RemoveSaved##Handle(h,k,s)
	RemoveSavedHandle(h,s)=RemoveSavedHandle(hash,GetHandleId(h),StringHash(s))
	RemoveSavedHandle(s)=RemoveSavedHandle(hash,s)
	
	
	FlushParentHashtable = FlushParent##Hashtable(hash)
	/* FlushChildHashtable(h,k,b)=
	{
		#if (b==true)
			call FlushChild##Hashtable(h,StringHash(k))
		#else
			call FlushChild##Hashtable(h,GetHandleId(k))
		#endif
	}
	FlushChildHashtable(k,b) = FlushChildHashtable(hash,k,b) */
	FlushChildHashtable(h,k)=FlushChild##Hashtable(h,k)
	FlushChildHashtable(h)=FlushChildHashtable(hash,GetHandleId(h))
}