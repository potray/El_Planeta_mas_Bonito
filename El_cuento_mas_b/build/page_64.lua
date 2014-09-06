-- Code created by Kwik - Copyright: kwiksher.com 
-- Version: 2.7.6b 
module(..., package.seeall) 

function new() 
    local numPages = 85 
    local menuGroup = display.newGroup() 
    local dispose 
    local _W = display.contentWidth; 
    local _H = display.contentHeight; 

    -- Audio callings 
    local acierto =  audio.loadSound( audioDir.."acierto.mp3") 
    local fallo =  audio.loadSound( audioDir.."fallo.mp3") 


    local drawScreen = function() 

       local curPage = 64 

       Navigation.new("page", { backColor = {125, 125, 125}, anim=1, timer=1,  totPages = numPages, curPage = curPage, thumbW = 200, thumbH = 125, alpha = 0, imageDir = imgDir, dire = "bottom", audio={{ 1, "acierto"},{ 2, "fallo"},} } ) 
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
       local btnReset

       -- Layer names 
       local Cuerda_H1  
       local Cuerda_H2  
       local Cuerda_H3  
       local Cuerda_V2  
       local Cuerda_V1  
       local Cuerda_V3  
       local Fondo_prueba_6  
       local kwkNudo  
       local kwkBolsa3  
       local kwkNuez  
       local Cesta_de_nueces  
       local h1  
       local h3  
       local v2  
       local h2  
       local v1  
       local v3  
       local kwkRect2  
       local kwkRect1  
       local kwkCLText  
       local kwkComodinText  
       local kwkCIText  
       local kwkCGText  
       local kwkDiamante  
       local kwkEsmeralda  
       local kwkMedalla  
       local kwkruby  
       local NuezV1_1  
       local NuezV1_2  
       local NuezV2_1  
       local NuezV2_2  
       local NuezV3_1  
       local NuezV3_2  
       local NuezH1_1  
       local NuezH1_2  
       local NuezH2_1  
       local NuezH2_2  
       local NuezH3_1  
       local NuezH3_2  
       local Nudo1  
       local Nudo2  
       local Nudo3  
       local Nudo4  
       local Nudo5  
       local Nudo7  
       local Nudo6  
       local Nudo8  
       local Nudo9  
       local kwkHormiga2  
       local Ayuda0  
       local Rubi  
       local Ayuda1  
       local Ayuda2  
       local Ayuda3  
       local Fin  

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

       -- Cuerda_H1 positioning 
       Cuerda_H1 = display.newImageRect( imgDir.. "p64_cuerda_h1.png", 2536, 55 ); 
       Cuerda_H1.x = 1279; Cuerda_H1.y = 491; Cuerda_H1.alpha = 1; Cuerda_H1.oldAlpha = 1 
       Cuerda_H1.oriX = Cuerda_H1.x; Cuerda_H1.oriY = Cuerda_H1.y 
       Cuerda_H1.name = "Cuerda_H1" 
       menuGroup:insert(1,Cuerda_H1); menuGroup.Cuerda_H1 = Cuerda_H1 

       -- Cuerda_H2 positioning 
       Cuerda_H2 = display.newImageRect( imgDir.. "p64_cuerda_h2.png", 2536, 55 ); 
       Cuerda_H2.x = 1281; Cuerda_H2.y = 809; Cuerda_H2.alpha = 1; Cuerda_H2.oldAlpha = 1 
       Cuerda_H2.oriX = Cuerda_H2.x; Cuerda_H2.oriY = Cuerda_H2.y 
       Cuerda_H2.name = "Cuerda_H2" 
       menuGroup:insert(Cuerda_H2); menuGroup.Cuerda_H2 = Cuerda_H2 

       -- Cuerda_H3 positioning 
       Cuerda_H3 = display.newImageRect( imgDir.. "p64_cuerda_h3.png", 2536, 55 ); 
       Cuerda_H3.x = 1265; Cuerda_H3.y = 1169; Cuerda_H3.alpha = 1; Cuerda_H3.oldAlpha = 1 
       Cuerda_H3.oriX = Cuerda_H3.x; Cuerda_H3.oriY = Cuerda_H3.y 
       Cuerda_H3.name = "Cuerda_H3" 
       menuGroup:insert(Cuerda_H3); menuGroup.Cuerda_H3 = Cuerda_H3 

       -- Cuerda_V2 positioning 
       Cuerda_V2 = display.newImageRect( imgDir.. "p64_cuerda_v2.png", 55, 1597 ); 
       Cuerda_V2.x = 1275; Cuerda_V2.y = 801; Cuerda_V2.alpha = 1; Cuerda_V2.oldAlpha = 1 
       Cuerda_V2.oriX = Cuerda_V2.x; Cuerda_V2.oriY = Cuerda_V2.y 
       Cuerda_V2.name = "Cuerda_V2" 
       menuGroup:insert(Cuerda_V2); menuGroup.Cuerda_V2 = Cuerda_V2 

       -- Cuerda_V1 positioning 
       Cuerda_V1 = display.newImageRect( imgDir.. "p64_cuerda_v1.png", 55, 1597 ); 
       Cuerda_V1.x = 633; Cuerda_V1.y = 806; Cuerda_V1.alpha = 1; Cuerda_V1.oldAlpha = 1 
       Cuerda_V1.oriX = Cuerda_V1.x; Cuerda_V1.oriY = Cuerda_V1.y 
       Cuerda_V1.name = "Cuerda_V1" 
       menuGroup:insert(Cuerda_V1); menuGroup.Cuerda_V1 = Cuerda_V1 

       -- Cuerda_V3 positioning 
       Cuerda_V3 = display.newImageRect( imgDir.. "p64_cuerda_v3.png", 55, 1597 ); 
       Cuerda_V3.x = 1962; Cuerda_V3.y = 806; Cuerda_V3.alpha = 1; Cuerda_V3.oldAlpha = 1 
       Cuerda_V3.oriX = Cuerda_V3.x; Cuerda_V3.oriY = Cuerda_V3.y 
       Cuerda_V3.name = "Cuerda_V3" 
       menuGroup:insert(Cuerda_V3); menuGroup.Cuerda_V3 = Cuerda_V3 

       -- Fondo_prueba_6 positioning 
       Fondo_prueba_6 = display.newImageRect( imgDir.. "p64_fondo_prueba_6.png", 2559, 1599 ); 
       Fondo_prueba_6.x = 1279; Fondo_prueba_6.y = 799; Fondo_prueba_6.alpha = 1; Fondo_prueba_6.oldAlpha = 1 
       Fondo_prueba_6.oriX = Fondo_prueba_6.x; Fondo_prueba_6.oriY = Fondo_prueba_6.y 
       Fondo_prueba_6.name = "Fondo_prueba_6" 
       menuGroup:insert(Fondo_prueba_6); menuGroup.Fondo_prueba_6 = Fondo_prueba_6 

       -- kwkNudo positioning 
       kwkNudo = display.newImageRect( imgDir.. "kwknudo.png", 235, 181 ); 
       kwkNudo.x = 930; kwkNudo.y = 226; kwkNudo.alpha = 1; kwkNudo.oldAlpha = 1 
       kwkNudo.oriX = kwkNudo.x; kwkNudo.oriY = kwkNudo.y 
       kwkNudo.name = "kwkNudo" 
       menuGroup:insert(kwkNudo); menuGroup.kwkNudo = kwkNudo 

       -- kwkBolsa3 positioning 
       kwkBolsa3 = display.newImageRect( imgDir.. "kwkbolsa3.png", 348, 360 ); 
       kwkBolsa3.x = 925; kwkBolsa3.y = 219; kwkBolsa3.alpha = 1; kwkBolsa3.oldAlpha = 1 
       kwkBolsa3.oriX = kwkBolsa3.x; kwkBolsa3.oriY = kwkBolsa3.y 
       kwkBolsa3.name = "kwkBolsa3" 
       menuGroup:insert(kwkBolsa3); menuGroup.kwkBolsa3 = kwkBolsa3 

       -- kwkNuez positioning 
       kwkNuez = display.newImageRect( imgDir.. "kwknuez.png", 174, 140 ); 
       kwkNuez.x = 1624; kwkNuez.y = 287; kwkNuez.alpha = 1; kwkNuez.oldAlpha = 1 
       kwkNuez.oriX = kwkNuez.x; kwkNuez.oriY = kwkNuez.y 
       kwkNuez.name = "kwkNuez" 
       menuGroup:insert(kwkNuez); menuGroup.kwkNuez = kwkNuez 

       -- Cesta_de_nueces positioning 
       Cesta_de_nueces = display.newImageRect( imgDir.. "p64_cesta_de_nueces.png", 346, 426 ); 
       Cesta_de_nueces.x = 1618; Cesta_de_nueces.y = 220; Cesta_de_nueces.alpha = 1; Cesta_de_nueces.oldAlpha = 1 
       Cesta_de_nueces.oriX = Cesta_de_nueces.x; Cesta_de_nueces.oriY = Cesta_de_nueces.y 
       Cesta_de_nueces.name = "Cesta_de_nueces" 
       menuGroup:insert(Cesta_de_nueces); menuGroup.Cesta_de_nueces = Cesta_de_nueces 

       -- h1 positioning 
       h1 = display.newImageRect( imgDir.. "p64_h1.png", 2538, 56 ); 
       h1.x = 1273; h1.y = 492; h1.alpha = 1; h1.oldAlpha = 1 
       h1.oriX = h1.x; h1.oriY = h1.y 
       h1.name = "h1" 
       menuGroup:insert(h1); menuGroup.h1 = h1 

       -- h3 positioning 
       h3 = display.newImageRect( imgDir.. "p64_h3.png", 2533, 56 ); 
       h3.x = 1287; h3.y = 1169; h3.alpha = 1; h3.oldAlpha = 1 
       h3.oriX = h3.x; h3.oriY = h3.y 
       h3.name = "h3" 
       menuGroup:insert(h3); menuGroup.h3 = h3 

       -- v2 positioning 
       v2 = display.newImageRect( imgDir.. "p64_v2.png", 55, 1603 ); 
       v2.x = 1274; v2.y = 802; v2.alpha = 1; v2.oldAlpha = 1 
       v2.oriX = v2.x; v2.oriY = v2.y 
       v2.name = "v2" 
       menuGroup:insert(v2); menuGroup.v2 = v2 

       -- h2 positioning 
       h2 = display.newImageRect( imgDir.. "p64_h2.png", 2542, 55 ); 
       h2.x = 1280; h2.y = 811; h2.alpha = 1; h2.oldAlpha = 1 
       h2.oriX = h2.x; h2.oriY = h2.y 
       h2.name = "h2" 
       menuGroup:insert(h2); menuGroup.h2 = h2 

       -- v1 positioning 
       v1 = display.newImageRect( imgDir.. "p64_v1.png", 55, 1600 ); 
       v1.x = 634; v1.y = 799; v1.alpha = 1; v1.oldAlpha = 1 
       v1.oriX = v1.x; v1.oriY = v1.y 
       v1.name = "v1" 
       menuGroup:insert(v1); menuGroup.v1 = v1 

       -- v3 positioning 
       v3 = display.newImageRect( imgDir.. "p64_v3.png", 55, 1611 ); 
       v3.x = 1964; v3.y = 801; v3.alpha = 1; v3.oldAlpha = 1 
       v3.oriX = v3.x; v3.oriY = v3.y 
       v3.name = "v3" 
       menuGroup:insert(v3); menuGroup.v3 = v3 

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

       -- kwkruby positioning 
       kwkruby = display.newImageRect( imgDir.. "kwkruby.png", 224, 220 ); 
       kwkruby.x = 332; kwkruby.y = 128; kwkruby.alpha = 1; kwkruby.oldAlpha = 1 
       kwkruby.oriX = kwkruby.x; kwkruby.oriY = kwkruby.y 
       kwkruby.name = "kwkruby" 
       menuGroup:insert(kwkruby); menuGroup.kwkruby = kwkruby 

       -- NuezV1_1 positioning 
       NuezV1_1 = display.newImageRect( imgDir.. "p64_nuezv1_1.png", 171, 140 ); 
       NuezV1_1.x = 633; NuezV1_1.y = 66; NuezV1_1.alpha = 1; NuezV1_1.oldAlpha = 1 
       NuezV1_1.oriX = NuezV1_1.x; NuezV1_1.oriY = NuezV1_1.y 
       NuezV1_1.name = "NuezV1_1" 
       menuGroup:insert(NuezV1_1); menuGroup.NuezV1_1 = NuezV1_1 

       -- NuezV1_2 positioning 
       NuezV1_2 = display.newImageRect( imgDir.. "p64_nuezv1_2.png", 171, 140 ); 
       NuezV1_2.x = 633; NuezV1_2.y = 1529; NuezV1_2.alpha = 1; NuezV1_2.oldAlpha = 1 
       NuezV1_2.oriX = NuezV1_2.x; NuezV1_2.oriY = NuezV1_2.y 
       NuezV1_2.name = "NuezV1_2" 
       menuGroup:insert(NuezV1_2); menuGroup.NuezV1_2 = NuezV1_2 

       -- NuezV2_1 positioning 
       NuezV2_1 = display.newImageRect( imgDir.. "p64_nuezv2_1.png", 171, 140 ); 
       NuezV2_1.x = 1273; NuezV2_1.y = 66; NuezV2_1.alpha = 1; NuezV2_1.oldAlpha = 1 
       NuezV2_1.oriX = NuezV2_1.x; NuezV2_1.oriY = NuezV2_1.y 
       NuezV2_1.name = "NuezV2_1" 
       menuGroup:insert(NuezV2_1); menuGroup.NuezV2_1 = NuezV2_1 

       -- NuezV2_2 positioning 
       NuezV2_2 = display.newImageRect( imgDir.. "p64_nuezv2_2.png", 171, 140 ); 
       NuezV2_2.x = 1273; NuezV2_2.y = 1529; NuezV2_2.alpha = 1; NuezV2_2.oldAlpha = 1 
       NuezV2_2.oriX = NuezV2_2.x; NuezV2_2.oriY = NuezV2_2.y 
       NuezV2_2.name = "NuezV2_2" 
       menuGroup:insert(NuezV2_2); menuGroup.NuezV2_2 = NuezV2_2 

       -- NuezV3_1 positioning 
       NuezV3_1 = display.newImageRect( imgDir.. "p64_nuezv3_1.png", 171, 140 ); 
       NuezV3_1.x = 1965; NuezV3_1.y = 66; NuezV3_1.alpha = 1; NuezV3_1.oldAlpha = 1 
       NuezV3_1.oriX = NuezV3_1.x; NuezV3_1.oriY = NuezV3_1.y 
       NuezV3_1.name = "NuezV3_1" 
       menuGroup:insert(NuezV3_1); menuGroup.NuezV3_1 = NuezV3_1 

       -- NuezV3_2 positioning 
       NuezV3_2 = display.newImageRect( imgDir.. "p64_nuezv3_2.png", 171, 140 ); 
       NuezV3_2.x = 1965; NuezV3_2.y = 1529; NuezV3_2.alpha = 1; NuezV3_2.oldAlpha = 1 
       NuezV3_2.oriX = NuezV3_2.x; NuezV3_2.oriY = NuezV3_2.y 
       NuezV3_2.name = "NuezV3_2" 
       menuGroup:insert(NuezV3_2); menuGroup.NuezV3_2 = NuezV3_2 

       -- NuezH1_1 positioning 
       NuezH1_1 = display.newImageRect( imgDir.. "p64_nuezh1_1.png", 171, 140 ); 
       NuezH1_1.x = 90; NuezH1_1.y = 496; NuezH1_1.alpha = 1; NuezH1_1.oldAlpha = 1 
       NuezH1_1.oriX = NuezH1_1.x; NuezH1_1.oriY = NuezH1_1.y 
       NuezH1_1.name = "NuezH1_1" 
       menuGroup:insert(NuezH1_1); menuGroup.NuezH1_1 = NuezH1_1 

       -- NuezH1_2 positioning 
       NuezH1_2 = display.newImageRect( imgDir.. "p64_nuezh1_2.png", 171, 140 ); 
       NuezH1_2.x = 2458; NuezH1_2.y = 484; NuezH1_2.alpha = 1; NuezH1_2.oldAlpha = 1 
       NuezH1_2.oriX = NuezH1_2.x; NuezH1_2.oriY = NuezH1_2.y 
       NuezH1_2.name = "NuezH1_2" 
       menuGroup:insert(NuezH1_2); menuGroup.NuezH1_2 = NuezH1_2 

       -- NuezH2_1 positioning 
       NuezH2_1 = display.newImageRect( imgDir.. "p64_nuezh2_1.png", 171, 140 ); 
       NuezH2_1.x = 90; NuezH2_1.y = 811; NuezH2_1.alpha = 1; NuezH2_1.oldAlpha = 1 
       NuezH2_1.oriX = NuezH2_1.x; NuezH2_1.oriY = NuezH2_1.y 
       NuezH2_1.name = "NuezH2_1" 
       menuGroup:insert(NuezH2_1); menuGroup.NuezH2_1 = NuezH2_1 

       -- NuezH2_2 positioning 
       NuezH2_2 = display.newImageRect( imgDir.. "p64_nuezh2_2.png", 171, 140 ); 
       NuezH2_2.x = 2458; NuezH2_2.y = 799; NuezH2_2.alpha = 1; NuezH2_2.oldAlpha = 1 
       NuezH2_2.oriX = NuezH2_2.x; NuezH2_2.oriY = NuezH2_2.y 
       NuezH2_2.name = "NuezH2_2" 
       menuGroup:insert(NuezH2_2); menuGroup.NuezH2_2 = NuezH2_2 

       -- NuezH3_1 positioning 
       NuezH3_1 = display.newImageRect( imgDir.. "p64_nuezh3_1.png", 171, 140 ); 
       NuezH3_1.x = 90; NuezH3_1.y = 1176; NuezH3_1.alpha = 1; NuezH3_1.oldAlpha = 1 
       NuezH3_1.oriX = NuezH3_1.x; NuezH3_1.oriY = NuezH3_1.y 
       NuezH3_1.name = "NuezH3_1" 
       menuGroup:insert(NuezH3_1); menuGroup.NuezH3_1 = NuezH3_1 

       -- NuezH3_2 positioning 
       NuezH3_2 = display.newImageRect( imgDir.. "p64_nuezh3_2.png", 171, 140 ); 
       NuezH3_2.x = 2458; NuezH3_2.y = 1164; NuezH3_2.alpha = 1; NuezH3_2.oldAlpha = 1 
       NuezH3_2.oriX = NuezH3_2.x; NuezH3_2.oriY = NuezH3_2.y 
       NuezH3_2.name = "NuezH3_2" 
       menuGroup:insert(NuezH3_2); menuGroup.NuezH3_2 = NuezH3_2 

       -- Nudo1 positioning 
       Nudo1 = display.newImageRect( imgDir.. "p64_nudo1.png", 236, 179 ); 
       Nudo1.x = 723; Nudo1.y = 541; Nudo1.alpha = 1; Nudo1.oldAlpha = 1 
       Nudo1.oriX = Nudo1.x; Nudo1.oriY = Nudo1.y 
       Nudo1.name = "Nudo1" 
       menuGroup:insert(Nudo1); menuGroup.Nudo1 = Nudo1 

       -- Nudo2 positioning 
       Nudo2 = display.newImageRect( imgDir.. "p64_nudo2.png", 236, 179 ); 
       Nudo2.x = 1356; Nudo2.y = 541; Nudo2.alpha = 1; Nudo2.oldAlpha = 1 
       Nudo2.oriX = Nudo2.x; Nudo2.oriY = Nudo2.y 
       Nudo2.name = "Nudo2" 
       menuGroup:insert(Nudo2); menuGroup.Nudo2 = Nudo2 

       -- Nudo3 positioning 
       Nudo3 = display.newImageRect( imgDir.. "p64_nudo3.png", 236, 179 ); 
       Nudo3.x = 2042; Nudo3.y = 541; Nudo3.alpha = 1; Nudo3.oldAlpha = 1 
       Nudo3.oriX = Nudo3.x; Nudo3.oriY = Nudo3.y 
       Nudo3.name = "Nudo3" 
       menuGroup:insert(Nudo3); menuGroup.Nudo3 = Nudo3 

       -- Nudo4 positioning 
       Nudo4 = display.newImageRect( imgDir.. "p64_nudo4.png", 236, 179 ); 
       Nudo4.x = 723; Nudo4.y = 856; Nudo4.alpha = 1; Nudo4.oldAlpha = 1 
       Nudo4.oriX = Nudo4.x; Nudo4.oriY = Nudo4.y 
       Nudo4.name = "Nudo4" 
       menuGroup:insert(Nudo4); menuGroup.Nudo4 = Nudo4 

       -- Nudo5 positioning 
       Nudo5 = display.newImageRect( imgDir.. "p64_nudo5.png", 236, 179 ); 
       Nudo5.x = 1356; Nudo5.y = 856; Nudo5.alpha = 1; Nudo5.oldAlpha = 1 
       Nudo5.oriX = Nudo5.x; Nudo5.oriY = Nudo5.y 
       Nudo5.name = "Nudo5" 
       menuGroup:insert(Nudo5); menuGroup.Nudo5 = Nudo5 

       -- Nudo7 positioning 
       Nudo7 = display.newImageRect( imgDir.. "p64_nudo7.png", 236, 179 ); 
       Nudo7.x = 723; Nudo7.y = 1211; Nudo7.alpha = 1; Nudo7.oldAlpha = 1 
       Nudo7.oriX = Nudo7.x; Nudo7.oriY = Nudo7.y 
       Nudo7.name = "Nudo7" 
       menuGroup:insert(Nudo7); menuGroup.Nudo7 = Nudo7 

       -- Nudo6 positioning 
       Nudo6 = display.newImageRect( imgDir.. "p64_nudo6.png", 236, 179 ); 
       Nudo6.x = 2042; Nudo6.y = 856; Nudo6.alpha = 1; Nudo6.oldAlpha = 1 
       Nudo6.oriX = Nudo6.x; Nudo6.oriY = Nudo6.y 
       Nudo6.name = "Nudo6" 
       menuGroup:insert(Nudo6); menuGroup.Nudo6 = Nudo6 

       -- Nudo8 positioning 
       Nudo8 = display.newImageRect( imgDir.. "p64_nudo8.png", 236, 179 ); 
       Nudo8.x = 1356; Nudo8.y = 1211; Nudo8.alpha = 1; Nudo8.oldAlpha = 1 
       Nudo8.oriX = Nudo8.x; Nudo8.oriY = Nudo8.y 
       Nudo8.name = "Nudo8" 
       menuGroup:insert(Nudo8); menuGroup.Nudo8 = Nudo8 

       -- Nudo9 positioning 
       Nudo9 = display.newImageRect( imgDir.. "p64_nudo9.png", 236, 179 ); 
       Nudo9.x = 2042; Nudo9.y = 1211; Nudo9.alpha = 1; Nudo9.oldAlpha = 1 
       Nudo9.oriX = Nudo9.x; Nudo9.oriY = Nudo9.y 
       Nudo9.name = "Nudo9" 
       menuGroup:insert(Nudo9); menuGroup.Nudo9 = Nudo9 

       -- kwkHormiga2 positioning 
       kwkHormiga2 = display.newImageRect( imgDir.. "kwkhormiga2.png", 189, 193 ); 
       kwkHormiga2.x = 1821; kwkHormiga2.y = 1022; kwkHormiga2.alpha = 1; kwkHormiga2.oldAlpha = 1 
       kwkHormiga2.oriX = kwkHormiga2.x; kwkHormiga2.oriY = kwkHormiga2.y 
       kwkHormiga2.name = "kwkHormiga2" 
       menuGroup:insert(kwkHormiga2); menuGroup.kwkHormiga2 = kwkHormiga2 

       -- Ayuda0 positioning 
       Ayuda0 = display.newImageRect( imgDir.. "p64_ayuda0.png", 358, 153 ); 
       Ayuda0.x = 1538; Ayuda0.y = 989; Ayuda0.alpha = 1; Ayuda0.oldAlpha = 1 
       Ayuda0.oriX = Ayuda0.x; Ayuda0.oriY = Ayuda0.y 
       Ayuda0.name = "Ayuda0" 
       menuGroup:insert(Ayuda0); menuGroup.Ayuda0 = Ayuda0 

       -- Rubi positioning 
       Rubi = display.newImageRect( imgDir.. "p64_rubi.png", 174, 255 ); 
       Rubi.x = 2463; Rubi.y = 1479; Rubi.alpha = 1; Rubi.oldAlpha = 1 
       Rubi.oriX = Rubi.x; Rubi.oriY = Rubi.y 
       Rubi.name = "Rubi" 
       menuGroup:insert(Rubi); menuGroup.Rubi = Rubi 

       -- Ayuda1 positioning 
       Ayuda1 = display.newImageRect( imgDir.. "p64_ayuda1.png", 389, 96 ); 
       Ayuda1.x = 1529; Ayuda1.y = 1019; Ayuda1.alpha = 1; Ayuda1.oldAlpha = 1 
       Ayuda1.oriX = Ayuda1.x; Ayuda1.oriY = Ayuda1.y 
       Ayuda1.name = "Ayuda1" 
       menuGroup:insert(Ayuda1); menuGroup.Ayuda1 = Ayuda1 

       -- Ayuda2 positioning 
       Ayuda2 = display.newImageRect( imgDir.. "p64_ayuda2.png", 386, 96 ); 
       Ayuda2.x = 1537; Ayuda2.y = 1019; Ayuda2.alpha = 1; Ayuda2.oldAlpha = 1 
       Ayuda2.oriX = Ayuda2.x; Ayuda2.oriY = Ayuda2.y 
       Ayuda2.name = "Ayuda2" 
       menuGroup:insert(Ayuda2); menuGroup.Ayuda2 = Ayuda2 

       -- Ayuda3 positioning 
       Ayuda3 = display.newImageRect( imgDir.. "p64_ayuda3.png", 418, 153 ); 
       Ayuda3.x = 1538; Ayuda3.y = 996; Ayuda3.alpha = 1; Ayuda3.oldAlpha = 1 
       Ayuda3.oriX = Ayuda3.x; Ayuda3.oriY = Ayuda3.y 
       Ayuda3.name = "Ayuda3" 
       menuGroup:insert(Ayuda3); menuGroup.Ayuda3 = Ayuda3 

       -- Fin positioning 
       Fin = display.newImageRect( imgDir.. "p64_fin.png", 432, 91 ); 
       Fin.x = 1530; Fin.y = 995; Fin.alpha = 1; Fin.oldAlpha = 1 
       Fin.oriX = Fin.x; Fin.oriY = Fin.y 
       Fin.name = "Fin" 
       menuGroup:insert(Fin); menuGroup.Fin = Fin 
 
       -- Group(s) creation 

       -- (MIDDLE) External code will render here 
       --Puntuaciones
