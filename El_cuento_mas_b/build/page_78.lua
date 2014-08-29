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
    local fallo =  audio.loadSound( audioDir.."fallo.mp3") 
    local acierto =  audio.loadSound( audioDir.."acierto.mp3") 


    local drawScreen = function() 

       local curPage = 78 

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
       local kwkFondo1  
       local kwkMama_llorand  
       local kwkHija_gafas_l  
       local kwkBebe_gafas_e  
       local kwkRect2  
       local kwkRect1  
       local kwkCLText  
       local kwkComodinText  
       local kwkCIText  
       local kwkCGText  
       local kwkDiamante  
       local kwkEsmeralda  
       local kwkMedalla  
       local A  
       local B  
       local C  
       local D  
       local circuloA  
       local circuloB  
       local circuloC  
       local circuloD  
       local kwkTick  
       local Text1  
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
       local hasRosa = kwkVarCheck("hasRosa")
local hasTijeras = kwkVarCheck("hasTijeras")
local hasBiberon = kwkVarCheck("hasBiberon")
local hasGuitarra = kwkVarCheck("hasGuitarra")
local hasMaquina = kwkVarCheck("hasMaquina")
local hasErizo = kwkVarCheck("hasErizo")
local hasCelo = kwkVarCheck("hasCelo")
local hasCola = kwkVarCheck("hasCola") 

       -- kwkFondo1 positioning 
       kwkFondo1 = display.newImageRect( imgDir.. "kwkfondo1.png", 2560, 1598 ); 
       kwkFondo1.x = 1280; kwkFondo1.y = 800; kwkFondo1.alpha = 1; kwkFondo1.oldAlpha = 1 
       kwkFondo1.oriX = kwkFondo1.x; kwkFondo1.oriY = kwkFondo1.y 
       kwkFondo1.name = "kwkFondo1" 
       menuGroup:insert(1,kwkFondo1); menuGroup.kwkFondo1 = kwkFondo1 

       -- kwkMama_llorand positioning 
       kwkMama_llorand = display.newImageRect( imgDir.. "kwkmama_llorand.png", 526, 1008 ); 
       kwkMama_llorand.x = 1883; kwkMama_llorand.y = 1000; kwkMama_llorand.alpha = 1; kwkMama_llorand.oldAlpha = 1 
       kwkMama_llorand.oriX = kwkMama_llorand.x; kwkMama_llorand.oriY = kwkMama_llorand.y 
       kwkMama_llorand.name = "kwkMama_llorand" 
       menuGroup:insert(kwkMama_llorand); menuGroup.kwkMama_llorand = kwkMama_llorand 

       -- kwkHija_gafas_l positioning 
       kwkHija_gafas_l = display.newImageRect( imgDir.. "kwkhija_gafas_l.png", 454, 829 ); 
       kwkHija_gafas_l.x = 1558; kwkHija_gafas_l.y = 1030; kwkHija_gafas_l.alpha = 1; kwkHija_gafas_l.oldAlpha = 1 
       kwkHija_gafas_l.oriX = kwkHija_gafas_l.x; kwkHija_gafas_l.oriY = kwkHija_gafas_l.y 
       kwkHija_gafas_l.name = "kwkHija_gafas_l" 
       menuGroup:insert(kwkHija_gafas_l); menuGroup.kwkHija_gafas_l = kwkHija_gafas_l 

       -- kwkBebe_gafas_e positioning 
       kwkBebe_gafas_e = display.newImageRect( imgDir.. "kwkbebe_gafas_e.png", 334, 547 ); 
       kwkBebe_gafas_e.x = 857; kwkBebe_gafas_e.y = 1214; kwkBebe_gafas_e.alpha = 1; kwkBebe_gafas_e.oldAlpha = 1 
       kwkBebe_gafas_e.oriX = kwkBebe_gafas_e.x; kwkBebe_gafas_e.oriY = kwkBebe_gafas_e.y 
       kwkBebe_gafas_e.name = "kwkBebe_gafas_e" 
       menuGroup:insert(kwkBebe_gafas_e); menuGroup.kwkBebe_gafas_e = kwkBebe_gafas_e 

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

       -- A positioning 
       A = display.newImageRect( imgDir.. "p78_a.png", 328, 51 ); 
       A.x = 679; A.y = 284; A.alpha = 1; A.oldAlpha = 1 
       A.oriX = A.x; A.oriY = A.y 
       A.name = "A" 
       menuGroup:insert(A); menuGroup.A = A 

       -- B positioning 
       B = display.newImageRect( imgDir.. "p78_b.png", 929, 109 ); 
       B.x = 980; B.y = 417; B.alpha = 1; B.oldAlpha = 1 
       B.oriX = B.x; B.oriY = B.y 
       B.name = "B" 
       menuGroup:insert(B); menuGroup.B = B 

       -- C positioning 
       C = display.newImageRect( imgDir.. "p78_c.png", 727, 51 ); 
       C.x = 878; C.y = 540; C.alpha = 1; C.oldAlpha = 1 
       C.oriX = C.x; C.oriY = C.y 
       C.name = "C" 
       menuGroup:insert(C); menuGroup.C = C 

       -- D positioning 
       D = display.newImageRect( imgDir.. "p78_d.png", 898, 51 ); 
       D.x = 964; D.y = 647; D.alpha = 1; D.oldAlpha = 1 
       D.oriX = D.x; D.oriY = D.y 
       D.name = "D" 
       menuGroup:insert(D); menuGroup.D = D 

       -- circuloA positioning 
       circuloA = display.newImageRect( imgDir.. "p78_circuloa.png", 60, 62 ); 
       circuloA.x = 884; circuloA.y = 285; circuloA.alpha = 1; circuloA.oldAlpha = 1 
       circuloA.oriX = circuloA.x; circuloA.oriY = circuloA.y 
       circuloA.name = "circuloA" 
       menuGroup:insert(circuloA); menuGroup.circuloA = circuloA 

       -- circuloB positioning 
       circuloB = display.newImageRect( imgDir.. "p78_circulob.png", 60, 60 ); 
       circuloB.x = 1097; circuloB.y = 444; circuloB.alpha = 1; circuloB.oldAlpha = 1 
       circuloB.oriX = circuloB.x; circuloB.oriY = circuloB.y 
       circuloB.name = "circuloB" 
       menuGroup:insert(circuloB); menuGroup.circuloB = circuloB 

       -- circuloC positioning 
       circuloC = display.newImageRect( imgDir.. "p78_circuloc.png", 60, 60 ); 
       circuloC.x = 1286; circuloC.y = 536; circuloC.alpha = 1; circuloC.oldAlpha = 1 
       circuloC.oriX = circuloC.x; circuloC.oriY = circuloC.y 
       circuloC.name = "circuloC" 
       menuGroup:insert(circuloC); menuGroup.circuloC = circuloC 

       -- circuloD positioning 
       circuloD = display.newImageRect( imgDir.. "p78_circulod.png", 60, 60 ); 
       circuloD.x = 1452; circuloD.y = 640; circuloD.alpha = 1; circuloD.oldAlpha = 1 
       circuloD.oriX = circuloD.x; circuloD.oriY = circuloD.y 
       circuloD.name = "circuloD" 
       menuGroup:insert(circuloD); menuGroup.circuloD = circuloD 

       -- kwkTick positioning 
       kwkTick = display.newImageRect( imgDir.. "kwktick.png", 303, 227 ); 
       kwkTick.x = 1389; kwkTick.y = 827; kwkTick.alpha = 1; kwkTick.oldAlpha = 1 
       kwkTick.oriX = kwkTick.x; kwkTick.oriY = kwkTick.y 
       kwkTick.name = "kwkTick" 
       menuGroup:insert(kwkTick); menuGroup.kwkTick = kwkTick 

       -- Text1 positioning 
       Text1 = display.newImageRect( imgDir.. "p78_text1.png", 1368, 109 ); 
       Text1.x = 1280; Text1.y = 57; Text1.alpha = 1; Text1.oldAlpha = 1 
       Text1.oriX = Text1.x; Text1.oriY = Text1.y 
       Text1.name = "Text1" 
       menuGroup:insert(Text1); menuGroup.Text1 = Text1 

       -- End1 positioning 
       End1 = display.newImageRect( imgDir.. "p78_end1.png", 309, 47 ); 
       End1.x = 1278; End1.y = 30; End1.alpha = 1; End1.oldAlpha = 1 
       End1.oriX = End1.x; End1.oriY = End1.y 
       End1.name = "End1" 
       menuGroup:insert(End1); menuGroup.End1 = End1 

       -- End2 positioning 
       End2 = display.newImageRect( imgDir.. "p78_end2.png", 700, 51 ); 
       End2.x = 1280; End2.y = 53; End2.alpha = 1; End2.oldAlpha = 1 
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
	end
