integer gint = 0
integer gint1 = 0
integer gint2 = 0

player gplayer1 = null
player gplayer2 = null

unit gunit1 = null
unit gunit2 = null

destructable gdest1 = null
destructable gdest2 = null

item gitem1 = null
item gitem2 = null

ability gabil1 = null
ability gabil2 = null 

buff gbuff1 = null
buff gbuff2 = null

constant force gforce1 = CreateForce()
constant force gforce2 = CreateForce()

constant group ggroup1 = CreateGroup()
constant group ggroup2 = CreateGroup()

trigger gtrigger1 = null
trigger gtrigger2 = null

timer gtimer1 = null
timer gtimer2 = null

location gloc1 = null
location gloc2 = null

region gregion1 = null
region gregion2 = null

rect grect1 = null
rect grect2 = null

sound gsound1 = null
sound gsound2 = null

effect geffect1 = null
effect geffect2 = null

dialog gdialog1 = null
dialog gdialog2 = null

button gbutton1 = null
button gbutton2 = null

timerdialog gtimerdialog1 = null
timerdialog gtimerdialog2 = null

leaderboard gleaderboard1 = null
leaderboard gleaderboard2 = null

multiboard gmultiboard1 = null
multiboard gmultiboard2 = null

multiboarditem gmultiboarditem1 = null
multiboarditem gmultiboarditem2 = null

trackable gtrackable1 = null
trackable gtrackable2 = null

texttag gtexttag1 = null
texttag gtexttag2 = null

code gcode1 = null
code gcode2 = null

constant hashtable hash = InitHashtable()

gamecache ggamecache = null

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

