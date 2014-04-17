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

       local curPage = 11 

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
       local HideSeres 
       local act_730 

       -- Layer names 
       local kwkFondo3  
       local Ser_2  
       local Ser_3  
       local kwkSer_1  
       local Ser_4  
       local Ser_5  
       local Text  

       -- (TOP) External code will render here 

       -- kwkFondo3 positioning 
       kwkFondo3 = display.newImageRect( imgDir.. "kwkfondo3.png", 2559, 1600 ); 
       kwkFondo3.x = 1279; kwkFondo3.y = 800; kwkFondo3.alpha = 1; kwkFondo3.oldAlpha = 1 
       kwkFondo3.oriX = kwkFondo3.x; kwkFondo3.oriY = kwkFondo3.y 
       kwkFondo3.name = "kwkFondo3" 
       menuGroup:insert(1,kwkFondo3); menuGroup.kwkFondo3 = kwkFondo3 

       -- Ser_2 positioning 
       Ser_2 = display.newImageRect( imgDir.. "p11_ser_2.png", 431, 634 ); 
       Ser_2.x = 936; Ser_2.y = 885; Ser_2.alpha = 1; Ser_2.oldAlpha = 1 
       Ser_2.oriX = Ser_2.x; Ser_2.oriY = Ser_2.y 
       Ser_2.name = "Ser_2" 
       menuGroup:insert(Ser_2); menuGroup.Ser_2 = Ser_2 

       -- Ser_3 positioning 
       Ser_3 = display.newImageRect( imgDir.. "p11_ser_3.png", 614, 979 ); 
       Ser_3.x = 1359; Ser_3.y = 932; Ser_3.alpha = 1; Ser_3.oldAlpha = 1 
       Ser_3.oriX = Ser_3.x; Ser_3.oriY = Ser_3.y 
       Ser_3.name = "Ser_3" 
       menuGroup:insert(Ser_3); menuGroup.Ser_3 = Ser_3 

       -- kwkSer_1 positioning 
       kwkSer_1 = display.newImageRect( imgDir.. "kwkser_1.png", 616, 983 ); 
       kwkSer_1.x = 410; kwkSer_1.y = 932; kwkSer_1.alpha = 1; kwkSer_1.oldAlpha = 1 
       kwkSer_1.oriX = kwkSer_1.x; kwkSer_1.oriY = kwkSer_1.y 
       kwkSer_1.name = "kwkSer_1" 
       menuGroup:insert(kwkSer_1); menuGroup.kwkSer_1 = kwkSer_1 

       -- Ser_4 positioning 
       Ser_4 = display.newImageRect( imgDir.. "p11_ser_4.png", 654, 1000 ); 
       Ser_4.x = 1863; Ser_4.y = 941; Ser_4.alpha = 1; Ser_4.oldAlpha = 1 
       Ser_4.oriX = Ser_4.x; Ser_4.oriY = Ser_4.y 
       Ser_4.name = "Ser_4" 
       menuGroup:insert(Ser_4); menuGroup.Ser_4 = Ser_4 

       -- Ser_5 positioning 
       Ser_5 = display.newImageRect( imgDir.. "p11_ser_5.png", 683, 1134 ); 
       Ser_5.x = 2329; Ser_5.y = 932; Ser_5.alpha = 1; Ser_5.oldAlpha = 1 
       Ser_5.oriX = Ser_5.x; Ser_5.oriY = Ser_5.y 
       Ser_5.name = "Ser_5" 
       menuGroup:insert(Ser_5); menuGroup.Ser_5 = Ser_5 

       -- Text positioning 
       Text = display.newImageRect( imgDir.. "p11_text.png", 1887, 82 ); 
       Text.x = 1358; Text.y = 174; Text.alpha = 1; Text.oldAlpha = 1 
       Text.oriX = Text.x; Text.oriY = Text.y 
       Text.name = "Text" 
       menuGroup:insert(Text); menuGroup.Text = Text 
 
       -- Group(s) creation 

       -- (MIDDLE) External code will render here 
 
       -- Actions (functions) 
       function HideSeres(event) 
            transitionStash.newTransition_447 = transition.to( Ser_2, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_448 = transition.to( Ser_3, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_448 = transition.to( kwkSer_1, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_449 = transition.to( Ser_4, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_449 = transition.to( Ser_5, {alpha=0, time=0, delay=0}) 
           act_730() 
       end 

       function act_730(event) 
            transitionStash.newTransition_450 = transition.to( kwkSer_1, {alpha=kwkSer_1.oldAlpha, time=1000, delay=1000}) 
            transitionStash.newTransition_450 = transition.to( Ser_2, {alpha=Ser_2.oldAlpha, time=1000, delay=2000}) 
            transitionStash.newTransition_451 = transition.to( Ser_3, {alpha=Ser_3.oldAlpha, time=1000, delay=3000}) 
            transitionStash.newTransition_451 = transition.to( Ser_4, {alpha=Ser_4.oldAlpha, time=1000, delay=4000}) 
            transitionStash.newTransition_452 = transition.to( Ser_5, {alpha=Ser_5.oldAlpha, time=1000, delay=5000}) 
       end 

 
      --End Actions (functions) 

 
       -- Timers 
       timerStash.AnimateSeres = timer.performWithDelay( 0, HideSeres, 1 ) 

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
