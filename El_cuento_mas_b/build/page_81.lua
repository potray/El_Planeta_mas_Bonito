-- Code created by Kwik - Copyright: kwiksher.com 
-- Version: 2.7.6b 
module(..., package.seeall) 
local widget = require("widget") 

function new() 
    local numPages = 85 
    local menuGroup = display.newGroup() 
    local dispose 
    local _W = display.contentWidth; 
    local _H = display.contentHeight; 

    -- Audio callings 
    local narracion_page6 =  audio.loadStream( audioDir.."narracion_page64.mp3") 


    local drawScreen = function() 

       local curPage = 81 

       Navigation.new("page", { backColor = {125, 125, 125}, anim=1, timer=1,  totPages = numPages, curPage = curPage, thumbW = 200, thumbH = 125, alpha = 0, imageDir = imgDir, dire = "bottom", audio={{ 1, "narracion_page6"},} } ) 
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
       local btnInventario
       local btnNextPage
       local btnCerrarInvent
       local btnPrevPage

       -- Action names 
       local hideInventory 
       local showInventory 
       local AudioAction 

       -- Layer names 
       local kwkFondo1  
       local Texto  
       local kwkHija_gafas  
       local kwkMama_gafas  
       local kwkBebe_gafas  
       local C3  
       local C2  
       local C1  
       local kwkInvDestacado  
       local kwkMochila  
       local kwkRect2  
       local kwkRect1  
       local kwkCLText  
       local kwkComodinText  
       local kwkCIText  
       local kwkCGText  
       local kwkDiamante  
       local kwkEsmeralda  
       local kwkruby  
       local kwkRectInv  
       local kwkInvBiberon  
       local kwkInvTijeras  
       local kwkInvRosa  
       local kwkInvErizo  
       local kwkInvMaquina  
       local kwkInvCelo  
       local kwkInvGuitarra  
       local kwkInvCola  
       local kwkInvCerrar  
       local kwkMedalla  
       local kwkNavnext  
       local kwkNavprev  

       -- Added variables before layers render 
       local InventoryShown = false --  

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
       local hasRosa = kwkVarCheck("hasRosa")
