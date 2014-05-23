-- Code created by Kwik - Copyright: kwiksher.com 
-- Version: 2.7.6b 
module(..., package.seeall) 

function new() 
    local numPages = 34 
    local menuGroup = display.newGroup() 
    local dispose 
    local _W = display.contentWidth; 
    local _H = display.contentHeight; 

    local drawScreen = function() 

       local curPage = 7 
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
       local btnBar
       local btnRestaurante
       local btnChurreria

       -- Action names 
       local Fallar 
       local Acertar 
       local hideStuff 

       -- Layer names 
       local Fondo  
       local Burbuja_vacia  
       local Cabeza_mama_sor  
       local Cabeza_hija_sor  
       local Cabeza_bebe_sor  
       local Bar  
       local kwkRect2  
       local kwkRect1  
       local kwkCLText  
       local kwkComodinText  
       local kwkCIText  
       local kwkCGText  
       local kwkDiamante  
       local kwkEsmeralda  
       local kwkruby  
       local kwkMedalla  
       local Restaurante  
       local Churreria  
       local Fallo  
       local Acierto  
       local Text  
       local Ayuda  

       -- Added variables before layers render 
       _G.Fav01Completed = false --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("Fav01Completed") ~= nil then  
          _G.Fav01Completed = kwkVarCheck("Fav01Completed") 
       end  

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
local Fav01Completed = kwkVarCheck("Fav01Completed")
local Fav02Completed = kwkVarCheck("Fav02Completed") 
       local addCL1 = 5
