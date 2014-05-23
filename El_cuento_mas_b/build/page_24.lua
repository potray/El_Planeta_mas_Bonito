-- Code created by Kwik - Copyright: kwiksher.com 
-- Version: 2.7.6b 
module(..., package.seeall) 
local widget = require("widget") 

function new() 
    local numPages = 34 
    local menuGroup = display.newGroup() 
    local dispose 
    local _W = display.contentWidth; 
    local _H = display.contentHeight; 

    local drawScreen = function() 

       local curPage = 24 
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
       local btnNextPage
       local btnPrevPage
       local btnInventario
       local btnErizo

       -- Action names 
       local playAnimationBu 
       local hideErizo 
       local hideInventory 
       local showInventory 

       -- Layer names 
       local kwkFondo3  
       local Text1  
       local kwkMama_gafas_s  
       local kwkSer_gafas_1  
       local kwkSer_gafas_3  
       local kwkErizo  
       local kwkHija_gafas_s  
       local Burbuja  
       local kwkRect2  
       local kwkRect1  
       local kwkCLText  
       local kwkComodinText  
       local kwkCIText  
       local kwkCGText  
       local kwkDiamante  
       local kwkEsmeralda  
       local kwkMedalla  
       local kwkNavnext  
       local kwkNavprev  
       local kwkruby  
       local kwkBebe_gafas_e  
       local kwkMochila  
       local kwkRectInv  
       local kwkInvBiberon  
       local kwkInvTijeras  
       local kwkInvRosa  
       local kwkInvErizo  
       local kwkInvMaquina  
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
       local hasRosa = kwkVarCheck("hasRosa")
