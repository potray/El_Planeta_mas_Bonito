-- Code created by Kwik - Copyright: kwiksher.com 
-- Version: 2.7.6b 
module(..., package.seeall) 

function new() 
    local numPages = 22 
    local menuGroup = display.newGroup() 
    local dispose 
    local _W = display.contentWidth; 
    local _H = display.contentHeight; 

    local drawScreen = function() 

       local curPage = 17 

       Navigation.new("page", { backColor = {255, 255, 255}, anim=1, timer=1,  totPages = numPages, curPage = curPage, thumbW = 200, thumbH = 125, alpha = 0, imageDir = imgDir, dire = "top", audio={} } ) 
       Navigation.hide() 

       if (tonumber(kBookmark) == 1) then 
          local path = system.pathForFile( "book.txt", system.DocumentsDirectory ) 
          local file = io.open( path, "w+" ) 
          file:write ( curPage.."\n1" ) 
          io.close( file ) 
       end 

       math.randomseed(os.time()) 

       if (tonumber(_G.kAutoPlay) > 0) then 
          local function act_autoPlay(event) 
             if(curPage < numPages) then 
                if(kBidi == false) then  
                   dispose(); director:changeScene( "page_"..curPage+1, "moveFromRight" ) 
                else  
                   dispose(); director:changeScene( "page_"..curPage-1, "moveFromLeft" ) 
                end  
             end 
          end 
          timerStash.timer_AP = timer.performWithDelay( _G.kAutoPlay*1000, act_autoPlay, 1 ) 
       end 

 
       -- Action names 
       local hideAll 
       local act_398 

       -- Layer names 
       local kwkFondo3  
       local kwkSer_1  
       local Text2  
       local Text3  
       local kwikSer_3  
       local Text1  
       local kwkBebe  
       local kwkHija_casa  
       local Set_de_gafas  
       local kwkMama_casa  
       local Ser_de_dos_cabe  

       -- (TOP) External code will render here 

       -- kwkFondo3 positioning 
       kwkFondo3 = display.newImageRect( imgDir.. "kwkfondo3.jpg", 2559, 1600 ); 
       kwkFondo3.x = 1279; kwkFondo3.y = 800; kwkFondo3.alpha = 1; kwkFondo3.oldAlpha = 1 
       kwkFondo3.oriX = kwkFondo3.x; kwkFondo3.oriY = kwkFondo3.y 
       kwkFondo3.name = "kwkFondo3" 
       menuGroup:insert(1,kwkFondo3); menuGroup.kwkFondo3 = kwkFondo3 

       -- kwkSer_1 positioning 
       kwkSer_1 = display.newImageRect( imgDir.. "kwkser_1.png", 616, 983 ); 
       kwkSer_1.x = 413; kwkSer_1.y = 932; kwkSer_1.alpha = 1; kwkSer_1.oldAlpha = 1 
       kwkSer_1.oriX = kwkSer_1.x; kwkSer_1.oriY = kwkSer_1.y 
       kwkSer_1.name = "kwkSer_1" 
       menuGroup:insert(kwkSer_1); menuGroup.kwkSer_1 = kwkSer_1 

       -- Text2 positioning 
       Text2 = display.newImageRect( imgDir.. "p17_text2.png", 671, 38 ); 
       Text2.x = 1305; Text2.y = 160; Text2.alpha = 1; Text2.oldAlpha = 1 
       Text2.oriX = Text2.x; Text2.oriY = Text2.y 
       Text2.name = "Text2" 
       menuGroup:insert(Text2); menuGroup.Text2 = Text2 

       -- Text3 positioning 
       Text3 = display.newImageRect( imgDir.. "p17_text3.png", 282, 39 ); 
       Text3.x = 1281; Text3.y = 235; Text3.alpha = 1; Text3.oldAlpha = 1 
       Text3.oriX = Text3.x; Text3.oriY = Text3.y 
       Text3.name = "Text3" 
       menuGroup:insert(Text3); menuGroup.Text3 = Text3 

       -- kwikSer_3 positioning 
       kwikSer_3 = display.newImageRect( imgDir.. "p17_kwikser_3.png", 614, 979 ); 
       kwikSer_3.x = 2411; kwikSer_3.y = 968; kwikSer_3.alpha = 1; kwikSer_3.oldAlpha = 1 
       kwikSer_3.oriX = kwikSer_3.x; kwikSer_3.oriY = kwikSer_3.y 
       kwikSer_3.name = "kwikSer_3" 
       menuGroup:insert(kwikSer_3); menuGroup.kwikSer_3 = kwikSer_3 

       -- Text1 positioning 
       Text1 = display.newImageRect( imgDir.. "p17_text1.png", 364, 39 ); 
       Text1.x = 1279; Text1.y = 95; Text1.alpha = 1; Text1.oldAlpha = 1 
       Text1.oriX = Text1.x; Text1.oriY = Text1.y 
       Text1.name = "Text1" 
       menuGroup:insert(Text1); menuGroup.Text1 = Text1 

       -- kwkBebe positioning 
       kwkBebe = display.newImageRect( imgDir.. "kwkbebe.png", 378, 543 ); 
       kwkBebe.x = 1568; kwkBebe.y = 1078; kwkBebe.alpha = 1; kwkBebe.oldAlpha = 1 
       kwkBebe.oriX = kwkBebe.x; kwkBebe.oriY = kwkBebe.y 
       kwkBebe.name = "kwkBebe" 
       menuGroup:insert(kwkBebe); menuGroup.kwkBebe = kwkBebe 

       -- kwkHija_casa positioning 
       kwkHija_casa = display.newImageRect( imgDir.. "kwkhija_casa.png", 449, 808 ); 
       kwkHija_casa.x = 1212; kwkHija_casa.y = 1000; kwkHija_casa.alpha = 1; kwkHija_casa.oldAlpha = 1 
       kwkHija_casa.oriX = kwkHija_casa.x; kwkHija_casa.oriY = kwkHija_casa.y 
       kwkHija_casa.name = "kwkHija_casa" 
       menuGroup:insert(kwkHija_casa); menuGroup.kwkHija_casa = kwkHija_casa 

       -- Set_de_gafas positioning 
       Set_de_gafas = display.newImageRect( imgDir.. "p17_set_de_gafas.png", 234, 189 ); 
       Set_de_gafas.x = 2138; Set_de_gafas.y = 622; Set_de_gafas.alpha = 1; Set_de_gafas.oldAlpha = 1 
       Set_de_gafas.oriX = Set_de_gafas.x; Set_de_gafas.oriY = Set_de_gafas.y 
       Set_de_gafas.name = "Set_de_gafas" 
       menuGroup:insert(Set_de_gafas); menuGroup.Set_de_gafas = Set_de_gafas 

       -- kwkMama_casa positioning 
       kwkMama_casa = display.newImageRect( imgDir.. "kwkmama_casa.png", 517, 993 ); 
       kwkMama_casa.x = 1969; kwkMama_casa.y = 1024; kwkMama_casa.alpha = 1; kwkMama_casa.oldAlpha = 1 
       kwkMama_casa.oriX = kwkMama_casa.x; kwkMama_casa.oriY = kwkMama_casa.y 
       kwkMama_casa.name = "kwkMama_casa" 
       menuGroup:insert(kwkMama_casa); menuGroup.kwkMama_casa = kwkMama_casa 

       -- Ser_de_dos_cabe positioning 
       Ser_de_dos_cabe = display.newImageRect( imgDir.. "p17_ser_de_dos_cabe.png", 644, 939 ); 
       Ser_de_dos_cabe.x = 885; Ser_de_dos_cabe.y = 1087; Ser_de_dos_cabe.alpha = 1; Ser_de_dos_cabe.oldAlpha = 1 
       Ser_de_dos_cabe.oriX = Ser_de_dos_cabe.x; Ser_de_dos_cabe.oriY = Ser_de_dos_cabe.y 
       Ser_de_dos_cabe.name = "Ser_de_dos_cabe" 
       menuGroup:insert(Ser_de_dos_cabe); menuGroup.Ser_de_dos_cabe = Ser_de_dos_cabe 
 
       -- Group(s) creation 

       -- (MIDDLE) External code will render here 
 
       -- Actions (functions) 
       function hideAll(event) 
            transitionStash.newTransition_874 = transition.to( Set_de_gafas, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_874 = transition.to( Text2, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_874 = transition.to( Text3, {alpha=0, time=0, delay=0}) 
       end 

       function act_398(event) 
            transitionStash.newTransition_875 = transition.to( Text2, {alpha=Text2.oldAlpha, time=1000, delay=1000}) 
            transitionStash.newTransition_875 = transition.to( Text3, {alpha=Text3.oldAlpha, time=1000, delay=2000}) 
            transitionStash.newTransition_875 = transition.to( Set_de_gafas, {alpha=Set_de_gafas.oldAlpha, time=1000, delay=3000}) 
       end 

 
      --End Actions (functions) 

 
       -- Timers 
       timerStash.timerHideAll = timer.performWithDelay( 0, hideAll, 1 ) 
       timerStash.timerAnimation = timer.performWithDelay( 1000, act_398, 1 ) 

       -- swipe this page with spacer of 120 in normal direction 
       Gesture.activate( kwkFondo3, {swipeLength=120} ) 
       local function pageSwap(event ) 
         if event.phase == "ended" and event.direction ~= nil then  
            local wPage = curPage  
            local direction  
            if event.direction == "left" and kBidi == false then  
               wPage = curPage + 1  
               if wPage > numPages then wPage = curPage end  
               direction = "moveFromRight"  
            elseif event.direction == "left" and kBidi == true then  
               wPage = curPage - 1  
               if wPage < tonumber(initPage) then wPage = initPage end  
               direction = "moveFromLeft"  
            elseif event.direction == "right" and kBidi == true then  
               wPage = curPage + 1  
               if wPage > numPages then wPage = curPage end  
               direction = "moveFromRight"  
            elseif event.direction == "right" and kBidi == false then  
               wPage = curPage - 1  
               if wPage < tonumber(initPage) then wPage = initPage end  
               direction = "moveFromLeft"  
            end  
            if tonumber(wPage) ~= tonumber(curPage) then dispose(); 
               dispose(); director:changeScene("page_"..wPage, direction) 
            end 
         end  
       end 
       kwkFondo3:addEventListener( Gesture.SWIPE_EVENT, pageSwap ) 

       dispose = function(event) 
          cancelAllTimers(); cancelAllTransitions() 
          saveKwikVars({"hasBiberon",hasBiberon}) 
          saveKwikVars({"hasTijeras",hasTijeras}) 
          kwkFondo3:removeEventListener( Gesture.SWIPE_EVENT, pageSwap ); Gesture.deactivate(kwkFondo3) 
       end 

       -- (BOTTOM) External code will render here 


    end 
    drawScreen() 

    return menuGroup 
end 
