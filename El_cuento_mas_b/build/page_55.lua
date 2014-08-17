-- Code created by Kwik - Copyright: kwiksher.com 
-- Version: 2.7.6b 
module(..., package.seeall) 
local widget = require("widget") 

function new() 
    local numPages = 58 
    local menuGroup = display.newGroup() 
    local dispose 
    local _W = display.contentWidth; 
    local _H = display.contentHeight; 

    -- Audio callings 
    local fallo =  audio.loadSound( audioDir.."fallo.mp3") 
    local acierto =  audio.loadSound( audioDir.."acierto.mp3") 


    local drawScreen = function() 

       local curPage = 55 

       Navigation.new("page", { backColor = {125, 125, 125}, anim=1, timer=1,  totPages = numPages, curPage = curPage, thumbW = 200, thumbH = 125, alpha = 0, imageDir = imgDir, dire = "bottom", audio={{ 2, "fallo"},{ 1, "acierto"},} } ) 
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
       local btnCerrarInvent
       local btnTick
       local btnA
       local btnB
       local btnC
       local btnD

       -- Action names 
       local hideInventory 
       local showInventory 

       -- Layer names 
       local kwkFondo_62  
       local kwkArbol  
       local kwkNube  
       local kwkBolsa1  
       local kwkHija_gafas  
       local kwkHormiga  
       local kwkMama_gafas  
       local kwkRect2  
       local kwkRect1  
       local kwkCLText  
       local kwkComodinText  
       local kwkCIText  
       local kwkCGText  
       local kwkDiamante  
       local kwkEsmeralda  
       local kwkMedalla  
       local Text1  
       local A  
       local B  
       local C  
       local D  
       local circuloA  
       local circuloB  
       local circuloC  
       local circuloD  
       local kwkTick  
       local End1  
       local End2  
       local kwkruby  
       local kwkInvDestacado  
       local kwkMochila  
       local kwkRectInv  
       local kwkInvCerrar  
       local kwkInvMaquina  
       local kwkInvBiberon  
       local kwkInvTijeras  
       local kwkInvRosa  
       local kwkInvErizo  
       local kwkInvCelo  
       local kwkInvGuitarra  
       local kwkInvCola  

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
local Fav01Completed = kwkVarCheck("Fav01Completed")
local Fav02Completed = kwkVarCheck("Fav02Completed")
local Fav03Completed = kwkVarCheck("Fav03Completed")
local Fav04Completed = kwkVarCheck("Fav04Completed")
local Preg01Completed = kwkVarCheck("Preg01Completed")
local Preg02Completed = kwkVarCheck("Preg02Completed")
local Preg03Completed = kwkVarCheck("Preg03Completed")
local Preg04Completed = kwkVarCheck("Preg04Completed")
local Preg05Completed = kwkVarCheck("Preg05Completed")
local Preg06Completed = kwkVarCheck("Preg06Completed")
local Preg07Completed = kwkVarCheck("Preg07Completed")
local Preg08Completed = kwkVarCheck("Preg08Completed")
local Preg09Completed = kwkVarCheck("Preg09Completed") 
       local hasRosa = kwkVarCheck("hasRosa")