local addCL1 = 15
local addCL3 = 15
local addCI2 = 15
local addCI5 = 15

local falloCL_1 = false
local falloCL_2 = false
local falloCL_3 = false

--Fases
local faseActual = 1
local fase1Terminada = false
local fase2Terminada = false

--Ocultar las cuerdas
instantHide(h1)
instantHide(h2)
instantHide(h3)
instantHide(v1)
instantHide(v2)
instantHide(v3)

--Ocultar la ayuda
instantHide(Ayuda1)
instantHide(Ayuda2)
instantHide(Ayuda3)
instantHide(Fin)
local ayudaActual = Ayuda0
local necesitaAyuda1 = true
local necesitaAyuda2 = true
local necesitaAyuda3 = true

local reloadCanvas = 0 

--Cerrojos para no poder spamear nueces ni hojas
local lockNuez = false
local lockHoja = false

--Contadores para que cada objeto tenga un nombre único
local contadorNueces = 0
local contadorHojas = 0

--Nuez que se ha empezado a unir
local nuezUniendose = -1

--Grupo de círculos pintados
local grupoCirculos

--Tabla con las nueces transparentes, para hacer las comprobaciones con bucles
local nuecesTransparentes = {}
nuecesTransparentes[0] = NuezV1_1
nuecesTransparentes[1] = NuezV1_2
nuecesTransparentes[2] = NuezV2_1
nuecesTransparentes[3] = NuezV2_2
nuecesTransparentes[4] = NuezV3_1
nuecesTransparentes[5] = NuezV3_2
nuecesTransparentes[6] = NuezH1_1
nuecesTransparentes[7] = NuezH1_2
nuecesTransparentes[8] = NuezH2_1
nuecesTransparentes[9] = NuezH2_2
nuecesTransparentes[10] = NuezH3_1
nuecesTransparentes[11] = NuezH3_2

