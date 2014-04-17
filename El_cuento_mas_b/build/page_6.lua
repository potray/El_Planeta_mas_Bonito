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

       local curPage = 6 

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
       local Fondo2SinBurbuj  
       local Burbuja_  
       local Text  

       -- (TOP) External code will render here 

       -- Fondo2SinBurbuj positioning 
       Fondo2SinBurbuj = display.newImageRect( imgDir.. "p6_fondo2sinburbuj.png", 2560, 1600 ); 
       Fondo2SinBurbuj.x = 1280; Fondo2SinBurbuj.y = 800; Fondo2SinBurbuj.alpha = 1; Fondo2SinBurbuj.oldAlpha = 1 
       Fondo2SinBurbuj.oriX = Fondo2SinBurbuj.x; Fondo2SinBurbuj.oriY = Fondo2SinBurbuj.y 
       Fondo2SinBurbuj.name = "Fondo2SinBurbuj" 
       menuGroup:insert(1,Fondo2SinBurbuj); menuGroup.Fondo2SinBurbuj = Fondo2SinBurbuj 

       -- Burbuja_ positioning 
       Burbuja_ = display.newImageRect( imgDir.. "p6_burbuja_.png", 1212, 1212 ); 
       Burbuja_.x = 1283; Burbuja_.y = 984; Burbuja_.alpha = 1; Burbuja_.oldAlpha = 1 
       Burbuja_.oriX = Burbuja_.x; Burbuja_.oriY = Burbuja_.y 
       Burbuja_.name = "Burbuja_" 
       menuGroup:insert(Burbuja_); menuGroup.Burbuja_ = Burbuja_ 

       -- Text positioning 
       Text = display.newImageRect( imgDir.. "p6_text.png", 2222, 82 ); 
       Text.x = 1308; Text.y = 96; Text.alpha = 1; Text.oldAlpha = 1 
       Text.oriX = Text.x; Text.oriY = Text.y 
       Text.name = "Text" 
       menuGroup:insert(Text); menuGroup.Text = Text 
 
       -- Group(s) creation 

       -- (MIDDLE) External code will render here 

       --Animations
       gtStash.gt_PathBurbuja = btween.new( Burbuja_, 3, { 
         { x = 1325, y = 1023}, --regular curve
         { x = 1325, y = 1023}, 
         { x = 1332, y = 457}, 
         { x = 1791, y = 559}, 

         { x = 1791, y = 559}, --regular curve
         { x = 2251, y = 662}, 
         { x = 2364, y = 414}, 
         { x = 2355, y = 284}, 

         { x = 2355, y = 284}, --regular curve
         { x = 2347, y = 155}, 
         { x = 1946, y = 96}, 
         { x = 1835, y = 155}, 

         { x = 1835, y = 155}, 
         { x = 1835, y = 155}, 
         { x = 1835, y = 155}, 
         { x = 1835, y = 155}, 
angle = 0       }, {ease = gtween.easing.linear, repeatCount = 1, reflect = false,  delay=0.1, ""}, {  x=1283, y=984,  alpha=1, rotation=0, xScale=0.01, yScale=0.01, newAngle=180}) 


       -- swipe this page with spacer of 120 in normal direction 
       Gesture.activate( Fondo2SinBurbuj, {swipeLength=120} ) 
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
       Fondo2SinBurbuj:addEventListener( Gesture.SWIPE_EVENT, pageSwap ) 

       dispose = function(event) 
          cancelAllTweens() 
          cancelAllTimers(); cancelAllTransitions() 
          saveKwikVars({"hasBiberon",hasBiberon}) 
          saveKwikVars({"hasTijeras",hasTijeras}) 
          Fondo2SinBurbuj:removeEventListener( Gesture.SWIPE_EVENT, pageSwap ); Gesture.deactivate(Fondo2SinBurbuj) 
       end 

       -- (BOTTOM) External code will render here 


    end 
    drawScreen() 

    return menuGroup 
end 
