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

       local curPage = 18 

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

 
       -- Button names 
       local btnChancla

       -- Action names 
       local hideChancla 

       -- Layer names 
       local kwkFondo3  
       local kwkSer_1  
       local kwikSer_3  
       local Text1  
       local kwkHija_gafas  
       local Chancla_verde  
       local kwkBebe_gafas  
       local kwkMama_gafas  

       -- Added variables before layers render 
       _G.hasChanclaVerde = false --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("hasChanclaVerde") ~= nil then  
          _G.hasChanclaVerde = kwkVarCheck("hasChanclaVerde") 
       end  

       -- (TOP) External code will render here 

       -- kwkFondo3 positioning 
       kwkFondo3 = display.newImageRect( imgDir.. "kwkfondo3.png", 2559, 1600 ); 
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

       -- kwikSer_3 positioning 
       kwikSer_3 = display.newImageRect( imgDir.. "p18_kwikser_3.png", 614, 979 ); 
       kwikSer_3.x = 2411; kwikSer_3.y = 968; kwikSer_3.alpha = 1; kwikSer_3.oldAlpha = 1 
       kwikSer_3.oriX = kwikSer_3.x; kwikSer_3.oriY = kwikSer_3.y 
       kwikSer_3.name = "kwikSer_3" 
       menuGroup:insert(kwikSer_3); menuGroup.kwikSer_3 = kwikSer_3 

       -- Text1 positioning 
       Text1 = display.newImageRect( imgDir.. "p18_text1.png", 1623, 83 ); 
       Text1.x = 1394; Text1.y = 135; Text1.alpha = 1; Text1.oldAlpha = 1 
       Text1.oriX = Text1.x; Text1.oriY = Text1.y 
       Text1.name = "Text1" 
       menuGroup:insert(Text1); menuGroup.Text1 = Text1 

       -- kwkHija_gafas positioning 
       kwkHija_gafas = display.newImageRect( imgDir.. "kwkhija_gafas.png", 448, 816 ); 
       kwkHija_gafas.x = 1024; kwkHija_gafas.y = 969; kwkHija_gafas.alpha = 1; kwkHija_gafas.oldAlpha = 1 
       kwkHija_gafas.oriX = kwkHija_gafas.x; kwkHija_gafas.oriY = kwkHija_gafas.y 
       kwkHija_gafas.name = "kwkHija_gafas" 
       menuGroup:insert(kwkHija_gafas); menuGroup.kwkHija_gafas = kwkHija_gafas 

       -- Chancla_verde positioning 
       Chancla_verde = display.newImageRect( imgDir.. "p18_chancla_verde.png", 151, 216 ); 
       Chancla_verde.x = 656; Chancla_verde.y = 1229; Chancla_verde.alpha = 1; Chancla_verde.oldAlpha = 1 
       Chancla_verde.oriX = Chancla_verde.x; Chancla_verde.oriY = Chancla_verde.y 
       Chancla_verde.name = "Chancla_verde" 
       menuGroup:insert(Chancla_verde); menuGroup.Chancla_verde = Chancla_verde 

       -- kwkBebe_gafas positioning 
       kwkBebe_gafas = display.newImageRect( imgDir.. "kwkbebe_gafas.png", 382, 551 ); 
       kwkBebe_gafas.x = 1471; kwkBebe_gafas.y = 1148; kwkBebe_gafas.alpha = 1; kwkBebe_gafas.oldAlpha = 1 
       kwkBebe_gafas.oriX = kwkBebe_gafas.x; kwkBebe_gafas.oriY = kwkBebe_gafas.y 
       kwkBebe_gafas.name = "kwkBebe_gafas" 
       menuGroup:insert(kwkBebe_gafas); menuGroup.kwkBebe_gafas = kwkBebe_gafas 

       -- kwkMama_gafas positioning 
       kwkMama_gafas = display.newImageRect( imgDir.. "kwkmama_gafas.png", 518, 994 ); 
       kwkMama_gafas.x = 1969; kwkMama_gafas.y = 1024; kwkMama_gafas.alpha = 1; kwkMama_gafas.oldAlpha = 1 
       kwkMama_gafas.oriX = kwkMama_gafas.x; kwkMama_gafas.oriY = kwkMama_gafas.y 
       kwkMama_gafas.name = "kwkMama_gafas" 
       menuGroup:insert(kwkMama_gafas); menuGroup.kwkMama_gafas = kwkMama_gafas 
 
       -- Group(s) creation 

       -- (MIDDLE) External code will render here 
 
       -- Actions (functions) 
       function hideChancla(event) 
         if (hasChanclaVerde == true) then 
            transitionStash.newTransition_502 = transition.to( Chancla_verde, {alpha=0, time=1000, delay=0}) 
         end 
       end 

 
      --End Actions (functions) 

 
       -- Timers 
       timerStash.timerChancla = timer.performWithDelay( 0, hideChancla, 1 ) 

       -- Button event listeners 
       local function onChancla_verdeEvent(event) 
          btnChancla(Chancla_verde) 
          return true 
       end 
       Chancla_verde:addEventListener("tap", onChancla_verdeEvent ) 

       -- Button functions 
       function btnChancla(self) 
           _G.hasChanclaVerde = true
          saveKwikVars({"hasChanclaVerde",true}) 
           hideChancla() 
       end 


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