--Tabla con las hojas transparentes
local hojasTransparentes = {}
hojasTransparentes[0] = Nudo1
hojasTransparentes[1] = Nudo2
hojasTransparentes[2] = Nudo3
hojasTransparentes[3] = Nudo4
hojasTransparentes[4] = Nudo5
hojasTransparentes[5] = Nudo6
hojasTransparentes[6] = Nudo7
hojasTransparentes[7] = Nudo8
hojasTransparentes[8] = Nudo9

--Tabla para controlar las nueces colcadas correctamente
nuecesColocadas = {}
for i = 0, 11 do
	nuecesColocadas[i] = false
end

--Tabla para controlar las hojas colocadas correctamente
hojasColocadas = {}
for i = 0, 8 do
	hojasColocadas[i] = false
end

--Tabla para controlar las nueces unidas
local nuecesUnidas = {}
for i = 0, 11 do
	--En lugar de tener índices numéricos, los índices son los nombres de las nueces
	nuecesUnidas[nuecesTransparentes[i].name] = false
end

--Canvas horizontal 1
canvas_h1 = display.newRect(0, 0, Cuerda_H1.width, Cuerda_H1.height) 
canvas_h1:setFillColor(255,255,255) 
canvas_h1.x = Cuerda_H1.x; canvas_h1.y = Cuerda_H1.y canvas_h1.alpha = 0.01; 
cR, cG, cB = 196, 128, 2 
brushSize = 30; brushAlpha = 1 
canvas_h1.name = "canvas_h1" 
menuGroup:insert(canvas_h1) 
menuGroup.canvas_h1 = canvas_h1 

