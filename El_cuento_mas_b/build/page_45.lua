-- Code created by Kwik - Copyright: kwiksher.com 
-- Version: 2.7.6b 
module(..., package.seeall) 
local widget = require("widget") 

function new() 
    local numPages = 46 
    local menuGroup = display.newGroup() 
    local dispose 
    local _W = display.contentWidth; 
    local _H = display.contentHeight; 

    -- Audio callings 
    local fallo =  audio.loadSound( audioDir.."fallo.mp3") 
    local acierto =  audio.loadSound( audioDir.."acierto.mp3") 


    local drawScreen = function() 

       local curPage = 45 

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
       local btnE

       -- Action names 
       local hideInventory 
       local showInventory 

       -- Layer names 
       local kwkFondo5  
       local kwkHija_gafas  
       local kwkSabioDormido  
       local kwkSer_gafas_3  
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
       local E  
       local circuloA  
       local circuloB  
       local circuloC  
       local circuloD  
       local circuloE  
       local kwkTick  
       local End3  
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
local Preg01Completed = kwkVarCheck("Preg01Completed")
local Preg02Completed = kwkVarCheck("Preg02Completed")
local Preg03Completed = kwkVarCheck("Preg03Completed")
local Preg04Completed = kwkVarCheck("Preg04Completed") 
       local hasRosa = kwkVarCheck("hasRosa")
