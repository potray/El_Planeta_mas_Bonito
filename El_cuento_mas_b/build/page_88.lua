-- Code created by Kwik - Copyright: kwiksher.com 
-- Version: 2.7.6b 
module(..., package.seeall) 

function new() 
    local numPages = 88 
    local menuGroup = display.newGroup() 
    local dispose 
    local _W = display.contentWidth; 
    local _H = display.contentHeight; 

    local drawScreen = function() 

       local curPage = 88 

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
       local Titulo  
       local CI2Text  
       local CI3Text  
       local CI4Text  
       local CI5Text  
       local CIDesc  
       local CI2Desc  
       local CI3Desc  
       local CI4Desc  
       local CI5Desc  
       local kwkBtnVolver  
       local kwkTextVolver  

       -- (TOP) External code will render here 
       local CL1 = kwkVarCheck("CL1")
local CL2 = kwkVarCheck("CL2")
local CL3 = kwkVarCheck("CL3")
local CL5 = kwkVarCheck("CL5")

local CI2 = kwkVarCheck("CI2")
local CI3 = kwkVarCheck("CI3")
local CI4 = kwkVarCheck("CI4")
local CI5 = kwkVarCheck("CI5")

local CG1 = kwkVarCheck("CG1")
local CG2 = kwkVarCheck("CG2")
local CG8 = kwkVarCheck("CG8")

local CL = kwkVarCheck("CL")
local CI = kwkVarCheck("CI")
local CG = kwkVarCheck("CG")
local comodin = kwkVarCheck("comodin")

local favor2Started = kwkVarCheck("Favor2Visitado")
local favor5Started = kwkVarCheck("Favor5Visitado")
--En algunas páginas se llama distinta esta variable
local Favor5Visitado = kwkVarCheck("Favor5Visitado")
local Fav01Completed = kwkVarCheck("Fav01Completed")
local Fav02Completed = kwkVarCheck("Fav02Completed")
local Fav03Completed = kwkVarCheck("Fav03Completed")
local Fav04Completed = kwkVarCheck("Fav04Completed")
local Fav05Completed = kwkVarCheck("Fav05Completed")
local Fav06Completed = kwkVarCheck("Fav06Completed")
local Fav07Completed = kwkVarCheck("Fav07Completed")

local Preg01Completed = kwkVarCheck("Preg01Completed")
local Preg02Completed = kwkVarCheck("Preg02Completed")
local Preg03Completed = kwkVarCheck("Preg03Completed")
local Preg04Completed = kwkVarCheck("Preg04Completed")
local Preg05Completed = kwkVarCheck("Preg05Completed")
local Preg06Completed = kwkVarCheck("Preg06Completed")
local Preg07Completed = kwkVarCheck("Preg07Completed")
local Preg08Completed = kwkVarCheck("Preg08Completed")
local Preg09Completed = kwkVarCheck("Preg09Completed")

local cuentoTerminado = kwkVarCheck("CuentoTerminado")