--Canvas horizontal 2
canvas_h2 = display.newRect(0, 0, Cuerda_H2.width, Cuerda_H2.height) 
canvas_h2:setFillColor(255,255,255) 
canvas_h2.x = Cuerda_H2.x; canvas_h2.y = Cuerda_H2.y canvas_h2.alpha = 0.01; 
cR, cG, cB = 196, 128, 2 
brushSize = 30; brushAlpha = 1 
canvas_h2.name = "canvas_h2" 
menuGroup:insert(canvas_h2) 
menuGroup.canvas_h2 = canvas_h2 

--Canvas horizontal 3
canvas_h3 = display.newRect(0, 0, Cuerda_H3.width, Cuerda_H3.height) 
canvas_h3:setFillColor(255,255,255) 
canvas_h3.x = Cuerda_H3.x; canvas_h3.y = Cuerda_H3.y canvas_h3.alpha = 0.01; 
cR, cG, cB = 196, 128, 2 
brushSize = 30; brushAlpha = 1 
canvas_h3.name = "canvas_h3" 
menuGroup:insert(canvas_h3) 
menuGroup.canvas_h3 = canvas_h3

--Canvas vertical 1
canvas_v1 = display.newRect(0, 0, Cuerda_V1.width, Cuerda_V1.height) 
canvas_v1:setFillColor(255,255,255) 
canvas_v1.x = Cuerda_V1.x; canvas_v1.y = Cuerda_V1.y canvas_v1.alpha = 0.01; 
cR, cG, cB = 196, 128, 2 
brushSize = 30; brushAlpha = 1 
canvas_v1.name = "canvas_v1" 
menuGroup:insert(canvas_v1) 
menuGroup.canvas_v1 = canvas_v1 