local hasTijeras = kwkVarCheck("hasTijeras")
local hasBiberon = kwkVarCheck("hasBiberon")
local hasGuitarra = kwkVarCheck("hasGuitarra")
local hasMaquina = kwkVarCheck("hasMaquina")
local hasErizo = kwkVarCheck("hasErizo")
local hasCelo = kwkVarCheck("hasCelo")
local hasCola = kwkVarCheck("hasCola") 

       -- kwkFondo_62 positioning 
       kwkFondo_62 = display.newImageRect( imgDir.. "kwkfondo_62.png", 2559, 1600 ); 
       kwkFondo_62.x = 1279; kwkFondo_62.y = 800; kwkFondo_62.alpha = 1; kwkFondo_62.oldAlpha = 1 
       kwkFondo_62.oriX = kwkFondo_62.x; kwkFondo_62.oriY = kwkFondo_62.y 
       kwkFondo_62.name = "kwkFondo_62" 
       menuGroup:insert(1,kwkFondo_62); menuGroup.kwkFondo_62 = kwkFondo_62 

       -- kwkArbol positioning 
       kwkArbol = display.newImageRect( imgDir.. "kwkarbol.png", 1219, 1140 ); 
       kwkArbol.x = 602; kwkArbol.y = 762; kwkArbol.alpha = 1; kwkArbol.oldAlpha = 1 
       kwkArbol.oriX = kwkArbol.x; kwkArbol.oriY = kwkArbol.y 
       kwkArbol.name = "kwkArbol" 
       menuGroup:insert(kwkArbol); menuGroup.kwkArbol = kwkArbol 

       -- kwkNube positioning 
       kwkNube = display.newImageRect( imgDir.. "kwknube.png", 1046, 567 ); 
       kwkNube.x = 603; kwkNube.y = 592; kwkNube.alpha = 1; kwkNube.oldAlpha = 1 
       kwkNube.oriX = kwkNube.x; kwkNube.oriY = kwkNube.y 
       kwkNube.name = "kwkNube" 
       menuGroup:insert(kwkNube); menuGroup.kwkNube = kwkNube 

       -- kwkBolsa1 positioning 
       kwkBolsa1 = display.newImageRect( imgDir.. "kwkbolsa1.png", 368, 304 ); 
       kwkBolsa1.x = 1566; kwkBolsa1.y = 1105; kwkBolsa1.alpha = 1; kwkBolsa1.oldAlpha = 1 
       kwkBolsa1.oriX = kwkBolsa1.x; kwkBolsa1.oriY = kwkBolsa1.y 
       kwkBolsa1.name = "kwkBolsa1" 
       menuGroup:insert(kwkBolsa1); menuGroup.kwkBolsa1 = kwkBolsa1 

       -- kwkHija_gafas positioning 
       kwkHija_gafas = display.newImageRect( imgDir.. "kwkhija_gafas.png", 268, 489 ); 
       kwkHija_gafas.x = 2102; kwkHija_gafas.y = 951; kwkHija_gafas.alpha = 1; kwkHija_gafas.oldAlpha = 1 
       kwkHija_gafas.oriX = kwkHija_gafas.x; kwkHija_gafas.oriY = kwkHija_gafas.y 
       kwkHija_gafas.name = "kwkHija_gafas" 
       menuGroup:insert(kwkHija_gafas); menuGroup.kwkHija_gafas = kwkHija_gafas 

       -- kwkHormiga positioning 
       kwkHormiga = display.newImageRect( imgDir.. "kwkhormiga.png", 169, 240 ); 
       kwkHormiga.x = 2203; kwkHormiga.y = 821; kwkHormiga.alpha = 1; kwkHormiga.oldAlpha = 1 
       kwkHormiga.oriX = kwkHormiga.x; kwkHormiga.oriY = kwkHormiga.y 
       kwkHormiga.name = "kwkHormiga" 
       menuGroup:insert(kwkHormiga); menuGroup.kwkHormiga = kwkHormiga 

       -- kwkMama_gafas positioning 
       kwkMama_gafas = display.newImageRect( imgDir.. "kwkmama_gafas.png", 310, 596 ); 
       kwkMama_gafas.x = 1872; kwkMama_gafas.y = 965; kwkMama_gafas.alpha = 1; kwkMama_gafas.oldAlpha = 1 
       kwkMama_gafas.oriX = kwkMama_gafas.x; kwkMama_gafas.oriY = kwkMama_gafas.y 
       kwkMama_gafas.name = "kwkMama_gafas" 
       menuGroup:insert(kwkMama_gafas); menuGroup.kwkMama_gafas = kwkMama_gafas 

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

       -- kwkMedalla positioning 
       kwkMedalla = display.newImageRect( imgDir.. "kwkmedalla.png", 176, 199 ); 
       kwkMedalla.x = 2392; kwkMedalla.y = 113; kwkMedalla.alpha = 1; kwkMedalla.oldAlpha = 1 
       kwkMedalla.oriX = kwkMedalla.x; kwkMedalla.oriY = kwkMedalla.y 
       kwkMedalla.name = "kwkMedalla" 
       menuGroup:insert(kwkMedalla); menuGroup.kwkMedalla = kwkMedalla 

       -- Text1 positioning 
       Text1 = display.newImageRect( imgDir.. "p55_text1.png", 1464, 166 ); 
       Text1.x = 1282; Text1.y = 86; Text1.alpha = 1; Text1.oldAlpha = 1 
       Text1.oriX = Text1.x; Text1.oriY = Text1.y 
       Text1.name = "Text1" 
       menuGroup:insert(Text1); menuGroup.Text1 = Text1 

       -- A positioning 
       A = display.newImageRect( imgDir.. "p55_a.png", 1177, 51 ); 
       A.x = 1810; A.y = 306; A.alpha = 1; A.oldAlpha = 1 
       A.oriX = A.x; A.oriY = A.y 
       A.name = "A" 
       menuGroup:insert(A); menuGroup.A = A 

       -- B positioning 
       B = display.newImageRect( imgDir.. "p55_b.png", 786, 51 ); 
       B.x = 1621; B.y = 393; B.alpha = 1; B.oldAlpha = 1 
       B.oriX = B.x; B.oriY = B.y 
       B.name = "B" 
       menuGroup:insert(B); menuGroup.B = B 

       -- C positioning 
       C = display.newImageRect( imgDir.. "p55_c.png", 1028, 109 ); 
       C.x = 1743; C.y = 513; C.alpha = 1; C.oldAlpha = 1 
       C.oriX = C.x; C.oriY = C.y 
       C.name = "C" 
       menuGroup:insert(C); menuGroup.C = C 

       -- D positioning 
       D = display.newImageRect( imgDir.. "p55_d.png", 1150, 50 ); 
       D.x = 1792; D.y = 630; D.alpha = 1; D.oldAlpha = 1 
       D.oriX = D.x; D.oriY = D.y 
       D.name = "D" 
       menuGroup:insert(D); menuGroup.D = D 

       -- circuloA positioning 
       circuloA = display.newImageRect( imgDir.. "p55_circuloa.png", 60, 62 ); 
       circuloA.x = 2441; circuloA.y = 304; circuloA.alpha = 1; circuloA.oldAlpha = 1 
       circuloA.oriX = circuloA.x; circuloA.oriY = circuloA.y 
       circuloA.name = "circuloA" 
       menuGroup:insert(circuloA); menuGroup.circuloA = circuloA 

       -- circuloB positioning 
       circuloB = display.newImageRect( imgDir.. "p55_circulob.png", 60, 60 ); 
       circuloB.x = 2056; circuloB.y = 394; circuloB.alpha = 1; circuloB.oldAlpha = 1 
       circuloB.oriX = circuloB.x; circuloB.oriY = circuloB.y 
       circuloB.name = "circuloB" 
       menuGroup:insert(circuloB); menuGroup.circuloB = circuloB 

       -- circuloC positioning 
       circuloC = display.newImageRect( imgDir.. "p55_circuloc.png", 60, 60 ); 
       circuloC.x = 1817; circuloC.y = 542; circuloC.alpha = 1; circuloC.oldAlpha = 1 
       circuloC.oriX = circuloC.x; circuloC.oriY = circuloC.y 
       circuloC.name = "circuloC" 
       menuGroup:insert(circuloC); menuGroup.circuloC = circuloC 

       -- circuloD positioning 
       circuloD = display.newImageRect( imgDir.. "p55_circulod.png", 60, 60 ); 
       circuloD.x = 2410; circuloD.y = 624; circuloD.alpha = 1; circuloD.oldAlpha = 1 
       circuloD.oriX = circuloD.x; circuloD.oriY = circuloD.y 
       circuloD.name = "circuloD" 
       menuGroup:insert(circuloD); menuGroup.circuloD = circuloD 

       -- kwkTick positioning 
       kwkTick = display.newImageRect( imgDir.. "kwktick.png", 303, 227 ); 
       kwkTick.x = 1454; kwkTick.y = 798; kwkTick.alpha = 1; kwkTick.oldAlpha = 1 
       kwkTick.oriX = kwkTick.x; kwkTick.oriY = kwkTick.y 
       kwkTick.name = "kwkTick" 
       menuGroup:insert(kwkTick); menuGroup.kwkTick = kwkTick 

       -- End1 positioning 
       End1 = display.newImageRect( imgDir.. "p55_end1.png", 803, 51 ); 
       End1.x = 1279; End1.y = 28; End1.alpha = 1; End1.oldAlpha = 1 
       End1.oriX = End1.x; End1.oriY = End1.y 
       End1.name = "End1" 
       menuGroup:insert(End1); menuGroup.End1 = End1 

       -- End2 positioning 
       End2 = display.newImageRect( imgDir.. "p55_end2.png", 1452, 109 ); 
       End2.x = 1280; End2.y = 57; End2.alpha = 1; End2.oldAlpha = 1 
       End2.oriX = End2.x; End2.oriY = End2.y 
       End2.name = "End2" 
       menuGroup:insert(End2); menuGroup.End2 = End2 

       -- kwkruby positioning 
       kwkruby = display.newImageRect( imgDir.. "kwkruby.png", 224, 220 ); 
       kwkruby.x = 332; kwkruby.y = 128; kwkruby.alpha = 1; kwkruby.oldAlpha = 1 
       kwkruby.oriX = kwkruby.x; kwkruby.oriY = kwkruby.y 
       kwkruby.name = "kwkruby" 
       menuGroup:insert(kwkruby); menuGroup.kwkruby = kwkruby 

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

       -- kwkRectInv positioning 
       kwkRectInv = display.newImageRect( imgDir.. "kwkrectinv.png", 1028, 517 ); 
       kwkRectInv.x = 1278; kwkRectInv.y = 1276; kwkRectInv.alpha = 1; kwkRectInv.oldAlpha = 1 
       kwkRectInv.oriX = kwkRectInv.x; kwkRectInv.oriY = kwkRectInv.y 
       kwkRectInv.name = "kwkRectInv" 
       menuGroup:insert(kwkRectInv); menuGroup.kwkRectInv = kwkRectInv 

       -- kwkInvCerrar positioning 
       kwkInvCerrar = display.newImageRect( imgDir.. "kwkinvcerrar.png", 58, 62 ); 
       kwkInvCerrar.x = 1764; kwkInvCerrar.y = 1061; kwkInvCerrar.alpha = 1; kwkInvCerrar.oldAlpha = 1 
       kwkInvCerrar.oriX = kwkInvCerrar.x; kwkInvCerrar.oriY = kwkInvCerrar.y 
       kwkInvCerrar.name = "kwkInvCerrar" 
       menuGroup:insert(kwkInvCerrar); menuGroup.kwkInvCerrar = kwkInvCerrar 

       -- kwkInvMaquina positioning 
       kwkInvMaquina = display.newImageRect( imgDir.. "kwkinvmaquina.png", 204, 258 ); 
       kwkInvMaquina.x = 897; kwkInvMaquina.y = 1147; kwkInvMaquina.alpha = 1; kwkInvMaquina.oldAlpha = 1 
       kwkInvMaquina.oriX = kwkInvMaquina.x; kwkInvMaquina.oriY = kwkInvMaquina.y 
       kwkInvMaquina.name = "kwkInvMaquina" 
       menuGroup:insert(kwkInvMaquina); menuGroup.kwkInvMaquina = kwkInvMaquina 

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
 
       -- Group(s) creation 

       -- (MIDDLE) External code will render here 
       --Ocultar capas al principio

