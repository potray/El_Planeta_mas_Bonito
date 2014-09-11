-- Code created by Kwik - Copyright: kwiksher.com 
-- Version: 2.7.6b 
module(..., package.seeall) 

function new() 
    local numPages = 91 
    local menuGroup = display.newGroup() 
    local dispose 
    local _W = display.contentWidth; 
    local _H = display.contentHeight; 

    local drawScreen = function() 

       local curPage = 91 

       Navigation.new("page", { backColor = {125, 125, 125}, anim=1, timer=1,  totPages = numPages, curPage = curPage, thumbW = 200, thumbH = 125, alpha = 0, imageDir = imgDir, dire = "bottom", audio={} } ) 
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
       local btnVolver

       -- Layer names 
       local kwkFondo_62  
       local kwkBtnVolver  
       local Logo_LSI  
       local Logo_UGR  
       local textCreditos  
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

       -- Logo_LSI positioning 
       Logo_LSI = display.newImageRect( imgDir.. "p91_logo_lsi.png", 867, 246 ); 
       Logo_LSI.x = 795; Logo_LSI.y = 1458; Logo_LSI.alpha = 1; Logo_LSI.oldAlpha = 1 
       Logo_LSI.oriX = Logo_LSI.x; Logo_LSI.oriY = Logo_LSI.y 
       Logo_LSI.name = "Logo_LSI" 
       menuGroup:insert(Logo_LSI); menuGroup.Logo_LSI = Logo_LSI 

       -- Logo_UGR positioning 
       Logo_UGR = display.newImageRect( imgDir.. "p91_logo_ugr.png", 820, 245 ); 
       Logo_UGR.x = 1639; Logo_UGR.y = 1457; Logo_UGR.alpha = 1; Logo_UGR.oldAlpha = 1 
       Logo_UGR.oriX = Logo_UGR.x; Logo_UGR.oriY = Logo_UGR.y 
       Logo_UGR.name = "Logo_UGR" 
       menuGroup:insert(Logo_UGR); menuGroup.Logo_UGR = Logo_UGR 

       -- textCreditos positioning 
       textCreditos = display.newImageRect( imgDir.. "p91_textcreditos.png", 1123, 1277 ); 
       textCreditos.x = 1289; textCreditos.y = 652; textCreditos.alpha = 1; textCreditos.oldAlpha = 1 
       textCreditos.oriX = textCreditos.x; textCreditos.oriY = textCreditos.y 
       textCreditos.name = "textCreditos" 
       menuGroup:insert(textCreditos); menuGroup.textCreditos = textCreditos 

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
                dispose(); director:changeScene( "page_90", "fade" ) 
            end 
            timerStash.newTimer_413 = timer.performWithDelay(0, myClosure_switch, 1) 
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