--Canvas vertical 2
canvas_v2 = display.newRect(0, 0, Cuerda_V2.width, Cuerda_V2.height) 
canvas_v2:setFillColor(255,255,255) 
canvas_v2.x = Cuerda_V2.x; canvas_v2.y = Cuerda_V2.y canvas_v2.alpha = 0.01; 
cR, cG, cB = 196, 128, 2 
brushSize = 30; brushAlpha = 1 
canvas_v2.name = "canvas_v2" 
menuGroup:insert(canvas_v2) 
menuGroup.canvas_v2 = canvas_v2 

--Canvas vertical 3
canvas_v3 = display.newRect(0, 0, Cuerda_V3.width, Cuerda_V3.height) 
canvas_v3:setFillColor(255,255,255) 
canvas_v3.x = Cuerda_V3.x; canvas_v3.y = Cuerda_V3.y canvas_v3.alpha = 0.01; 
cR, cG, cB = 196, 128, 2 
brushSize = 30; brushAlpha = 1 
canvas_v3.name = "canvas_v3" 
menuGroup:insert(canvas_v3) 
menuGroup.canvas_v3 = canvas_v3 

--Función para mostrar la cuerda correspondiente a una nuez
function mostrarCuerda (nuez)
	if (nuez == NuezH1_1 or nuez == NuezH1_2) then show (h1)
	elseif (nuez == NuezH2_1 or nuez == NuezH2_2) then show (h2)
	elseif (nuez == NuezH3_1 or nuez == NuezH3_2) then show (h3)
	elseif (nuez == NuezV1_1 or nuez == NuezV1_2) then show (v1)
	elseif (nuez == NuezV2_1 or nuez == NuezV2_2) then show (v2)
	elseif (nuez == NuezV3_1 or nuez == NuezV3_2) then show (v3)
	end
