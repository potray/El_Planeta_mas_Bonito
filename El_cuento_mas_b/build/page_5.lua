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

       local curPage = 5 

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

 
       -- Layer names 
       local kwkFondo2  
       local Text  
       local Cabeza_mama_dur  
       local Cabeza_hija_dur  
       local Cabeza_bebe_dur  

       -- (TOP) External code will render here 

       -- kwkFondo2 positioning 
       kwkFondo2 = display.newImageRect( imgDir.. "kwkfondo2.jpg", 2560, 1600 ); 
       kwkFondo2.x = 1280; kwkFondo2.y = 800; kwkFondo2.alpha = 1; kwkFondo2.oldAlpha = 1 
       kwkFondo2.oriX = kwkFondo2.x; kwkFondo2.oriY = kwkFondo2.y 
       kwkFondo2.name = "kwkFondo2" 
       menuGroup:insert(1,kwkFondo2); menuGroup.kwkFondo2 = kwkFondo2 

       -- Text positioning 
       Text = display.newImageRect( imgDir.. "p5_text.png", 2312, 39 ); 
       Text.x = 1338; Text.y = 89; Text.alpha = 1; Text.oldAlpha = 1 
       Text.oriX = Text.x; Text.oriY = Text.y 
       Text.name = "Text" 
       menuGroup:insert(Text); menuGroup.Text = Text 

       -- Cabeza_mama_dur positioning 
       Cabeza_mama_dur = display.newImageRect( imgDir.. "p5_cabeza_mama_dur.png", 479, 510 ); 
       Cabeza_mama_dur.x = 1328; Cabeza_mama_dur.y = 767; Cabeza_mama_dur.alpha = 1; Cabeza_mama_dur.oldAlpha = 1 
       Cabeza_mama_dur.oriX = Cabeza_mama_dur.x; Cabeza_mama_dur.oriY = Cabeza_mama_dur.y 
       Cabeza_mama_dur.name = "Cabeza_mama_dur" 
       menuGroup:insert(Cabeza_mama_dur); menuGroup.Cabeza_mama_dur = Cabeza_mama_dur 

       -- Cabeza_hija_dur positioning 
       Cabeza_hija_dur = display.newImageRect( imgDir.. "p5_cabeza_hija_dur.png", 321, 394 ); 
       Cabeza_hija_dur.x = 1089; Cabeza_hija_dur.y = 1215; Cabeza_hija_dur.alpha = 1; Cabeza_hija_dur.oldAlpha = 1 
       Cabeza_hija_dur.oriX = Cabeza_hija_dur.x; Cabeza_hija_dur.oriY = Cabeza_hija_dur.y 
       Cabeza_hija_dur.name = "Cabeza_hija_dur" 
       menuGroup:insert(Cabeza_hija_dur); menuGroup.Cabeza_hija_dur = Cabeza_hija_dur 

       -- Cabeza_bebe_dur positioning 
       Cabeza_bebe_dur = display.newImageRect( imgDir.. "p5_cabeza_bebe_dur.png", 365, 289 ); 
       Cabeza_bebe_dur.x = 1509; Cabeza_bebe_dur.y = 1164; Cabeza_bebe_dur.alpha = 1; Cabeza_bebe_dur.oldAlpha = 1 
       Cabeza_bebe_dur.oriX = Cabeza_bebe_dur.x; Cabeza_bebe_dur.oriY = Cabeza_bebe_dur.y 
       Cabeza_bebe_dur.name = "Cabeza_bebe_dur" 
       menuGroup:insert(Cabeza_bebe_dur); menuGroup.Cabeza_bebe_dur = Cabeza_bebe_dur 
 
       -- Group(s) creation 

       -- (MIDDLE) External code will render here 

       -- swipe this page with spacer of 120 in normal direction 
       Gesture.activate( kwkFondo2, {swipeLength=120} ) 
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
       kwkFondo2:addEventListener( Gesture.SWIPE_EVENT, pageSwap ) 

       dispose = function(event) 
          cancelAllTimers(); cancelAllTransitions() 
          saveKwikVars({"hasBiberon",hasBiberon}) 
          saveKwikVars({"hasTijeras",hasTijeras}) 
          kwkFondo2:removeEventListener( Gesture.SWIPE_EVENT, pageSwap ); Gesture.deactivate(kwkFondo2) 
       end 

       -- (BOTTOM) External code will render here 


    end 
    drawScreen() 

    return menuGroup 
end 