local Audio = kwkVarCheck("Audio") 

       -- kwkFondo_62 positioning 
       kwkFondo_62 = display.newImageRect( imgDir.. "kwkfondo_62.png", 2559, 1600 ); 
       kwkFondo_62.x = 1279; kwkFondo_62.y = 800; kwkFondo_62.alpha = 1; kwkFondo_62.oldAlpha = 1 
       kwkFondo_62.oriX = kwkFondo_62.x; kwkFondo_62.oriY = kwkFondo_62.y 
       kwkFondo_62.name = "kwkFondo_62" 
       menuGroup:insert(1,kwkFondo_62); menuGroup.kwkFondo_62 = kwkFondo_62 

       -- Titulo positioning 
       Titulo = display.newImageRect( imgDir.. "p88_titulo.png", 777, 65 ); 
       Titulo.x = 1280; Titulo.y = 66; Titulo.alpha = 1; Titulo.oldAlpha = 1 
       Titulo.oriX = Titulo.x; Titulo.oriY = Titulo.y 
       Titulo.name = "Titulo" 
       menuGroup:insert(Titulo); menuGroup.Titulo = Titulo 

       -- CI2Text positioning 
       CI2Text = display.newText( CI2, 286, 351, native.systemFont, 48 ) 
       CI2Text:setTextColor (0, 0, 0) 
       CI2Text.oriX = CI2Text.x; CI2Text.oriY = CI2Text.y 
       CI2Text.alpha = 1; CI2Text.oldAlpha = 1 
       menuGroup:insert(CI2Text); menuGroup.CI2Text = CI2Text 

       -- CI3Text positioning 
       CI3Text = display.newText( CI3, 288, 612, native.systemFont, 48 ) 
       CI3Text:setTextColor (0, 0, 0) 
       CI3Text.oriX = CI3Text.x; CI3Text.oriY = CI3Text.y 
       CI3Text.alpha = 1; CI3Text.oldAlpha = 1 
       menuGroup:insert(CI3Text); menuGroup.CI3Text = CI3Text 

       -- CI4Text positioning 
       CI4Text = display.newText( CI4, 288, 874, native.systemFont, 48 ) 
       CI4Text:setTextColor (0, 0, 0) 
       CI4Text.oriX = CI4Text.x; CI4Text.oriY = CI4Text.y 
       CI4Text.alpha = 1; CI4Text.oldAlpha = 1 
       menuGroup:insert(CI4Text); menuGroup.CI4Text = CI4Text 

       -- CI5Text positioning 
       CI5Text = display.newText( CI5, 286, 1125, native.systemFont, 48 ) 
       CI5Text:setTextColor (0, 0, 0) 
       CI5Text.oriX = CI5Text.x; CI5Text.oriY = CI5Text.y 
       CI5Text.alpha = 1; CI5Text.oldAlpha = 1 
       menuGroup:insert(CI5Text); menuGroup.CI5Text = CI5Text 

       -- CIDesc positioning 
       CIDesc = display.newImageRect( imgDir.. "p88_cidesc.png", 2317, 52 ); 
       CIDesc.x = 1263; CIDesc.y = 153; CIDesc.alpha = 1; CIDesc.oldAlpha = 1 
       CIDesc.oriX = CIDesc.x; CIDesc.oriY = CIDesc.y 
       CIDesc.name = "CIDesc" 
       menuGroup:insert(CIDesc); menuGroup.CIDesc = CIDesc 

       -- CI2Desc positioning 
       CI2Desc = display.newImageRect( imgDir.. "p88_ci2desc.png", 1610, 52 ); 
       CI2Desc.x = 946; CI2Desc.y = 383; CI2Desc.alpha = 1; CI2Desc.oldAlpha = 1 
       CI2Desc.oriX = CI2Desc.x; CI2Desc.oriY = CI2Desc.y 
       CI2Desc.name = "CI2Desc" 
       menuGroup:insert(CI2Desc); menuGroup.CI2Desc = CI2Desc 

       -- CI3Desc positioning 
       CI3Desc = display.newImageRect( imgDir.. "p88_ci3desc.png", 1592, 51 ); 
       CI3Desc.x = 941; CI3Desc.y = 643; CI3Desc.alpha = 1; CI3Desc.oldAlpha = 1 
       CI3Desc.oriX = CI3Desc.x; CI3Desc.oriY = CI3Desc.y 
       CI3Desc.name = "CI3Desc" 
       menuGroup:insert(CI3Desc); menuGroup.CI3Desc = CI3Desc 

       -- CI4Desc positioning 
       CI4Desc = display.newImageRect( imgDir.. "p88_ci4desc.png", 1398, 51 ); 
       CI4Desc.x = 844; CI4Desc.y = 901; CI4Desc.alpha = 1; CI4Desc.oldAlpha = 1 
       CI4Desc.oriX = CI4Desc.x; CI4Desc.oriY = CI4Desc.y 
       CI4Desc.name = "CI4Desc" 
       menuGroup:insert(CI4Desc); menuGroup.CI4Desc = CI4Desc 

       -- CI5Desc positioning 
       CI5Desc = display.newImageRect( imgDir.. "p88_ci5desc.png", 1923, 52 ); 
       CI5Desc.x = 1106; CI5Desc.y = 1150; CI5Desc.alpha = 1; CI5Desc.oldAlpha = 1 
       CI5Desc.oriX = CI5Desc.x; CI5Desc.oriY = CI5Desc.y 
       CI5Desc.name = "CI5Desc" 
       menuGroup:insert(CI5Desc); menuGroup.CI5Desc = CI5Desc 

       -- kwkBtnVolver positioning 
       kwkBtnVolver = display.newImageRect( imgDir.. "kwkbtnvolver.png", 523, 110 ); 
       kwkBtnVolver.x = 2283; kwkBtnVolver.y = 1527; kwkBtnVolver.alpha = 1; kwkBtnVolver.oldAlpha = 1 
       kwkBtnVolver.oriX = kwkBtnVolver.x; kwkBtnVolver.oriY = kwkBtnVolver.y 
       kwkBtnVolver.name = "kwkBtnVolver" 
       menuGroup:insert(kwkBtnVolver); menuGroup.kwkBtnVolver = kwkBtnVolver 

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
                dispose(); director:changeScene( "page_86", "fade" ) 
            end 
            timerStash.newTimer_538 = timer.performWithDelay(0, myClosure_switch, 1) 
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
