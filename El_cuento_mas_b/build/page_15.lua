-- Code created by Kwik - Copyright: kwiksher.com 
-- Version: 2.7.6b 
module(..., package.seeall) 

function new() 
    local numPages = 17 
    local menuGroup = display.newGroup() 
    local dispose 
    local _W = display.contentWidth; 
    local _H = display.contentHeight; 

    local drawScreen = function() 

       local curPage = 15 

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
       local HideAnimationPa 
       local ShowAnimationpa 

       -- Layer names 
       local kwkFondo3  
       local kwkSer_1  
       local Text1  
       local Text2  
       local kwkHija_casa_so  
       local kwkBebe_sorpren  
       local kwkMama_sorpren  
       local Ser_de_dos_cabe  

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

       -- Text1 positioning 
       Text1 = display.newImageRect( imgDir.. "p15_text1.png", 250, 39 ); 
       Text1.x = 1330; Text1.y = 81; Text1.alpha = 1; Text1.oldAlpha = 1 
       Text1.oriX = Text1.x; Text1.oriY = Text1.y 
       Text1.name = "Text1" 
       menuGroup:insert(Text1); menuGroup.Text1 = Text1 

       -- Text2 positioning 
       Text2 = display.newImageRect( imgDir.. "p15_text2.png", 301, 39 ); 
       Text2.x = 1334; Text2.y = 197; Text2.alpha = 1; Text2.oldAlpha = 1 
       Text2.oriX = Text2.x; Text2.oriY = Text2.y 
       Text2.name = "Text2" 
       menuGroup:insert(Text2); menuGroup.Text2 = Text2 

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

       -- Ser_de_dos_cabe positioning 
       Ser_de_dos_cabe = display.newImageRect( imgDir.. "p15_ser_de_dos_cabe.png", 644, 939 ); 
       Ser_de_dos_cabe.x = 885; Ser_de_dos_cabe.y = 1087; Ser_de_dos_cabe.alpha = 1; Ser_de_dos_cabe.oldAlpha = 1 
       Ser_de_dos_cabe.oriX = Ser_de_dos_cabe.x; Ser_de_dos_cabe.oriY = Ser_de_dos_cabe.y 
       Ser_de_dos_cabe.name = "Ser_de_dos_cabe" 
       menuGroup:insert(Ser_de_dos_cabe); menuGroup.Ser_de_dos_cabe = Ser_de_dos_cabe 
 
       -- Group(s) creation 

       -- (MIDDLE) External code will render here 
 
       -- Actions (functions) 
       function HideAnimationPa(event) 
            transitionStash.newTransition_526 = transition.to( Text2, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_526 = transition.to( Ser_de_dos_cabe, {alpha=0, time=0, delay=0}) 
       end 

       function ShowAnimationpa(event) 
            transitionStash.newTransition_526 = transition.to( Ser_de_dos_cabe, {alpha=Ser_de_dos_cabe.oldAlpha, time=1000, delay=1000}) 
            transitionStash.newTransition_527 = transition.to( Text2, {alpha=Text2.oldAlpha, time=1000, delay=2000}) 
       end 

 
      --End Actions (functions) 

 
       -- Timers 
       timerStash.timer_909 = timer.performWithDelay( 0, HideAnimationPa, 1 ) 
       timerStash.timer_318 = timer.performWithDelay( 1000, ShowAnimationpa, 1 ) 

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
