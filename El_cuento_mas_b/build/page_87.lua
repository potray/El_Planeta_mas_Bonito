-- Code created by Kwik - Copyright: kwiksher.com 
-- Version: 2.7.6b 
module(..., package.seeall) 

function new() 
    local numPages = 89 
    local menuGroup = display.newGroup() 
    local dispose 
    local _W = display.contentWidth; 
    local _H = display.contentHeight; 

    local drawScreen = function() 

       local curPage = 87 

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
       local CL1Text  
       local CL2Text  
       local CL3Text  
       local CL5Text  
       local CLDesc  
       local CL1Desc  
       local CL2Desc  
       local CL3Desc  
       local CL5Desc  
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
       Titulo = display.newImageRect( imgDir.. "p87_titulo.png", 577, 65 ); 
       Titulo.x = 1280; Titulo.y = 66; Titulo.alpha = 1; Titulo.oldAlpha = 1 
       Titulo.oriX = Titulo.x; Titulo.oriY = Titulo.y 
       Titulo.name = "Titulo" 
       menuGroup:insert(Titulo); menuGroup.Titulo = Titulo 

       -- CL1Text positioning 
       CL1Text = display.newText( CL1, 286, 351, native.systemFont, 48 ) 
       CL1Text:setTextColor (0, 0, 0) 
       CL1Text.oriX = CL1Text.x; CL1Text.oriY = CL1Text.y 
       CL1Text.alpha = 1; CL1Text.oldAlpha = 1 
       menuGroup:insert(CL1Text); menuGroup.CL1Text = CL1Text 

       -- CL2Text positioning 
       CL2Text = display.newText( CL2, 288, 612, native.systemFont, 48 ) 
       CL2Text:setTextColor (0, 0, 0) 
       CL2Text.oriX = CL2Text.x; CL2Text.oriY = CL2Text.y 
       CL2Text.alpha = 1; CL2Text.oldAlpha = 1 
       menuGroup:insert(CL2Text); menuGroup.CL2Text = CL2Text 

       -- CL3Text positioning 
       CL3Text = display.newText( CL3, 288, 874, native.systemFont, 48 ) 
       CL3Text:setTextColor (0, 0, 0) 
       CL3Text.oriX = CL3Text.x; CL3Text.oriY = CL3Text.y 
       CL3Text.alpha = 1; CL3Text.oldAlpha = 1 
       menuGroup:insert(CL3Text); menuGroup.CL3Text = CL3Text 

       -- CL5Text positioning 
       CL5Text = display.newText( CL5, 286, 1125, native.systemFont, 48 ) 
       CL5Text:setTextColor (0, 0, 0) 
       CL5Text.oriX = CL5Text.x; CL5Text.oriY = CL5Text.y 
       CL5Text.alpha = 1; CL5Text.oldAlpha = 1 
       menuGroup:insert(CL5Text); menuGroup.CL5Text = CL5Text 

       -- CLDesc positioning 
       CLDesc = display.newImageRect( imgDir.. "p87_cldesc.png", 1791, 52 ); 
       CLDesc.x = 1345; CLDesc.y = 153; CLDesc.alpha = 1; CLDesc.oldAlpha = 1 
       CLDesc.oriX = CLDesc.x; CLDesc.oriY = CLDesc.y 
       CLDesc.name = "CLDesc" 
       menuGroup:insert(CLDesc); menuGroup.CLDesc = CLDesc 

       -- CL1Desc positioning 
       CL1Desc = display.newImageRect( imgDir.. "p87_cl1desc.png", 1274, 51 ); 
       CL1Desc.x = 778; CL1Desc.y = 383; CL1Desc.alpha = 1; CL1Desc.oldAlpha = 1 
       CL1Desc.oriX = CL1Desc.x; CL1Desc.oriY = CL1Desc.y 
       CL1Desc.name = "CL1Desc" 
       menuGroup:insert(CL1Desc); menuGroup.CL1Desc = CL1Desc 

       -- CL2Desc positioning 
       CL2Desc = display.newImageRect( imgDir.. "p87_cl2desc.png", 1885, 52 ); 
       CL2Desc.x = 1087; CL2Desc.y = 643; CL2Desc.alpha = 1; CL2Desc.oldAlpha = 1 
       CL2Desc.oriX = CL2Desc.x; CL2Desc.oriY = CL2Desc.y 
       CL2Desc.name = "CL2Desc" 
       menuGroup:insert(CL2Desc); menuGroup.CL2Desc = CL2Desc 

       -- CL3Desc positioning 
       CL3Desc = display.newImageRect( imgDir.. "p87_cl3desc.png", 1629, 51 ); 
       CL3Desc.x = 959; CL3Desc.y = 901; CL3Desc.alpha = 1; CL3Desc.oldAlpha = 1 
       CL3Desc.oriX = CL3Desc.x; CL3Desc.oriY = CL3Desc.y 
       CL3Desc.name = "CL3Desc" 
       menuGroup:insert(CL3Desc); menuGroup.CL3Desc = CL3Desc 

       -- CL5Desc positioning 
       CL5Desc = display.newImageRect( imgDir.. "p87_cl5desc.png", 1442, 51 ); 
       CL5Desc.x = 866; CL5Desc.y = 1150; CL5Desc.alpha = 1; CL5Desc.oldAlpha = 1 
       CL5Desc.oriX = CL5Desc.x; CL5Desc.oriY = CL5Desc.y 
       CL5Desc.name = "CL5Desc" 
       menuGroup:insert(CL5Desc); menuGroup.CL5Desc = CL5Desc 

       -- kwkBtnVolver positioning 
       kwkBtnVolver = display.newImageRect( imgDir.. "kwkbtnvolver.png", 522, 109 ); 
       kwkBtnVolver.x = 2284; kwkBtnVolver.y = 1527; kwkBtnVolver.alpha = 1; kwkBtnVolver.oldAlpha = 1 
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
            timerStash.newTimer_269 = timer.performWithDelay(0, myClosure_switch, 1) 
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
