-- Code created by Kwik - Copyright: kwiksher.com 
-- Version: 2.7.6b 
module(..., package.seeall) 

function new() 
    local numPages = 10 
    local menuGroup = display.newGroup() 
    local dispose 
    local _W = display.contentWidth; 
    local _H = display.contentHeight; 

    local drawScreen = function() 

       local curPage = 2 
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
       local BotonBiberon
       local botonTijeras

       -- Action names 
       local hideBiberon 
       local hideTijeras 

       -- Layer names 
       local Fondo  
       local Biberon  
       local Tijeras  
       local Texto  
       local Hija_casa  
       local Mama_casa  
       local Bebe  

       -- (TOP) External code will render here 

       -- Fondo positioning 
       Fondo = display.newImageRect( imgDir.. "p2_fondo.png", 2560, 1598 ); 
       Fondo.x = 1280; Fondo.y = 800; Fondo.alpha = 1; Fondo.oldAlpha = 1 
       Fondo.oriX = Fondo.x; Fondo.oriY = Fondo.y 
       Fondo.name = "Fondo" 
       menuGroup:insert(1,Fondo); menuGroup.Fondo = Fondo 

       -- Biberon positioning 
       Biberon = display.newImageRect( imgDir.. "p2_biberon.png", 64, 158 ); 
       Biberon.x = 2272; Biberon.y = 388; Biberon.alpha = 1; Biberon.oldAlpha = 1 
       Biberon.oriX = Biberon.x; Biberon.oriY = Biberon.y 
       Biberon.name = "Biberon" 
       menuGroup:insert(Biberon); menuGroup.Biberon = Biberon 

       -- Tijeras positioning 
       Tijeras = display.newImageRect( imgDir.. "p2_tijeras.png", 95, 262 ); 
       Tijeras.x = 1135; Tijeras.y = 309; Tijeras.alpha = 1; Tijeras.oldAlpha = 1 
       Tijeras.oriX = Tijeras.x; Tijeras.oriY = Tijeras.y 
       Tijeras.name = "Tijeras" 
       menuGroup:insert(Tijeras); menuGroup.Tijeras = Tijeras 

       -- Texto positioning 
       Texto = display.newImageRect( imgDir.. "p2_texto.png", 1090, 82 ); 
       Texto.x = 1314; Texto.y = 132; Texto.alpha = 1; Texto.oldAlpha = 1 
       Texto.oriX = Texto.x; Texto.oriY = Texto.y 
       Texto.name = "Texto" 
       menuGroup:insert(Texto); menuGroup.Texto = Texto 

       -- Hija_casa positioning 
       Hija_casa = display.newImageRect( imgDir.. "p2_hija_casa.png", 476, 856 ); 
       Hija_casa.x = 684; Hija_casa.y = 1108; Hija_casa.alpha = 1; Hija_casa.oldAlpha = 1 
       Hija_casa.oriX = Hija_casa.x; Hija_casa.oriY = Hija_casa.y 
       Hija_casa.name = "Hija_casa" 
       menuGroup:insert(Hija_casa); menuGroup.Hija_casa = Hija_casa 

       -- Mama_casa positioning 
       Mama_casa = display.newImageRect( imgDir.. "p2_mama_casa.png", 548, 1052 ); 
       Mama_casa.x = 1183; Mama_casa.y = 966; Mama_casa.alpha = 1; Mama_casa.oldAlpha = 1 
       Mama_casa.oriX = Mama_casa.x; Mama_casa.oriY = Mama_casa.y 
       Mama_casa.name = "Mama_casa" 
       menuGroup:insert(Mama_casa); menuGroup.Mama_casa = Mama_casa 

       -- Bebe positioning 
       Bebe = display.newImageRect( imgDir.. "p2_bebe.png", 378, 543 ); 
       Bebe.x = 1646; Bebe.y = 1219; Bebe.alpha = 1; Bebe.oldAlpha = 1 
       Bebe.oriX = Bebe.x; Bebe.oriY = Bebe.y 
       Bebe.name = "Bebe" 
       menuGroup:insert(Bebe); menuGroup.Bebe = Bebe 
 
       -- Group(s) creation 

       -- (MIDDLE) External code will render here 
 
       -- Actions (functions) 
       function hideBiberon(event) 
         if (hasBiberon == true) then 
            transitionStash.newTransition_142 = transition.to( Biberon, {alpha=0, time=0, delay=0}) 
         end 
       end 

       function hideTijeras(event) 
         if (hasTijeras == true) then 
            transitionStash.newTransition_143 = transition.to( Tijeras, {alpha=0, time=0, delay=0}) 
         end 
       end 

 
      --End Actions (functions) 

 
       -- Timers 
       timerStash.BiberonTimer = timer.performWithDelay( 0, hideBiberon, 1 ) 
       timerStash.TijerasTimer = timer.performWithDelay( 0, hideTijeras, 1 ) 

       -- Button event listeners 
       local function onBiberonEvent(event) 
          BotonBiberon(Biberon) 
          return true 
       end 
       Biberon:addEventListener("tap", onBiberonEvent ) 
       local function onTijerasEvent(event) 
          botonTijeras(Tijeras) 
          return true 
       end 
       Tijeras:addEventListener("tap", onTijerasEvent ) 

       -- Button functions 
       function BotonBiberon(self) 
           _G.hasBiberon = true
          saveKwikVars({"hasBiberon",true}) 
           hideBiberon() 
       end 

       function botonTijeras(self) 
           _G.hasTijeras = true
          saveKwikVars({"hasTijeras",true}) 
           hideTijeras() 
       end 


       -- swipe this page with spacer of 120 in normal direction 
       Gesture.activate( Fondo, {swipeLength=120} ) 
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
       Fondo:addEventListener( Gesture.SWIPE_EVENT, pageSwap ) 

       dispose = function(event) 
          cancelAllTimers(); cancelAllTransitions() 
          saveKwikVars({"hasBiberon",hasBiberon}) 
          saveKwikVars({"hasTijeras",hasTijeras}) 
          Fondo:removeEventListener( Gesture.SWIPE_EVENT, pageSwap ); Gesture.deactivate(Fondo) 
       end 

       -- (BOTTOM) External code will render here 


    end 
    drawScreen() 

    return menuGroup 
end 