instantHide(circuloA)
instantHide(circuloB)
instantHide(circuloC)
instantHide(circuloD)
instantHide(kwkTick)
instantHide(End1)
instantHide(End2)

local lastPressed = ""
local terminado = false

function hideLastPressed ()
	if (lastPressed == "A") then
		hide(circuloA)
	elseif (lastPressed == "B") then
		hide(circuloB)
	elseif (lastPressed == "C") then
		hide(circuloC)
	elseif (lastPressed == "D") then
		hide(circuloD)
	end
end

function terminar ()
	terminado = true

	hide(Text1)
	hide(kwkTick)

	if (lastPressed == "B") then
		end1()
	elseif (lastPressed == "D") then
		end2()
	else
		badEnd()
	end

	saveKwikVars({"Preg06Completed", true})

    local myClosure_switch = function() 
        dispose(); director:changeScene( "page_"..(pag_pregunta6 + 1), "fade" ) 
    end 
    timerStash.newTimer_980 = timer.performWithDelay(6000, myClosure_switch, 1) 
end

function end1()
	delayShow(End1, 0)
	playAudioWithDelay(acierto, 0)

	local currentCL1 = kwkVarCheck("CL1")
	local currentCL3 = kwkVarCheck("CL3")

	saveKwikVars({"CL1", currentCL1 + 1})
	saveKwikVars({"CL3", currentCL3 + 3})

	updateCoefs()
