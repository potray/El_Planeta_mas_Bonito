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

       local curPage = 25 
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
       local hideAll 
       local animateAll 
       local hideSeres 
       local hideErizo 
       local hideInventory 
       local showInventory 

       -- Layer names 
       local kwkFondo3  
       local Text5  
       local Text6  
       local Text6_2  
       local Text6_3  
       local Text6_4  
       local Text3  
       local Text4  
       local Text2  
       local Text1  
       local kwkSer_gafas_1  
       local kwkSer_gafas_3  
       local kwkErizo  
       local kwkRect2  
       local kwkRect1  
       local kwkruby  
       local kwkCLText  
       local kwkComodinText  
       local kwkCIText  
       local kwkCGText  
       local kwkDiamante  
       local kwkEsmeralda  
       local kwkMedalla  
       local kwkNavnext  
       local kwkNavprev  
       local kwkMama_llorand  
       local kwkHija_gafas_l  
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

       -- Text5 positioning 
       Text5 = display.newImageRect( imgDir.. "p25_text5.png", 667, 39 ); 
       Text5.x = 1315; Text5.y = 341; Text5.alpha = 1; Text5.oldAlpha = 1 
       Text5.oriX = Text5.x; Text5.oriY = Text5.y 
       Text5.name = "Text5" 
       menuGroup:insert(Text5); menuGroup.Text5 = Text5 

       -- Text6 positioning 
       Text6 = display.newImageRect( imgDir.. "p25_text6.png", 302, 82 ); 
       Text6.x = 232; Text6.y = 425; Text6.alpha = 1; Text6.oldAlpha = 1 
       Text6.oriX = Text6.x; Text6.oriY = Text6.y 
       Text6.name = "Text6" 
       menuGroup:insert(Text6); menuGroup.Text6 = Text6 

       -- Text6_2 positioning 
       Text6_2 = display.newImageRect( imgDir.. "p25_text6_2.png", 304, 92 ); 
       Text6_2.x = 571; Text6_2.y = 435; Text6_2.alpha = 1; Text6_2.oldAlpha = 1 
       Text6_2.oriX = Text6_2.x; Text6_2.oriY = Text6_2.y 
       Text6_2.name = "Text6_2" 
       menuGroup:insert(Text6_2); menuGroup.Text6_2 = Text6_2 

       -- Text6_3 positioning 
       Text6_3 = display.newImageRect( imgDir.. "p25_text6_3.png", 307, 57 ); 
       Text6_3.x = 2213; Text6_3.y = 462; Text6_3.alpha = 1; Text6_3.oldAlpha = 1 
       Text6_3.oriX = Text6_3.x; Text6_3.oriY = Text6_3.y 
       Text6_3.name = "Text6_3" 
       menuGroup:insert(Text6_3); menuGroup.Text6_3 = Text6_3 

       -- Text6_4 positioning 
       Text6_4 = display.newImageRect( imgDir.. "p25_text6_4.png", 308, 57 ); 
       Text6_4.x = 2409; Text6_4.y = 390; Text6_4.alpha = 1; Text6_4.oldAlpha = 1 
       Text6_4.oriX = Text6_4.x; Text6_4.oriY = Text6_4.y 
       Text6_4.name = "Text6_4" 
       menuGroup:insert(Text6_4); menuGroup.Text6_4 = Text6_4 

       -- Text3 positioning 
       Text3 = display.newImageRect( imgDir.. "p25_text3.png", 510, 39 ); 
       Text3.x = 1281; Text3.y = 194; Text3.alpha = 1; Text3.oldAlpha = 1 
       Text3.oriX = Text3.x; Text3.oriY = Text3.y 
       Text3.name = "Text3" 
       menuGroup:insert(Text3); menuGroup.Text3 = Text3 

       -- Text4 positioning 
       Text4 = display.newImageRect( imgDir.. "p25_text4.png", 1584, 40 ); 
       Text4.x = 1280; Text4.y = 279; Text4.alpha = 1; Text4.oldAlpha = 1 
       Text4.oriX = Text4.x; Text4.oriY = Text4.y 
       Text4.name = "Text4" 
       menuGroup:insert(Text4); menuGroup.Text4 = Text4 

       -- Text2 positioning 
       Text2 = display.newImageRect( imgDir.. "p25_text2.png", 403, 39 ); 
       Text2.x = 1280; Text2.y = 133; Text2.alpha = 1; Text2.oldAlpha = 1 
       Text2.oriX = Text2.x; Text2.oriY = Text2.y 
       Text2.name = "Text2" 
       menuGroup:insert(Text2); menuGroup.Text2 = Text2 

       -- Text1 positioning 
       Text1 = display.newImageRect( imgDir.. "p25_text1.png", 362, 37 ); 
       Text1.x = 1279; Text1.y = 73; Text1.alpha = 1; Text1.oldAlpha = 1 
       Text1.oriX = Text1.x; Text1.oriY = Text1.y 
       Text1.name = "Text1" 
       menuGroup:insert(Text1); menuGroup.Text1 = Text1 

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

       -- kwkruby positioning 
       kwkruby = display.newImageRect( imgDir.. "kwkruby.png", 224, 220 ); 
       kwkruby.x = 332; kwkruby.y = 128; kwkruby.alpha = 1; kwkruby.oldAlpha = 1 
       kwkruby.oriX = kwkruby.x; kwkruby.oriY = kwkruby.y 
       kwkruby.name = "kwkruby" 
       menuGroup:insert(kwkruby); menuGroup.kwkruby = kwkruby 

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

       -- kwkMama_llorand positioning 
       kwkMama_llorand = display.newImageRect( imgDir.. "kwkmama_llorand.png", 526, 1008 ); 
       kwkMama_llorand.x = 1428; kwkMama_llorand.y = 954; kwkMama_llorand.alpha = 1; kwkMama_llorand.oldAlpha = 1 
       kwkMama_llorand.oriX = kwkMama_llorand.x; kwkMama_llorand.oriY = kwkMama_llorand.y 
       kwkMama_llorand.name = "kwkMama_llorand" 
       menuGroup:insert(kwkMama_llorand); menuGroup.kwkMama_llorand = kwkMama_llorand 

       -- kwkHija_gafas_l positioning 
       kwkHija_gafas_l = display.newImageRect( imgDir.. "kwkhija_gafas_l.png", 454, 829 ); 
       kwkHija_gafas_l.x = 1201; kwkHija_gafas_l.y = 1005; kwkHija_gafas_l.alpha = 1; kwkHija_gafas_l.oldAlpha = 1 
       kwkHija_gafas_l.oriX = kwkHija_gafas_l.x; kwkHija_gafas_l.oriY = kwkHija_gafas_l.y 
       kwkHija_gafas_l.name = "kwkHija_gafas_l" 
       menuGroup:insert(kwkHija_gafas_l); menuGroup.kwkHija_gafas_l = kwkHija_gafas_l 

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
 
       -- Actions (functions) 
       function hideAll(event) 
            transitionStash.newTransition_469 = transition.to( Text2, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_469 = transition.to( Text3, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_470 = transition.to( Text4, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_470 = transition.to( Text5, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_470 = transition.to( Text6, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_470 = transition.to( Text6_2, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_471 = transition.to( Text6_3, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_471 = transition.to( Text6_4, {alpha=0, time=0, delay=0}) 
       end 

       function animateAll(event) 
            transitionStash.newTransition_471 = transition.to( Text2, {alpha=Text2.oldAlpha, time=1000, delay=2000}) 
            transitionStash.newTransition_471 = transition.to( Text3, {alpha=Text3.oldAlpha, time=1000, delay=4000}) 
            transitionStash.newTransition_472 = transition.to( Text4, {alpha=Text4.oldAlpha, time=1000, delay=6000}) 
            transitionStash.newTransition_472 = transition.to( Text5, {alpha=Text5.oldAlpha, time=1000, delay=8000}) 
            transitionStash.newTransition_472 = transition.to( Text6, {alpha=Text6.oldAlpha, time=1000, delay=10000}) 
            transitionStash.newTransition_472 = transition.to( Text6_2, {alpha=Text6_2.oldAlpha, time=1000, delay=10000}) 
            transitionStash.newTransition_473 = transition.to( Text6_3, {alpha=Text6_3.oldAlpha, time=1000, delay=10000}) 
            transitionStash.newTransition_473 = transition.to( Text6_4, {alpha=Text6_4.oldAlpha, time=1000, delay=10000}) 
           hideSeres() 
       end 

       function hideSeres(event) 
            transitionStash.newTransition_473 = transition.to( kwkSer_gafas_1, {alpha=0, time=2000, delay=12000}) 
            transitionStash.newTransition_474 = transition.to( kwkSer_gafas_3, {alpha=0, time=2000, delay=12000}) 
       end 

       function hideErizo(event) 
         if (hasErizo == true) then 
            transitionStash.newTransition_474 = transition.to( kwkErizo, {alpha=0, time=0, delay=0}) 
         end 
       end 

       function hideInventory(event) 
            transitionStash.newTransition_475 = transition.to( kwkRectInv, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_475 = transition.to( kwkInvBiberon, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_475 = transition.to( kwkInvTijeras, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_476 = transition.to( kwkInvRosa, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_476 = transition.to( kwkInvErizo, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_476 = transition.to( kwkInvMaquina, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_476 = transition.to( kwkInvCelo, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_477 = transition.to( kwkInvGuitarra, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_477 = transition.to( kwkInvCola, {alpha=0, time=0, delay=0}) 
           InventoryShown = false
          saveKwikVars({"InventoryShown",false}) 
       end 

       function showInventory(event) 
            transitionStash.newTransition_485 = transition.to( kwkRectInv, {alpha=kwkRectInv.oldAlpha, time=0, delay=0}) 
         if (hasBiberon == true) then 
            transitionStash.newTransition_486 = transition.to( kwkInvBiberon, {alpha=kwkInvBiberon.oldAlpha, time=0, delay=0}) 
         end 
         if (hasTijeras == true) then 
            transitionStash.newTransition_487 = transition.to( kwkInvTijeras, {alpha=kwkInvTijeras.oldAlpha, time=0, delay=0}) 
         end 
         if (hasMaquina == true) then 
            transitionStash.newTransition_488 = transition.to( kwkInvMaquina, {alpha=kwkInvMaquina.oldAlpha, time=0, delay=0}) 
         end 
         if (hasRosa == true) then 
            transitionStash.newTransition_488 = transition.to( kwkInvRosa, {alpha=kwkInvRosa.oldAlpha, time=0, delay=0}) 
         end 
         if (hasErizo == true) then 
            transitionStash.newTransition_489 = transition.to( kwkInvErizo, {alpha=kwkInvErizo.oldAlpha, time=0, delay=0}) 
         end 
         if (hasCelo == true) then 
            transitionStash.newTransition_490 = transition.to( kwkInvCelo, {alpha=kwkInvCelo.oldAlpha, time=0, delay=0}) 
         end 
         if (hasGuitarra == true) then 
            transitionStash.newTransition_490 = transition.to( kwkInvGuitarra, {alpha=kwkInvGuitarra.oldAlpha, time=0, delay=0}) 
         end 
         if (hasCola == true) then 
            transitionStash.newTransition_491 = transition.to( kwkInvCola, {alpha=kwkInvCola.oldAlpha, time=0, delay=0}) 
         end 
           InventoryShown = true
          saveKwikVars({"InventoryShown",true}) 
       end 

 
      --End Actions (functions) 

 
       -- Timers 
       timerStash.timerErizo = timer.performWithDelay( 0, hideErizo, 1 ) 
       timerStash.timerHideAll = timer.performWithDelay( 0, hideAll, 1 ) 
       timerStash.timerAnimateAll = timer.performWithDelay( 1000, animateAll, 1 ) 
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
                dispose(); director:changeScene( "page_26", "moveFromRight" ) 
            end 
            timerStash.newTimer_553 = timer.performWithDelay(0, myClosure_switch, 1) 
       end 

       function btnPrevPage(self) 
            local myClosure_switch = function() 
                dispose(); director:changeScene( "page_24", "moveFromLeft" ) 
            end 
            timerStash.newTimer_553 = timer.performWithDelay(0, myClosure_switch, 1) 
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