local hasTijeras = kwkVarCheck("hasTijeras")
local hasBiberon = kwkVarCheck("hasBiberon")
local hasGuitarra = kwkVarCheck("hasGuitarra")
local hasMaquina = kwkVarCheck("hasMaquina")
local hasErizo = kwkVarCheck("hasErizo")
local hasCelo = kwkVarCheck("hasCelo")
local hasCola = kwkVarCheck("hasCola") 

       -- kwkFondo1 positioning 
       kwkFondo1 = display.newImageRect( imgDir.. "kwkfondo1.jpg", 2560, 1598 ); 
       kwkFondo1.x = 1280; kwkFondo1.y = 800; kwkFondo1.alpha = 1; kwkFondo1.oldAlpha = 1 
       kwkFondo1.oriX = kwkFondo1.x; kwkFondo1.oriY = kwkFondo1.y 
       kwkFondo1.name = "kwkFondo1" 
       menuGroup:insert(1,kwkFondo1); menuGroup.kwkFondo1 = kwkFondo1 

       -- Texto positioning 
       Texto = display.newImageRect( imgDir.. "p81_texto.png", 1492, 224 ); 
       Texto.x = 1274; Texto.y = 132; Texto.alpha = 1; Texto.oldAlpha = 1 
       Texto.oriX = Texto.x; Texto.oriY = Texto.y 
       Texto.name = "Texto" 
       menuGroup:insert(Texto); menuGroup.Texto = Texto 

       -- kwkHija_gafas positioning 
       kwkHija_gafas = display.newImageRect( imgDir.. "kwkhija_gafas.png", 448, 816 ); 
       kwkHija_gafas.x = 1129; kwkHija_gafas.y = 936; kwkHija_gafas.alpha = 1; kwkHija_gafas.oldAlpha = 1 
       kwkHija_gafas.oriX = kwkHija_gafas.x; kwkHija_gafas.oriY = kwkHija_gafas.y 
       kwkHija_gafas.name = "kwkHija_gafas" 
       menuGroup:insert(kwkHija_gafas); menuGroup.kwkHija_gafas = kwkHija_gafas 

       -- kwkMama_gafas positioning 
       kwkMama_gafas = display.newImageRect( imgDir.. "kwkmama_gafas.png", 518, 994 ); 
       kwkMama_gafas.x = 1555; kwkMama_gafas.y = 976; kwkMama_gafas.alpha = 1; kwkMama_gafas.oldAlpha = 1 
       kwkMama_gafas.oriX = kwkMama_gafas.x; kwkMama_gafas.oriY = kwkMama_gafas.y 
       kwkMama_gafas.name = "kwkMama_gafas" 
       menuGroup:insert(kwkMama_gafas); menuGroup.kwkMama_gafas = kwkMama_gafas 

       -- kwkBebe_gafas positioning 
       kwkBebe_gafas = display.newImageRect( imgDir.. "kwkbebe_gafas.png", 382, 551 ); 
       kwkBebe_gafas.x = 1351; kwkBebe_gafas.y = 753; kwkBebe_gafas.alpha = 1; kwkBebe_gafas.oldAlpha = 1 
       kwkBebe_gafas.oriX = kwkBebe_gafas.x; kwkBebe_gafas.oriY = kwkBebe_gafas.y 
       kwkBebe_gafas.name = "kwkBebe_gafas" 
       menuGroup:insert(kwkBebe_gafas); menuGroup.kwkBebe_gafas = kwkBebe_gafas 

       -- C3 positioning 
       C3 = display.newImageRect( imgDir.. "p81_c3.png", 71, 71 ); 
       C3.x = 1164; C3.y = 796; C3.alpha = 1; C3.oldAlpha = 1 
       C3.oriX = C3.x; C3.oriY = C3.y 
       C3.name = "C3" 
       menuGroup:insert(C3); menuGroup.C3 = C3 

       -- C2 positioning 
       C2 = display.newImageRect( imgDir.. "p81_c2.png", 71, 71 ); 
       C2.x = 1392; C2.y = 722; C2.alpha = 1; C2.oldAlpha = 1 
       C2.oriX = C2.x; C2.oriY = C2.y 
       C2.name = "C2" 
       menuGroup:insert(C2); menuGroup.C2 = C2 

       -- C1 positioning 
       C1 = display.newImageRect( imgDir.. "p81_c1.png", 71, 71 ); 
       C1.x = 1593; C1.y = 757; C1.alpha = 1; C1.oldAlpha = 1 
       C1.oriX = C1.x; C1.oriY = C1.y 
       C1.name = "C1" 
       menuGroup:insert(C1); menuGroup.C1 = C1 

       -- kwkInvDestacado positioning 
       kwkInvDestacado = display.newImageRect( imgDir.. "kwkinvdestacado.png", 597, 599 ); 
       kwkInvDestacado.x = 147; kwkInvDestacado.y = 1452; kwkInvDestacado.alpha = 1; kwkInvDestacado.oldAlpha = 1 
       kwkInvDestacado.oriX = kwkInvDestacado.x; kwkInvDestacado.oriY = kwkInvDestacado.y 
       kwkInvDestacado.name = "kwkInvDestacado" 
       menuGroup:insert(kwkInvDestacado); menuGroup.kwkInvDestacado = kwkInvDestacado 

       -- kwkMochila positioning 

       local function onkwkMochilaEvent() 
          btnInventario() 
       end 
       kwkMochila = widget.newButton { 
          id = "kwkMochila", 
          defaultFile = imgDir.."kwkmochila.png", 
          overFile = imgDir.."kwkmochila.png", 
          width = 216, height = 263, 
          onRelease = onkwkMochilaEvent 
       } 
       kwkMochila.x = 146; kwkMochila.y = 1444 
       kwkMochila.oriX = 146; kwkMochila.oriY = 1444 
       kwkMochila.alpha = 1; kwkMochila.oldAlpha = 1 
       kwkMochila.name = "kwkMochila" 
       menuGroup:insert(kwkMochila); menuGroup.kwkMochila = kwkMochila 

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

       -- kwkRectInv positioning 
       kwkRectInv = display.newImageRect( imgDir.. "kwkrectinv.png", 1028, 517 ); 
       kwkRectInv.x = 1278; kwkRectInv.y = 1276; kwkRectInv.alpha = 1; kwkRectInv.oldAlpha = 1 
       kwkRectInv.oriX = kwkRectInv.x; kwkRectInv.oriY = kwkRectInv.y 
       kwkRectInv.name = "kwkRectInv" 
       menuGroup:insert(kwkRectInv); menuGroup.kwkRectInv = kwkRectInv 

       -- kwkInvBiberon positioning 
       kwkInvBiberon = display.newImageRect( imgDir.. "kwkinvbiberon.png", 103, 256 ); 
       kwkInvBiberon.x = 896; kwkInvBiberon.y = 1408; kwkInvBiberon.alpha = 1; kwkInvBiberon.oldAlpha = 1 
       kwkInvBiberon.oriX = kwkInvBiberon.x; kwkInvBiberon.oriY = kwkInvBiberon.y 
       kwkInvBiberon.name = "kwkInvBiberon" 
       menuGroup:insert(kwkInvBiberon); menuGroup.kwkInvBiberon = kwkInvBiberon 

       -- kwkInvTijeras positioning 
       kwkInvTijeras = display.newImageRect( imgDir.. "kwkinvtijeras.png", 88, 257 ); 
       kwkInvTijeras.x = 1083; kwkInvTijeras.y = 1147; kwkInvTijeras.alpha = 1; kwkInvTijeras.oldAlpha = 1 
       kwkInvTijeras.oriX = kwkInvTijeras.x; kwkInvTijeras.oriY = kwkInvTijeras.y 
       kwkInvTijeras.name = "kwkInvTijeras" 
       menuGroup:insert(kwkInvTijeras); menuGroup.kwkInvTijeras = kwkInvTijeras 

       -- kwkInvRosa positioning 
       kwkInvRosa = display.newImageRect( imgDir.. "kwkinvrosa.png", 88, 255 ); 
       kwkInvRosa.x = 1236; kwkInvRosa.y = 1152; kwkInvRosa.alpha = 1; kwkInvRosa.oldAlpha = 1 
       kwkInvRosa.oriX = kwkInvRosa.x; kwkInvRosa.oriY = kwkInvRosa.y 
       kwkInvRosa.name = "kwkInvRosa" 
       menuGroup:insert(kwkInvRosa); menuGroup.kwkInvRosa = kwkInvRosa 

       -- kwkInvErizo positioning 
       kwkInvErizo = display.newImageRect( imgDir.. "kwkinverizo.png", 403, 254 ); 
       kwkInvErizo.x = 1590; kwkInvErizo.y = 1149; kwkInvErizo.alpha = 1; kwkInvErizo.oldAlpha = 1 
       kwkInvErizo.oriX = kwkInvErizo.x; kwkInvErizo.oriY = kwkInvErizo.y 
       kwkInvErizo.name = "kwkInvErizo" 
       menuGroup:insert(kwkInvErizo); menuGroup.kwkInvErizo = kwkInvErizo 

       -- kwkInvMaquina positioning 
       kwkInvMaquina = display.newImageRect( imgDir.. "kwkinvmaquina.png", 204, 258 ); 
       kwkInvMaquina.x = 897; kwkInvMaquina.y = 1147; kwkInvMaquina.alpha = 1; kwkInvMaquina.oldAlpha = 1 
       kwkInvMaquina.oriX = kwkInvMaquina.x; kwkInvMaquina.oriY = kwkInvMaquina.y 
       kwkInvMaquina.name = "kwkInvMaquina" 
       menuGroup:insert(kwkInvMaquina); menuGroup.kwkInvMaquina = kwkInvMaquina 

       -- kwkInvCelo positioning 
       kwkInvCelo = display.newImageRect( imgDir.. "kwkinvcelo.png", 271, 253 ); 
       kwkInvCelo.x = 1159; kwkInvCelo.y = 1409; kwkInvCelo.alpha = 1; kwkInvCelo.oldAlpha = 1 
       kwkInvCelo.oriX = kwkInvCelo.x; kwkInvCelo.oriY = kwkInvCelo.y 
       kwkInvCelo.name = "kwkInvCelo" 
       menuGroup:insert(kwkInvCelo); menuGroup.kwkInvCelo = kwkInvCelo 

       -- kwkInvGuitarra positioning 
       kwkInvGuitarra = display.newImageRect( imgDir.. "kwkinvguitarra.png", 152, 238 ); 
       kwkInvGuitarra.x = 1480; kwkInvGuitarra.y = 1396; kwkInvGuitarra.alpha = 1; kwkInvGuitarra.oldAlpha = 1 
       kwkInvGuitarra.oriX = kwkInvGuitarra.x; kwkInvGuitarra.oriY = kwkInvGuitarra.y 
       kwkInvGuitarra.name = "kwkInvGuitarra" 
       menuGroup:insert(kwkInvGuitarra); menuGroup.kwkInvGuitarra = kwkInvGuitarra 

       -- kwkInvCola positioning 
       kwkInvCola = display.newImageRect( imgDir.. "kwkinvcola.png", 108, 259 ); 
       kwkInvCola.x = 1674; kwkInvCola.y = 1405; kwkInvCola.alpha = 1; kwkInvCola.oldAlpha = 1 
       kwkInvCola.oriX = kwkInvCola.x; kwkInvCola.oriY = kwkInvCola.y 
       kwkInvCola.name = "kwkInvCola" 
       menuGroup:insert(kwkInvCola); menuGroup.kwkInvCola = kwkInvCola 

       -- kwkInvCerrar positioning 
       kwkInvCerrar = display.newImageRect( imgDir.. "kwkinvcerrar.png", 58, 62 ); 
       kwkInvCerrar.x = 1764; kwkInvCerrar.y = 1061; kwkInvCerrar.alpha = 1; kwkInvCerrar.oldAlpha = 1 
       kwkInvCerrar.oriX = kwkInvCerrar.x; kwkInvCerrar.oriY = kwkInvCerrar.y 
       kwkInvCerrar.name = "kwkInvCerrar" 
       menuGroup:insert(kwkInvCerrar); menuGroup.kwkInvCerrar = kwkInvCerrar 

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

       -- kwkNavprev positioning 
       kwkNavprev = display.newImageRect( imgDir.. "kwknavprev.png", 106, 361 ); 
       kwkNavprev.x = 130; kwkNavprev.y = 767; kwkNavprev.alpha = 1; kwkNavprev.oldAlpha = 1 
       kwkNavprev.oriX = kwkNavprev.x; kwkNavprev.oriY = kwkNavprev.y 
       kwkNavprev.name = "kwkNavprev" 
       menuGroup:insert(kwkNavprev); menuGroup.kwkNavprev = kwkNavprev 
 
       -- Group(s) creation 

       -- (MIDDLE) External code will render here 

       --Animations
       gtStash.gt_AnimC1 = gtween.new( C1, 3, {  x=1593, y=757,  alpha=1, rotation=0, xScale=5, yScale=5,}, {ease = gtween.easing.linear, repeatCount = 1, reflect = false,  delay=0.1, ""}) 

       gtStash.gt_AnimC2 = gtween.new( C2, 3, {  x=1392, y=722,  alpha=1, rotation=0, xScale=5, yScale=5,}, {ease = gtween.easing.linear, repeatCount = 1, reflect = false,  delay=0.1, ""}) 

       gtStash.gt_AnimC3 = gtween.new( C3, 3, {  x=1164, y=796,  alpha=1, rotation=0, xScale=5, yScale=5,}, {ease = gtween.easing.linear, repeatCount = 1, reflect = false,  delay=0.1, ""}) 

 
       -- Actions (functions) 
       function hideInventory(event) 
            transitionStash.newTransition_435 = transition.to( kwkRectInv, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_436 = transition.to( kwkInvBiberon, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_436 = transition.to( kwkInvTijeras, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_436 = transition.to( kwkInvRosa, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_437 = transition.to( kwkInvErizo, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_437 = transition.to( kwkInvMaquina, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_437 = transition.to( kwkInvCelo, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_437 = transition.to( kwkInvGuitarra, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_438 = transition.to( kwkInvCola, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_438 = transition.to( kwkInvCerrar, {alpha=0, time=0, delay=0}) 
           InventoryShown = false
          saveKwikVars({"InventoryShown",false}) 
       end 

       function showInventory(event) 
            transitionStash.newTransition_459 = transition.to( kwkRectInv, {alpha=kwkRectInv.oldAlpha, time=0, delay=0}) 
         if (hasBiberon == true) then 
            transitionStash.newTransition_460 = transition.to( kwkInvBiberon, {alpha=kwkInvBiberon.oldAlpha, time=0, delay=0}) 
         end 
         if (hasTijeras == true) then 
            transitionStash.newTransition_460 = transition.to( kwkInvTijeras, {alpha=kwkInvTijeras.oldAlpha, time=0, delay=0}) 
         end 
         if (hasMaquina == true) then 
            transitionStash.newTransition_461 = transition.to( kwkInvMaquina, {alpha=kwkInvMaquina.oldAlpha, time=0, delay=0}) 
         end 
         if (hasRosa == true) then 
            transitionStash.newTransition_462 = transition.to( kwkInvRosa, {alpha=kwkInvRosa.oldAlpha, time=0, delay=0}) 
         end 
         if (hasErizo == true) then 
            transitionStash.newTransition_463 = transition.to( kwkInvErizo, {alpha=kwkInvErizo.oldAlpha, time=0, delay=0}) 
         end 
         if (hasCelo == true) then 
            transitionStash.newTransition_464 = transition.to( kwkInvCelo, {alpha=kwkInvCelo.oldAlpha, time=0, delay=0}) 
         end 
         if (hasGuitarra == true) then 
            transitionStash.newTransition_464 = transition.to( kwkInvGuitarra, {alpha=kwkInvGuitarra.oldAlpha, time=0, delay=0}) 
         end 
         if (hasCola == true) then 
            transitionStash.newTransition_465 = transition.to( kwkInvCola, {alpha=kwkInvCola.oldAlpha, time=0, delay=0}) 
         end 
           InventoryShown = true
          saveKwikVars({"InventoryShown",true}) 
            transitionStash.newTransition_487 = transition.to( kwkInvDestacado, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_487 = transition.to( kwkInvCerrar, {alpha=kwkInvCerrar.oldAlpha, time=0, delay=0}) 
       end 

       function AudioAction(event) 
         if (Audio == true) then 
           audio.setVolume(1, {channel=1} ) 
           audio.play( narracion_page6, {channel=1, loops = 0 } ) 
         end 
       end 

 
      --End Actions (functions) 

 
       -- Timers 
       timerStash.timerInv = timer.performWithDelay( 0, hideInventory, 1 ) 
       timerStash.AudioTimer = timer.performWithDelay( 0, AudioAction, 1 ) 

       -- Button event listeners 
       local function onkwkNavnextEvent(event) 
          btnNextPage(kwkNavnext) 
          return true 
       end 
       kwkNavnext:addEventListener("tap", onkwkNavnextEvent ) 
       local function onkwkInvCerrarEvent(event) 
          btnCerrarInvent(kwkInvCerrar) 
          return true 
       end 
       kwkInvCerrar:addEventListener("tap", onkwkInvCerrarEvent ) 
       local function onkwkNavprevEvent(event) 
          btnPrevPage(kwkNavprev) 
          return true 
       end 
       kwkNavprev:addEventListener("tap", onkwkNavprevEvent ) 

       -- Button functions 
       function btnInventario(self) 
         if (InventoryShown == false) then 
           showInventory() 
         else 
           hideInventory() 
         end 
       end 

       function btnNextPage(self) 
            local myClosure_switch = function() 
                dispose(); director:changeScene( "page_82", "moveFromRight" ) 
            end 
            timerStash.newTimer_573 = timer.performWithDelay(0, myClosure_switch, 1) 
       end 

       function btnCerrarInvent(self) 
           hideInventory() 
       end 

       function btnPrevPage(self) 
            local myClosure_switch = function() 
                dispose(); director:changeScene( "page_79", "moveFromLeft" ) 
            end 
            timerStash.newTimer_579 = timer.performWithDelay(0, myClosure_switch, 1) 
       end 


       -- do not swipe this page 

       dispose = function(event) 
          cancelAllTweens() 
          cancelAllTimers(); cancelAllTransitions() 
          if audio.isChannelActive ( 1 ) then 
   audio.stop(1); 
 end 
 audio.dispose(narracion_page6); narracion_page6 = nil 
       end 

       -- (BOTTOM) External code will render here 
       if (favor2Started) then
	instantHide(kwkNavnext)
	instantHide(kwkNavPrev)
end

instantHide(kwkInvDestacado)

function btnBiberon(self) 
	hasBiberon = true
	show(kwkInvDestacado)
	saveKwikVars({"hasBiberon",true}) 
	hideBiberon() 
	hideInventory() 
	if (favor2Started and hasTijeras) then
		local pageToGo = pag_favor2
		if (not hasGuitarra) then
			pageToGo = pag_guitarra
		end
		if (not hasMaquina) then
			pageToGo = pag_maquina
		end
		if (not hasErizo) then
			pageToGo = pag_erizo
		end
		if (not hasRosa) then
			pageToGo = pag_rosa
		end
	    local myClosure_switch = function() 
	        dispose(); director:changeScene( "page_"..pageToGo, "fade" ) 
	    end 
	    timerStash.newTimer_980 = timer.performWithDelay(0, myClosure_switch, 1) 
	elseif (not favor2Started) then
		local currComodin = kwkVarCheck("comodin")
		saveKwikVars({"comodin", currComodin + 10})
	end

end 


function btnTijeras(self) 
	hasTijeras = true
	show(kwkInvDestacado)
	saveKwikVars({"hasTijeras",true}) 
	hideTijeras() 
	hideInventory() 
	if (favor2Started and hasBiberon) then
		local pageToGo = pag_favor2
		if (not hasGuitarra) then
			pageToGo = pag_guitarra
		end
		if (not hasMaquina) then
			pageToGo = pag_maquina
		end
		if (not hasErizo) then
			pageToGo = pag_erizo
		end
		if (not hasRosa) then
			pageToGo = pag_rosa
		end
	    local myClosure_switch = function() 
	        dispose(); director:changeScene( "page_"..pageToGo, "fade" ) 
	    end 
	    timerStash.newTimer_980 = timer.performWithDelay(0, myClosure_switch, 1) 
	elseif (not favor2Started) then		
		local currComodin = kwkVarCheck("comodin")
		saveKwikVars({"comodin", currComodin + 10})
	end   		
end  
       instantHide (kwkInvDestacado) 


    end 
    drawScreen() 

    return menuGroup 
end 