end

function printNuecesUnidas ()
	for i = 0, 11 do
		print (nuecesUnidas[nuecesTransparentes[i].name])
	end
end

--Función para comprobar si todas las nueces se han unido
function checkNuecesUnidas ()
	local todasUnidas = true

	for i = 0, 11 do
		if (nuecesUnidas[nuecesTransparentes[i].name] == false) then
			todasUnidas = false
		end
	end

	return todasUnidas
end


function mostrarPuntuaciones()
	print ("Se le otorgan "..tostring(addCL1).." puntos de CL1")
	print ("Se le otorgan "..tostring(addCL3).." puntos de CL3")
	print ("Se le otorgan "..tostring(addCI2).." puntos de CI2")
	print ("Se le otorgan "..tostring(addCI5).." puntos de CI5")
	print ("\n")
end

--Funciones de reproducción de audio
function audioFallar()
	audio.setVolume(1, {channel=2} ) 
	audio.play( fallo, {channel=2, loops = 0 } ) 
end

function audioAcertar()
	audio.setVolume(1, {channel=1} ) 
	audio.play( acierto, {channel=1, loops = 0 } ) 
end

--Funciones de ayuda
function ayuda1()
	if (necesitaAyuda1) then
		hide(Ayuda0)
		show(kwkHormiga2)
		show(Ayuda1)
		ayudaActual = Ayuda1
		addCI2 = addCI2 - 5
		checkNegativos()
		mostrarPuntuaciones()
		necesitaAyuda1 = false
	end
end

function ayuda2()
	if (necesitaAyuda2) then
		show(kwkHormiga2)
		show(Ayuda2)
		ayudaActual = Ayuda2
		addCI2 = addCI2 - 5
		checkNegativos()
		mostrarPuntuaciones()
		necesitaAyuda2 = false
	end
end

function ayuda3()
	if (necesitaAyuda3) then
		show(kwkHormiga2)
		show(Ayuda3)
		ayudaActual = Ayuda3
		addCI2 = addCI2 - 5
		checkNegativos()
		mostrarPuntuaciones()
		necesitaAyuda3 = false
	end
end

--Función para controlar que no haya puntos negativos
function checkNegativos()	
	if (addCL1 < 0 ) then
		addCL1 = 0
	end
	if (addCL3 < 0 ) then
		addCL3 = 0
	end

	if (addCI2 < 0) then
		addCI2 = 0
	end

	if (addCI5 < 0) then
		addCI5 = 0
	end
end

--Función para iniciar la fase 2
function fase2()
	hide(kwkHormiga2)
	hide(ayudaActual)
	faseActual = 2
	fase1Terminada = true
	timerStash.timerAyuda2 = timer.performWithDelay( 15000, ayuda2, 0 ) 
end 

--Función para iniciar la fase 3
function fase3()
	hide(kwkHormiga2)
	hide(ayudaActual)
	faseActual = 3
	fase2Terminada = true
	timerStash.timerAyuda3 = timer.performWithDelay( 15000, ayuda3, 0 ) 
end

