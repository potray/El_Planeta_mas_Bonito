-- Code created by Kwik - Copyright: kwiksher.com 
-- Version: 2.7.6b 
module(..., package.seeall) 

function new() 
    local numPages = 26 
    local menuGroup = display.newGroup() 
    local dispose 
    local _W = display.contentWidth; 
    local _H = display.contentHeight; 

    local drawScreen = function() 

       local curPage = 1 
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
       local btnTijeras
       local btnBiberon
       local btnNextPage

       -- Action names 
       local hideBiberon 
       local hideTijeras 

       -- Layer names 
       local kwkFondo1  
       local kwkBiberon  
       local kwkTijeras  
       local Texto  
       local kwkBebe  
       local kwkHija_casa  
       local kwkMama_casa  
       local kwkRect2  
       local kwkRect1  
       local kwkCLText  
       local kwkComodinText  
       local kwkCIText  
       local kwkCGText  
       local kwkDiamante  
       local kwkEsmeralda  
       local kwkRubi  
       local kwkMedalla  
       local kwkNavnext  

       -- Added variables before layers render 
       _G.hasBiberon = false --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("hasBiberon") ~= nil then  
          _G.hasBiberon = kwkVarCheck("hasBiberon") 
       end  
       _G.hasTijeras = false --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("hasTijeras") ~= nil then  
          _G.hasTijeras = kwkVarCheck("hasTijeras") 
       end  
       _G.CI2 = 0 --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("CI2") ~= nil then  
          _G.CI2 = kwkVarCheck("CI2") 
       end  
       _G.CI3 = 0 --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("CI3") ~= nil then  
          _G.CI3 = kwkVarCheck("CI3") 
       end  
       _G.CI4 = 0 --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("CI4") ~= nil then  
          _G.CI4 = kwkVarCheck("CI4") 
       end  
       _G.CI5 = 0 --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("CI5") ~= nil then  
          _G.CI5 = kwkVarCheck("CI5") 
       end  
       _G.CG8 = 0 --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("CG8") ~= nil then  
          _G.CG8 = kwkVarCheck("CG8") 
       end  
       _G.CG1 = 0 --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("CG1") ~= nil then  
          _G.CG1 = kwkVarCheck("CG1") 
       end  
       _G.CG2 = 0 --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("CG2") ~= nil then  
          _G.CG2 = kwkVarCheck("CG2") 
       end  
       _G.comodin = 0 --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("comodin") ~= nil then  
          _G.comodin = kwkVarCheck("comodin") 
       end  
       _G.CL = 0 --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("CL") ~= nil then  
          _G.CL = kwkVarCheck("CL") 
       end  
       _G.CL1 = 0 --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("CL1") ~= nil then  
          _G.CL1 = kwkVarCheck("CL1") 
       end  
       _G.CL2 = 0 --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("CL2") ~= nil then  
          _G.CL2 = kwkVarCheck("CL2") 
       end  
       _G.CL3 = 0 --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("CL3") ~= nil then  
          _G.CL3 = kwkVarCheck("CL3") 
       end  
       _G.CL5 = 0 --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("CL5") ~= nil then  
          _G.CL5 = kwkVarCheck("CL5") 
       end  

       -- (TOP) External code will render here 
       local doIt = true;

if (doIt) then

	saveKwikVars({"hasBiberon",false}) 
	saveKwikVars({"hasTijeras",false}) 
	saveKwikVars({"hasRosa",false}) 
	saveKwikVars({"hasChanclaVerde", false})
	saveKwikVars({"hasErizo", false})
	saveKwikVars({"hasBotaAbeja", false})

	saveKwikVars({"CL1", 0})
	saveKwikVars({"CL2", 0})
	saveKwikVars({"CL3", 0})
	saveKwikVars({"CL5", 0})

	saveKwikVars({"CI2", 0})
	saveKwikVars({"CI3", 0})
	saveKwikVars({"CI4", 0})
	saveKwikVars({"CI5", 0})

	saveKwikVars({"CG1", 0})
	saveKwikVars({"CG2", 0})
	saveKwikVars({"CG8", 0})

	print("Patata!!!")

	saveKwikVars({"comodin", 0})
	saveKwikVars({"CL", 16})
	saveKwikVars({"CI", 0})
	saveKwikVars({"CG", 0})

	saveKwikVars({"Fav01Completed", false})

