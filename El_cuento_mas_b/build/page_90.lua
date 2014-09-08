-- Code created by Kwik - Copyright: kwiksher.com 
-- Version: 2.7.6b 
module(..., package.seeall) 

function new() 
    local numPages = 90 
    local menuGroup = display.newGroup() 
    local dispose 
    local _W = display.contentWidth; 
    local _H = display.contentHeight; 

    local drawScreen = function() 

       local curPage = 90 

       Navigation.new("page", { backColor = {125, 125, 125}, anim=1, timer=1,  totPages = numPages, curPage = curPage, thumbW = 200, thumbH = 125, alpha = 0, imageDir = imgDir, dire = "bottom", audio={} } ) 
       Navigation.hide() 

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
       local btnVolver

       -- Layer names 
       local kwkFondo_62  
       local kwkBtnVolver  
       local tituloAyuda  
       local textAyuda  
       local kwkTextVolver  

       -- (TOP) External code will render here 

       -- kwkFondo_62 positioning 
       kwkFondo_62 = display.newImageRect( imgDir.. "kwkfondo_62.png", 2559, 1600 ); 
       kwkFondo_62.x = 1279; kwkFondo_62.y = 800; kwkFondo_62.alpha = 1; kwkFondo_62.oldAlpha = 1 
       kwkFondo_62.oriX = kwkFondo_62.x; kwkFondo_62.oriY = kwkFondo_62.y 
       kwkFondo_62.name = "kwkFondo_62" 
       menuGroup:insert(1,kwkFondo_62); menuGroup.kwkFondo_62 = kwkFondo_62 

       -- kwkBtnVolver positioning 
       kwkBtnVolver = display.newImageRect( imgDir.. "kwkbtnvolver.png", 523, 110 ); 
       kwkBtnVolver.x = 2283; kwkBtnVolver.y = 1527; kwkBtnVolver.alpha = 1; kwkBtnVolver.oldAlpha = 1 
       kwkBtnVolver.oriX = kwkBtnVolver.x; kwkBtnVolver.oriY = kwkBtnVolver.y 
       kwkBtnVolver.name = "kwkBtnVolver" 
       menuGroup:insert(kwkBtnVolver); menuGroup.kwkBtnVolver = kwkBtnVolver 

       -- tituloAyuda positioning 
       tituloAyuda = display.newImageRect( imgDir.. "p90_tituloayuda.png", 172, 63 ); 
       tituloAyuda.x = 1284; tituloAyuda.y = 62; tituloAyuda.alpha = 1; tituloAyuda.oldAlpha = 1 
       tituloAyuda.oriX = tituloAyuda.x; tituloAyuda.oriY = tituloAyuda.y 
       tituloAyuda.name = "tituloAyuda" 
       menuGroup:insert(tituloAyuda); menuGroup.tituloAyuda = tituloAyuda 

       -- textAyuda positioning 
       textAyuda = display.newImageRect( imgDir.. "p90_textayuda.png", 2457, 628 ); 
       textAyuda.x = 1277; textAyuda.y = 521; textAyuda.alpha = 1; textAyuda.oldAlpha = 1 
       textAyuda.oriX = textAyuda.x; textAyuda.oriY = textAyuda.y 
       textAyuda.name = "textAyuda" 
       menuGroup:insert(textAyuda); menuGroup.textAyuda = textAyuda 

       -- kwkTextVolver positioning 
       kwkTextVolver = display.newImageRect( imgDir.. "kwktextvolver.png", 143, 40 ); 
       kwkTextVolver.x = 2281; kwkTextVolver.y = 1521; kwkTextVolver.alpha = 1; kwkTextVolver.oldAlpha = 1 
       kwkTextVolver.oriX = kwkTextVolver.x; kwkTextVolver.oriY = kwkTextVolver.y 
       kwkTextVolver.name = "kwkTextVolver" 
       menuGroup:insert(kwkTextVolver); menuGroup.kwkTextVolver = kwkTextVolver 
 
       -- Group(s) creation 

       -- (MIDDLE) External code will render here 

       -- Button event listeners 
       local function onkwkBtnVolverEvent(event) 
          btnVolver(kwkBtnVolver) 
          return true 
       end 
       kwkBtnVolver:addEventListener("tap", onkwkBtnVolverEvent ) 

       -- Button functions 
       function btnVolver(self) 
            local myClosure_switch = function() 
                dispose(); director:changeScene( "page_1", "fade" ) 
            end 
            timerStash.newTimer_985 = timer.performWithDelay(0, myClosure_switch, 1) 
       end 


       -- do not swipe this page 

       dispose = function(event) 
          cancelAllTimers(); cancelAllTransitions() 
       end 

       -- (BOTTOM) External code will render here 


    end 
    drawScreen() 

    return menuGroup 
end 