end

function terminar ()
	terminado = true

	hide(Text1)
	hide(kwkTick)

	if (lastPressed == "B") then
		end2()
	else
		end1()
	end

	updateCoefs()

	saveKwikVars({"Preg09Completed", true})

	saveKwikVars({"CuentoTerminado", true})

    local myClosure_switch = function() 
        dispose(); director:changeScene( "page_1", "fade" ) 
    end 
    timerStash.newTimer_980 = timer.performWithDelay(4000, myClosure_switch, 1) 
end

function end1()
	delayShow(End1, 0)
	playAudioWithDelay(fallo, 0)
end

function end2()
	delayShow(End2, 0)
	playAudioWithDelay(acierto, 0)

	local currentCL3 = kwkVarCheck("CL3")
	local currentCG2 = kwkVarCheck("CG2")
	
	saveKwikVars({"CL3", currentCL3 + 5})
	saveKwikVars({"CG2", currentCG2 + 10})
end 
 
       -- Actions (functions) 
       function hideInventory(event) 
            transitionStash.newTransition_944 = transition.to( kwkRectInv, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_944 = transition.to( kwkInvBiberon, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_944 = transition.to( kwkInvTijeras, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_945 = transition.to( kwkInvRosa, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_945 = transition.to( kwkInvErizo, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_945 = transition.to( kwkInvMaquina, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_946 = transition.to( kwkInvCelo, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_946 = transition.to( kwkInvGuitarra, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_946 = transition.to( kwkInvCola, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_946 = transition.to( kwkInvCerrar, {alpha=0, time=0, delay=0}) 
           InventoryShown = false
          saveKwikVars({"InventoryShown",false}) 
       end 

       function showInventory(event) 
            transitionStash.newTransition_965 = transition.to( kwkRectInv, {alpha=kwkRectInv.oldAlpha, time=0, delay=0}) 
         if (hasBiberon == true) then 
            transitionStash.newTransition_965 = transition.to( kwkInvBiberon, {alpha=kwkInvBiberon.oldAlpha, time=0, delay=0}) 
         end 
         if (hasTijeras == true) then 
            transitionStash.newTransition_966 = transition.to( kwkInvTijeras, {alpha=kwkInvTijeras.oldAlpha, time=0, delay=0}) 
         end 
         if (hasMaquina == true) then 
            transitionStash.newTransition_967 = transition.to( kwkInvMaquina, {alpha=kwkInvMaquina.oldAlpha, time=0, delay=0}) 
         end 
         if (hasRosa == true) then 
            transitionStash.newTransition_967 = transition.to( kwkInvRosa, {alpha=kwkInvRosa.oldAlpha, time=0, delay=0}) 
         end 
         if (hasErizo == true) then 
            transitionStash.newTransition_968 = transition.to( kwkInvErizo, {alpha=kwkInvErizo.oldAlpha, time=0, delay=0}) 
         end 
         if (hasCelo == true) then 
            transitionStash.newTransition_969 = transition.to( kwkInvCelo, {alpha=kwkInvCelo.oldAlpha, time=0, delay=0}) 
         end 
         if (hasGuitarra == true) then 
            transitionStash.newTransition_969 = transition.to( kwkInvGuitarra, {alpha=kwkInvGuitarra.oldAlpha, time=0, delay=0}) 
         end 
         if (hasCola == true) then 
            transitionStash.newTransition_970 = transition.to( kwkInvCola, {alpha=kwkInvCola.oldAlpha, time=0, delay=0}) 
         end 
           InventoryShown = true
          saveKwikVars({"InventoryShown",true}) 
            transitionStash.newTransition_987 = transition.to( kwkInvDestacado, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_988 = transition.to( kwkInvCerrar, {alpha=kwkInvCerrar.oldAlpha, time=0, delay=0}) 
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
