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

       local curPage = 19 
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

       -- Action names 
       local hideAll 
       local act_398 
       local hideInventory 
       local showInventory 

       -- Layer names 
       local kwkFondo3  
       local kwkRect2  
       local kwkRect1  
       local kwkCLText  
       local kwkComodinText  
       local kwkCIText  
       local kwkCGText  
       local kwkDiamante  
       local kwkEsmeralda  
       local kwkMedalla  
       local kwkSer_1  
       local Text2  
       local Text3  
       local kwikSer_3  
       local Text1  
       local kwkBebe  
       local kwkHija_casa  
       local Set_de_gafas  
       local kwkMama_casa  
       local Ser_de_dos_cabe  
       local kwkNavnext  
       local kwkNavprev  
       local kwkruby  
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

       -- kwkSer_1 positioning 
       kwkSer_1 = display.newImageRect( imgDir.. "kwkser_1.png", 616, 983 ); 
       kwkSer_1.x = 413; kwkSer_1.y = 932; kwkSer_1.alpha = 1; kwkSer_1.oldAlpha = 1 
       kwkSer_1.oriX = kwkSer_1.x; kwkSer_1.oriY = kwkSer_1.y 
       kwkSer_1.name = "kwkSer_1" 
       menuGroup:insert(kwkSer_1); menuGroup.kwkSer_1 = kwkSer_1 

       -- Text2 positioning 
       Text2 = display.newImageRect( imgDir.. "p19_text2.png", 671, 38 ); 
       Text2.x = 1305; Text2.y = 160; Text2.alpha = 1; Text2.oldAlpha = 1 
       Text2.oriX = Text2.x; Text2.oriY = Text2.y 
       Text2.name = "Text2" 
       menuGroup:insert(Text2); menuGroup.Text2 = Text2 

       -- Text3 positioning 
       Text3 = display.newImageRect( imgDir.. "p19_text3.png", 282, 39 ); 
       Text3.x = 1281; Text3.y = 235; Text3.alpha = 1; Text3.oldAlpha = 1 
       Text3.oriX = Text3.x; Text3.oriY = Text3.y 
       Text3.name = "Text3" 
       menuGroup:insert(Text3); menuGroup.Text3 = Text3 

       -- kwikSer_3 positioning 
       kwikSer_3 = display.newImageRect( imgDir.. "p19_kwikser_3.png", 614, 979 ); 
       kwikSer_3.x = 2411; kwikSer_3.y = 968; kwikSer_3.alpha = 1; kwikSer_3.oldAlpha = 1 
       kwikSer_3.oriX = kwikSer_3.x; kwikSer_3.oriY = kwikSer_3.y 
       kwikSer_3.name = "kwikSer_3" 
       menuGroup:insert(kwikSer_3); menuGroup.kwikSer_3 = kwikSer_3 

       -- Text1 positioning 
       Text1 = display.newImageRect( imgDir.. "p19_text1.png", 364, 39 ); 
       Text1.x = 1279; Text1.y = 95; Text1.alpha = 1; Text1.oldAlpha = 1 
       Text1.oriX = Text1.x; Text1.oriY = Text1.y 
       Text1.name = "Text1" 
       menuGroup:insert(Text1); menuGroup.Text1 = Text1 

       -- kwkBebe positioning 
       kwkBebe = display.newImageRect( imgDir.. "kwkbebe.png", 378, 543 ); 
       kwkBebe.x = 1568; kwkBebe.y = 1078; kwkBebe.alpha = 1; kwkBebe.oldAlpha = 1 
       kwkBebe.oriX = kwkBebe.x; kwkBebe.oriY = kwkBebe.y 
       kwkBebe.name = "kwkBebe" 
       menuGroup:insert(kwkBebe); menuGroup.kwkBebe = kwkBebe 

       -- kwkHija_casa positioning 
       kwkHija_casa = display.newImageRect( imgDir.. "kwkhija_casa.png", 449, 808 ); 
       kwkHija_casa.x = 1212; kwkHija_casa.y = 1000; kwkHija_casa.alpha = 1; kwkHija_casa.oldAlpha = 1 
       kwkHija_casa.oriX = kwkHija_casa.x; kwkHija_casa.oriY = kwkHija_casa.y 
       kwkHija_casa.name = "kwkHija_casa" 
       menuGroup:insert(kwkHija_casa); menuGroup.kwkHija_casa = kwkHija_casa 

       -- Set_de_gafas positioning 
       Set_de_gafas = display.newImageRect( imgDir.. "p19_set_de_gafas.png", 234, 189 ); 
       Set_de_gafas.x = 2138; Set_de_gafas.y = 622; Set_de_gafas.alpha = 1; Set_de_gafas.oldAlpha = 1 
       Set_de_gafas.oriX = Set_de_gafas.x; Set_de_gafas.oriY = Set_de_gafas.y 
       Set_de_gafas.name = "Set_de_gafas" 
       menuGroup:insert(Set_de_gafas); menuGroup.Set_de_gafas = Set_de_gafas 

       -- kwkMama_casa positioning 
       kwkMama_casa = display.newImageRect( imgDir.. "kwkmama_casa.png", 517, 993 ); 
       kwkMama_casa.x = 1969; kwkMama_casa.y = 1024; kwkMama_casa.alpha = 1; kwkMama_casa.oldAlpha = 1 
       kwkMama_casa.oriX = kwkMama_casa.x; kwkMama_casa.oriY = kwkMama_casa.y 
       kwkMama_casa.name = "kwkMama_casa" 
       menuGroup:insert(kwkMama_casa); menuGroup.kwkMama_casa = kwkMama_casa 

       -- Ser_de_dos_cabe positioning 
       Ser_de_dos_cabe = display.newImageRect( imgDir.. "p19_ser_de_dos_cabe.png", 644, 939 ); 
       Ser_de_dos_cabe.x = 885; Ser_de_dos_cabe.y = 1087; Ser_de_dos_cabe.alpha = 1; Ser_de_dos_cabe.oldAlpha = 1 
       Ser_de_dos_cabe.oriX = Ser_de_dos_cabe.x; Ser_de_dos_cabe.oriY = Ser_de_dos_cabe.y 
       Ser_de_dos_cabe.name = "Ser_de_dos_cabe" 
       menuGroup:insert(Ser_de_dos_cabe); menuGroup.Ser_de_dos_cabe = Ser_de_dos_cabe 

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
            transitionStash.newTransition_758 = transition.to( Set_de_gafas, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_758 = transition.to( Text2, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_758 = transition.to( Text3, {alpha=0, time=0, delay=0}) 
       end 

       function act_398(event) 
            transitionStash.newTransition_759 = transition.to( Text2, {alpha=Text2.oldAlpha, time=1000, delay=1000}) 
            transitionStash.newTransition_759 = transition.to( Text3, {alpha=Text3.oldAlpha, time=1000, delay=2000}) 
            transitionStash.newTransition_759 = transition.to( Set_de_gafas, {alpha=Set_de_gafas.oldAlpha, time=1000, delay=3000}) 
       end 

       function hideInventory(event) 
            transitionStash.newTransition_760 = transition.to( kwkRectInv, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_760 = transition.to( kwkInvBiberon, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_760 = transition.to( kwkInvTijeras, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_760 = transition.to( kwkInvRosa, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_761 = transition.to( kwkInvErizo, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_761 = transition.to( kwkInvMaquina, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_761 = transition.to( kwkInvCelo, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_761 = transition.to( kwkInvGuitarra, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_762 = transition.to( kwkInvCola, {alpha=0, time=0, delay=0}) 
           InventoryShown = false
          saveKwikVars({"InventoryShown",false}) 
       end 

       function showInventory(event) 
            transitionStash.newTransition_769 = transition.to( kwkRectInv, {alpha=kwkRectInv.oldAlpha, time=0, delay=0}) 
         if (hasBiberon == true) then 
            transitionStash.newTransition_769 = transition.to( kwkInvBiberon, {alpha=kwkInvBiberon.oldAlpha, time=0, delay=0}) 
         end 
         if (hasTijeras == true) then 
            transitionStash.newTransition_770 = transition.to( kwkInvTijeras, {alpha=kwkInvTijeras.oldAlpha, time=0, delay=0}) 
         end 
         if (hasMaquina == true) then 
            transitionStash.newTransition_771 = transition.to( kwkInvMaquina, {alpha=kwkInvMaquina.oldAlpha, time=0, delay=0}) 
         end 
         if (hasRosa == true) then 
            transitionStash.newTransition_771 = transition.to( kwkInvRosa, {alpha=kwkInvRosa.oldAlpha, time=0, delay=0}) 
         end 
         if (hasErizo == true) then 
            transitionStash.newTransition_772 = transition.to( kwkInvErizo, {alpha=kwkInvErizo.oldAlpha, time=0, delay=0}) 
         end 
         if (hasCelo == true) then 
            transitionStash.newTransition_773 = transition.to( kwkInvCelo, {alpha=kwkInvCelo.oldAlpha, time=0, delay=0}) 
         end 
         if (hasGuitarra == true) then 
            transitionStash.newTransition_773 = transition.to( kwkInvGuitarra, {alpha=kwkInvGuitarra.oldAlpha, time=0, delay=0}) 
         end 
         if (hasCola == true) then 
            transitionStash.newTransition_774 = transition.to( kwkInvCola, {alpha=kwkInvCola.oldAlpha, time=0, delay=0}) 
         end 
           InventoryShown = true
          saveKwikVars({"InventoryShown",true}) 
       end 

 
      --End Actions (functions) 

 
       -- Timers 
       timerStash.timerHideAll = timer.performWithDelay( 0, hideAll, 1 ) 
       timerStash.timerAnimation = timer.performWithDelay( 1000, act_398, 1 ) 
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

       -- Button functions 
       function btnNextPage(self) 
            local myClosure_switch = function() 
                dispose(); director:changeScene( "page_20", "moveFromRight" ) 
            end 
            timerStash.newTimer_838 = timer.performWithDelay(0, myClosure_switch, 1) 
       end 

       function btnPrevPage(self) 
            local myClosure_switch = function() 
                dispose(); director:changeScene( "page_18", "moveFromLeft" ) 
            end 
            timerStash.newTimer_839 = timer.performWithDelay(0, myClosure_switch, 1) 
       end 

       function btnInventario(self) 
         if (InventoryShown == false) then 
           showInventory() 
         else 
           hideInventory() 
         end 
       end 


       -- do not swipe this page 

       dispose = function(event) 
          cancelAllTimers(); cancelAllTransitions() 
       end 

       -- (BOTTOM) External code will render here 


    end 
    drawScreen() 

    return menuGroup 
end 