library customDefines

    define
    {
        //constant real max_real_value = 1095267328
        max_real_value = 1095267328

        //string exploded_str
        exploded_str = "exploded"
        //boolean isUnitExploded
        isUnitExploded(u)=LoadBoolean(u,exploded_str)

        //string ability_blocked_str
        ability_blocked_str = "ability_blocked"
        //boolean isAbilityBlocked
        isAbilityBlocked(p,ab)=LoadBoolean(p,ability_blocked_str+I2S(ab))

        //real getParabola
        getParabola(z,d,r)=(4 * z / d) * (d - r) * (r / d)

        //real getSpeededMove
        getSpeededMove(v,t,a)=v*t + a*Pow(t,2)/2

        //real getRectRandomX
        getRectRandomX(r)=GetRandomReal(GetRectMinX(r),GetRectMaxX(r))

        //real getRectRandomY
        getRectRandomY(r)=GetRandomReal(GetRectMinY(r),GetRectMaxY(r))

        //real getAngleCoords
        getAngleCoords(x1,y1,x2,y2)=bj_RADTODEG * Atan2(y2 - y1, x2 - x1)

        //real getAngleUnits
        getAngleUnits(u1,u2)=getAngleCoords(GetUnitX(u1),GetUnitY(u1),GetUnitX(u2),GetUnitY(u2))

        //real getDistanceCoords
        getDistanceCoords(x1,y1,x2,y2)=SquareRoot(Pow(x2-x1,2)+Pow(y2-y1,2))

        //real getDistanceUnits
        getDistanceUnits(u1,u2)=getDistanceCoords(GetUnitX(u1),GetUnitY(u1),GetUnitX(u2),GetUnitY(u2))

        //real getOffsetX
        getOffsetX(x,o,a)=x+o*SinBJ(a)

        //real getOffsetY
        getOffsetY(y,o,a)=y+o*CosBJ(a)

        //player getPlayer
        getPlayer(i)=Player(i)

        // function clearTextMessagesForPlayer
        clearTextMessagesForPlayer(p)=
        {
            if GetLocalPlayer()==p then
                ClearTextMessages()
            endif
        }

        //constant integer fly_ability = 'Arav'
        fly_ability = 'Arav'
        //function getFlyAbility
        getFlyAbility(u)=
        {
            UnitAddAbility(u,fly_ability)
            UnitRemoveAbility(u,fly_ability)
        }

        //boolean unitHasAbility
        unitHasAbility(u,ab) = (GetUnitAbilityLevel(u,ab)>0)

        //boolean isUnitAlive
        isUnitAlive(u)=(GetWidgetLife(u)>=0.405)

        //function forAB
        forAB(i,j,a,b,c,body)=
        {
            i=a
            j=b
            loop
                body
                #if (c==+)
                    exitwhen ++i>j
                #elseif (c==-)
                    exitwhen --i<j
                #endif
            endloop
        }
        forAB(i,a,b,c,body)=
        {
            i=a
            loop
                body
                #if (c==+)
                    exitwhen ++i>b
                #elseif (c==-)
                    exitwhen --i<b
                #endif
            endloop
        }
        forAB(i,a,b,body)=forAB(i,a,b,+,body)

        //string size_str
        size_str = "size"
        //string size_converted_str
        size_converted_str = "sizeConverted"
        //real getTextTagSize
        getTextTagSize(tt,b)=getText##TagSize(tt,b)
        getTextTagSize(tt)=getTextTagSize(tt,true)

        //unit triggerUnit
        triggerUnit=GetTriggerUnit()

        //unit filterUnit
        filterUnit=GetFilterUnit()

        //unit enumUnit
        enumUnit=GetEnumUnit() 

        //boolean memHackEnabled
        memHackEnabled = 0

        isMapContainsCoords(x,y)=GetRectMinX(GetPlayableMapRect())<=x && GetRectMaxX(GetPlayableMapRect())>=x && GetRectMinY(GetPlayableMapRect())<=y && GetRectMaxY(GetPlayableMapRect())>=y
        
        //integer sightAbilityId
        sightAbilityId = 'AIsi'
        //function addUnitSight
        addUnitSight(u,i,b)=
        {
            addInteger(u,"sight",i)
            forAB(gint,1,i,
            UnitAddAbility(u,sightAbilityId)
            SetUnitAbilityLevel(u,sightAbilityId,B2I(true,b))
            UnitRemoveAbility(u,sightAbilityId))
        }
    }

    real getTextTagSize(texttag tt, boolean isConverted)
    {
        if isConverted then
            return LoadReal(tt,size_converted_str)
        else
            return LoadReal(tt,size_str)
        endif
    }

    define 
    {
        B2I(a,b)=B##2I(a,b)
        B2I(b)=B##2I(false,b)
    }
    int B2I(bool isab, bool b)
    {
        if b then
            if isab then
                return 2
            else
                return 1
            endif
        elseif isab then
            return 3
        else
            return -1
        endif
    }

    function B2S takes boolean b returns string
        if b then
            return "TRUE"
        else
            return "FALSE"
        endif
    endfunction

    define
    {
        getStringPos(subs,s,from)=get##StringPos(subs,s,from)
        getStringPos(subs,s)=getStringPos(subs,s,0)
    } 
    //function getStringPos
    integer getStringPos(string s, string subs, integer from)
    {
        local integer i=from
        local integer j=0
        loop
            exitwhen i>StringLength(s)
            set j=i
            loop
                exitwhen j>StringLength(s)
                if SubString(s,i,j)==subs then
                    return i
                endif
                set j=j+1
            endloop
            set i=i+1
        endloop
        return -1
    }

    function getStringWithoutCode takes string s returns string
        if SubString(s,0,2)=="|c" then
            s=SubString(s,10,StringLength(s))
        endif
        if SubString(s,StringLength(s)-2,StringLength(s))=="|r" then
            s=SubString(s,0,StringLength(s)-2)
        endif
        return s
    endfunction

    //constant string author_name
    define author_name = "WriteCoin"
    function isPlayerAuthor takes player p returns boolean
        return (GetPlayerName(p)==author_name)or(getStringWithoutCode(GetPlayerName(p))==author_name)
    endfunction

    scope CommonFunctions

        private item indexItem

        function getInventoryIndexOfItemCode takes unit u, integer id returns integer
            local integer index
            forAB(index,0,bj_MAX_INVENTORY-1,+,
            indexItem=UnitItemInSlot(u,index)
            if (indexItem!=null)and(GetItemTypeId(indexItem)==id) then
                return index
            endif)
            return 0
        endfunction

        function getInventoryIndexOfItemCodeExItem takes unit u, integer id, item it returns integer
            local integer index = 0
            forAB(index,0,bj_MAX_INVENTORY-1,+,
            indexItem=UnitItemInSlot(u,index)
            if (indexItem!=null)and(GetItemTypeId(indexItem)==id)and(indexItem!=it) then
                return index
            endif)
            return 0
        endfunction

        function getInventoryCountOfItemCode takes unit u, integer id returns integer
            local integer i = 0
            local integer c = 0
            forAB(i,0,bj_MAX_INVENTORY-1,+,
            indexItem=UnitItemInSlot(u,i)
            if (indexItem!=null)and(GetItemTypeId(indexItem)==id) then
                c++
            endif)
            return c
        endfunction

        function getInventoryCountOfItemCodeExItem takes unit u, integer id, item it returns integer
            local integer i = 0
            local integer c = 0
            forAB(i,0,bj_MAX_INVENTORY-1,+,
            indexItem=UnitItemInSlot(u,i)
            if (indexItem!=null)and(GetItemTypeId(indexItem)==id)and(indexItem!=it) then
                c++
            endif)
            return c
        endfunction


        boolean isMinLeakInt=false
        boolean isMaxLeakInt=true
        define
        {
            //function getLeakedInt
            getLeakedInt(r,min,minv,max,maxv) = getLeaked##Int(r,min,minv,max,maxv)
            getLeakedInt(r,min,max) = getLeaked##Int(r,min,min,max,max)
        }
        int getLeakedInt(real r, real min, real minv, real max, real maxv)
        {
            isMinLeakInt=false
            isMaxLeakInt=false
            if r<min then
                isMinLeakInt=true
                return R2I(minv)
            elseif r>max then
                isMaxLeakInt=true
                return R2I(maxv)
            endif
            return R2I(r)
        }

        boolean isMinLeakReal=false
        boolean isMaxLeakReal=false
        define
        {
            //function getLeakedReal
            getLeakedReal(r,min,minv,max,maxv)=getLeaked##Real(r,min,minv,max,maxv)
            getLeakedReal(r,min,max)=getLeakedReal(r,min,min,max,max)
        }
        real getLeakedReal(real r, real min, real minv, real max, real maxv)
        {
            isMinLeakReal=false
            isMaxLeakReal=false
            if r<min then
                isMinLeakReal=true
                return minv
            elseif r>max then
                isMaxLeakReal=true
                return maxv
            endif
            return r
        }

        define
        {
            //real getLeakedPercent
            getLeakedPercent(p) = getLeakedReal(p,0,100)

            //integer getLeakedColor
            getLeakedColor(c) = getLeakedInt(c,0,255)

            //real getLeakedFace
            getLeakedFace(f) = getLeakedReal(f,0,f+360,360,f-360)

            //integer getLeakedStringLength
            getLeakedStringLength(l,s)=getLeakedInt(l,0,StringLength(s))
        }

        function createNUnits takes integer count,player p,integer id,real x,real y,real face returns group
            local integer i=1
            forAB(i,1,count,+,
            bj_lastCreatedUnit=CreateUnit(p,id,x,y,face)
            GroupAddUnit(bj_lastCreatedGroup,bj_lastCreatedUnit)
            )
            return bj_lastCreatedGroup
        endfunction

    endscope

    define
    {

        //function getUnitsInRect
        getUnitsInRect(r,f)=getUnits##InRect(r,f)
        getUnitsInRect(r)=getUnitsInRect(r,null)

        //function getUnitsInMap
        getUnitsInMap(f)=getUnitsInRect(GetPlayableMapRect(),f)
        getUnitsInMap=getUnitsInMap(null)

        //function forUnitsInRect
        forUnitsInRect(r,f,c)=ForGroup(getUnitsInRect(r,f),function c)
        forUnitsInRect(r,c)=forUnitsInRect(r,null,c)

        //function forUnitsInMap
        forUnitsInMap(f,c)=ForGroup(getUnitsInMap(f),function c)
        forUnitsInMap(c)=forUnitsInMap(null,c)
    }
    group getUnitsInRect(rect r, boolexpr filter)
    {
        GroupEnumUnitsInRect(ggroup1,r,filter)
        DestroyBoolExpr(filter)
        return ggroup1
    }

    define
    {
        //string getCopyString
        getCopyString(s,poz,n) = SubString(s,IMinBJ(getLeakedStringLength(poz,s),getLeakedStringLength(poz+n,s)),IMaxBJ(getLeakedStringLength(poz,s),getLeakedStringLength(poz+n,s)))

        //string deleteFromString
        deleteFromString(s,poz,n) = getCopyString(s,0,poz) + getCopyString(s,poz+n,StringLength(s))
        deleteFromString(s,s1) = delete##FromString(s,s1)

        //string insertString
        insertString(s,poz,subs) = getCopyString(s,0,poz) + subs + getCopyString(s,poz,StringLength(s))
    }

    string deleteFromString(string s, string s1)
    {
        int poz=getStringPos(s,s1)
        if poz!=-1 then
            return deleteFromString(s,poz,StringLength(s1))
        endif
        return s
    }

    function replaceString takes string s, string s1, string s2 returns string
        int poz=getStringPos(s,s1)
        if poz!=-1 then
            return insertString(deleteFromString(s,s1),poz,s2)
        endif
        return s
    endfunction

    define
    {
        //real colorToPercent
        colorToPercent(r)=PercentToInt(r,100/2.55)

        //function saveColors
        saveColors(w,p,r,g,b,a)=
        {
            #if (p==true)
                SaveReal(w,"red",PercentTo255(getLeakedPercent(r)))
                SaveReal(w,"green",PercentTo255(getLeakedPercent(g)))
                SaveReal(w,"blue",PercentTo255(getLeakedPercent(b)))
                SaveReal(w,"alpha",PercentTo255(100.0-getLeakedPercent(a)))
                SaveReal(w,"red%",getLeakedPercent(r))
                SaveReal(w,"green%",getLeakedPercent(g))
                SaveReal(w,"blue%",getLeakedPercent(b))
                SaveReal(w,"transparency",getLeakedPercent(a))
            #elseif (p==false)
                SaveReal(w,"red",getLeakedColor(r))
                SaveReal(w,"green",getLeakedColor(g))
                SaveReal(w,"blue",getLeakedColor(b))
                SaveReal(w,"alpha",getLeakedColor(a))
                SaveReal(w,"red%",colorToPercent(getLeakedColor(r)))
                SaveReal(w,"green%",colorToPercent(getLeakedColor(g)))
                SaveReal(w,"blue%",colorToPercent(getLeakedColor(b)))
                SaveReal(w,"transparency",colorToPercent(getLeakedColor(a))-100)
            #endif
        }
        saveColors(p,r,g,b,a)=saveColors(StringHash(SCOPE_PREFIX),p,r,g,b,a)

        //getHandleRedColor
        getHandleRedColor(h)=LoadReal(h,"red")
        getHandleRedColorPercent(h)=LoadReal(h,"red%")
        //getHandleGreenColor
        getHandleGreenColor(h)=LoadReal(h,"green")
        getHandleGreenColorPercent(h)=LoadReal(h,"green%")
        //getHandleBlueColor
        getHandleBlueColor(h)=LoadReal(h,"blue")
        getHandleBlueColorPercent(h)=LoadReal(h,"blue%")
        //getHandleAlpha
        getHandleAlpha(h)=LoadReal(h,"alpha")
        //getHandleTransparency
        getHandleTransparency(h)=LoadReal(h,"transparency")

        //real height2TextTagSize
        height2TextTagSize(h)=TextTagSize2Height(10*h/0.023)

        //function createTextTagXY
        createTextTagXY(s,x,y,z,sb,size,cb,r,g,b,t)=createText##TagXY(s,x,y,z,sb,size,cb,r,g,b,t)
        createTextTagXY(s,x,y,z,size,r,g,b,t)=createTextTagXY(s,x,y,z,true,size,false,r,g,b,t)
        createTextTagXY(s,x,y,z,size,r,g,b)=createTextTagXY(s,x,y,z,size,r,g,b,255)
        createTextTagXY(s,x,y,z,size,t)=createTextTagXY(s,x,y,z,size,255,255,255)
        createTextTagXY(s,x,y,z,size)=createTextTagXY(s,x,y,z,size,255)
        createTextTagXY(s,x,y,z)=createTextTagXY(s,x,y,z,10)
        createTextTagXY(s,x,y)=createTextTagXY(s,x,y,0)
    }

    texttag createTextTagXY(string s, real x, real y, real zOffset, boolean size2height, real size, boolean percent, real red, real green, real blue, real transparency)
    {
        bj_lastCreatedTextTag=CreateTextTag()
        SetTextTagText(bj_lastCreatedTextTag,s,size,size2height)
        SetTextTagPos(bj_lastCreatedTextTag,x,y,zOffset)
        SetTextTagColor(bj_lastCreatedTextTag,percent,red,green,blue,transparency)
        return bj_lastCreatedTextTag
    }

    //effects
    define
    {
        //function saveNewEffect
        saveNewEffect(h,s,es,x,y)=SaveEffectHandle(h,s,AddSpecialEffect(es,x,y))
        saveNewEffect(s,es,x,y)=saveNewEffect(hash,s,es,x,y)

        //function saveNewEffectTarget
        saveNewEffectTarget(h,s,es,a)=SaveEffectHandle(h,s,AddSpecialEffectTarget(es,h,a))

        //function destroyLoadEffect
        destroyLoadEffect(h,s)=
        {
            DestroyEffect(LoadEffectHandle(h,s))
            RemoveSavedHandle(h,s)
        }
        destroyLoadEffect(s)=destroyLoadEffect(hash,s)
    }

