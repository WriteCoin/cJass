#guard hook_defines

include "cjass\custom_defines.j"

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

	define
	{
		OrderId2String(i)=OrderId2StringBJ(i)
	}
endlibrary