end 
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
print ("Loaded CL = "..CL)
local comodin = kwkVarCheck("comodin") 

       -- kwkFondo1 positioning 
       kwkFondo1 = display.newImageRect( imgDir.. "kwkfondo1.jpg", 2560, 1598 ); 
       kwkFondo1.x = 1280; kwkFondo1.y = 800; kwkFondo1.alpha = 1; kwkFondo1.oldAlpha = 1 
       kwkFondo1.oriX = kwkFondo1.x; kwkFondo1.oriY = kwkFondo1.y 
       kwkFondo1.name = "kwkFondo1" 
       menuGroup:insert(1,kwkFondo1); menuGroup.kwkFondo1 = kwkFondo1 

       -- kwkBiberon positioning 
       kwkBiberon = display.newImageRect( imgDir.. "kwkbiberon.png", 64, 158 ); 
       kwkBiberon.x = 2272; kwkBiberon.y = 388; kwkBiberon.alpha = 1; kwkBiberon.oldAlpha = 1 
       kwkBiberon.oriX = kwkBiberon.x; kwkBiberon.oriY = kwkBiberon.y 
       kwkBiberon.name = "kwkBiberon" 
       menuGroup:insert(kwkBiberon); menuGroup.kwkBiberon = kwkBiberon 

       -- kwkTijeras positioning 
       kwkTijeras = display.newImageRect( imgDir.. "kwktijeras.png", 95, 262 ); 
       kwkTijeras.x = 1135; kwkTijeras.y = 309; kwkTijeras.alpha = 1; kwkTijeras.oldAlpha = 1 
       kwkTijeras.oriX = kwkTijeras.x; kwkTijeras.oriY = kwkTijeras.y 
       kwkTijeras.name = "kwkTijeras" 
       menuGroup:insert(kwkTijeras); menuGroup.kwkTijeras = kwkTijeras 

       -- Texto positioning 
       Texto = display.newImageRect( imgDir.. "p1_texto.png", 1311, 135 ); 
       Texto.x = 1274; Texto.y = 114; Texto.alpha = 1; Texto.oldAlpha = 1 
       Texto.oriX = Texto.x; Texto.oriY = Texto.y 
       Texto.name = "Texto" 
       menuGroup:insert(Texto); menuGroup.Texto = Texto 

       -- kwkBebe positioning 
       kwkBebe = display.newImageRect( imgDir.. "kwkbebe.png", 378, 543 ); 
       kwkBebe.x = 1646; kwkBebe.y = 1219; kwkBebe.alpha = 1; kwkBebe.oldAlpha = 1 
       kwkBebe.oriX = kwkBebe.x; kwkBebe.oriY = kwkBebe.y 
       kwkBebe.name = "kwkBebe" 
       menuGroup:insert(kwkBebe); menuGroup.kwkBebe = kwkBebe 

       -- kwkHija_casa positioning 
       kwkHija_casa = display.newImageRect( imgDir.. "kwkhija_casa.png", 476, 856 ); 
       kwkHija_casa.x = 684; kwkHija_casa.y = 1108; kwkHija_casa.alpha = 1; kwkHija_casa.oldAlpha = 1 
       kwkHija_casa.oriX = kwkHija_casa.x; kwkHija_casa.oriY = kwkHija_casa.y 
       kwkHija_casa.name = "kwkHija_casa" 
       menuGroup:insert(kwkHija_casa); menuGroup.kwkHija_casa = kwkHija_casa 

       -- kwkMama_casa positioning 
       kwkMama_casa = display.newImageRect( imgDir.. "kwkmama_casa.png", 548, 1052 ); 
       kwkMama_casa.x = 1186; kwkMama_casa.y = 966; kwkMama_casa.alpha = 1; kwkMama_casa.oldAlpha = 1 
       kwkMama_casa.oriX = kwkMama_casa.x; kwkMama_casa.oriY = kwkMama_casa.y 
       kwkMama_casa.name = "kwkMama_casa" 
       menuGroup:insert(kwkMama_casa); menuGroup.kwkMama_casa = kwkMama_casa 

       -- kwkRect2 positioning 
       kwkRect2 = display.newImageRect( imgDir.. "kwkrect2.png", 523, 264 ); 
       kwkRect2.x = 2303; kwkRect2.y = 127; kwkRect2.alpha = 0.74901960784314; kwkRect2.oldAlpha = 0.74901960784314 
       kwkRect2.oriX = kwkRect2.x; kwkRect2.oriY = kwkRect2.y 
       kwkRect2.name = "kwkRect2" 
       menuGroup:insert(kwkRect2); menuGroup.kwkRect2 = kwkRect2 

       -- kwkRect1 positioning 
       kwkRect1 = display.newImageRect( imgDir.. "kwkrect1.png", 522, 265 ); 
       kwkRect1.x = 256; kwkRect1.y = 128; kwkRect1.alpha = 0.74901960784314; kwkRect1.oldAlpha = 0.74901960784314 
       kwkRect1.oriX = kwkRect1.x; kwkRect1.oriY = kwkRect1.y 
       kwkRect1.name = "kwkRect1" 
       menuGroup:insert(kwkRect1); menuGroup.kwkRect1 = kwkRect1 

       -- kwkCLText positioning 
       kwkCLText = display.newText( CL, 2185, 97, native.systemFont, 48 ) 
       kwkCLText:setTextColor (0, 0, 0) 
       kwkCLText.oriX = kwkCLText.x; kwkCLText.oriY = kwkCLText.y 
       kwkCLText.alpha = 1; kwkCLText.oldAlpha = 1 
       menuGroup:insert(kwkCLText); menuGroup.kwkCLText = kwkCLText 

       -- kwkComodinText positioning 
       kwkComodinText = display.newText( comodin, 2473, 97, native.systemFont, 48 ) 
       kwkComodinText:setTextColor (0, 0, 0) 
       kwkComodinText.oriX = kwkComodinText.x; kwkComodinText.oriY = kwkComodinText.y 
       kwkComodinText.alpha = 1; kwkComodinText.oldAlpha = 1 
       menuGroup:insert(kwkComodinText); menuGroup.kwkComodinText = kwkComodinText 

       -- kwkCIText positioning 
       kwkCIText = display.newText( CI, 425, 99, native.systemFont, 48 ) 
       kwkCIText:setTextColor (0, 0, 0) 
       kwkCIText.oriX = kwkCIText.x; kwkCIText.oriY = kwkCIText.y 
       kwkCIText.alpha = 1; kwkCIText.oldAlpha = 1 
       menuGroup:insert(kwkCIText); menuGroup.kwkCIText = kwkCIText 

       -- kwkCGText positioning 
       kwkCGText = display.newText( CG, 169, 103, native.systemFont, 48 ) 
       kwkCGText:setTextColor (0, 0, 0) 
       kwkCGText.oriX = kwkCGText.x; kwkCGText.oriY = kwkCGText.y 
       kwkCGText.alpha = 1; kwkCGText.oldAlpha = 1 
       menuGroup:insert(kwkCGText); menuGroup.kwkCGText = kwkCGText 

       -- kwkDiamante positioning 
       kwkDiamante = display.newImageRect( imgDir.. "kwkdiamante.png", 154, 105 ); 
       kwkDiamante.x = 77; kwkDiamante.y = 125; kwkDiamante.alpha = 1; kwkDiamante.oldAlpha = 1 
       kwkDiamante.oriX = kwkDiamante.x; kwkDiamante.oriY = kwkDiamante.y 
       kwkDiamante.name = "kwkDiamante" 
       menuGroup:insert(kwkDiamante); menuGroup.kwkDiamante = kwkDiamante 

       -- kwkEsmeralda positioning 
       kwkEsmeralda = display.newImageRect( imgDir.. "kwkesmeralda.png", 109, 167 ); 
       kwkEsmeralda.x = 2102; kwkEsmeralda.y = 114; kwkEsmeralda.alpha = 1; kwkEsmeralda.oldAlpha = 1 
       kwkEsmeralda.oriX = kwkEsmeralda.x; kwkEsmeralda.oriY = kwkEsmeralda.y 
       kwkEsmeralda.name = "kwkEsmeralda" 
       menuGroup:insert(kwkEsmeralda); menuGroup.kwkEsmeralda = kwkEsmeralda 

       -- kwkRubi positioning 
       kwkRubi = display.newImageRect( imgDir.. "kwkrubi.png", 123, 180 ); 
       kwkRubi.x = 340; kwkRubi.y = 114; kwkRubi.alpha = 1; kwkRubi.oldAlpha = 1 
       kwkRubi.oriX = kwkRubi.x; kwkRubi.oriY = kwkRubi.y 
       kwkRubi.name = "kwkRubi" 
       menuGroup:insert(kwkRubi); menuGroup.kwkRubi = kwkRubi 

       -- kwkMedalla positioning 
       kwkMedalla = display.newImageRect( imgDir.. "kwkmedalla.png", 176, 199 ); 
       kwkMedalla.x = 2392; kwkMedalla.y = 113; kwkMedalla.alpha = 1; kwkMedalla.oldAlpha = 1 
       kwkMedalla.oriX = kwkMedalla.x; kwkMedalla.oriY = kwkMedalla.y 
       kwkMedalla.name = "kwkMedalla" 
       menuGroup:insert(kwkMedalla); menuGroup.kwkMedalla = kwkMedalla 

       -- kwkNavnext positioning 
       kwkNavnext = display.newImageRect( imgDir.. "kwknavnext.png", 106, 361 ); 
       kwkNavnext.x = 2445; kwkNavnext.y = 767; kwkNavnext.alpha = 1; kwkNavnext.oldAlpha = 1 
       kwkNavnext.oriX = kwkNavnext.x; kwkNavnext.oriY = kwkNavnext.y 
       kwkNavnext.name = "kwkNavnext" 
       menuGroup:insert(kwkNavnext); menuGroup.kwkNavnext = kwkNavnext 
 
       -- Group(s) creation 

       -- Added variables after layers render 
       _G.CG = 0 --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("CG") ~= nil then  
          _G.CG = kwkVarCheck("CG") 
       end  
       _G.CI = 0 --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("CI") ~= nil then  
          _G.CI = kwkVarCheck("CI") 
       end  

       -- (MIDDLE) External code will render here 
 
       -- Actions (functions) 
       function hideBiberon(event) 
         if (hasBiberon == true) then 
            transitionStash.newTransition_115 = transition.to( kwkBiberon, {alpha=0, time=100, delay=0}) 
         end 
       end 

       function hideTijeras(event) 
         if (hasTijeras == true) then 
            transitionStash.newTransition_116 = transition.to( kwkTijeras, {alpha=0, time=0, delay=0}) 
         end 
       end 

 
      --End Actions (functions) 

 
       -- Timers 
       timerStash.kwkBiberonTimer = timer.performWithDelay( 0, hideBiberon, 1 ) 
       timerStash.kwkTijerasTimer = timer.performWithDelay( 0, hideTijeras, 1 ) 

       -- Button event listeners 
       local function onkwkTijerasEvent(event) 
          btnTijeras(kwkTijeras) 
          return true 
       end 
       kwkTijeras:addEventListener("tap", onkwkTijerasEvent ) 
       local function onkwkBiberonEvent(event) 
          btnBiberon(kwkBiberon) 
          return true 
       end 
       kwkBiberon:addEventListener("tap", onkwkBiberonEvent ) 
       local function onkwkNavnextEvent(event) 
          btnNextPage(kwkNavnext) 
          return true 
       end 
       kwkNavnext:addEventListener("tap", onkwkNavnextEvent ) 

       -- Button functions 
       function btnTijeras(self) 
           _G.hasTijeras = true
          saveKwikVars({"hasTijeras",true}) 
           hideTijeras() 
       end 

       function btnBiberon(self) 
           _G.hasBiberon = true
          saveKwikVars({"hasBiberon",true}) 
           hideBiberon() 
       end 

       function btnNextPage(self) 
            local myClosure_switch = function() 
                dispose(); director:changeScene( "page_2", "moveFromRight" ) 
            end 
            timerStash.newTimer_187 = timer.performWithDelay(0, myClosure_switch, 1) 
       end 


       -- do not swipe this page 

       dispose = function(event) 
          cancelAllTimers(); cancelAllTransitions() 
          saveKwikVars({"hasBiberon",hasBiberon}) 
          saveKwikVars({"hasTijeras",hasTijeras}) 
          saveKwikVars({"CI2",CI2}) 
          saveKwikVars({"CI3",CI3}) 
          saveKwikVars({"CI4",CI4}) 
          saveKwikVars({"CI5",CI5}) 
          saveKwikVars({"CG8",CG8}) 
          saveKwikVars({"CG1",CG1}) 
          saveKwikVars({"CG2",CG2}) 
          saveKwikVars({"comodin",comodin}) 
          saveKwikVars({"CG",CG}) 
          saveKwikVars({"CI",CI}) 
          saveKwikVars({"CL",CL}) 
          saveKwikVars({"CL1",CL1}) 
          saveKwikVars({"CL2",CL2}) 
          saveKwikVars({"CL3",CL3}) 
          saveKwikVars({"CL5",CL5}) 
       end 

       -- (BOTTOM) External code will render here 
       local newCL