endlibrary

define
{
    //destructable
	//CreateDestructable(o,x,y,z,f,s,v) = CreateDestructableZ(o,x,y,z,f,s,v)
	//CreateDeadDestructable(o,x,y,z,f,s,v)=CreateDeadDestructableZ(o,x,y,z,f,s,v)

	//unit
	CreateUnit(p,i,x,y,f)=Create##Unit(p,i,x,y,f)
	CreateUnit(p,i,x,y)=CreateUnit(p,i,x,y,bj_UNIT_FACING)
	CreateUnit(p,i)=CreateUnit(p,i,0,0)
	CreateUnit(p,i,f)=CreateUnit(p,i,0,0,f)

	CreateUnitByName(p,s,x,y,f)=Create##UnitByName(p,s,x,y,f)
	CreateUnitByName(p,s,x,y)=CreateUnitByName(p,s,x,y,bj_UNIT_FACING)
	CreateUnitByName(p,s)=CreateUnitByName(p,s,0,0)
	CreateUnitByName(p,s,f)=CreateUnitByName(p,s,0,0,f)

	CreateUnitAtLoc(p,i,l,f)=Create##UnitAtLoc(p,i,l,f)
	CreateUnitAtLoc(p,i,l)=CreateUnitAtLoc(p,i,l,bj_UNIT_FACING)
	CreateUnitAtLoc(p,i)=CreateUnitAtLoc(p,i,null)

	CreateUnitAtLocByName(p,s,l,f)=Create##UnitAtLocByName(p,s,l,f)
	CreateUnitAtLocByName(p,s,l)=CreateUnitAtLocByName(p,s,l,bj_UNIT_FACING)
	CreateUnitAtLocByName(p,s)=CreateUnitAtLocByName(p,s,null)
	
	CreateCorpse(p,i,x,y,f)=Create##Corpse(p,i,x,y,f)
	CreateCorpse(p,i,x,y)=CreateCorpse(p,i,x,y,bj_UNIT_FACING)
	CreateCorpse(p,i)=CreateCorpse(p,i,0,0)
	CreateCorpse(p,i,f)=CreateCorpse(p,i,0,0,f)

	SetUnitScale(u,x,y,z)=Set##UnitScale(u,x,y,z)
	SetUnitScale(u,sc)=SetUnitScale(u,sc,sc,sc)
	SetUnitTimeScale(u,t)=SetUnit##TimeScale(u,t)
	SetUnitTimeScale(u)=SetUnitTimeScale(u,0)

    PercentToInt(p,m)=getLeakedInt(R2I(p*m*.01),0,m)
    PercentTo255(p)=PercentToInt(p,255)

	SetUnitVertexColor(u,r,g,b,a)=SetUnit##VertexColor(u,r,g,b,a)
	SetUnitVertexColor(u,p,r,g,b,a)=
	{
		#if (p==true)
			SetUnitVertexColor(u,PercentTo255(r),PercentTo255(g),PercentTo255(b),PercentTo255(100.0-a))
		#elseif (p==false)
			SetUnitVertexColor(u,r,g,b,a)
		#endif
		#if (memHackEnabled==0)
			saveColors(u,p,r,g,b,a)
		#endif
	}

	SetHeroStr(u,r,b)=SetHero##Str(u,r,b)
	SetHeroStr(u,r)=SetHeroStr(u,r,false)
	SetHeroAgi(u,r,b)=SetHero##Agi(u,r,b)
	SetHeroAgi(u,r)=SetHeroAgi(u,r,false)
	SetHeroInt(u,r,b)=SetHero##Int(u,r,b)
	SetHeroInt(u,r)=SetHeroInt(u,r,false)

	GetHeroStr(u,b)=GetHero##Str(u,b)
	GetHeroStr(u)=GetHeroStr(u,false)
	GetHeroAgi(u,b)=GetHero##Agi(u,b)
	GetHeroAgi(u)=GetHeroAgi(u,false)
	GetHeroInt(u,b)=GetHero##Int(u,b)
	GetHeroInt(u)=GetHeroInt(u,false)

	UnitAddAbility(u,i)=Unit##AddAbility(u,i)
	UnitAddAbility(u,i,l)={
		UnitAddAbility(u,i)
		#if (l>0)
			SetUnitAbilityLevel(u,i,l)
		#else
			UnitRemoveAbility(u,i)
		#endif
	}

	UnitDamagePoint(u,t,r,x,y,d,a,r,at,dt,wt)=
	{
		SaveBoolean(u,"damagepoint_isattack",a)
		SaveBoolean(u,"damagepoint_isranged",r)
		SaveBoolean(t,"damagepoint_isattack",a)
		SaveBoolean(u,"damagepoint_isranged",r)
		Unit##DamagePoint(u,t,r,x,y,d,a,r,at,dt,wt)
	}
	UnitDamagePoint(u,t,r,x,y,d,at,dt,wt)=UnitDamagePoint(u,t,r,x,y,d,false,false,at,dt,wt)
	UnitDamagePoint(u,r,x,y,d,at,dt,wt)=UnitDamagePoint(u,0,r,x,y,d,at,dt,wt)
	UnitDamagePoint(u,r,d,at,dt,wt)=UnitDamagePoint(u,r,0,0,d,at,dt,wt)
	UnitDamagePoint(u,r,d,at,dt)=UnitDamagePoint(u,r,d,at,dt,null)
	UnitDamagePoint(u,r,d,at)=UnitDamagePoint(u,r,d,at,null)


	UnitDamageTarget(u,t,d,a,r,at,dt,wt)=
	{
		SaveBoolean(u,"damagetarget_isattack",a)
		SaveBoolean(u,"damagetarget_isranged",r)
		SaveBoolean(t,"damagetarget_isattack",a)
		SaveBoolean(t,"damagetarget_isranged",r)
		Unit##DamageTarget(u,t,d,a,r,at,dt,wt)
	}
	UnitDamageTarget(u,t,d,at,dt,wt)=UnitDamageTarget(u,t,d,false,false,at,dt,wt)
	UnitDamageTarget(u,t,d,at,dt)=UnitDamageTarget(u,t,d,at,dt,null)
	UnitDamageTarget(u,t,d)=UnitDamageTarget(u,t,d,null,null)

    SetUnitExploded(u,b)=
    {
        SetUnit##Exploded(u,b)
        SaveBoolean(u,exploded_str,b)
    }

	//item
	CreateItem(id,x,y)=Create##Item(id,x,y)
	CreateItem(id)=CreateItem(id,0,0)
	
	//random
	GetRandomInt(a,b)=Get##RandomInt(a,b)
	GetRandomInt(i)=GetRandomInt(0,i)
	GetRandomReal(a,b)=Get##RandomReal(a,b)
	GetRandomReal(r)=GetRandomReal(0,r)

	//sound
	CreateSound(fileName,looping,is3D,stopwhenoutofrange,fadeInRate,fadeOutRate,eaxSetting)=Create##Sound(fileName,looping,is3D,stopwhenoutofrange,fadeInRate,fadeOutRate,eaxSetting)
	CreateSound(fileName)=CreateSound(fileName,false,false,false,10,10,"DefaultEAXON") 

	SetTextTagText(tt,text,size)=SetText##TagText(tt,text,size)
	SetTextTagText(tt,text,size,conv)=
	{
		#if (conv==true)
			SetTextTagText(tt,text,TextTagSize2Height(size))
			SaveReal(tt,"sizeConverted",size)
			SaveReal(tt,"size",height2TextTagSize(size))
		#elseif (conv==false)
			SetTextTagText(tt,text,size)
			SaveReal(tt,"sizeConverted",TextTagSize2Height(size))
			SaveReal(tt,"size",size)
		#endif
		SaveStr(tt,"text",text)
		SaveReal(tt,"size",size)
	}

	SetTextTagColor(tt,r,g,b,a)=SetText##TagColor(tt,r,g,b,a)
	SetTextTagColor(tt,p,r,g,b,a)=
	{
		#if (p==true)
			SetTextTagColor(tt,PercentTo255(r),PercentTo255(g),PercentTo255(b),PercentTo255(100-a))
		#elseif (p==false)
			SetTextTagColor(tt,r,g,b,a)
		#endif
		#if (memHackEnabled==0)
			saveColors(tt,p,r,g,b,a)
		#endif
	}
	
	//player

	SetPlayerAbilityAvailable(p,a,b)=
	{
		SetPlayer##AbilityAvailable(p,a,b)
		SaveBoolean(p,ability_blocked_str+I2S(a),b)
	}

	//trigger
	DisableTrigger(t)=Disable##Trigger(t)
	DisableTrigger=DisableTrigger(GetTriggeringTrigger())

	EnableTrigger(t)=Enable##Trigger(t)
	EnableTrigger=EnableTrigger(GetTriggeringTrigger())

	//TriggerAddCondition(t,f)=Trigger##AddCondition(t,function f)

	//timer
	DestroyTimer(t)=
	{
		FlushChildHashtable(t)
		Destroy##Timer(t)
	}
	
	//group
	DestroyGroup(g)=
	{
		FlushChildHashtable(g)
		Destroy##Group(g)
	}
}

