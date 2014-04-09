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

       local curPage = 4 
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

 
       -- Layer names 
       local Fondo  
       local Cabeza_mama_sor  
       local Cabeza_hija_sor  
       local Text  
       local Cabeza_bebe_sor  

       -- (TOP) External code will render here 

       -- Fondo positioning 
       Fondo = display.newImageRect( imgDir.. "p4_fondo.png", 2560, 1600 ); 
       Fondo.x = 1280; Fondo.y = 800; Fondo.alpha = 1; Fondo.oldAlpha = 1 
       Fondo.oriX = Fondo.x; Fondo.oriY = Fondo.y 
       Fondo.name = "Fondo" 
       menuGroup:insert(1,Fondo); menuGroup.Fondo = Fondo 

       -- Cabeza_mama_sor positioning 
       Cabeza_mama_sor = display.newImageRect( imgDir.. "p4_cabeza_mama_sor.png", 478, 510 ); 
       Cabeza_mama_sor.x = 1327; Cabeza_mama_sor.y = 767; Cabeza_mama_sor.alpha = 1; Cabeza_mama_sor.oldAlpha = 1 
       Cabeza_mama_sor.oriX = Cabeza_mama_sor.x; Cabeza_mama_sor.oriY = Cabeza_mama_sor.y 
       Cabeza_mama_sor.name = "Cabeza_mama_sor" 
       menuGroup:insert(Cabeza_mama_sor); menuGroup.Cabeza_mama_sor = Cabeza_mama_sor 

       -- Cabeza_hija_sor positioning 
       Cabeza_hija_sor = display.newImageRect( imgDir.. "p4_cabeza_hija_sor.png", 319, 390 ); 
       Cabeza_hija_sor.x = 1088; Cabeza_hija_sor.y = 1217; Cabeza_hija_sor.alpha = 1; Cabeza_hija_sor.oldAlpha = 1 
       Cabeza_hija_sor.oriX = Cabeza_hija_sor.x; Cabeza_hija_sor.oriY = Cabeza_hija_sor.y 
       Cabeza_hija_sor.name = "Cabeza_hija_sor" 
       menuGroup:insert(Cabeza_hija_sor); menuGroup.Cabeza_hija_sor = Cabeza_hija_sor 

       -- Text positioning 
       Text = display.newImageRect( imgDir.. "p4_text.png", 1518, 40 ); 
       Text.x = 1289; Text.y = 96; Text.alpha = 1; Text.oldAlpha = 1 
       Text.oriX = Text.x; Text.oriY = Text.y 
       Text.name = "Text" 
       menuGroup:insert(Text); menuGroup.Text = Text 

       -- Cabeza_bebe_sor positioning 
       Cabeza_bebe_sor = display.newImageRect( imgDir.. "p4_cabeza_bebe_sor.png", 356, 283 ); 
       Cabeza_bebe_sor.x = 1505; Cabeza_bebe_sor.y = 1167; Cabeza_bebe_sor.alpha = 1; Cabeza_bebe_sor.oldAlpha = 1 
       Cabeza_bebe_sor.oriX = Cabeza_bebe_sor.x; Cabeza_bebe_sor.oriY = Cabeza_bebe_sor.y 
       Cabeza_bebe_sor.name = "Cabeza_bebe_sor" 
       menuGroup:insert(Cabeza_bebe_sor); menuGroup.Cabeza_bebe_sor = Cabeza_bebe_sor 
 
       -- Group(s) creation 

       -- (MIDDLE) External code will render here 

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