local newCI
local newCG

local uCL1 = kwkVarCheck("CL1")
local uCL2 = kwkVarCheck("CL2")
local uCL3 = kwkVarCheck("CL3")
local uCL5 = kwkVarCheck("CL5")

print("UCL5 = "..uCL5)


local uCI2 = kwkVarCheck("CI2")
local uCI3 = kwkVarCheck("CI3")
local uCI4 = kwkVarCheck("CI4")
local uCI5 = kwkVarCheck("CI5")


local uCG1 = kwkVarCheck("CG1")
local uCG2 = kwkVarCheck("CG2")
local uCG8 = kwkVarCheck("CG8")

newCL = uCL1 + uCL2 + uCL3 + uCL5
newCI = uCI2 + uCI3 + uCI4 + uCI5
newCG = uCG1 + uCG2 + uCG8

print("CL = "..newCL..", CI = "..newCI..", CG = "..newCG)

saveKwikVars({"CL", newCL})
saveKwikVars({"CI", newCI})
saveKwikVars({"CG", newCG})

local a = kwkVarCheck("CL")
local s = kwkVarCheck("CI")
local d = kwkVarCheck("CG")

print ("AHora todo vale: "..a.." "..s.." "..d) 


    end 
    drawScreen() 

    return menuGroup 
end 