setdef SetUnitVertexColorBJ(u,r,g,b,t)=SetUnitVertexColor(u,true,r,g,b,t)
setdef SetTextTagColorBJ(tt,r,g,b,t)=SetTextTagColor(tt,true,r,g,b,t)
setdef SetTextTagTextBJ(tt,text,size)=SetTextTagText(tt,text,size,true)

library hookDefines

	define
	{
		//function addSpecialEffect
		addSpecialEffect(s,x,y,b)=addSpecial##Effect(s,x,y,b)
		addSpecialEffect(s,x,y)=addSpecialEffect(s,x,y,true)	
	}
	effect addSpecialEffect(string s,real x,real y,bool b)
	{
		if b then
			DestroyEffect(AddSpecialEffect(s,x,y))
		else
			return AddSpecialEffect(s,x,y)
		endif
		return null
	}

	define
	{
		//function addSpecialEffectLoc
		addSpecialEffectLoc(s,l,b)=addSpecial##EffectLoc(s,l,b)
		addSpecialEffectLoc(s,l)=addSpecialEffectLoc(s,l,true)
	}
	effect addSpecialEffectLoc(string s,location l,bool b)
	{
		if b then
			DestroyEffect(AddSpecialEffectLoc(s,l))
		else
			return AddSpecialEffectLoc(s,l)
		endif
		return null
	}

	define
	{
		//function addSpecialEffectTarget
		addSpecialEffectTarget(s,t,a,b)=addSpecial##EffectTarget(s,t,a,b)
		addSpecialEffectTarget(s,t,a)=addSpecialEffectTarget(s,t,a,true)
	}
	effect addSpecialEffectTarget(string s,widget t,string a,bool b)
	{
		if b then
			DestroyEffect(AddSpecialEffectTarget(s,t,a))
		else
			return AddSpecialEffectTarget(s,t,a)
		endif
		return null
	}
