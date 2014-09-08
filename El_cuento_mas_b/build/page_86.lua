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

       local curPage = 86 

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
       local botonCL
       local botonCI
       local botonCG
       local btnVolver

       -- Layer names 
       local kwkFondo_62  
       local btnCL  
       local btnCI  
       local btnCG  
       local CLDetalles  
       local CIDetalles  
       local CGDetalles  
       local Titulo  
       local CLMal  
       local CLRegu  
       local CLBien  
       local CIMal  
       local CIRegu  
       local CIBien  
       local CGMal  
       local CGRegu  
       local CGBien  
       local CLTitulo  
       local CITitulo  
       local kwkCLText  
       local kwkCIText  
       local kwkCGText  
       local kwkruby  
       local kwkDiamante  
       local kwkEsmeralda  
       local CGTitulo  
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

       -- btnCL positioning 
       btnCL = display.newImageRect( imgDir.. "p86_btncl.png", 523, 110 ); 
       btnCL.x = 1809; btnCL.y = 396; btnCL.alpha = 1; btnCL.oldAlpha = 1 
       btnCL.oriX = btnCL.x; btnCL.oriY = btnCL.y 
       btnCL.name = "btnCL" 
       menuGroup:insert(btnCL); menuGroup.btnCL = btnCL 

       -- btnCI positioning 
       btnCI = display.newImageRect( imgDir.. "p86_btnci.png", 523, 110 ); 
       btnCI.x = 1911; btnCI.y = 788; btnCI.alpha = 1; btnCI.oldAlpha = 1 
       btnCI.oriX = btnCI.x; btnCI.oriY = btnCI.y 
       btnCI.name = "btnCI" 
       menuGroup:insert(btnCI); menuGroup.btnCI = btnCI 

       -- btnCG positioning 
       btnCG = display.newImageRect( imgDir.. "p86_btncg.png", 523, 110 ); 
       btnCG.x = 1807; btnCG.y = 1160; btnCG.alpha = 1; btnCG.oldAlpha = 1 
       btnCG.oriX = btnCG.x; btnCG.oriY = btnCG.y 
       btnCG.name = "btnCG" 
       menuGroup:insert(btnCG); menuGroup.btnCG = btnCG 

       -- CLDetalles positioning 
       CLDetalles = display.newImageRect( imgDir.. "p86_cldetalles.png", 182, 40 ); 
       CLDetalles.x = 1802; CLDetalles.y = 389; CLDetalles.alpha = 1; CLDetalles.oldAlpha = 1 
       CLDetalles.oriX = CLDetalles.x; CLDetalles.oriY = CLDetalles.y 
       CLDetalles.name = "CLDetalles" 
       menuGroup:insert(CLDetalles); menuGroup.CLDetalles = CLDetalles 

       -- CIDetalles positioning 
       CIDetalles = display.newImageRect( imgDir.. "p86_cidetalles.png", 183, 40 ); 
       CIDetalles.x = 1919; CIDetalles.y = 780; CIDetalles.alpha = 1; CIDetalles.oldAlpha = 1 
       CIDetalles.oriX = CIDetalles.x; CIDetalles.oriY = CIDetalles.y 
       CIDetalles.name = "CIDetalles" 
       menuGroup:insert(CIDetalles); menuGroup.CIDetalles = CIDetalles 

       -- CGDetalles positioning 
       CGDetalles = display.newImageRect( imgDir.. "p86_cgdetalles.png", 183, 40 ); 
       CGDetalles.x = 1798; CGDetalles.y = 1152; CGDetalles.alpha = 1; CGDetalles.oldAlpha = 1 
       CGDetalles.oriX = CGDetalles.x; CGDetalles.oriY = CGDetalles.y 
       CGDetalles.name = "CGDetalles" 
       menuGroup:insert(CGDetalles); menuGroup.CGDetalles = CGDetalles 

       -- Titulo positioning 
       Titulo = display.newImageRect( imgDir.. "p86_titulo.png", 289, 52 ); 
       Titulo.x = 1280; Titulo.y = 60; Titulo.alpha = 1; Titulo.oldAlpha = 1 
       Titulo.oriX = Titulo.x; Titulo.oriY = Titulo.y 
       Titulo.name = "Titulo" 
       menuGroup:insert(Titulo); menuGroup.Titulo = Titulo 

       -- CLMal positioning 
       CLMal = display.newImageRect( imgDir.. "p86_clmal.png", 2360, 52 ); 
       CLMal.x = 1277; CLMal.y = 513; CLMal.alpha = 1; CLMal.oldAlpha = 1 
       CLMal.oriX = CLMal.x; CLMal.oriY = CLMal.y 
       CLMal.name = "CLMal" 
       menuGroup:insert(CLMal); menuGroup.CLMal = CLMal 

       -- CLRegu positioning 
       CLRegu = display.newImageRect( imgDir.. "p86_clregu.png", 2203, 52 ); 
       CLRegu.x = 1278; CLRegu.y = 512; CLRegu.alpha = 1; CLRegu.oldAlpha = 1 
       CLRegu.oriX = CLRegu.x; CLRegu.oriY = CLRegu.y 
       CLRegu.name = "CLRegu" 
       menuGroup:insert(CLRegu); menuGroup.CLRegu = CLRegu 

       -- CLBien positioning 
       CLBien = display.newImageRect( imgDir.. "p86_clbien.png", 1649, 52 ); 
       CLBien.x = 1280; CLBien.y = 512; CLBien.alpha = 1; CLBien.oldAlpha = 1 
       CLBien.oriX = CLBien.x; CLBien.oriY = CLBien.y 
       CLBien.name = "CLBien" 
       menuGroup:insert(CLBien); menuGroup.CLBien = CLBien 

       -- CIMal positioning 
       CIMal = display.newImageRect( imgDir.. "p86_cimal.png", 2515, 52 ); 
       CIMal.x = 1277; CIMal.y = 893; CIMal.alpha = 1; CIMal.oldAlpha = 1 
       CIMal.oriX = CIMal.x; CIMal.oriY = CIMal.y 
       CIMal.name = "CIMal" 
       menuGroup:insert(CIMal); menuGroup.CIMal = CIMal 

       -- CIRegu positioning 
       CIRegu = display.newImageRect( imgDir.. "p86_ciregu.png", 2337, 52 ); 
       CIRegu.x = 1278; CIRegu.y = 893; CIRegu.alpha = 1; CIRegu.oldAlpha = 1 
       CIRegu.oriX = CIRegu.x; CIRegu.oriY = CIRegu.y 
       CIRegu.name = "CIRegu" 
       menuGroup:insert(CIRegu); menuGroup.CIRegu = CIRegu 

       -- CIBien positioning 
       CIBien = display.newImageRect( imgDir.. "p86_cibien.png", 1858, 52 ); 
       CIBien.x = 1280; CIBien.y = 893; CIBien.alpha = 1; CIBien.oldAlpha = 1 
       CIBien.oriX = CIBien.x; CIBien.oriY = CIBien.y 
       CIBien.name = "CIBien" 
       menuGroup:insert(CIBien); menuGroup.CIBien = CIBien 

       -- CGMal positioning 
       CGMal = display.newImageRect( imgDir.. "p86_cgmal.png", 2347, 52 ); 
       CGMal.x = 1271; CGMal.y = 1266; CGMal.alpha = 1; CGMal.oldAlpha = 1 
       CGMal.oriX = CGMal.x; CGMal.oriY = CGMal.y 
       CGMal.name = "CGMal" 
       menuGroup:insert(CGMal); menuGroup.CGMal = CGMal 

       -- CGRegu positioning 
       CGRegu = display.newImageRect( imgDir.. "p86_cgregu.png", 2231, 52 ); 
       CGRegu.x = 1272; CGRegu.y = 1266; CGRegu.alpha = 1; CGRegu.oldAlpha = 1 
       CGRegu.oriX = CGRegu.x; CGRegu.oriY = CGRegu.y 
       CGRegu.name = "CGRegu" 
       menuGroup:insert(CGRegu); menuGroup.CGRegu = CGRegu 

       -- CGBien positioning 
       CGBien = display.newImageRect( imgDir.. "p86_cgbien.png", 1638, 52 ); 
       CGBien.x = 1264; CGBien.y = 1266; CGBien.alpha = 1; CGBien.oldAlpha = 1 
       CGBien.oriX = CGBien.x; CGBien.oriY = CGBien.y 
       CGBien.name = "CGBien" 
       menuGroup:insert(CGBien); menuGroup.CGBien = CGBien 

       -- CLTitulo positioning 
       CLTitulo = display.newImageRect( imgDir.. "p86_cltitulo.png", 454, 52 ); 
       CLTitulo.x = 1203; CLTitulo.y = 395; CLTitulo.alpha = 1; CLTitulo.oldAlpha = 1 
       CLTitulo.oriX = CLTitulo.x; CLTitulo.oriY = CLTitulo.y 
       CLTitulo.name = "CLTitulo" 
       menuGroup:insert(CLTitulo); menuGroup.CLTitulo = CLTitulo 

       -- CITitulo positioning 
       CITitulo = display.newImageRect( imgDir.. "p86_cititulo.png", 637, 52 ); 
       CITitulo.x = 1203; CITitulo.y = 796; CITitulo.alpha = 1; CITitulo.oldAlpha = 1 
       CITitulo.oriX = CITitulo.x; CITitulo.oriY = CITitulo.y 
       CITitulo.name = "CITitulo" 
       menuGroup:insert(CITitulo); menuGroup.CITitulo = CITitulo 

       -- kwkCLText positioning 
       kwkCLText = display.newText( CL, 1448, 364, native.systemFont, 48 ) 
       kwkCLText:setTextColor (0, 0, 0) 
       kwkCLText.oriX = kwkCLText.x; kwkCLText.oriY = kwkCLText.y 
       kwkCLText.alpha = 1; kwkCLText.oldAlpha = 1 
       menuGroup:insert(kwkCLText); menuGroup.kwkCLText = kwkCLText 

       -- kwkCIText positioning 
       kwkCIText = display.newText( CI, 1537, 769, native.systemFont, 48 ) 
       kwkCIText:setTextColor (0, 0, 0) 
       kwkCIText.oriX = kwkCIText.x; kwkCIText.oriY = kwkCIText.y 
       kwkCIText.alpha = 1; kwkCIText.oldAlpha = 1 
       menuGroup:insert(kwkCIText); menuGroup.kwkCIText = kwkCIText 

       -- kwkCGText positioning 
       kwkCGText = display.newText( CG, 1440, 1136, native.systemFont, 48 ) 
       kwkCGText:setTextColor (0, 0, 0) 
       kwkCGText.oriX = kwkCGText.x; kwkCGText.oriY = kwkCGText.y 
       kwkCGText.alpha = 1; kwkCGText.oldAlpha = 1 
       menuGroup:insert(kwkCGText); menuGroup.kwkCGText = kwkCGText 

       -- kwkruby positioning 
       kwkruby = display.newImageRect( imgDir.. "kwkruby.png", 224, 220 ); 
       kwkruby.x = 787; kwkruby.y = 764; kwkruby.alpha = 1; kwkruby.oldAlpha = 1 
       kwkruby.oriX = kwkruby.x; kwkruby.oriY = kwkruby.y 
       kwkruby.name = "kwkruby" 
       menuGroup:insert(kwkruby); menuGroup.kwkruby = kwkruby 

       -- kwkDiamante positioning 
       kwkDiamante = display.newImageRect( imgDir.. "kwkdiamante.png", 154, 105 ); 
       kwkDiamante.x = 895; kwkDiamante.y = 1162; kwkDiamante.alpha = 1; kwkDiamante.oldAlpha = 1 
       kwkDiamante.oriX = kwkDiamante.x; kwkDiamante.oriY = kwkDiamante.y 
       kwkDiamante.name = "kwkDiamante" 
       menuGroup:insert(kwkDiamante); menuGroup.kwkDiamante = kwkDiamante 

       -- kwkEsmeralda positioning 
       kwkEsmeralda = display.newImageRect( imgDir.. "kwkesmeralda.png", 109, 167 ); 
       kwkEsmeralda.x = 892; kwkEsmeralda.y = 360; kwkEsmeralda.alpha = 1; kwkEsmeralda.oldAlpha = 1 
       kwkEsmeralda.oriX = kwkEsmeralda.x; kwkEsmeralda.oriY = kwkEsmeralda.y 
       kwkEsmeralda.name = "kwkEsmeralda" 
       menuGroup:insert(kwkEsmeralda); menuGroup.kwkEsmeralda = kwkEsmeralda 

       -- CGTitulo positioning 
       CGTitulo = display.newImageRect( imgDir.. "p86_cgtitulo.png", 447, 52 ); 
       CGTitulo.x = 1203; CGTitulo.y = 1166; CGTitulo.alpha = 1; CGTitulo.oldAlpha = 1 
       CGTitulo.oriX = CGTitulo.x; CGTitulo.oriY = CGTitulo.y 
       CGTitulo.name = "CGTitulo" 
       menuGroup:insert(CGTitulo); menuGroup.CGTitulo = CGTitulo 

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
       --Mostrar evaluación de CL
