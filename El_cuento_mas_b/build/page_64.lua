-- Code created by Kwik - Copyright: kwiksher.com 
-- Version: 2.7.6b 
module(..., package.seeall) 

function new() 
    local numPages = 64 
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

 
       -- Layer names 
       local xp_canvas  
       local cR, cG, cB = 0, 0, 0   
       local brushSize = 15; local brushAlpha = 1    
       local Cuerda_H1  
       local Cuerda_H2  
       local Cuerda_H3  
       local Cuerda_V2  
       local Cuerda_V1  
       local Cuerda_V3  
       local Fondo_prueba_6  
       local kwkBolsa3  
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

       -- Cuerda_H1 positioning 
       Cuerda_H1 = display.newImageRect( imgDir.. "p64_cuerda_h1.png", 2536, 55 ); 
       Cuerda_H1.x = 1279; Cuerda_H1.y = 491; Cuerda_H1.alpha = 1; Cuerda_H1.oldAlpha = 1 
       Cuerda_H1.oriX = Cuerda_H1.x; Cuerda_H1.oriY = Cuerda_H1.y 
       Cuerda_H1.name = "Cuerda_H1" 
       menuGroup:insert(1,Cuerda_H1); menuGroup.Cuerda_H1 = Cuerda_H1 

       -- Setting Canvas 
       local reloadCanvas = 0 
       xp_canvas = display.newRect(0, 0, 2536, 55) 
       xp_canvas:setFillColor(255,255,255) 
       xp_canvas.x = 1279; xp_canvas.y = 491; xp_canvas.alpha = 0.01; 
       cR, cG, cB = 196, 128, 2 
       brushSize = 15; brushAlpha = 1 
       xp_canvas.name = "xp_canvas" 
       menuGroup:insert(xp_canvas) 
       menuGroup.xp_canvas = xp_canvas 


       -- Canvas code 
       local function touched( event ) 
          if event.phase == "moved" then 
             local painter = display.newCircle (event.x, event.y, brushSize, 100) 
             painter:setFillColor(cR, cG, cB); painter.alpha = brushAlpha 
             menuGroup:insert(painter); menuGroup:remove(Cuerda_H1); menuGroup:insert(Cuerda_H1); menuGroup.Cuerda_H1 = Cuerda_H1 
          elseif event.phase =="ended" then 
             menuGroup:remove(Cuerda_H1); menuGroup:insert(Cuerda_H1); menuGroup.Cuerda_H1 = Cuerda_H1 
          end 
       end 
       xp_canvas:addEventListener("touch", touched) 


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

       -- kwkBolsa3 positioning 
       kwkBolsa3 = display.newImageRect( imgDir.. "kwkbolsa3.png", 348, 360 ); 
       kwkBolsa3.x = 925; kwkBolsa3.y = 219; kwkBolsa3.alpha = 1; kwkBolsa3.oldAlpha = 1 
       kwkBolsa3.oriX = kwkBolsa3.x; kwkBolsa3.oriY = kwkBolsa3.y 
       kwkBolsa3.name = "kwkBolsa3" 
       menuGroup:insert(kwkBolsa3); menuGroup.kwkBolsa3 = kwkBolsa3 

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
 
       -- Group(s) creation 

       -- (MIDDLE) External code will render here 
       --Ocultar las cuerdas

instantHide(h1)
instantHide(h2)
instantHide(h3)
instantHide(v1)
instantHide(v2)
instantHide(v3)

-- Setting Canvas 
local reloadCanvas = 0 
canvas_h1 = display.newRect(0, 0, Cuerda_H1.width, Cuerda_H1.height) 
canvas_h1:setFillColor(255,255,255) 
canvas_h1.x = Cuerda_H1.x; canvas_h1.y = Cuerda_H1.xy canvas_h1.alpha = 0.01; 
cR, cG, cB = 196, 128, 2 
brushSize = 30; brushAlpha = 1 
canvas_h1.name = "canvas_h1" 
menuGroup:insert(canvas_h1) 
menuGroup.canvas_h1 = canvas_h1 


-- Canvas code 
local function touched( event ) 
  if event.phase == "moved" then 
     local painter = display.newCircle (event.x, event.y, brushSize, 100) 
     painter:setFillColor(cR, cG, cB); painter.alpha = brushAlpha 
     menuGroup:insert(painter); menuGroup:remove(Cuerda_H1); menuGroup:insert(Cuerda_H1); menuGroup.Cuerda_H1 = Cuerda_H1 
  elseif event.phase =="ended" then 
     menuGroup:remove(Cuerda_H1); menuGroup:insert(Cuerda_H1); menuGroup.Cuerda_H1 = Cuerda_H1 
  end 
end 
canvas_h1:addEventListener("touch", touched)  

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