endlibrary

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

scope dummy

	define 
    {
		//integer dummy_default_id
		//integer dummyId
		dummy_default_id = 'uloc'
		

        //integer dummy_ability_id
		//integer dummyAbilId
        dummy_ability_id = 'Aloc'
		dummyAbilId = dummy_ability_id

        dummy_str = "dummy"

        dummyid_str = "dummyid"

        hasdummy_str = "hasDummy"
    }

	integer dummyId = dummy_default_id

	function isUnitDummy takes unit u returns boolean
		return GetUnitAbilityLevel(u,dummy_ability_id)>0
	endfunction

	function getDummyPlayer takes player p returns unit
		return LoadUnitHandle(p,dummy_str)
	endfunction
	
	function init_Dummy takes integer id returns nothing
		call SaveInteger(dummyid_str,id)
		local integer i=0
		loop
			exitwhen i>bj_MAX_PLAYERS-1
			if not LoadBoolean(getPlayer(i),hasdummy_str) then
				call SaveUnitHandle(getPlayer(i),dummy_str,CreateUnit(getPlayer(i),id))
				if LoadUnitHandle(getPlayer(i),dummy_str)==null then
					call SaveUnitHandle(getPlayer(i),dummy_str,CreateUnit(getPlayer(i),dummy_default_id))
				endif
                call SaveBoolean(getPlayer(i),hasdummy_str,true)
			endif
			set i=i+1
		endloop
	endfunction
