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

       local curPage = 89 

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
       local CG1Text  
       local CG2Text  
       local CG8Text  
       local CG1Desc  
       local CG2Desc  
       local CG8Desc  
       local CIDesc  
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
       Titulo = display.newImageRect( imgDir.. "p89_titulo.png", 536, 65 ); 
       Titulo.x = 1278; Titulo.y = 66; Titulo.alpha = 1; Titulo.oldAlpha = 1 
       Titulo.oriX = Titulo.x; Titulo.oriY = Titulo.y 
       Titulo.name = "Titulo" 
       menuGroup:insert(Titulo); menuGroup.Titulo = Titulo 

       -- CG1Text positioning 
       CG1Text = display.newText( CG1, 289, 480, native.systemFont, 48 ) 
       CG1Text:setTextColor (0, 0, 0) 
       CG1Text.oriX = CG1Text.x; CG1Text.oriY = CG1Text.y 
       CG1Text.alpha = 1; CG1Text.oldAlpha = 1 
       menuGroup:insert(CG1Text); menuGroup.CG1Text = CG1Text 

       -- CG2Text positioning 
       CG2Text = display.newText( CG2, 291, 741, native.systemFont, 48 ) 
       CG2Text:setTextColor (0, 0, 0) 
       CG2Text.oriX = CG2Text.x; CG2Text.oriY = CG2Text.y 
       CG2Text.alpha = 1; CG2Text.oldAlpha = 1 
       menuGroup:insert(CG2Text); menuGroup.CG2Text = CG2Text 

       -- CG8Text positioning 
       CG8Text = display.newText( CG8, 291, 1002, native.systemFont, 48 ) 
       CG8Text:setTextColor (0, 0, 0) 
       CG8Text.oriX = CG8Text.x; CG8Text.oriY = CG8Text.y 
       CG8Text.alpha = 1; CG8Text.oldAlpha = 1 
       menuGroup:insert(CG8Text); menuGroup.CG8Text = CG8Text 

       -- CG1Desc positioning 
       CG1Desc = display.newImageRect( imgDir.. "p89_cg1desc.png", 1837, 52 ); 
       CG1Desc.x = 1062; CG1Desc.y = 511; CG1Desc.alpha = 1; CG1Desc.oldAlpha = 1 
       CG1Desc.oriX = CG1Desc.x; CG1Desc.oriY = CG1Desc.y 
       CG1Desc.name = "CG1Desc" 
       menuGroup:insert(CG1Desc); menuGroup.CG1Desc = CG1Desc 

       -- CG2Desc positioning 
       CG2Desc = display.newImageRect( imgDir.. "p89_cg2desc.png", 1674, 51 ); 
       CG2Desc.x = 985; CG2Desc.y = 772; CG2Desc.alpha = 1; CG2Desc.oldAlpha = 1 
       CG2Desc.oriX = CG2Desc.x; CG2Desc.oriY = CG2Desc.y 
       CG2Desc.name = "CG2Desc" 
       menuGroup:insert(CG2Desc); menuGroup.CG2Desc = CG2Desc 

       -- CG8Desc positioning 
       CG8Desc = display.newImageRect( imgDir.. "p89_cg8desc.png", 1551, 52 ); 
       CG8Desc.x = 923; CG8Desc.y = 1030; CG8Desc.alpha = 1; CG8Desc.oldAlpha = 1 
       CG8Desc.oriX = CG8Desc.x; CG8Desc.oriY = CG8Desc.y 
       CG8Desc.name = "CG8Desc" 
       menuGroup:insert(CG8Desc); menuGroup.CG8Desc = CG8Desc 

       -- CIDesc positioning 
       CIDesc = display.newImageRect( imgDir.. "p89_cidesc.png", 2312, 52 ); 
       CIDesc.x = 1278; CIDesc.y = 147; CIDesc.alpha = 1; CIDesc.oldAlpha = 1 
       CIDesc.oriX = CIDesc.x; CIDesc.oriY = CIDesc.y 
       CIDesc.name = "CIDesc" 
       menuGroup:insert(CIDesc); menuGroup.CIDesc = CIDesc 

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
            timerStash.newTimer_091 = timer.performWithDelay(0, myClosure_switch, 1) 
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
