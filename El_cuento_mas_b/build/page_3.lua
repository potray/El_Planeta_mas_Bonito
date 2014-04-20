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

       local curPage = 3 

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
       local btnBiberon
       local btnTijeras

       -- Action names 
       local hideBiberon 
       local hideTijeras 

       -- Layer names 
       local kwkFondo1  
       local kwkBiberon  
       local kwkTijeras  
       local Texto  
       local kwkBebe  
       local kwkHija_casa  
       local kwkMama_casa  

       -- (TOP) External code will render here 

       -- kwkFondo1 positioning 
       kwkFondo1 = display.newImageRect( imgDir.. "kwkfondo1.jpg", 2560, 1598 ); 
       kwkFondo1.x = 1280; kwkFondo1.y = 800; kwkFondo1.alpha = 1; kwkFondo1.oldAlpha = 1 
       kwkFondo1.oriX = kwkFondo1.x; kwkFondo1.oriY = kwkFondo1.y 
       kwkFondo1.name = "kwkFondo1" 
       menuGroup:insert(1,kwkFondo1); menuGroup.kwkFondo1 = kwkFondo1 

       -- kwkBiberon positioning 
       kwkBiberon = display.newImageRect( imgDir.. "kwkbiberon.png", 64, 158 ); 
       kwkBiberon.x = 2272; kwkBiberon.y = 388; kwkBiberon.alpha = 1; kwkBiberon.oldAlpha = 1 
       kwkBiberon.oriX = kwkBiberon.x; kwkBiberon.oriY = kwkBiberon.y 
       kwkBiberon.name = "kwkBiberon" 
       menuGroup:insert(kwkBiberon); menuGroup.kwkBiberon = kwkBiberon 

       -- kwkTijeras positioning 
       kwkTijeras = display.newImageRect( imgDir.. "kwktijeras.png", 95, 262 ); 
       kwkTijeras.x = 1135; kwkTijeras.y = 309; kwkTijeras.alpha = 1; kwkTijeras.oldAlpha = 1 
       kwkTijeras.oriX = kwkTijeras.x; kwkTijeras.oriY = kwkTijeras.y 
       kwkTijeras.name = "kwkTijeras" 
       menuGroup:insert(kwkTijeras); menuGroup.kwkTijeras = kwkTijeras 

       -- Texto positioning 
       Texto = display.newImageRect( imgDir.. "p3_texto.png", 1458, 40 ); 
       Texto.x = 1280; Texto.y = 115; Texto.alpha = 1; Texto.oldAlpha = 1 
       Texto.oriX = Texto.x; Texto.oriY = Texto.y 
       Texto.name = "Texto" 
       menuGroup:insert(Texto); menuGroup.Texto = Texto 

       -- kwkBebe positioning 
       kwkBebe = display.newImageRect( imgDir.. "kwkbebe.png", 378, 543 ); 
       kwkBebe.x = 1646; kwkBebe.y = 1219; kwkBebe.alpha = 1; kwkBebe.oldAlpha = 1 
       kwkBebe.oriX = kwkBebe.x; kwkBebe.oriY = kwkBebe.y 
       kwkBebe.name = "kwkBebe" 
       menuGroup:insert(kwkBebe); menuGroup.kwkBebe = kwkBebe 

       -- kwkHija_casa positioning 
       kwkHija_casa = display.newImageRect( imgDir.. "kwkhija_casa.png", 476, 856 ); 
       kwkHija_casa.x = 684; kwkHija_casa.y = 1108; kwkHija_casa.alpha = 1; kwkHija_casa.oldAlpha = 1 
       kwkHija_casa.oriX = kwkHija_casa.x; kwkHija_casa.oriY = kwkHija_casa.y 
       kwkHija_casa.name = "kwkHija_casa" 
       menuGroup:insert(kwkHija_casa); menuGroup.kwkHija_casa = kwkHija_casa 

       -- kwkMama_casa positioning 
       kwkMama_casa = display.newImageRect( imgDir.. "kwkmama_casa.png", 548, 1052 ); 
       kwkMama_casa.x = 1183; kwkMama_casa.y = 966; kwkMama_casa.alpha = 1; kwkMama_casa.oldAlpha = 1 
       kwkMama_casa.oriX = kwkMama_casa.x; kwkMama_casa.oriY = kwkMama_casa.y 
       kwkMama_casa.name = "kwkMama_casa" 
       menuGroup:insert(kwkMama_casa); menuGroup.kwkMama_casa = kwkMama_casa 
 
       -- Group(s) creation 

       -- (MIDDLE) External code will render here 
 
       -- Actions (functions) 
       function hideBiberon(event) 
         if (hasBiberon == true) then 
            transitionStash.newTransition_209 = transition.to( kwkBiberon, {alpha=0, time=100, delay=0}) 
         end 
       end 

       function hideTijeras(event) 
         if (hasTijeras == true) then 
            transitionStash.newTransition_210 = transition.to( kwkTijeras, {alpha=0, time=0, delay=0}) 
         end 
       end 

 
      --End Actions (functions) 

 
       -- Timers 
       timerStash.kwkBiberonTimer = timer.performWithDelay( 0, hideBiberon, 1 ) 
       timerStash.kwkTijerasTimer = timer.performWithDelay( 0, hideTijeras, 1 ) 

       -- Button event listeners 
       local function onkwkBiberonEvent(event) 
          btnBiberon(kwkBiberon) 
          return true 
       end 
       kwkBiberon:addEventListener("tap", onkwkBiberonEvent ) 
       local function onkwkTijerasEvent(event) 
          btnTijeras(kwkTijeras) 
          return true 
       end 
       kwkTijeras:addEventListener("tap", onkwkTijerasEvent ) 

       -- Button functions 
       function btnBiberon(self) 
           _G.hasBiberon = true
          saveKwikVars({"hasBiberon",true}) 
           hideBiberon() 
       end 

       function btnTijeras(self) 
           _G.hasTijeras = true
          saveKwikVars({"hasTijeras",true}) 
           hideTijeras() 
       end 


       -- swipe this page with spacer of 120 in normal direction 
       Gesture.activate( kwkFondo1, {swipeLength=120} ) 
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
       kwkFondo1:addEventListener( Gesture.SWIPE_EVENT, pageSwap ) 

       dispose = function(event) 
          cancelAllTimers(); cancelAllTransitions() 
          saveKwikVars({"hasBiberon",hasBiberon}) 
          saveKwikVars({"hasTijeras",hasTijeras}) 
          kwkFondo1:removeEventListener( Gesture.SWIPE_EVENT, pageSwap ); Gesture.deactivate(kwkFondo1) 
       end 

       -- (BOTTOM) External code will render here 


    end 
    drawScreen() 

    return menuGroup 
end 