endscope

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

//code damageSystem
scope damageSystem initializer init

	public group g = CreateGroup()

	//unit getDamager
	define getDamager = GetEventDamageSource()

	//trigger unitDamaged
	//trigger unitDamagedAttack

	function attackType2string takes attacktype at returns string
		if at==ATTACK_TYPE_NORMAL then
			return "normal"
		elseif at==ATTACK_TYPE_MELEE then
			return "melee"
		elseif at==ATTACK_TYPE_PIERCE then
			return "pierce"
		elseif at==ATTACK_TYPE_SIEGE then
			return "siege"
		elseif at==ATTACK_TYPE_MAGIC then
			return "magic"
		elseif at==ATTACK_TYPE_CHAOS then
			return "chaos"
		elseif at==ATTACK_TYPE_HERO then
			return "hero"
		endif
		return ""
	endfunction

	function damageType2string takes damagetype de returns string
		if de==DAMAGE_TYPE_UNKNOWN then
			return "unknown"
		elseif de==DAMAGE_TYPE_NORMAL then
			return "normal"
		elseif de==DAMAGE_TYPE_ENHANCED then
			return "enhanced"
		elseif de==DAMAGE_TYPE_FIRE then
			return "fire"
		elseif de==DAMAGE_TYPE_COLD then
			return "cold"
		elseif de==DAMAGE_TYPE_LIGHTNING then
			return "lightning"
		elseif de==DAMAGE_TYPE_POISON then
			return "poison"
		elseif de==DAMAGE_TYPE_DISEASE then
			return "disease"
		elseif de==DAMAGE_TYPE_DIVINE then
			return "divine"
		elseif de==DAMAGE_TYPE_MAGIC then
			return "magic"
		elseif de==DAMAGE_TYPE_SONIC then
			return "sonic"
		elseif de==DAMAGE_TYPE_ACID then
			return "acid"
		elseif de==DAMAGE_TYPE_FORCE then
			return "force"
		elseif de==DAMAGE_TYPE_DEATH then
			return "death"
		elseif de==DAMAGE_TYPE_MIND then
			return "mind"
		elseif de==DAMAGE_TYPE_PLANT then
			return "plant"
		elseif de==DAMAGE_TYPE_DEFENSIVE then
			return "defensive"
		elseif de==DAMAGE_TYPE_DEMOLITION then
			return "demolition"
		elseif de==DAMAGE_TYPE_SLOW_POISON then
			return "slow poison"
		elseif de==DAMAGE_TYPE_SPIRIT_LINK then
			return "spirit link"
		elseif de==DAMAGE_TYPE_SHADOW_STRIKE then
			return "shadow strike"
		elseif de==DAMAGE_TYPE_UNIVERSAL then
			return "universal"
		endif
		return ""
	endfunction

	private function add takes unit u returns nothing
		TriggerRegisterUnitEvent(getTrigger(unitDamaged),u,EVENT_UNIT_DAMAGED)
		TriggerRegisterUnitEvent(getTrigger(unitDamagedAttack),u,EVENT_UNIT_DAMAGED)
		GroupAddUnit(g,u)
	endfunction

	private function enum takes nothing returns nothing
		add(enumUnit)
	endfunction
	
	private function rectEnter takes nothing returns nothing
		if !IsUnitInGroup(triggerUnit,g) then
			add(triggerUnit)
		endif
	endfunction

	private function unitDamaged_cond takes nothing returns boolean
		return !LoadBoolean(GetEventDamageSource(),"attack")		
	endfunction

	private function unitAttacked takes nothing returns nothing
		SaveBoolean(GetAttacker(),"attack",true)
		SaveUnitHandle(GetAttacker(),"attackUnit",triggerUnit)
	endfunction

	private function attackCancel takes nothing returns nothing
		RemoveSavedBoolean(triggerUnit,"attack")
		RemoveSavedHandle(triggerUnit,"attackUnit")
	endfunction

	private function unitIssuedOrder takes nothing returns nothing
		if GetUnitCurrentOrder(triggerUnit)!=OrderId("attack") and LoadBoolean(triggerUnit,"attack") then
			attackCancel()
		endif
	endfunction

	private function unitIssuedPointOrder takes nothing returns nothing
		if LoadBoolean(triggerUnit,"attack") then
			attackCancel()
		endif
	endfunction

	private function unitIssuedTargetOrder takes nothing returns nothing
		if GetOrderTarget()!=LoadUnitHandle(triggerUnit,"attackUnit") and LoadBoolean(triggerUnit,"attack") then
			attackCancel()
		endif
	endfunction

	private function unitIssuedUnitOrder takes nothing returns nothing
		if GetOrderTargetUnit()!=LoadUnitHandle(triggerUnit,"attackUnit") and LoadBoolean(triggerUnit,"attack") then
			attackCancel()
		endif
	endfunction

	private function unitDamagedAttack takes nothing returns nothing
		RemoveSavedBoolean(GetEventDamageSource(),"attack")
		RemoveSavedHandle(GetEventDamageSource(),"attackUnit")
	endfunction

	private function unitDamagedAttack_cond takes nothing returns boolean
		return LoadBoolean(GetEventDamageSource(),"attack")
	endfunction
	
	private function init takes nothing returns nothing
		SaveTriggerHandle("unitDamaged",CreateTrigger())
		SaveTriggerHandle("unitDamagedAttack",CreateTrigger())
		triggerAddAction(rectEnter)
		forUnitsInMap(enum)
		TriggerAddCondition(getTrigger(unitDamaged),function unitDamaged_cond)
		triggerAddAction(unitAttacked)
		triggerAddAction(unitIssuedOrder)
		triggerAddAction(unitIssuedPointOrder)
		triggerAddAction(unitIssuedTargetOrder)
		triggerAddAction(unitIssuedUnitOrder)
		TriggerAddCondition(getTrigger(unitDamagedAttack),function unitDamagedAttack_cond)
		triggerAddAction(unitDamagedAttack)
	endfunction
endscope

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