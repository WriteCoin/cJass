#guard hash_array_defines

include "cjass\hash_defines.j"

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

    //function getIndexValue
    getIndexValue(vt,sc,s)=loadValue(vt,sc+s+I2S(getIndex(sc)))
    getIndexValue(vt,s)=getIndexValue(vt,scope_prefix,s)

    //function haveIndexValue
    haveIndexValue(vt,sc,s)=haveValue(vt,sc+s+I2S(getIndex(sc)))
    haveIndexValue(vt,s)=haveIndexValue(vt,scope_prefix,s)

    //function removeIndexValue
    removeIndexValue(vt,sc,s)=removeValue(vt,sc+s+I2S(getIndex(sc)))
    removeIndexValue(vt,s)=removeIndexValue(vt,scope_prefix,s)

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

    //function get2IndexValue
    get2IndexValue(vt,sc,s)=loadValue(vt,sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    get2IndexValue(vt,s)=get2IndexValue(vt,scope_prefix,s)

    //function have2IndexValue
    have2IndexValue(vt,sc,s)=haveValue(vt,sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    have2IndexValue(vt,s)=have2IndexValue(vt,scope_prefix,s)

    //function remove2IndexValue
    remove2IndexValue(vt,sc,s)=removeValue(vt,sc+s+I2S(getIndex(sc))+I2S(get2Index(sc)))
    remove2IndexValue(vt,s)=remove2IndexValue(vt,scope_prefix,s)

    //function addIndexHandle
    addIndexHandle(h,s)=addInteger(h,s+index_str,1)
    addIndexHandle(h)=addIndexHandle(h,scope_prefix)
    //integer getIndexHandle
    getIndexHandle(h,s)=LoadInteger(h,s+index_str)
    getIndexHandle(h)=getIndexHandle(h,scope_prefix)

    //function saveIndexHandleValue
    saveIndexHandleValue(vt,h,sc,s,v)=saveValue(vt,h,sc+s+I2S(getIndexHandle(h,sc)),v)
    saveIndexHandleValue(vt,h,s,v)=saveIndexHandleValue(vt,h,scope_prefix,s,v)

    //function getIndexHandleValue
    getIndexHandleValue(vt,h,sc,s)=loadValue(vt,h,sc+s+I2S(getIndexHandle(h,sc)))
    getIndexHandleValue(vt,h,s)=getIndexHandleValue(vt,h,scope_prefix,s)

    //function haveIndexHandleValue
    haveIndexHandleValue(vt,h,sc,s)=haveValue(vt,h,sc+s+I2S(getIndexHandle(h,sc)))
    haveIndexHandleValue(vt,h,s)=haveIndexHandleValue(vt,h,scope_prefix,s)

    //function removeIndexHandleValue
    removeIndexHandleValue(vt,h,sc,s)=removeValue(vt,h,sc+s+I2S(getIndexHandle(h,sc)))
    removeIndexHandleValue(vt,h,s)=removeIndexHandleValue(vt,h,scope_prefix,s)

    //function add2IndexHandle
    add2IndexHandle(h,s)=addInteger(h,s+I2S(getIndexHandle(h,s))+index2_str,1)
    add2IndexHandle(h)=add2IndexHandle(h,scope_prefix)
    //integer get2IndexHandle
    get2IndexHandle(h,s)=LoadInteger(hash,GetHandleId(h),StringHash(s+I2S(getIndexHandle(h,s))+index2_str))
    get2IndexHandle(h)=get2IndexHandle(h,scope_prefix)

    //function save2IndexHandleValue
    save2IndexHandleValue(vt,h,sc,s,v)=saveValue(vt,h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)),v)
    save2IndexHandleValue(vt,h,s,v)=save2IndexHandleValue(vt,h,scope_prefix,s,v)

    //function get2IndexHandleValue
    get2IndexHandleValue(vt,h,sc,s)=loadValue(vt,h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    get2IndexHandleValue(vt,h,s)=get2IndexHandleValue(vt,h,scope_prefix,s)

    //function have2IndexHandleValue
    have2IndexHandleValue(vt,h,sc,s)=haveValue(vt,h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    have2IndexHandleValue(vt,h,s)=have2IndexHandleValue(vt,h,scope_prefix,s)

    //function remove2IndexHandleValue
    remove2IndexHandleValue(vt,h,sc,s)=removeValue(vt,h,sc+s+I2S(getIndexHandle(h,sc))+I2S(get2IndexHandle(h,sc)))
    remove2IndexHandleValue(vt,h,s)=remove2IndexHandleValue(vt,h,scope_prefix,s)
}

scope HashScope

    public int i
    
    define
    {
        //function getIDHandleValue
        getIDHandleValue(vt,j,h,sc,s,v)=
        {
            forAB(HashScope_i,1,getIndexHandle(h,sc),+,
            if loadValue(vt,h,sc+s+I2S(HashScope_i))==v then
                j = HashScope_i
                break
            endif)
        }
        getIDHandleValue(vt,j,h,s,v)=getIDHandleValue(vt,j,h,scope_prefix,s,v)

        //function getIDValue
        getIDValue(vt,j,sc,s,v)=getIDHandleValue(vt,j,hash,sc,s,v)
        getIDValue(vt,j,s,v)=getIDValue(vt,j,scope_prefix,s,v)

        //function get2IDHandleValue
        get2IDHandleValue(vt,j,h,sc,s,i,v)=
        {
            forAB(HashScope_i,1,get2IndexHandle(h,sc),+,
            if loadValue(vt,h,sc+s+I2S(i)+I2S(HashScope_i))==v then
                j = HashScope_i
                break
            endif)
        }
        get2IDHandleValue(vt,j,h,s,i,v)=get2IDHandleValue(vt,j,h,scope_prefix,s,i,v)

        //function get2IDValue
        get2IDValue(vt,j,sc,s,i,v)=get2IDHandleValue(vt,j,hash,sc,s,i,v)
        get2IDValue(vt,j,s,i,v)=get2IDValue(vt,j,scope_prefix,s,i,v)

        //function forIDHandle
        forIDHandle(i,vt,h,sc,s,v,c)=
        {
            getIDHandleValue(vt,i,h,sc,s,v)
            forAB(i,i,getIndex(sc)-1,+,c)
        }
        forIDHandle(i,vt,h,s,v,c)=forIDHandle(i,vt,h,scope_prefix,s,v,c)

        //function forID
        forID(i,vt,sc,s,v,c)=forIDHandle(i,vt,hash,sc,s,v,c)
        forID(i,vt,s,v,c)=forID(i,vt,scope_prefix,s,v,c)

        //function for2IDHandle
        for2IDHandle(i,vt,h,sc,s,j,v,c)=
        {
            get2IDHandleValue(vt,i,h,sc,s,j,v)
            forAB(i,i,get2IndexHandle(h,sc)-1,+,c)
        }
        for2IDHandle(i,vt,h,s,j,v,c)=for2IDHandle(i,vt,h,scope_prefix,s,j,v,c)

        //function for2ID
        for2ID(i,vt,sc,s,j,v,c)=for2IDHandle(i,vt,hash,sc,s,j,v,c)
        for2ID(i,vt,s,j,v,c)=for2ID(i,vt,scope_prefix,s,j,v,c)

        //function shiftIDHandleValue
        shiftIDHandleValue(i,vt,h,sc,s)=saveValue(vt,h,sc+s+I2S(i),loadValue(vt,h,sc+s+I2S(i+1)))
        shiftIDHandleValue(i,vt,h,s)=shiftIDHandleValue(i,vt,h,scope_prefix,s)

        //function shiftIDValue
        shiftIDValue(i,vt,sc,s)=shiftIDHandleValue(i,vt,hash,sc,s)
        shiftIDValue(i,vt,s)=shiftIDValue(i,vt,scope_prefix,s)

        //function shift2IDHandleValue
        shift2IDHandleValue(i,j,vt,h,sc,s)=saveValue(vt,h,sc+s+I2S(i)+I2S(j),loadValue(vt,h,sc+s+I2S(i+1)+I2S(j+1)))
        shift2IDHandleValue(i,j,vt,h,s)=shift2IDHandleValue(i,j,vt,h,scope_prefix,s)

        //function shift2IDValue
        shift2IDValue(i,j,vt,sc,s)=shift2IDHandleValue(i,j,vt,hash,sc,s)
        shift2IDValue(i,j,vt,s)=shift2IDValue(i,j,vt,scope_prefix,s)
    }
    
endscope