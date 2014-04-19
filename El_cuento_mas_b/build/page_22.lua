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

       local curPage = 22 

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
       local playAnimationBu 

       -- Layer names 
       local kwkFondo3  
       local Text1  
       local kwkMama_gafas_s  
       local kwkSer_gafas_1  
       local kwkSer_gafas_3  
       local kwkHija_gafas_s  
       local Burbuja  
       local kwkBebe_gafas_e  

       -- (TOP) External code will render here 

       -- kwkFondo3 positioning 
       kwkFondo3 = display.newImageRect( imgDir.. "kwkfondo3.png", 2559, 1600 ); 
       kwkFondo3.x = 1279; kwkFondo3.y = 800; kwkFondo3.alpha = 1; kwkFondo3.oldAlpha = 1 
       kwkFondo3.oriX = kwkFondo3.x; kwkFondo3.oriY = kwkFondo3.y 
       kwkFondo3.name = "kwkFondo3" 
       menuGroup:insert(1,kwkFondo3); menuGroup.kwkFondo3 = kwkFondo3 

       -- Text1 positioning 
       Text1 = display.newImageRect( imgDir.. "p22_text1.png", 1409, 40 ); 
       Text1.x = 1324; Text1.y = 103; Text1.alpha = 1; Text1.oldAlpha = 1 
       Text1.oriX = Text1.x; Text1.oriY = Text1.y 
       Text1.name = "Text1" 
       menuGroup:insert(Text1); menuGroup.Text1 = Text1 

       -- kwkMama_gafas_s positioning 
       kwkMama_gafas_s = display.newImageRect( imgDir.. "kwkmama_gafas_s.png", 522, 1001 ); 
       kwkMama_gafas_s.x = 1967; kwkMama_gafas_s.y = 1020; kwkMama_gafas_s.alpha = 1; kwkMama_gafas_s.oldAlpha = 1 
       kwkMama_gafas_s.oriX = kwkMama_gafas_s.x; kwkMama_gafas_s.oriY = kwkMama_gafas_s.y 
       kwkMama_gafas_s.name = "kwkMama_gafas_s" 
       menuGroup:insert(kwkMama_gafas_s); menuGroup.kwkMama_gafas_s = kwkMama_gafas_s 

       -- kwkSer_gafas_1 positioning 
       kwkSer_gafas_1 = display.newImageRect( imgDir.. "kwkser_gafas_1.png", 619, 988 ); 
       kwkSer_gafas_1.x = 414; kwkSer_gafas_1.y = 934; kwkSer_gafas_1.alpha = 1; kwkSer_gafas_1.oldAlpha = 1 
       kwkSer_gafas_1.oriX = kwkSer_gafas_1.x; kwkSer_gafas_1.oriY = kwkSer_gafas_1.y 
       kwkSer_gafas_1.name = "kwkSer_gafas_1" 
       menuGroup:insert(kwkSer_gafas_1); menuGroup.kwkSer_gafas_1 = kwkSer_gafas_1 

       -- kwkSer_gafas_3 positioning 
       kwkSer_gafas_3 = display.newImageRect( imgDir.. "kwkser_gafas_3.png", 617, 984 ); 
       kwkSer_gafas_3.x = 2409; kwkSer_gafas_3.y = 966; kwkSer_gafas_3.alpha = 1; kwkSer_gafas_3.oldAlpha = 1 
       kwkSer_gafas_3.oriX = kwkSer_gafas_3.x; kwkSer_gafas_3.oriY = kwkSer_gafas_3.y 
       kwkSer_gafas_3.name = "kwkSer_gafas_3" 
       menuGroup:insert(kwkSer_gafas_3); menuGroup.kwkSer_gafas_3 = kwkSer_gafas_3 

       -- kwkHija_gafas_s positioning 
       kwkHija_gafas_s = display.newImageRect( imgDir.. "kwkhija_gafas_s.png", 455, 829 ); 
       kwkHija_gafas_s.x = 1020; kwkHija_gafas_s.y = 972; kwkHija_gafas_s.alpha = 1; kwkHija_gafas_s.oldAlpha = 1 
       kwkHija_gafas_s.oriX = kwkHija_gafas_s.x; kwkHija_gafas_s.oriY = kwkHija_gafas_s.y 
       kwkHija_gafas_s.name = "kwkHija_gafas_s" 
       menuGroup:insert(kwkHija_gafas_s); menuGroup.kwkHija_gafas_s = kwkHija_gafas_s 

       -- Burbuja positioning 
       Burbuja = display.newImageRect( imgDir.. "p22_burbuja.png", 699, 699 ); 
       Burbuja.x = 1495; Burbuja.y = 1171; Burbuja.alpha = 1; Burbuja.oldAlpha = 1 
       Burbuja.oriX = Burbuja.x; Burbuja.oriY = Burbuja.y 
       Burbuja.name = "Burbuja" 
       menuGroup:insert(Burbuja); menuGroup.Burbuja = Burbuja 

       -- kwkBebe_gafas_e positioning 
       kwkBebe_gafas_e = display.newImageRect( imgDir.. "kwkbebe_gafas_e.png", 334, 547 ); 
       kwkBebe_gafas_e.x = 1495; kwkBebe_gafas_e.y = 1146; kwkBebe_gafas_e.alpha = 1; kwkBebe_gafas_e.oldAlpha = 1 
       kwkBebe_gafas_e.oriX = kwkBebe_gafas_e.x; kwkBebe_gafas_e.oriY = kwkBebe_gafas_e.y 
       kwkBebe_gafas_e.name = "kwkBebe_gafas_e" 
       menuGroup:insert(kwkBebe_gafas_e); menuGroup.kwkBebe_gafas_e = kwkBebe_gafas_e 
 
       -- Group(s) creation 

       -- (MIDDLE) External code will render here 

       --Animations
       -- Wait request for pathBurbuja2
       local pathBurbuja2 = function(event)
          if gtStash.gt_pathBurbuja2 then 
              gtStash.gt_pathBurbuja2:toBeginning() 
          end 
          gtStash.gt_pathBurbuja2 = btween.new( Burbuja, 3, { 
         { x = 1475, y = 1218}, --regular curve
         { x = 1610, y = 1367}, 
         { x = 1853, y = 1020}, 
         { x = 1858, y = 1023}, 

         { x = 1858, y = 1023}, --regular curve
         { x = 1864, y = 1027}, 
         { x = 2263, y = 710}, 
         { x = 2275, y = 439}, 

         { x = 2275, y = 439}, --regular curve
         { x = 2286, y = 169}, 
         { x = 2039, y = 66}, 
         { x = 1895, y = 128}, 

         { x = 1895, y = 128}, --regular curve
         { x = 1750, y = 191}, 
         { x = 1671, y = 385}, 
         { x = 1791, y = 460}, 

         { x = 1791, y = 460}, --regular curve
         { x = 1912, y = 536}, 
         { x = 2187, y = 325}, 
         { x = 2085, y = 290}, 

         { x = 2085, y = 290}, --regular curve
         { x = 1984, y = 255}, 
         { x = 1877, y = 273}, 
         { x = 1910, y = 326}, 

         { x = 1910, y = 326}, 
         { x = 1910, y = 326}, 
         { x = 1910, y = 326}, 
         { x = 1910, y = 326}, 
angle = 0       }, {ease = gtween.easing.linear, repeatCount = 1, reflect = false,  delay=0.1, ""}, {  x=1495, y=1171,  alpha=1, rotation=0, xScale=0.01, yScale=0.01, newAngle=180}) 

       end --closes function pathBurbuja2

       -- Wait request for pathBebe
       local pathBebe = function(event)
          if gtStash.gt_pathBebe then 
              gtStash.gt_pathBebe:toBeginning() 
          end 
          gtStash.gt_pathBebe = btween.new( kwkBebe_gafas_e, 3, { 
         { x = 1475, y = 1218}, --regular curve
         { x = 1610, y = 1367}, 
         { x = 1853, y = 1020}, 
         { x = 1858, y = 1023}, 

         { x = 1858, y = 1023}, --regular curve
         { x = 1864, y = 1027}, 
         { x = 2263, y = 710}, 
         { x = 2275, y = 439}, 

         { x = 2275, y = 439}, --regular curve
         { x = 2286, y = 169}, 
         { x = 2039, y = 66}, 
         { x = 1895, y = 128}, 

         { x = 1895, y = 128}, --regular curve
         { x = 1750, y = 191}, 
         { x = 1671, y = 385}, 
         { x = 1791, y = 460}, 

         { x = 1791, y = 460}, --regular curve
         { x = 1912, y = 536}, 
         { x = 2187, y = 325}, 
         { x = 2085, y = 290}, 

         { x = 2085, y = 290}, --regular curve
         { x = 1984, y = 255}, 
         { x = 1877, y = 273}, 
         { x = 1910, y = 326}, 

         { x = 1910, y = 326}, 
         { x = 1910, y = 326}, 
         { x = 1910, y = 326}, 
         { x = 1910, y = 326}, 
angle = 0       }, {ease = gtween.easing.linear, repeatCount = 1, reflect = false,  delay=0.1, ""}, {  x=1495, y=1146,  alpha=1, rotation=0, xScale=0.01, yScale=0.01, newAngle=180}) 

       end --closes function pathBebe

       local onEnd_pathBurbuja1_953 = function() 
          playAnimationBu(); 
       end --ends reStart for pathBurbuja1 
       gtStash.gt_pathBurbuja1 = btween.new( Burbuja, 3, { 
         { x = 54, y = 443}, --regular curve
         { x = 1280, y = 256}, 
         { x = 1470, y = 1189}, 
         { x = 1472, y = 1222}, 

         { x = 1472, y = 1222}, 
         { x = 1472, y = 1222}, 
         { x = 1472, y = 1222}, 
         { x = 1472, y = 1222}, 
angle = 0       }, {ease = gtween.easing.linear, repeatCount = 1, reflect = false,  delay=0.1, onComplete=onEnd_pathBurbuja1_953}, {  x=1495, y=1171,  alpha=1, rotation=0, xScale=1, yScale=1, newAngle=180}) 

 
       -- Actions (functions) 
       function playAnimationBu(event) 
           pathBebe() 
           pathBurbuja2() 
       end 

 
      --End Actions (functions) 


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
          cancelAllTweens() 
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