--Función para terminar
function terminar()
	print ("Terminado!!!")
	mostrarPuntuaciones()

	hide(ayudaActual)
	show(kwkHormiga2)
	show(Fin)

	local currentCL1 = kwkVarCheck ("CL1")
	local currentCL3 = kwkVarCheck ("CL3")
	local currentCI2 = kwkVarCheck ("CI2")
	local currentCI5 = kwkVarCheck ("CI5")

	saveKwikVars ({"CL1", addCL1 + currentCL1})
	saveKwikVars ({"CL3", addCL3 + currentCL3})
	saveKwikVars ({"CI2", addCI2 + currentCI2})
	saveKwikVars ({"CI5", addCI5 + currentCI5})

	saveKwikVars({"Fav04Completed", true})

	local myClosure_switch = function() 
	    dispose(); director:changeScene( "page_"..pag_favor4 + 1, "fade" ) 
	end 
	timerStash.newTimer_980 = timer.performWithDelay(1500, myClosure_switch, 1) 
end

--Funciones de fallo en CL3
function fallarCL_1 ()
	if (not falloCL_1) then
		addCL1 = addCL1 - 5
		addCL3 = addCL3 - 5
		checkNegativos()
		falloCL_1 = true
	end
	mostrarPuntuaciones()
end

function fallarCL_2 ()
	if (not falloCL_2) then
		addCL1 = addCL1 - 5
		addCL3 = addCL3 - 5
		checkNegativos()
		falloCL_2 = true
	end
	mostrarPuntuaciones()
end

function fallarCL_3 ()
	if (not falloCL_3) then
		addCL1 = addCL1 - 5
		addCL3 = addCL3 - 5
		checkNegativos()
		falloCL_3 = true
	end
	mostrarPuntuaciones()
end


--Función para comprobar si todas las nueces están colocadas.
function checkNuecesColocadas ()
	local todasColocadas = true

	for i = 0, 11 do
		if (not nuecesColocadas[i]) then
			todasColocadas = false
		end
	end

	return todasColocadas
end

--Función para comprobar si todas las nueces están colocadas.
function checkHojasColocadas ()
	local todasColocadas = true

	for i = 0, 8 do
		if (not hojasColocadas[i]) then
			todasColocadas = false
		end
	end

	return todasColocadas
end

--Función para comprobar qué extremo de nuez se está tocando con el dedo
function checkExtremoNuez (x, y)
	local nuez = -1

	for i = 0, 11 do
		if (isPositionOn(x, y, nuecesTransparentes[i])) then
			nuez = nuecesTransparentes[i]
		end
	end

	return nuez
end

--Función que dada un número de una nuez devuelve cuál es la opuesta
function opuesta (nuez)
	local opuesta

	if (nuez == NuezH1_1) then opuesta = NuezH1_2
	elseif (nuez == NuezH1_2) then opuesta = NuezH1_1
	elseif (nuez == NuezH2_1) then opuesta = NuezH2_2
	elseif (nuez == NuezH2_2) then opuesta = NuezH2_1
	elseif (nuez == NuezH3_1) then opuesta = NuezH3_2
	elseif (nuez == NuezH3_2) then opuesta = NuezH3_1

	elseif (nuez == NuezV1_1) then opuesta = NuezV1_2
	elseif (nuez == NuezV1_2) then opuesta = NuezV1_1
	elseif (nuez == NuezV2_1) then opuesta = NuezV2_2
	elseif (nuez == NuezV2_2) then opuesta = NuezV2_1
	elseif (nuez == NuezV3_1) then opuesta = NuezV3_2
	elseif (nuez == NuezV3_2) then opuesta = NuezV3_1

	end

	return opuesta
end


--Función de pintar el canvas
local function touched( event ) 
	--Miro qué nuez toca el niño, y esa es la que se va a unir.
	local nuezTocada = checkExtremoNuez (event.x, event.y)

	if (nuezUniendose == -1) then
		grupoCirculos = display.newGroup()
		menuGroup:insert(grupoCirculos)
    	nuezUniendose = nuezTocada
	end

	--Solo pinto si se está uniendo una nuez que no esté unida, y si estamos en la fase 2
	if (nuezUniendose ~= -1) then
		if (fase1Terminada or nuecesUnidas[nuezUniendose.name]) then
			if event.phase == "moved" then 
        		--Según se va moviendo el cursor se pinta un nuevo círculo y se inserta en el grupo
				local painter = display.newCircle (event.x, event.y, brushSize, 100) 
				painter:setFillColor(cR, cG, cB); painter.alpha = brushAlpha 
				grupoCirculos:insert(painter)
			elseif event.phase =="ended" then 
				--En cuanto se levanta el dedo se borran los círculos y se comprueba si se ha unido con el correcto.
				if (isPositionOn(event.x, event.y, opuesta(nuezUniendose))) then
					necesitaAyuda2 = false
					nuecesUnidas[nuezUniendose.name] = true
					nuecesUnidas[opuesta(nuezUniendose).name] = true


					--Muestro la cuerda correspondiente
					mostrarCuerda(nuezUniendose)
					audioAcertar()

					--Si están todas las cuerdas se cambia de fase
					if (checkNuecesUnidas ()) then
						fase3()
					end
				else
					addCI5 = addCI5 - 3
					checkNegativos()
					audioFallar()
				end
				grupoCirculos:removeSelf( )
				nuezUniendose = -1
			end 
		else
			audioFallar()
			if (faseActual == 1) then
				fallarCL_1()
			else
				fallarCL_3()
			end
		end
	end
end 