end

function end2()
	delayShow(End1, 0)
	playAudioWithDelay(acierto, 0)

	local currentCL1 = kwkVarCheck("CL1")
	local currentCL3 = kwkVarCheck("CL3")
	local currentCL5 = kwkVarCheck("CL5")

	
	saveKwikVars({"CL1", currentCL1 + 1})
	saveKwikVars({"CL3", currentCL3 + 3})
	saveKwikVars({"CL5", currentCL3 + 10})

	updateCoefs()
end

function badEnd()
	delayShow(End2, 0)
	playAudioWithDelay(fallo, 0)
end 
 
       -- Actions (functions) 
       function hideInventory(event) 
            transitionStash.newTransition_587 = transition.to( kwkRectInv, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_587 = transition.to( kwkInvBiberon, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_587 = transition.to( kwkInvTijeras, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_588 = transition.to( kwkInvRosa, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_588 = transition.to( kwkInvErizo, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_588 = transition.to( kwkInvMaquina, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_588 = transition.to( kwkInvCelo, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_589 = transition.to( kwkInvGuitarra, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_589 = transition.to( kwkInvCola, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_589 = transition.to( kwkInvCerrar, {alpha=0, time=0, delay=0}) 
           InventoryShown = false
          saveKwikVars({"InventoryShown",false}) 
       end 

       function showInventory(event) 
            transitionStash.newTransition_601 = transition.to( kwkRectInv, {alpha=kwkRectInv.oldAlpha, time=0, delay=0}) 
         if (hasBiberon == true) then 
            transitionStash.newTransition_601 = transition.to( kwkInvBiberon, {alpha=kwkInvBiberon.oldAlpha, time=0, delay=0}) 
         end 
         if (hasTijeras == true) then 
            transitionStash.newTransition_602 = transition.to( kwkInvTijeras, {alpha=kwkInvTijeras.oldAlpha, time=0, delay=0}) 
         end 
         if (hasMaquina == true) then 
            transitionStash.newTransition_602 = transition.to( kwkInvMaquina, {alpha=kwkInvMaquina.oldAlpha, time=0, delay=0}) 
         end 
         if (hasRosa == true) then 
            transitionStash.newTransition_603 = transition.to( kwkInvRosa, {alpha=kwkInvRosa.oldAlpha, time=0, delay=0}) 
         end 
         if (hasErizo == true) then 
            transitionStash.newTransition_604 = transition.to( kwkInvErizo, {alpha=kwkInvErizo.oldAlpha, time=0, delay=0}) 
         end 
         if (hasCelo == true) then 
            transitionStash.newTransition_605 = transition.to( kwkInvCelo, {alpha=kwkInvCelo.oldAlpha, time=0, delay=0}) 
         end 
         if (hasGuitarra == true) then 
            transitionStash.newTransition_605 = transition.to( kwkInvGuitarra, {alpha=kwkInvGuitarra.oldAlpha, time=0, delay=0}) 
         end 
         if (hasCola == true) then 
            transitionStash.newTransition_606 = transition.to( kwkInvCola, {alpha=kwkInvCola.oldAlpha, time=0, delay=0}) 
         end 
           InventoryShown = true
          saveKwikVars({"InventoryShown",true}) 
            transitionStash.newTransition_617 = transition.to( kwkInvDestacado, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_617 = transition.to( kwkInvCerrar, {alpha=kwkInvCerrar.oldAlpha, time=0, delay=0}) 
       end 

 
      --End Actions (functions) 

 
       -- Timers 
       timerStash.timerInv = timer.performWithDelay( 0, hideInventory, 1 ) 

       -- Button event listeners 
       local function onkwkInvCerrarEvent(event) 
          btnCerrarInvent(kwkInvCerrar) 
          return true 
       end 
       kwkInvCerrar:addEventListener("tap", onkwkInvCerrarEvent ) 
       local function onkwkTickEvent(event) 
          btnTick(kwkTick) 
          return true 
       end 
       kwkTick:addEventListener("tap", onkwkTickEvent ) 
       local function onAEvent(event) 
          btnA(A) 
          return true 
       end 
       A:addEventListener("tap", onAEvent ) 
       local function onBEvent(event) 
          btnB(B) 
          return true 
       end 
       B:addEventListener("tap", onBEvent ) 
       local function onCEvent(event) 
          btnC(C) 
          return true 
       end 
       C:addEventListener("tap", onCEvent ) 
       local function onDEvent(event) 
          btnD(D) 
          return true 
       end 
       D:addEventListener("tap", onDEvent ) 

       -- Button functions 
       function btnInventario(self) 
         if (InventoryShown == false) then 
           showInventory() 
         else 
           hideInventory() 
         end 
       end 

       function btnCerrarInvent(self) 
           hideInventory() 
       end 

       function btnTick(self) 
           --External code 
           terminar() 
       end 

       function btnA(self) 
           --External code 
           if (lastPressed ~= "A" and terminado == false) then
	show (circuloA)
	hideLastPressed()
	show (kwkTick)
	lastPressed = "A"
end 
       end 

       function btnB(self) 
           --External code 
           if (lastPressed ~= "B" and terminado == false) then
	show (circuloB)
	hideLastPressed()
	show (kwkTick)
	lastPressed = "B"
end 
       end 

       function btnC(self) 
           --External code 
           if (lastPressed ~= "C" and terminado == false) then
	show (circuloC)
	hideLastPressed()
	show (kwkTick)
	lastPressed = "C"
end 
       end 

       function btnD(self) 
           --External code 
           if (lastPressed ~= "D" and terminado == false) then
	show (circuloD)
	show (kwkTick)
	hideLastPressed()
	lastPressed = "D"
end 
       end 


       -- do not swipe this page 

       dispose = function(event) 
          cancelAllTimers(); cancelAllTransitions() 
          if audio.isChannelActive ( 2 ) then 
   audio.stop(2); 
 end 
 audio.dispose(fallo); fallo = nil 
          if audio.isChannelActive ( 1 ) then 
   audio.stop(1); 
 end 
 audio.dispose(acierto); acierto = nil 
       end 

       -- (BOTTOM) External code will render here 
       instantHide (kwkInvDestacado) 


    end 
    drawScreen() 

    return menuGroup 
end 
