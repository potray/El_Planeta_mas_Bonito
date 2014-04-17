-- Code created by Kwik - Copyright: kwiksher.com 
-- Version: 2.7.6b 
module(..., package.seeall) 

function new() 
    local numPages = 15 
    local menuGroup = display.newGroup() 
    local dispose 
    local _W = display.contentWidth; 
    local _H = display.contentHeight; 

    local drawScreen = function() 

       local curPage = 10 

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
       local btnRosa

       -- Action names 
       local hideRosa 

       -- Layer names 
       local kwkFondo3  
       local Text  
       local kwkHija_casa_so  
       local kwkRosa  
       local kwkJazmin1  
       local kwkJazmin2  
       local kwkBebe_sorpren  
       local kwkMama_sorpren  

       -- (TOP) External code will render here 

       -- kwkFondo3 positioning 
       kwkFondo3 = display.newImageRect( imgDir.. "kwkfondo3.png", 2559, 1600 ); 
       kwkFondo3.x = 1279; kwkFondo3.y = 800; kwkFondo3.alpha = 1; kwkFondo3.oldAlpha = 1 
       kwkFondo3.oriX = kwkFondo3.x; kwkFondo3.oriY = kwkFondo3.y 
       kwkFondo3.name = "kwkFondo3" 
       menuGroup:insert(1,kwkFondo3); menuGroup.kwkFondo3 = kwkFondo3 

       -- Text positioning 
       Text = display.newImageRect( imgDir.. "p10_text.png", 1747, 39 ); 
       Text.x = 1348; Text.y = 105; Text.alpha = 1; Text.oldAlpha = 1 
       Text.oriX = Text.x; Text.oriY = Text.y 
       Text.name = "Text" 
       menuGroup:insert(Text); menuGroup.Text = Text 

       -- kwkHija_casa_so positioning 
       kwkHija_casa_so = display.newImageRect( imgDir.. "kwkhija_casa_so.png", 442, 795 ); 
       kwkHija_casa_so.x = 930; kwkHija_casa_so.y = 1059; kwkHija_casa_so.alpha = 1; kwkHija_casa_so.oldAlpha = 1 
       kwkHija_casa_so.oriX = kwkHija_casa_so.x; kwkHija_casa_so.oriY = kwkHija_casa_so.y 
       kwkHija_casa_so.name = "kwkHija_casa_so" 
       menuGroup:insert(kwkHija_casa_so); menuGroup.kwkHija_casa_so = kwkHija_casa_so 

       -- kwkRosa positioning 
       kwkRosa = display.newImageRect( imgDir.. "kwkrosa.png", 172, 500 ); 
       kwkRosa.x = 2332; kwkRosa.y = 1116; kwkRosa.alpha = 1; kwkRosa.oldAlpha = 1 
       kwkRosa.oriX = kwkRosa.x; kwkRosa.oriY = kwkRosa.y 
       kwkRosa.name = "kwkRosa" 
       menuGroup:insert(kwkRosa); menuGroup.kwkRosa = kwkRosa 

       -- kwkJazmin1 positioning 
       kwkJazmin1 = display.newImageRect( imgDir.. "kwkjazmin1.png", 395, 152 ); 
       kwkJazmin1.x = 283; kwkJazmin1.y = 1465; kwkJazmin1.alpha = 1; kwkJazmin1.oldAlpha = 1 
       kwkJazmin1.oriX = kwkJazmin1.x; kwkJazmin1.oriY = kwkJazmin1.y 
       kwkJazmin1.name = "kwkJazmin1" 
       menuGroup:insert(kwkJazmin1); menuGroup.kwkJazmin1 = kwkJazmin1 

       -- kwkJazmin2 positioning 
       kwkJazmin2 = display.newImageRect( imgDir.. "kwkjazmin2.png", 433, 215 ); 
       kwkJazmin2.x = 2162; kwkJazmin2.y = 1349; kwkJazmin2.alpha = 1; kwkJazmin2.oldAlpha = 1 
       kwkJazmin2.oriX = kwkJazmin2.x; kwkJazmin2.oriY = kwkJazmin2.y 
       kwkJazmin2.name = "kwkJazmin2" 
       menuGroup:insert(kwkJazmin2); menuGroup.kwkJazmin2 = kwkJazmin2 

       -- kwkBebe_sorpren positioning 
       kwkBebe_sorpren = display.newImageRect( imgDir.. "kwkbebe_sorpren.png", 375, 561 ); 
       kwkBebe_sorpren.x = 1287; kwkBebe_sorpren.y = 1146; kwkBebe_sorpren.alpha = 1; kwkBebe_sorpren.oldAlpha = 1 
       kwkBebe_sorpren.oriX = kwkBebe_sorpren.x; kwkBebe_sorpren.oriY = kwkBebe_sorpren.y 
       kwkBebe_sorpren.name = "kwkBebe_sorpren" 
       menuGroup:insert(kwkBebe_sorpren); menuGroup.kwkBebe_sorpren = kwkBebe_sorpren 

       -- kwkMama_sorpren positioning 
       kwkMama_sorpren = display.newImageRect( imgDir.. "kwkmama_sorpren.png", 505, 967 ); 
       kwkMama_sorpren.x = 1684; kwkMama_sorpren.y = 1084; kwkMama_sorpren.alpha = 1; kwkMama_sorpren.oldAlpha = 1 
       kwkMama_sorpren.oriX = kwkMama_sorpren.x; kwkMama_sorpren.oriY = kwkMama_sorpren.y 
       kwkMama_sorpren.name = "kwkMama_sorpren" 
       menuGroup:insert(kwkMama_sorpren); menuGroup.kwkMama_sorpren = kwkMama_sorpren 
 
       -- Group(s) creation 

       -- (MIDDLE) External code will render here 
 
       -- Actions (functions) 
       function hideRosa(event) 
         if (hasRosa == true) then 
            transitionStash.newTransition_073 = transition.to( kwkRosa, {alpha=0, time=100, delay=0}) 
         end 
       end 

 
      --End Actions (functions) 

 
       -- Timers 
       timerStash.timerRosa = timer.performWithDelay( 100, hideRosa, 1 ) 

       -- Button event listeners 
       local function onkwkRosaEvent(event) 
          btnRosa(kwkRosa) 
          return true 
       end 
       kwkRosa:addEventListener("tap", onkwkRosaEvent ) 

       -- Button functions 
       function btnRosa(self) 
           _G.hasRosa = true
          saveKwikVars({"hasRosa",true}) 
           hideRosa() 
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