if (CL < 75) then
	instantHide(CLRegu)
	instantHide(CLBien)
elseif(CL >= 75 and CL <= 130) then
	instantHide(CLMal)
	instantHide(CLBien)
else
	instantHide(CLMal)
	instantHide(CLRegu)
end

--Mostrar evaluación de CI
if (CI < 50) then
	instantHide(CIRegu)
	instantHide(CIBien)
elseif(CI >= 50 and CI <= 100) then
	instantHide(CIMal)
	instantHide(CIBien)
else
	instantHide(CIMal)
	instantHide(CIRegu)
end

--Mostrar evaluación de CG
if (CG < 20) then
	instantHide(CGRegu)
	instantHide(CGBien)
elseif(CG >= 20 and CG <= 40) then
	instantHide(CGMal)
	instantHide(CGBien)
else
	instantHide(CGMal)
	instantHide(CGRegu)
end 

       -- Button event listeners 
       local function onbtnCLEvent(event) 
          botonCL(btnCL) 
          return true 
       end 
       btnCL:addEventListener("tap", onbtnCLEvent ) 
       local function onbtnCIEvent(event) 
          botonCI(btnCI) 
          return true 
       end 
       btnCI:addEventListener("tap", onbtnCIEvent ) 
       local function onbtnCGEvent(event) 
          botonCG(btnCG) 
          return true 
       end 
       btnCG:addEventListener("tap", onbtnCGEvent ) 
       local function onkwkTextVolverEvent(event) 
          btnVolver(kwkTextVolver) 
          return true 
       end 
       kwkTextVolver:addEventListener("tap", onkwkTextVolverEvent ) 

       -- Button functions 
       function botonCL(self) 
            local myClosure_switch = function() 
                dispose(); director:changeScene( "page_87", "fade" ) 
            end 
            timerStash.newTimer_154 = timer.performWithDelay(0, myClosure_switch, 1) 
       end 

       function botonCI(self) 
            local myClosure_switch = function() 
                dispose(); director:changeScene( "page_88", "fade" ) 
            end 
            timerStash.newTimer_161 = timer.performWithDelay(0, myClosure_switch, 1) 
       end 

       function botonCG(self) 
            local myClosure_switch = function() 
                dispose(); director:changeScene( "page_89", "fade" ) 
            end 
            timerStash.newTimer_168 = timer.performWithDelay(0, myClosure_switch, 1) 
       end 

       function btnVolver(self) 
            local myClosure_switch = function() 
                dispose(); director:changeScene( "page_1", "fade" ) 
            end 
            timerStash.newTimer_174 = timer.performWithDelay(0, myClosure_switch, 1) 
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