local hasTijeras = kwkVarCheck("hasTijeras")
local hasBiberon = kwkVarCheck("hasBiberon")
local hasGuitarra = kwkVarCheck("hasGuitarra")
local hasMaquina = kwkVarCheck("hasMaquina")
local hasErizo = kwkVarCheck("hasErizo")
local hasCelo = kwkVarCheck("hasCelo")
local hasCola = kwkVarCheck("hasCola") 

       -- kwkFondo5 positioning 
       kwkFondo5 = display.newImageRect( imgDir.. "kwkfondo5.png", 2560, 1600 ); 
       kwkFondo5.x = 1280; kwkFondo5.y = 800; kwkFondo5.alpha = 1; kwkFondo5.oldAlpha = 1 
       kwkFondo5.oriX = kwkFondo5.x; kwkFondo5.oriY = kwkFondo5.y 
       kwkFondo5.name = "kwkFondo5" 
       menuGroup:insert(1,kwkFondo5); menuGroup.kwkFondo5 = kwkFondo5 

       -- kwkHija_gafas positioning 
       kwkHija_gafas = display.newImageRect( imgDir.. "kwkhija_gafas.png", 287, 522 ); 
       kwkHija_gafas.x = 1268; kwkHija_gafas.y = 1313; kwkHija_gafas.alpha = 1; kwkHija_gafas.oldAlpha = 1 
       kwkHija_gafas.oriX = kwkHija_gafas.x; kwkHija_gafas.oriY = kwkHija_gafas.y 
       kwkHija_gafas.name = "kwkHija_gafas" 
       menuGroup:insert(kwkHija_gafas); menuGroup.kwkHija_gafas = kwkHija_gafas 

       -- kwkSabioDormido positioning 
       kwkSabioDormido = display.newImageRect( imgDir.. "kwksabiodormido.png", 831, 997 ); 
       kwkSabioDormido.x = 1888; kwkSabioDormido.y = 608; kwkSabioDormido.alpha = 1; kwkSabioDormido.oldAlpha = 1 
       kwkSabioDormido.oriX = kwkSabioDormido.x; kwkSabioDormido.oriY = kwkSabioDormido.y 
       kwkSabioDormido.name = "kwkSabioDormido" 
       menuGroup:insert(kwkSabioDormido); menuGroup.kwkSabioDormido = kwkSabioDormido 

       -- kwkSer_gafas_3 positioning 
       kwkSer_gafas_3 = display.newImageRect( imgDir.. "kwkser_gafas_3.png", 387, 617 ); 
       kwkSer_gafas_3.x = 2194; kwkSer_gafas_3.y = 1004; kwkSer_gafas_3.alpha = 1; kwkSer_gafas_3.oldAlpha = 1 
       kwkSer_gafas_3.oriX = kwkSer_gafas_3.x; kwkSer_gafas_3.oriY = kwkSer_gafas_3.y 
       kwkSer_gafas_3.name = "kwkSer_gafas_3" 
       menuGroup:insert(kwkSer_gafas_3); menuGroup.kwkSer_gafas_3 = kwkSer_gafas_3 

       -- kwkMama_gafas positioning 
       kwkMama_gafas = display.newImageRect( imgDir.. "kwkmama_gafas.png", 331, 637 ); 
       kwkMama_gafas.x = 1577; kwkMama_gafas.y = 1265; kwkMama_gafas.alpha = 1; kwkMama_gafas.oldAlpha = 1 
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
       Text1 = display.newImageRect( imgDir.. "p45_text1.png", 1341, 96 ); 
       Text1.x = 1281; Text1.y = 51; Text1.alpha = 1; Text1.oldAlpha = 1 
       Text1.oriX = Text1.x; Text1.oriY = Text1.y 
       Text1.name = "Text1" 
       menuGroup:insert(Text1); menuGroup.Text1 = Text1 

       -- A positioning 
       A = display.newImageRect( imgDir.. "p45_a.png", 658, 51 ); 
       A.x = 844; A.y = 396; A.alpha = 1; A.oldAlpha = 1 
       A.oriX = A.x; A.oriY = A.y 
       A.name = "A" 
       menuGroup:insert(A); menuGroup.A = A 

       -- B positioning 
       B = display.newImageRect( imgDir.. "p45_b.png", 486, 51 ); 
       B.x = 758; B.y = 501; B.alpha = 1; B.oldAlpha = 1 
       B.oriX = B.x; B.oriY = B.y 
       B.name = "B" 
       menuGroup:insert(B); menuGroup.B = B 

       -- C positioning 
       C = display.newImageRect( imgDir.. "p45_c.png", 770, 51 ); 
       C.x = 903; C.y = 610; C.alpha = 1; C.oldAlpha = 1 
       C.oriX = C.x; C.oriY = C.y 
       C.name = "C" 
       menuGroup:insert(C); menuGroup.C = C 

       -- D positioning 
       D = display.newImageRect( imgDir.. "p45_d.png", 693, 51 ); 
       D.x = 859; D.y = 730; D.alpha = 1; D.oldAlpha = 1 
       D.oriX = D.x; D.oriY = D.y 
       D.name = "D" 
       menuGroup:insert(D); menuGroup.D = D 

       -- E positioning 
       E = display.newImageRect( imgDir.. "p45_e.png", 906, 50 ); 
       E.x = 966; E.y = 832; E.alpha = 1; E.oldAlpha = 1 
       E.oriX = E.x; E.oriY = E.y 
       E.name = "E" 
       menuGroup:insert(E); menuGroup.E = E 

       -- circuloA positioning 
       circuloA = display.newImageRect( imgDir.. "p45_circuloa.png", 60, 60 ); 
       circuloA.x = 1212; circuloA.y = 392; circuloA.alpha = 1; circuloA.oldAlpha = 1 
       circuloA.oriX = circuloA.x; circuloA.oriY = circuloA.y 
       circuloA.name = "circuloA" 
       menuGroup:insert(circuloA); menuGroup.circuloA = circuloA 

       -- circuloB positioning 
       circuloB = display.newImageRect( imgDir.. "p45_circulob.png", 60, 60 ); 
       circuloB.x = 1039; circuloB.y = 501; circuloB.alpha = 1; circuloB.oldAlpha = 1 
       circuloB.oriX = circuloB.x; circuloB.oriY = circuloB.y 
       circuloB.name = "circuloB" 
       menuGroup:insert(circuloB); menuGroup.circuloB = circuloB 

       -- circuloC positioning 
       circuloC = display.newImageRect( imgDir.. "p45_circuloc.png", 60, 60 ); 
       circuloC.x = 1325; circuloC.y = 610; circuloC.alpha = 1; circuloC.oldAlpha = 1 
       circuloC.oriX = circuloC.x; circuloC.oriY = circuloC.y 
       circuloC.name = "circuloC" 
       menuGroup:insert(circuloC); menuGroup.circuloC = circuloC 

       -- circuloD positioning 
       circuloD = display.newImageRect( imgDir.. "p45_circulod.png", 60, 60 ); 
       circuloD.x = 1242; circuloD.y = 731; circuloD.alpha = 1; circuloD.oldAlpha = 1 
       circuloD.oriX = circuloD.x; circuloD.oriY = circuloD.y 
       circuloD.name = "circuloD" 
       menuGroup:insert(circuloD); menuGroup.circuloD = circuloD 

       -- circuloE positioning 
       circuloE = display.newImageRect( imgDir.. "p45_circuloe.png", 60, 60 ); 
       circuloE.x = 1473; circuloE.y = 827; circuloE.alpha = 1; circuloE.oldAlpha = 1 
       circuloE.oriX = circuloE.x; circuloE.oriY = circuloE.y 
       circuloE.name = "circuloE" 
       menuGroup:insert(circuloE); menuGroup.circuloE = circuloE 

       -- kwkTick positioning 
       kwkTick = display.newImageRect( imgDir.. "kwktick.png", 303, 227 ); 
       kwkTick.x = 946; kwkTick.y = 1091; kwkTick.alpha = 1; kwkTick.oldAlpha = 1 
       kwkTick.oriX = kwkTick.x; kwkTick.oriY = kwkTick.y 
       kwkTick.name = "kwkTick" 
       menuGroup:insert(kwkTick); menuGroup.kwkTick = kwkTick 

       -- End3 positioning 
       End3 = display.newImageRect( imgDir.. "p45_end3.png", 644, 51 ); 
       End3.x = 1302; End3.y = 73; End3.alpha = 1; End3.oldAlpha = 1 
       End3.oriX = End3.x; End3.oriY = End3.y 
       End3.name = "End3" 
       menuGroup:insert(End3); menuGroup.End3 = End3 

       -- End1 positioning 
       End1 = display.newImageRect( imgDir.. "p45_end1.png", 1466, 51 ); 
       End1.x = 1273; End1.y = 69; End1.alpha = 1; End1.oldAlpha = 1 
       End1.oriX = End1.x; End1.oriY = End1.y 
       End1.name = "End1" 
       menuGroup:insert(End1); menuGroup.End1 = End1 

       -- End2 positioning 
       End2 = display.newImageRect( imgDir.. "p45_end2.png", 1331, 109 ); 
       End2.x = 1280; End2.y = 78; End2.alpha = 1; End2.oldAlpha = 1 
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
instantHide(circuloE)
instantHide(kwkTick)
instantHide(End1)
instantHide(End2)
instantHide(End3)

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
	elseif (lastPressed == "E") then
		hide(circuloE)
	end
