#guard tilebox

include "cjass\common.j"

scope tilebox initializer init

    private function add_dest takes integer tiledest returns nothing
        addIndex
        saveIndexValue(keyInt,"tiledest",tiledest)
    endfunction

    /*define
    {
        //function add_tile
        private add_tile(t,m)=ad##d_tile(t,m)
        private add_tile(t)=add_tile(t,1)
    }
    private nothing add_tile(integer tile, integer bmax)
    {
        save2IndexValue(keyInt,"tile"+I2S(get2Index),tile)
        if bmax==1 then
            save2IndexValue(keyInt,"varmax"+I2S(get2Index),1)
        else
            save2IndexValue(keyInt,"varmax"+I2S(get2Index),17)
        endif
        add2Index
    }*/
    define
    {
        //function add_tile
        private add_tile(t1,t2,t3,t4,t5,t6,t7,t8,t9,t10)=ad##d_tile(t1,t2,t3,t4,t5,t6,t7,t8,t9,t10)
        private add_tile(t1,t2,t3,t4,t5,t6,t7,t8,t9)=add_tile(t1,t2,t3,t4,t5,t6,t7,t8,t9,0)
        private add_tile(t1,t2,t3,t4,t5,t6,t7,t8)=add_tile(t1,t2,t3,t4,t5,t6,t7,t8,0)
        private add_tile(t1,t2,t3,t4,t5,t6,t7)=add_tile(t1,t2,t3,t4,t5,t6,t7,0)
        private add_tile(t1,t2,t3,t4,t5,t6)=add_tile(t1,t2,t3,t4,t5,t6,0)
    }

    private nothing add_tile(integer tile1, integer tile2, integer tile3, integer tile4, integer tile5, integer tile6, integer tile7, integer tile8, integer tile9,integer tile10)
    {
        save2IndexValue(keyInt,"tile",tile1)
        add2Index
        save2IndexValue(keyInt,"tile",tile2)
        add2Index
        save2IndexValue(keyInt,"tile",tile3)
        add2Index
        save2IndexValue(keyInt,"tile",tile4)
        add2Index
        save2IndexValue(keyInt,"tile",tile5)
        add2Index
        save2IndexValue(keyInt,"tile",tile6)
        if tile7>0 then
            add2Index
            save2IndexValue(keyInt,"tile",tile7)
        endif
        if tile8>0 then
            add2Index
            save2IndexValue(keyInt,"tile",tile8)
        endif
        if tile9>0 then
            add2Index
            save2IndexValue(keyInt,"tile",tile9)
        endif
        if tile10>0 then
            add2Index
            save2IndexValue(keyInt,"tile",tile10)
        endif
    }
    
    private nothing data()
    {
        //ашенваль
        add_dest('B000')
        // add_tile('Adrt')
        // add_tile('Adrg')
        // add_tile('Adrd')
        // add_tile('Agrs')
        // add_tile('Agrd')
        // add_tile('Alvd')
        // add_tile('Arck')
        // add_tile('Avin')
        add_tile('Adrt','Adrg','Adrd','Agrs','Agrd','Alvd','Arck','Avin')
        //пустоши
        add_dest('B002')
        // add_tile('Bdsr')
        // add_tile('Bdsd')
        // add_tile('Bdrt')
        // add_tile('Bdrg')
        // add_tile('Bdrh')
        // add_tile('Bgrr')
        // add_tile('Bdrr')
        // add_tile('Bflr')
        add_tile('Bdsr','Bdsd','Bdrt','Bdrg','Bdrh','Bgrr','Bdrr','Bflr')
        //темная цитадель
        add_dest('B001')
        add_tile('Kdkt','Kdrt','Kfsl','Kfst','Klgb','Kdtr','Ksmb','Ksqt')
        //город
        add_dest('B003')
        add_tile('Yblm','Ybtl','Ydrt','Ydtr','Ygsb','Yhdg','Yrtl','Ysqd','Ywmb')
        //даларан
        add_dest('B004')
        add_tile('Xblm','Xbtl','Xdrt','Xdtr','Xgsb','Xhdg','Xrtl','Xsqd','Xwmb')
        //руины даларана
        add_dest('B005')
        add_tile('Jblm','Jbtl','Jdrt','Jdtr','Jgsb','Jhdg','Jrtl','Jsqd','Jwmb')
        //подземелье красное
        add_dest('B006')
        add_tile('Dbrk','Ddkr','Ddrt','Dgrs','Dlav','Dlvc','Drds','Dsqd')
        //подземелье синее
        add_dest('B007')
        add_tile('Gbrk','Gdkr','Gdrt','Ggrs','Glav','Glvc','Grds','Gsqd')
        //фелвуд
        add_dest('B008')
        add_tile('Cdrt','Cdrd','Cgrs','Clvg','Cpos','Crck','Cvin')
        //ледяная корона
        add_dest('B009')
        add_tile('Ibkb','Ibsq','Idki','Idrt','Idtr','Iice','Irbk','Isnw','Itbk')
        //осенний лордерон
        add_dest('B00A')
        add_tile('Fdrt','Fdrg','Fdro','Fgrs','Fgrd','Frok')
        //летний лордерон
        add_dest('B00B')
        add_tile('Ldrt','Ldrg','Ldro','Lgrs','Lgrd','Lrok')
        //зимний лордерон
        add_dest('B00C')
        add_tile('Wdrt','Wdro','Wgrs','Wrok','Wsnw','Wsng')
        //нортренд
        add_dest('B00D')
        add_tile('Ndrt','Ndrd','Ngrs','Nice','Nrck','Nsnw','Nsnr')
        //глушь
        add_dest('B00E')
        add_tile('Oaby','Odrt','Ofst','Odtr','Olgb','Ofsl','Orok','Osmb')
        //затонувший город
        add_dest('B00F')
        add_tile('Zdrt','Zdrg','Zdtr','Zgrs','Zvin','Zbkl','Ztil','Zsan','Zbks')
        //деревня
        add_dest('BOOG')
        add_tile('Vcbp','Vcrp','Vdrt','Vdrr','Vgrs','Vgrt','Vrck','Vstp')
        //осенняя деревня
        add_dest('BOOH')
        add_tile('Qcbp','Qcrp','Qdrt','Qdrr','Qgrs','Qgrt','Qrck','Qstp')
    }

    private function codefunc takes nothing returns nothing
        int k=0, id, var
        real x,y
        getIDValue(keyInt,k,"tiledest",GetDestructableTypeId(enumDest))
        //BJDebugMsg("k: "+I2S(k))
        //BJDebugMsg("выборка")
        if k>0 then
            x=GetDestructableX(enumDest)
            y=GetDestructableY(enumDest)
            //BJDebugMsg("dest var: "+I2S(getDestructableVariation(enumDest)))
            id=get2ArrayValue(keyInt,"tile",k,getDestVar(enumDest))
            if GetDestructableLife(enumDest)==100 then
                var=-1
            endif
            //BJDebugMsg("x: "+R2S(x))
            //BJDebugMsg("y: "+R2S(y))
            //BJDebugMsg("id: "+equipmentSystem_id2string(id))
            //BJDebugMsg("var: "+I2S(var))
            SetTerrainType(x,y,id,var,1,0)
            FlushChildHashtable(enumDest)
            RemoveDestructable(enumDest)
        endif
    endfunction

    private function act takes nothing returns nothing
        EnumDestructablesInRect(GetPlayableMapRect(),null,function codefunc)
    endfunction
    
    private function init takes nothing returns nothing
        data()
        act()
    endfunction
endscope