local hasTijeras = kwkVarCheck("hasTijeras")
local hasBiberon = kwkVarCheck("hasBiberon")
local hasGuitarra = kwkVarCheck("hasGuitarra")
local hasMaquina = kwkVarCheck("hasMaquina")
local hasErizo = kwkVarCheck("hasErizo")
local hasCelo = kwkVarCheck("hasCelo")
local hasCola = kwkVarCheck("hasCola") 

       -- kwkFondo3 positioning 
       kwkFondo3 = display.newImageRect( imgDir.. "kwkfondo3.jpg", 2559, 1600 ); 
       kwkFondo3.x = 1279; kwkFondo3.y = 800; kwkFondo3.alpha = 1; kwkFondo3.oldAlpha = 1 
       kwkFondo3.oriX = kwkFondo3.x; kwkFondo3.oriY = kwkFondo3.y 
       kwkFondo3.name = "kwkFondo3" 
       menuGroup:insert(1,kwkFondo3); menuGroup.kwkFondo3 = kwkFondo3 

       -- Text1 positioning 
       Text1 = display.newImageRect( imgDir.. "p24_text1.png", 1409, 40 ); 
       Text1.x = 1324; Text1.y = 103; Text1.alpha = 1; Text1.oldAlpha = 1 
       Text1.oriX = Text1.x; Text1.oriY = Text1.y 
       Text1.name = "Text1" 
       menuGroup:insert(Text1); menuGroup.Text1 = Text1 

       -- kwkMama_gafas_s positioning 
       kwkMama_gafas_s = display.newImageRect( imgDir.. "kwkmama_gafas_s.png", 522, 1001 ); 
       kwkMama_gafas_s.x = 1967; kwkMama_gafas_s.y = 1020; kwkMama_gafas_s.alpha = 1; kwkMama_gafas_s.oldAlpha = 1 
       kwkMama_gafas_s.oriX = kwkMama_gafas_s.x; kwkMama_gafas_s.oriY = kwkMama_gafas_s.y 
       kwkMama_gafas_s.name = "kwkMama_gafas_s" 
       menuGroup:insert(kwkMama_gafas_s); menuGroup.kwkMama_gafas_s = kwkMama_gafas_s 

       -- kwkSer_gafas_1 positioning 
       kwkSer_gafas_1 = display.newImageRect( imgDir.. "kwkser_gafas_1.png", 619, 988 ); 
       kwkSer_gafas_1.x = 414; kwkSer_gafas_1.y = 934; kwkSer_gafas_1.alpha = 1; kwkSer_gafas_1.oldAlpha = 1 
       kwkSer_gafas_1.oriX = kwkSer_gafas_1.x; kwkSer_gafas_1.oriY = kwkSer_gafas_1.y 
       kwkSer_gafas_1.name = "kwkSer_gafas_1" 
       menuGroup:insert(kwkSer_gafas_1); menuGroup.kwkSer_gafas_1 = kwkSer_gafas_1 

       -- kwkSer_gafas_3 positioning 
       kwkSer_gafas_3 = display.newImageRect( imgDir.. "kwkser_gafas_3.png", 617, 984 ); 
       kwkSer_gafas_3.x = 2409; kwkSer_gafas_3.y = 966; kwkSer_gafas_3.alpha = 1; kwkSer_gafas_3.oldAlpha = 1 
       kwkSer_gafas_3.oriX = kwkSer_gafas_3.x; kwkSer_gafas_3.oriY = kwkSer_gafas_3.y 
       kwkSer_gafas_3.name = "kwkSer_gafas_3" 
       menuGroup:insert(kwkSer_gafas_3); menuGroup.kwkSer_gafas_3 = kwkSer_gafas_3 

       -- kwkErizo positioning 
       kwkErizo = display.newImageRect( imgDir.. "kwkerizo.png", 559, 353 ); 
       kwkErizo.x = 694; kwkErizo.y = 1243; kwkErizo.alpha = 1; kwkErizo.oldAlpha = 1 
       kwkErizo.oriX = kwkErizo.x; kwkErizo.oriY = kwkErizo.y 
       kwkErizo.name = "kwkErizo" 
       menuGroup:insert(kwkErizo); menuGroup.kwkErizo = kwkErizo 

       -- kwkHija_gafas_s positioning 
       kwkHija_gafas_s = display.newImageRect( imgDir.. "kwkhija_gafas_s.png", 455, 829 ); 
       kwkHija_gafas_s.x = 1020; kwkHija_gafas_s.y = 972; kwkHija_gafas_s.alpha = 1; kwkHija_gafas_s.oldAlpha = 1 
       kwkHija_gafas_s.oriX = kwkHija_gafas_s.x; kwkHija_gafas_s.oriY = kwkHija_gafas_s.y 
       kwkHija_gafas_s.name = "kwkHija_gafas_s" 
       menuGroup:insert(kwkHija_gafas_s); menuGroup.kwkHija_gafas_s = kwkHija_gafas_s 

       -- Burbuja positioning 
       Burbuja = display.newImageRect( imgDir.. "p24_burbuja.png", 699, 699 ); 
       Burbuja.x = 1495; Burbuja.y = 1171; Burbuja.alpha = 1; Burbuja.oldAlpha = 1 
       Burbuja.oriX = Burbuja.x; Burbuja.oriY = Burbuja.y 
       Burbuja.name = "Burbuja" 
       menuGroup:insert(Burbuja); menuGroup.Burbuja = Burbuja 

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

       -- kwkruby positioning 
       kwkruby = display.newImageRect( imgDir.. "kwkruby.png", 224, 220 ); 
       kwkruby.x = 332; kwkruby.y = 128; kwkruby.alpha = 1; kwkruby.oldAlpha = 1 
       kwkruby.oriX = kwkruby.x; kwkruby.oriY = kwkruby.y 
       kwkruby.name = "kwkruby" 
       menuGroup:insert(kwkruby); menuGroup.kwkruby = kwkruby 

       -- kwkBebe_gafas_e positioning 
       kwkBebe_gafas_e = display.newImageRect( imgDir.. "kwkbebe_gafas_e.png", 334, 547 ); 
       kwkBebe_gafas_e.x = 1495; kwkBebe_gafas_e.y = 1146; kwkBebe_gafas_e.alpha = 1; kwkBebe_gafas_e.oldAlpha = 1 
       kwkBebe_gafas_e.oriX = kwkBebe_gafas_e.x; kwkBebe_gafas_e.oriY = kwkBebe_gafas_e.y 
       kwkBebe_gafas_e.name = "kwkBebe_gafas_e" 
       menuGroup:insert(kwkBebe_gafas_e); menuGroup.kwkBebe_gafas_e = kwkBebe_gafas_e 

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
 
       -- Group(s) creation 

       -- (MIDDLE) External code will render here 

       --Animations
       -- Wait request for pathBurbuja2
       local pathBurbuja2 = function(event)
          if gtStash.gt_pathBurbuja2 then 
              gtStash.gt_pathBurbuja2:toBeginning() 
          end 
          gtStash.gt_pathBurbuja2 = btween.new( Burbuja, 3, { 
         { x = 1475, y = 1218}, --regular curve
         { x = 1610, y = 1367}, 
         { x = 1853, y = 1020}, 
         { x = 1858, y = 1023}, 

         { x = 1858, y = 1023}, --regular curve
         { x = 1864, y = 1027}, 
         { x = 2263, y = 710}, 
         { x = 2275, y = 439}, 

         { x = 2275, y = 439}, --regular curve
         { x = 2286, y = 169}, 
         { x = 2039, y = 66}, 
         { x = 1895, y = 128}, 

         { x = 1895, y = 128}, --regular curve
         { x = 1750, y = 191}, 
         { x = 1671, y = 385}, 
         { x = 1791, y = 460}, 

         { x = 1791, y = 460}, --regular curve
         { x = 1912, y = 536}, 
         { x = 2187, y = 325}, 
         { x = 2085, y = 290}, 

         { x = 2085, y = 290}, --regular curve
         { x = 1984, y = 255}, 
         { x = 1877, y = 273}, 
         { x = 1910, y = 326}, 

         { x = 1910, y = 326}, 
         { x = 1910, y = 326}, 
         { x = 1910, y = 326}, 
         { x = 1910, y = 326}, 
angle = 0       }, {ease = gtween.easing.linear, repeatCount = 1, reflect = false,  delay=0.1, ""}, {  x=1495, y=1171,  alpha=1, rotation=0, xScale=0.01, yScale=0.01, newAngle=180}) 

       end --closes function pathBurbuja2

       -- Wait request for pathBebe
       local pathBebe = function(event)
          if gtStash.gt_pathBebe then 
              gtStash.gt_pathBebe:toBeginning() 
          end 
          gtStash.gt_pathBebe = btween.new( kwkBebe_gafas_e, 3, { 
         { x = 1475, y = 1218}, --regular curve
         { x = 1610, y = 1367}, 
         { x = 1853, y = 1020}, 
         { x = 1858, y = 1023}, 

         { x = 1858, y = 1023}, --regular curve
         { x = 1864, y = 1027}, 
         { x = 2263, y = 710}, 
         { x = 2275, y = 439}, 

         { x = 2275, y = 439}, --regular curve
         { x = 2286, y = 169}, 
         { x = 2039, y = 66}, 
         { x = 1895, y = 128}, 

         { x = 1895, y = 128}, --regular curve
         { x = 1750, y = 191}, 
         { x = 1671, y = 385}, 
         { x = 1791, y = 460}, 

         { x = 1791, y = 460}, --regular curve
         { x = 1912, y = 536}, 
         { x = 2187, y = 325}, 
         { x = 2085, y = 290}, 

         { x = 2085, y = 290}, --regular curve
         { x = 1984, y = 255}, 
         { x = 1877, y = 273}, 
         { x = 1910, y = 326}, 

         { x = 1910, y = 326}, 
         { x = 1910, y = 326}, 
         { x = 1910, y = 326}, 
         { x = 1910, y = 326}, 
angle = 0       }, {ease = gtween.easing.linear, repeatCount = 1, reflect = false,  delay=0.1, ""}, {  x=1495, y=1146,  alpha=1, rotation=0, xScale=0.01, yScale=0.01, newAngle=180}) 

       end --closes function pathBebe

       local onEnd_pathBurbuja1_372 = function() 
          playAnimationBu(); 
       end --ends reStart for pathBurbuja1 
       gtStash.gt_pathBurbuja1 = btween.new( Burbuja, 3, { 
         { x = 53, y = 442}, --regular curve
         { x = 1280, y = 255}, 
         { x = 1470, y = 1189}, 
         { x = 1471, y = 1221}, 

         { x = 1471, y = 1221}, 
         { x = 1471, y = 1221}, 
         { x = 1471, y = 1221}, 
         { x = 1471, y = 1221}, 
angle = 0       }, {ease = gtween.easing.linear, repeatCount = 1, reflect = false,  delay=0.1, onComplete=onEnd_pathBurbuja1_372}, {  x=1495, y=1171,  alpha=1, rotation=0, xScale=1, yScale=1, newAngle=180}) 

 
       -- Actions (functions) 
       function playAnimationBu(event) 
           pathBebe() 
           pathBurbuja2() 
       end 

       function hideErizo(event) 
         if (hasErizo == true) then 
            transitionStash.newTransition_397 = transition.to( kwkErizo, {alpha=0, time=0, delay=0}) 
         end 
       end 

       function hideInventory(event) 
            transitionStash.newTransition_397 = transition.to( kwkRectInv, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_397 = transition.to( kwkInvBiberon, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_398 = transition.to( kwkInvTijeras, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_398 = transition.to( kwkInvRosa, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_398 = transition.to( kwkInvErizo, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_398 = transition.to( kwkInvMaquina, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_399 = transition.to( kwkInvCelo, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_399 = transition.to( kwkInvGuitarra, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_399 = transition.to( kwkInvCola, {alpha=0, time=0, delay=0}) 
           InventoryShown = false
          saveKwikVars({"InventoryShown",false}) 
       end 

       function showInventory(event) 
            transitionStash.newTransition_409 = transition.to( kwkRectInv, {alpha=kwkRectInv.oldAlpha, time=0, delay=0}) 
         if (hasBiberon == true) then 
            transitionStash.newTransition_410 = transition.to( kwkInvBiberon, {alpha=kwkInvBiberon.oldAlpha, time=0, delay=0}) 
         end 
         if (hasTijeras == true) then 
            transitionStash.newTransition_411 = transition.to( kwkInvTijeras, {alpha=kwkInvTijeras.oldAlpha, time=0, delay=0}) 
         end 
         if (hasMaquina == true) then 
            transitionStash.newTransition_411 = transition.to( kwkInvMaquina, {alpha=kwkInvMaquina.oldAlpha, time=0, delay=0}) 
         end 
         if (hasRosa == true) then 
            transitionStash.newTransition_412 = transition.to( kwkInvRosa, {alpha=kwkInvRosa.oldAlpha, time=0, delay=0}) 
         end 
         if (hasErizo == true) then 
            transitionStash.newTransition_413 = transition.to( kwkInvErizo, {alpha=kwkInvErizo.oldAlpha, time=0, delay=0}) 
         end 
         if (hasCelo == true) then 
            transitionStash.newTransition_414 = transition.to( kwkInvCelo, {alpha=kwkInvCelo.oldAlpha, time=0, delay=0}) 
         end 
         if (hasGuitarra == true) then 
            transitionStash.newTransition_414 = transition.to( kwkInvGuitarra, {alpha=kwkInvGuitarra.oldAlpha, time=0, delay=0}) 
         end 
         if (hasCola == true) then 
            transitionStash.newTransition_415 = transition.to( kwkInvCola, {alpha=kwkInvCola.oldAlpha, time=0, delay=0}) 
         end 
           InventoryShown = true
          saveKwikVars({"InventoryShown",true}) 
       end 

 
      --End Actions (functions) 

 
       -- Timers 
       timerStash.timerErizo = timer.performWithDelay( 0, hideErizo, 1 ) 
       timerStash.timerInv = timer.performWithDelay( 0, hideInventory, 1 ) 

       -- Button event listeners 
       local function onkwkNavnextEvent(event) 
          btnNextPage(kwkNavnext) 
          return true 
       end 
       kwkNavnext:addEventListener("tap", onkwkNavnextEvent ) 
       local function onkwkNavprevEvent(event) 
          btnPrevPage(kwkNavprev) 
          return true 
       end 
       kwkNavprev:addEventListener("tap", onkwkNavprevEvent ) 
       local function onkwkErizoEvent(event) 
          btnErizo(kwkErizo) 
          return true 
       end 
       kwkErizo:addEventListener("tap", onkwkErizoEvent ) 

       -- Button functions 
       function btnNextPage(self) 
            local myClosure_switch = function() 
                dispose(); director:changeScene( "page_25", "moveFromRight" ) 
            end 
            timerStash.newTimer_477 = timer.performWithDelay(0, myClosure_switch, 1) 
       end 

       function btnPrevPage(self) 
            local myClosure_switch = function() 
                dispose(); director:changeScene( "page_23", "moveFromLeft" ) 
            end 
            timerStash.newTimer_477 = timer.performWithDelay(0, myClosure_switch, 1) 
       end 

       function btnInventario(self) 
         if (InventoryShown == false) then 
           showInventory() 
         else 
           hideInventory() 
         end 
       end 

       function btnErizo(self) 
           _G.hasErizo = true
          saveKwikVars({"hasErizo",true}) 
           hideErizo() 
           hideInventory() 
       end 


       -- do not swipe this page 

       dispose = function(event) 
          cancelAllTweens() 
          cancelAllTimers(); cancelAllTransitions() 
       end 

       -- (BOTTOM) External code will render here 
       if (favor2Started) then
	hide(kwkNavnext)
	hide(kwkNavprev)
end

function btnErizo(self) 
	hasErizo = true
	saveKwikVars({"hasErizo",true}) 
	hideErizo() 
	hideInventory() 
	if (favor2Started) then
		local pageToGo = "page_32"
		if (not hasGuitarra) then
			pageToGo = "page_31"
		end
		if (not hasMaquina) then
			pageToGo = "page_29"
		end
	    local myClosure_switch = function() 
	        dispose(); director:changeScene( pageToGo, "fade" ) 
	    end 
	    timerStash.newTimer_980 = timer.performWithDelay(0, myClosure_switch, 1) 
	else
		local currComodin = kwkVarCheck("comodin")
		saveKwikVars({"comodin", currComodin + 10})
	end
end  


    end 
    drawScreen() 

    return menuGroup 
end 