end

function terminar ()
	terminado = true

	hide(Text1)
	hide(kwkTick)

	if (lastPressed == "D") then
		end1()
	elseif (lastPressed == "E") then
		end2()
	else
		badEnd()
	end

	saveKwikVars({"Preg04Completed", true})

    local myClosure_switch = function() 
        dispose(); director:changeScene( "page_"..(pag_pregunta4 + 1), "fade" ) 
    end 
    timerStash.newTimer_980 = timer.performWithDelay(4000, myClosure_switch, 1) 
end

function end1()
	delayShow(End1, 0)
	playAudioWithDelay(acierto, 0)

	local currentCL1 = kwkVarCheck("CL1")

	saveKwikVars({"CL1", currentCL1 + 1})

	updateCoefs()
end

function end2()
	delayShow(End2, 0)
	playAudioWithDelay(acierto, 0)

	local currentCL5 = kwkVarCheck("CL5")

	saveKwikVars({"CL5", currentCL5 + 10})

	updateCoefs()
end


function badEnd()
	delayShow(End3, 0)
	playAudioWithDelay(fallo, 0)
end 
 
       -- Actions (functions) 
       function hideInventory(event) 
            transitionStash.newTransition_228 = transition.to( kwkRectInv, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_228 = transition.to( kwkInvBiberon, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_229 = transition.to( kwkInvTijeras, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_229 = transition.to( kwkInvRosa, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_229 = transition.to( kwkInvErizo, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_229 = transition.to( kwkInvMaquina, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_230 = transition.to( kwkInvCelo, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_230 = transition.to( kwkInvGuitarra, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_230 = transition.to( kwkInvCola, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_230 = transition.to( kwkInvCerrar, {alpha=0, time=0, delay=0}) 
           InventoryShown = false
          saveKwikVars({"InventoryShown",false}) 
       end 

       function showInventory(event) 
            transitionStash.newTransition_240 = transition.to( kwkRectInv, {alpha=kwkRectInv.oldAlpha, time=0, delay=0}) 
         if (hasBiberon == true) then 
            transitionStash.newTransition_241 = transition.to( kwkInvBiberon, {alpha=kwkInvBiberon.oldAlpha, time=0, delay=0}) 
         end 
         if (hasTijeras == true) then 
            transitionStash.newTransition_242 = transition.to( kwkInvTijeras, {alpha=kwkInvTijeras.oldAlpha, time=0, delay=0}) 
         end 
         if (hasMaquina == true) then 
            transitionStash.newTransition_242 = transition.to( kwkInvMaquina, {alpha=kwkInvMaquina.oldAlpha, time=0, delay=0}) 
         end 
         if (hasRosa == true) then 
            transitionStash.newTransition_243 = transition.to( kwkInvRosa, {alpha=kwkInvRosa.oldAlpha, time=0, delay=0}) 
         end 
         if (hasErizo == true) then 
            transitionStash.newTransition_244 = transition.to( kwkInvErizo, {alpha=kwkInvErizo.oldAlpha, time=0, delay=0}) 
         end 
         if (hasCelo == true) then 
            transitionStash.newTransition_245 = transition.to( kwkInvCelo, {alpha=kwkInvCelo.oldAlpha, time=0, delay=0}) 
         end 
         if (hasGuitarra == true) then 
            transitionStash.newTransition_245 = transition.to( kwkInvGuitarra, {alpha=kwkInvGuitarra.oldAlpha, time=0, delay=0}) 
         end 
         if (hasCola == true) then 
            transitionStash.newTransition_246 = transition.to( kwkInvCola, {alpha=kwkInvCola.oldAlpha, time=0, delay=0}) 
         end 
           InventoryShown = true
          saveKwikVars({"InventoryShown",true}) 
            transitionStash.newTransition_256 = transition.to( kwkInvDestacado, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_257 = transition.to( kwkInvCerrar, {alpha=kwkInvCerrar.oldAlpha, time=0, delay=0}) 
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
       local function onEEvent(event) 
          btnE(E) 
          return true 
       end 
       E:addEventListener("tap", onEEvent ) 

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

       function btnE(self) 
           --External code 
           if (lastPressed ~= "E" and terminado == false) then
	show (circuloE)
	show (kwkTick)
	hideLastPressed()
	lastPressed = "E"
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