--Función de arrastrar una nuez
local function kwkNuezDrag (event ) 
	local t = event.target 
	if event.phase == "began" then  
		local parent = t.parent; parent:insert(t); display.getCurrentStage():setFocus(t); t.isFocus = true 
	elseif event.phase == "moved" then  
	elseif event.phase == "ended" or event.phase == "cancelled" then  
		display.getCurrentStage():setFocus(nil); t.isFocus = false 
		lockNuez = false
		--Miro dónde está la nuez
		local estaEnNuez = false
	    for i = 0, 11 do
	    	if (isOn(event.target, nuecesTransparentes[i])) then
	    		--Si no está en la fase 1, se le penaliza y se destruye la nuez
	    		if (faseActual ~= 1) then
	    			audioFallar()
	    			if (faseActual == 2) then
	    				fallarCL_2()
	    			else
	    				fallarCL_3()
	    			end
	    			event.target:removeSelf()
	    		else
	    			estaEnNuez = true
		    		necesitaAyuda1 = false
		    		if (not nuecesColocadas[i]) then
		    			--La pongo en su sitio, desactivo su eventListener y hago que no se pueda mover.
		    			nuecesColocadas[i] = true
		    			moveTo (event.target, nuecesTransparentes[i])
		    			audioAcertar()
		    			event.target:removeEventListener(MultiTouch.MULTITOUCH_EVENT, kwkNuezDrag)
						MultiTouch.deactivate( event.target, "move", "single"  ) 
		    		end

		    		if (checkNuecesColocadas()) then
		    			fase2()
		    		end
		    	end
	    	end
    	end
    	--Si no esta en algun hueco de nuez, miro si está en un hueco de hoja 
    	if (not estaEnNuez) then
    		for i = 0, 8 do
    			if (isOn(event.target, hojasTransparentes[i])) then
    				audioFallar()
    				addCI5 = addCI5 - 3
    				mostrarPuntuaciones()
    				checkNegativos()
    			end
    		end
    	end
	end  
	return true 
end 

--Función de arrastrar un nudo
local function kwkHojaDrag (event ) 
	local t = event.target 
	if event.phase == "began" then  
		local parent = t.parent; parent:insert(t); display.getCurrentStage():setFocus(t); t.isFocus = true 
	elseif event.phase == "moved" then  
	elseif event.phase == "ended" or event.phase == "cancelled" then  
		display.getCurrentStage():setFocus(nil); t.isFocus = false 
		lockHoja = false
		--Miro dónde está la hoja
		local estaEnHoja = false
	    for i = 0, 8 do
	    	if (isOn(event.target, hojasTransparentes[i])) then
	    		--Si no está en la fase 3, se le penaliza y se destruye la hoja
	    		if (faseActual ~= 3) then
	    			audioFallar()
	    			if (faseActual == 1) then
	    				fallarCL_1()
	    			else
	    				fallarCL_2()
	    			end
	    			event.target:removeSelf()
	    		else
		    		estaEnHoja = true
		    		necesitaAyuda3 = false
		    		if (not hojasColocadas[i]) then
		    			--La pongo en su sitio, desactivo su eventListener y hago que no se pueda mover.
		    			hojasColocadas[i] = true
		    			moveTo (event.target, hojasTransparentes[i])
		    			event.target:removeEventListener(MultiTouch.MULTITOUCH_EVENT, kwkHojaDrag)
						MultiTouch.deactivate( event.target, "move", "single"  ) 
		    			audioAcertar()
		    		end

		    		if (checkHojasColocadas()) then
		    			terminar()
		    		end
		    	end
	    	end
    	end
    	--Si no esta en algun hueco de hoja, miro si está en un hueco de nuez 
    	if (not estaEnHoja) then
    		for i = 0, 11 do
    			if (isOn(event.target, nuecesTransparentes[i])) then
    				audioFallar()
    				addCI5 = addCI5 - 3
    				mostrarPuntuaciones()
    				checkNegativos()
    			end
    		end
    	end

	end  
	return true 
end 

--Función de crear una nueva nuez
local function crearNuez()
	local nuevaNuez
	nuevaNuez = display.newImageRect( imgDir.. "kwknuez.png", 174, 140 ); 
	nuevaNuez.x = 1624; nuevaNuez.y = 287; nuevaNuez.alpha = 1; nuevaNuez.oldAlpha = 1 
	nuevaNuez.oriX = nuevaNuez.x; nuevaNuez.oriY = nuevaNuez.y 
	nuevaNuez.name = "nuevaNuez"..tostring(contadorNueces) 
	contadorNueces = contadorNueces + 1
	menuGroup:insert(nuevaNuez); menuGroup.nuevaNuez = nuevaNuez 

	MultiTouch.activate( nuevaNuez, "move", "single"  ) 
	nuevaNuez:addEventListener( MultiTouch.MULTITOUCH_EVENT, kwkNuezDrag )
end

--Función de crear un nudo de hoja
local function crearHoja()
	local nuevaHoja
	nuevaHoja = display.newImageRect( imgDir.. "kwknudo.png", 235, 181 ); 
	nuevaHoja.x = 930; nuevaHoja.y = 226; nuevaHoja.alpha = 1; nuevaHoja.oldAlpha = 1 
	nuevaHoja.oriX = nuevaHoja.x; nuevaHoja.oriY = nuevaHoja.y 
	nuevaHoja.name = "nuevaHoja"..tostring(contadorHojas) 
	contadorHojas = contadorHojas + 1
	menuGroup:insert(nuevaHoja); menuGroup.nuevaHoja = nuevaHoja 

	MultiTouch.activate( nuevaHoja, "move", "single"  ) 
	nuevaHoja:addEventListener( MultiTouch.MULTITOUCH_EVENT, kwkHojaDrag )
end

--Event Listeners
canvas_h1:addEventListener("touch", touched) 
canvas_h2:addEventListener("touch", touched) 
canvas_h3:addEventListener("touch", touched) 
canvas_v1:addEventListener("touch", touched) 
canvas_v2:addEventListener("touch", touched) 
canvas_v3:addEventListener("touch", touched) 

Cesta_de_nueces:addEventListener("tap", crearNuez ) 
kwkBolsa3:addEventListener( "tap", crearHoja )

--Contador para la ayuda1
timerStash.timerAyuda1 = timer.performWithDelay( 15000, ayuda1, 0 )  

       -- Button event listeners 
       local function onRubiEvent(event) 
          btnReset(Rubi) 
          return true 
       end 
       Rubi:addEventListener("tap", onRubiEvent ) 

       -- Button functions 
       function btnReset(self) 
            dispose(); director:changeScene(director:getCurrScene()) 
       end 


       -- do not swipe this page 

       dispose = function(event) 
          cancelAllTimers(); cancelAllTransitions() 
          if audio.isChannelActive ( 1 ) then 
   audio.stop(1); 
 end 
 audio.dispose(acierto); acierto = nil 
          if audio.isChannelActive ( 2 ) then 
   audio.stop(2); 
 end 
 audio.dispose(fallo); fallo = nil 
       end 

       -- (BOTTOM) External code will render here 


    end 
    drawScreen() 

    return menuGroup 
end 
