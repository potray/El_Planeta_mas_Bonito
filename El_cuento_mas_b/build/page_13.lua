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

       local curPage = 13 

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
       local kwkFondo3  
       local kwkSer_1  
       local Text  
       local kwkHija_casa_so  
       local kwkBebe_sorpren  
       local kwkMama_sorpren  

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

       -- Text positioning 
       Text = display.newImageRect( imgDir.. "p13_text.png", 669, 39 ); 
       Text.x = 1361; Text.y = 201; Text.alpha = 1; Text.oldAlpha = 1 
       Text.oriX = Text.x; Text.oriY = Text.y 
       Text.name = "Text" 
       menuGroup:insert(Text); menuGroup.Text = Text 

       -- kwkHija_casa_so positioning 
       kwkHija_casa_so = display.newImageRect( imgDir.. "kwkhija_casa_so.png", 442, 795 ); 
       kwkHija_casa_so.x = 1209; kwkHija_casa_so.y = 999; kwkHija_casa_so.alpha = 1; kwkHija_casa_so.oldAlpha = 1 
       kwkHija_casa_so.oriX = kwkHija_casa_so.x; kwkHija_casa_so.oriY = kwkHija_casa_so.y 
       kwkHija_casa_so.name = "kwkHija_casa_so" 
       menuGroup:insert(kwkHija_casa_so); menuGroup.kwkHija_casa_so = kwkHija_casa_so 

       -- kwkBebe_sorpren positioning 
       kwkBebe_sorpren = display.newImageRect( imgDir.. "kwkbebe_sorpren.png", 375, 561 ); 
       kwkBebe_sorpren.x = 1566; kwkBebe_sorpren.y = 1086; kwkBebe_sorpren.alpha = 1; kwkBebe_sorpren.oldAlpha = 1 
       kwkBebe_sorpren.oriX = kwkBebe_sorpren.x; kwkBebe_sorpren.oriY = kwkBebe_sorpren.y 
       kwkBebe_sorpren.name = "kwkBebe_sorpren" 
       menuGroup:insert(kwkBebe_sorpren); menuGroup.kwkBebe_sorpren = kwkBebe_sorpren 

       -- kwkMama_sorpren positioning 
       kwkMama_sorpren = display.newImageRect( imgDir.. "kwkmama_sorpren.png", 505, 967 ); 
       kwkMama_sorpren.x = 1963; kwkMama_sorpren.y = 1024; kwkMama_sorpren.alpha = 1; kwkMama_sorpren.oldAlpha = 1 
       kwkMama_sorpren.oriX = kwkMama_sorpren.x; kwkMama_sorpren.oriY = kwkMama_sorpren.y 
       kwkMama_sorpren.name = "kwkMama_sorpren" 
       menuGroup:insert(kwkMama_sorpren); menuGroup.kwkMama_sorpren = kwkMama_sorpren 
 
       -- Group(s) creation 

       -- (MIDDLE) External code will render here 

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