local addCL3 = 5
local addCI2 = 5
local addCI4 = 5 

       -- Fondo positioning 
       Fondo = display.newImageRect( imgDir.. "p7_fondo.png", 2560, 1600 ); 
       Fondo.x = 1280; Fondo.y = 800; Fondo.alpha = 1; Fondo.oldAlpha = 1 
       Fondo.oriX = Fondo.x; Fondo.oriY = Fondo.y 
       Fondo.name = "Fondo" 
       menuGroup:insert(1,Fondo); menuGroup.Fondo = Fondo 

       -- Burbuja_vacia positioning 
       Burbuja_vacia = display.newImageRect( imgDir.. "p7_burbuja_vacia.png", 692, 692 ); 
       Burbuja_vacia.x = 1269; Burbuja_vacia.y = 512; Burbuja_vacia.alpha = 1; Burbuja_vacia.oldAlpha = 1 
       Burbuja_vacia.oriX = Burbuja_vacia.x; Burbuja_vacia.oriY = Burbuja_vacia.y 
       Burbuja_vacia.name = "Burbuja_vacia" 
       menuGroup:insert(Burbuja_vacia); menuGroup.Burbuja_vacia = Burbuja_vacia 

       -- Cabeza_mama_sor positioning 
       Cabeza_mama_sor = display.newImageRect( imgDir.. "p7_cabeza_mama_sor.png", 311, 332 ); 
       Cabeza_mama_sor.x = 1268; Cabeza_mama_sor.y = 356; Cabeza_mama_sor.alpha = 1; Cabeza_mama_sor.oldAlpha = 1 
       Cabeza_mama_sor.oriX = Cabeza_mama_sor.x; Cabeza_mama_sor.oriY = Cabeza_mama_sor.y 
       Cabeza_mama_sor.name = "Cabeza_mama_sor" 
       menuGroup:insert(Cabeza_mama_sor); menuGroup.Cabeza_mama_sor = Cabeza_mama_sor 

       -- Cabeza_hija_sor positioning 
       Cabeza_hija_sor = display.newImageRect( imgDir.. "p7_cabeza_hija_sor.png", 207, 254 ); 
       Cabeza_hija_sor.x = 1112; Cabeza_hija_sor.y = 650; Cabeza_hija_sor.alpha = 1; Cabeza_hija_sor.oldAlpha = 1 
       Cabeza_hija_sor.oriX = Cabeza_hija_sor.x; Cabeza_hija_sor.oriY = Cabeza_hija_sor.y 
       Cabeza_hija_sor.name = "Cabeza_hija_sor" 
       menuGroup:insert(Cabeza_hija_sor); menuGroup.Cabeza_hija_sor = Cabeza_hija_sor 

       -- Cabeza_bebe_sor positioning 
       Cabeza_bebe_sor = display.newImageRect( imgDir.. "p7_cabeza_bebe_sor.png", 232, 185 ); 
       Cabeza_bebe_sor.x = 1386; Cabeza_bebe_sor.y = 618; Cabeza_bebe_sor.alpha = 1; Cabeza_bebe_sor.oldAlpha = 1 
       Cabeza_bebe_sor.oriX = Cabeza_bebe_sor.x; Cabeza_bebe_sor.oriY = Cabeza_bebe_sor.y 
       Cabeza_bebe_sor.name = "Cabeza_bebe_sor" 
       menuGroup:insert(Cabeza_bebe_sor); menuGroup.Cabeza_bebe_sor = Cabeza_bebe_sor 

       -- Bar positioning 
       Bar = display.newImageRect( imgDir.. "p7_bar.png", 620, 576 ); 
       Bar.x = 566; Bar.y = 1312; Bar.alpha = 1; Bar.oldAlpha = 1 
       Bar.oriX = Bar.x; Bar.oriY = Bar.y 
       Bar.name = "Bar" 
       menuGroup:insert(Bar); menuGroup.Bar = Bar 

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

       -- kwkruby positioning 
       kwkruby = display.newImageRect( imgDir.. "kwkruby.png", 224, 220 ); 
       kwkruby.x = 332; kwkruby.y = 128; kwkruby.alpha = 1; kwkruby.oldAlpha = 1 
       kwkruby.oriX = kwkruby.x; kwkruby.oriY = kwkruby.y 
       kwkruby.name = "kwkruby" 
       menuGroup:insert(kwkruby); menuGroup.kwkruby = kwkruby 

       -- kwkMedalla positioning 
       kwkMedalla = display.newImageRect( imgDir.. "kwkmedalla.png", 176, 199 ); 
       kwkMedalla.x = 2392; kwkMedalla.y = 113; kwkMedalla.alpha = 1; kwkMedalla.oldAlpha = 1 
       kwkMedalla.oriX = kwkMedalla.x; kwkMedalla.oriY = kwkMedalla.y 
       kwkMedalla.name = "kwkMedalla" 
       menuGroup:insert(kwkMedalla); menuGroup.kwkMedalla = kwkMedalla 

       -- Restaurante positioning 
       Restaurante = display.newImageRect( imgDir.. "p7_restaurante.png", 623, 579 ); 
       Restaurante.x = 1275; Restaurante.y = 1310; Restaurante.alpha = 1; Restaurante.oldAlpha = 1 
       Restaurante.oriX = Restaurante.x; Restaurante.oriY = Restaurante.y 
       Restaurante.name = "Restaurante" 
       menuGroup:insert(Restaurante); menuGroup.Restaurante = Restaurante 

       -- Churreria positioning 
       Churreria = display.newImageRect( imgDir.. "p7_churreria.png", 624, 578 ); 
       Churreria.x = 1992; Churreria.y = 1313; Churreria.alpha = 1; Churreria.oldAlpha = 1 
       Churreria.oriX = Churreria.x; Churreria.oriY = Churreria.y 
       Churreria.name = "Churreria" 
       menuGroup:insert(Churreria); menuGroup.Churreria = Churreria 

       -- Fallo positioning 
       Fallo = display.newImageRect( imgDir.. "p7_fallo.png", 852, 39 ); 
       Fallo.x = 1280; Fallo.y = 113; Fallo.alpha = 1; Fallo.oldAlpha = 1 
       Fallo.oriX = Fallo.x; Fallo.oriY = Fallo.y 
       Fallo.name = "Fallo" 
       menuGroup:insert(Fallo); menuGroup.Fallo = Fallo 

       -- Acierto positioning 
       Acierto = display.newImageRect( imgDir.. "p7_acierto.png", 608, 39 ); 
       Acierto.x = 1280; Acierto.y = 116; Acierto.alpha = 1; Acierto.oldAlpha = 1 
       Acierto.oriX = Acierto.x; Acierto.oriY = Acierto.y 
       Acierto.name = "Acierto" 
       menuGroup:insert(Acierto); menuGroup.Acierto = Acierto 

       -- Text positioning 
       Text = display.newImageRect( imgDir.. "p7_text.png", 1206, 82 ); 
       Text.x = 1280; Text.y = 120; Text.alpha = 1; Text.oldAlpha = 1 
       Text.oriX = Text.x; Text.oriY = Text.y 
       Text.name = "Text" 
       menuGroup:insert(Text); menuGroup.Text = Text 

       -- Ayuda positioning 
       Ayuda = display.newImageRect( imgDir.. "p7_ayuda.png", 1480, 40 ); 
       Ayuda.x = 1306; Ayuda.y = 961; Ayuda.alpha = 1; Ayuda.oldAlpha = 1 
       Ayuda.oriX = Ayuda.x; Ayuda.oriY = Ayuda.y 
       Ayuda.name = "Ayuda" 
       menuGroup:insert(Ayuda); menuGroup.Ayuda = Ayuda 
 
       -- Group(s) creation 

       -- (MIDDLE) External code will render here 
 
       -- Actions (functions) 
       function Fallar(event) 
            transitionStash.newTransition_561 = transition.to( Text, {alpha=0, time=1000, delay=0}) 
            transitionStash.newTransition_561 = transition.to( Fallo, {alpha=Fallo.oldAlpha, time=1000, delay=0}) 
           --External code 
           addCL1 = addCL1 - 2

if (addCL1 < 0) then
	addCL1 = 0
end 
       end 

       function Acertar(event) 
            transitionStash.newTransition_562 = transition.to( Acierto, {alpha=Acierto.oldAlpha, time=1000, delay=0}) 
            transitionStash.newTransition_562 = transition.to( Fallo, {alpha=0, time=1000, delay=0}) 
            transitionStash.newTransition_562 = transition.to( Text, {alpha=0, time=1000, delay=0}) 
           --External code 
           local currentCL1 = kwkVarCheck("CL1")
local currentCL3 = kwkVarCheck("CL3")
local currentCI2 = kwkVarCheck("CI2")
local currentCI4 = kwkVarCheck("CI4")

saveKwikVars({"CL1", addCL1 + currentCL1})
saveKwikVars({"CL3", addCL3 + currentCL3})
saveKwikVars({"CI2", addCI2 + currentCI2})
saveKwikVars({"CI4", addCI4 + currentCI4})

local p1 = kwkVarCheck("CL1")
local p2 = kwkVarCheck("CL3")
local p3 = kwkVarCheck("CI2")
local p4 = kwkVarCheck("CI4")

print (p1.." "..p2.." "..p3.." "..p4) 
           _G.Fav01Completed = true
          saveKwikVars({"Fav01Completed",true}) 
            local myClosure_switch = function() 
                dispose(); director:changeScene( "page_8", "moveFromRight" ) 
            end 
            timerStash.newTimer_571 = timer.performWithDelay(2000, myClosure_switch, 1) 
           --External code 
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

       function hideStuff(event) 
            transitionStash.newTransition_572 = transition.to( Acierto, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_573 = transition.to( Fallo, {alpha=0, time=0, delay=0}) 
       end 

 
      --End Actions (functions) 

 
       -- Timers 
       timerStash.timerHideStuff = timer.performWithDelay( 0, hideStuff, 1 ) 

       -- Button event listeners 
       local function onBarEvent(event) 
          btnBar(Bar) 
          return true 
       end 
       Bar:addEventListener("tap", onBarEvent ) 
       local function onRestauranteEvent(event) 
          btnRestaurante(Restaurante) 
          return true 
       end 
       Restaurante:addEventListener("tap", onRestauranteEvent ) 
       local function onChurreriaEvent(event) 
          btnChurreria(Churreria) 
          return true 
       end 
       Churreria:addEventListener("tap", onChurreriaEvent ) 

       -- Button functions 
       function btnBar(self) 
           Fallar() 
       end 

       function btnRestaurante(self) 
           Fallar() 
       end 

       function btnChurreria(self) 
           Acertar() 
       end 

 
       -- Page properties 
       menuGroup.xScale = 1; menuGroup.yScale = 1; 
       menuGroup.alpha = 1; 
 

       -- do not swipe this page 

       dispose = function(event) 
          cancelAllTimers(); cancelAllTransitions() 
       end 

       -- (BOTTOM) External code will render here 
       dispose = function()

end 


    end 
    drawScreen() 

    return menuGroup 
end 
