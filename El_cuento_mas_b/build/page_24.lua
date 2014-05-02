-- Code created by Kwik - Copyright: kwiksher.com 
-- Version: 2.7.6b 
module(..., package.seeall) 

function new() 
    local numPages = 26 
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
       local btnErizo
       local btnNextPage
       local btnPrevPage

       -- Action names 
       local hideAll 
       local animateAll 
       local hideSeres 
       local hideErizo 

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
       local kwkCLText  
       local kwkComodinText  
       local kwkCIText  
       local kwkCGText  
       local kwkDiamante  
       local kwkEsmeralda  
       local kwkRubi  
       local kwkMedalla  
       local kwkNavnext  
       local kwkNavprev  
       local kwkMama_llorand  
       local kwkHija_gafas_l  

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
print ("Loaded CL = "..CL)
local comodin = kwkVarCheck("comodin") 

       -- kwkFondo3 positioning 
       kwkFondo3 = display.newImageRect( imgDir.. "kwkfondo3.jpg", 2559, 1600 ); 
       kwkFondo3.x = 1279; kwkFondo3.y = 800; kwkFondo3.alpha = 1; kwkFondo3.oldAlpha = 1 
       kwkFondo3.oriX = kwkFondo3.x; kwkFondo3.oriY = kwkFondo3.y 
       kwkFondo3.name = "kwkFondo3" 
       menuGroup:insert(1,kwkFondo3); menuGroup.kwkFondo3 = kwkFondo3 

       -- Text5 positioning 
       Text5 = display.newImageRect( imgDir.. "p24_text5.png", 667, 39 ); 
       Text5.x = 1315; Text5.y = 341; Text5.alpha = 1; Text5.oldAlpha = 1 
       Text5.oriX = Text5.x; Text5.oriY = Text5.y 
       Text5.name = "Text5" 
       menuGroup:insert(Text5); menuGroup.Text5 = Text5 

       -- Text6 positioning 
       Text6 = display.newImageRect( imgDir.. "p24_text6.png", 302, 82 ); 
       Text6.x = 232; Text6.y = 425; Text6.alpha = 1; Text6.oldAlpha = 1 
       Text6.oriX = Text6.x; Text6.oriY = Text6.y 
       Text6.name = "Text6" 
       menuGroup:insert(Text6); menuGroup.Text6 = Text6 

       -- Text6_2 positioning 
       Text6_2 = display.newImageRect( imgDir.. "p24_text6_2.png", 304, 92 ); 
       Text6_2.x = 571; Text6_2.y = 435; Text6_2.alpha = 1; Text6_2.oldAlpha = 1 
       Text6_2.oriX = Text6_2.x; Text6_2.oriY = Text6_2.y 
       Text6_2.name = "Text6_2" 
       menuGroup:insert(Text6_2); menuGroup.Text6_2 = Text6_2 

       -- Text6_3 positioning 
       Text6_3 = display.newImageRect( imgDir.. "p24_text6_3.png", 307, 57 ); 
       Text6_3.x = 2213; Text6_3.y = 462; Text6_3.alpha = 1; Text6_3.oldAlpha = 1 
       Text6_3.oriX = Text6_3.x; Text6_3.oriY = Text6_3.y 
       Text6_3.name = "Text6_3" 
       menuGroup:insert(Text6_3); menuGroup.Text6_3 = Text6_3 

       -- Text6_4 positioning 
       Text6_4 = display.newImageRect( imgDir.. "p24_text6_4.png", 308, 57 ); 
       Text6_4.x = 2409; Text6_4.y = 390; Text6_4.alpha = 1; Text6_4.oldAlpha = 1 
       Text6_4.oriX = Text6_4.x; Text6_4.oriY = Text6_4.y 
       Text6_4.name = "Text6_4" 
       menuGroup:insert(Text6_4); menuGroup.Text6_4 = Text6_4 

       -- Text3 positioning 
       Text3 = display.newImageRect( imgDir.. "p24_text3.png", 510, 39 ); 
       Text3.x = 1281; Text3.y = 194; Text3.alpha = 1; Text3.oldAlpha = 1 
       Text3.oriX = Text3.x; Text3.oriY = Text3.y 
       Text3.name = "Text3" 
       menuGroup:insert(Text3); menuGroup.Text3 = Text3 

       -- Text4 positioning 
       Text4 = display.newImageRect( imgDir.. "p24_text4.png", 1584, 40 ); 
       Text4.x = 1280; Text4.y = 279; Text4.alpha = 1; Text4.oldAlpha = 1 
       Text4.oriX = Text4.x; Text4.oriY = Text4.y 
       Text4.name = "Text4" 
       menuGroup:insert(Text4); menuGroup.Text4 = Text4 

       -- Text2 positioning 
       Text2 = display.newImageRect( imgDir.. "p24_text2.png", 403, 39 ); 
       Text2.x = 1280; Text2.y = 133; Text2.alpha = 1; Text2.oldAlpha = 1 
       Text2.oriX = Text2.x; Text2.oriY = Text2.y 
       Text2.name = "Text2" 
       menuGroup:insert(Text2); menuGroup.Text2 = Text2 

       -- Text1 positioning 
       Text1 = display.newImageRect( imgDir.. "p24_text1.png", 362, 37 ); 
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

       -- kwkRubi positioning 
       kwkRubi = display.newImageRect( imgDir.. "kwkrubi.png", 123, 180 ); 
       kwkRubi.x = 340; kwkRubi.y = 114; kwkRubi.alpha = 1; kwkRubi.oldAlpha = 1 
       kwkRubi.oriX = kwkRubi.x; kwkRubi.oriY = kwkRubi.y 
       kwkRubi.name = "kwkRubi" 
       menuGroup:insert(kwkRubi); menuGroup.kwkRubi = kwkRubi 

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
 
       -- Group(s) creation 

       -- (MIDDLE) External code will render here 
 
       -- Actions (functions) 
       function hideAll(event) 
            transitionStash.newTransition_517 = transition.to( Text2, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_518 = transition.to( Text3, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_519 = transition.to( Text4, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_519 = transition.to( Text5, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_520 = transition.to( Text6, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_521 = transition.to( Text6_2, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_521 = transition.to( Text6_3, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_522 = transition.to( Text6_4, {alpha=0, time=0, delay=0}) 
       end 

       function animateAll(event) 
            transitionStash.newTransition_522 = transition.to( Text2, {alpha=Text2.oldAlpha, time=1000, delay=2000}) 
            transitionStash.newTransition_523 = transition.to( Text3, {alpha=Text3.oldAlpha, time=1000, delay=4000}) 
            transitionStash.newTransition_523 = transition.to( Text4, {alpha=Text4.oldAlpha, time=1000, delay=6000}) 
            transitionStash.newTransition_524 = transition.to( Text5, {alpha=Text5.oldAlpha, time=1000, delay=8000}) 
            transitionStash.newTransition_525 = transition.to( Text6, {alpha=Text6.oldAlpha, time=1000, delay=10000}) 
            transitionStash.newTransition_525 = transition.to( Text6_2, {alpha=Text6_2.oldAlpha, time=1000, delay=10000}) 
            transitionStash.newTransition_526 = transition.to( Text6_3, {alpha=Text6_3.oldAlpha, time=1000, delay=10000}) 
            transitionStash.newTransition_526 = transition.to( Text6_4, {alpha=Text6_4.oldAlpha, time=1000, delay=10000}) 
           hideSeres() 
       end 

       function hideSeres(event) 
            transitionStash.newTransition_527 = transition.to( kwkSer_gafas_1, {alpha=0, time=2000, delay=12000}) 
            transitionStash.newTransition_527 = transition.to( kwkSer_gafas_3, {alpha=0, time=2000, delay=12000}) 
       end 

       function hideErizo(event) 
         if (hasErizo == true) then 
            transitionStash.newTransition_529 = transition.to( kwkErizo, {alpha=0, time=0, delay=0}) 
         end 
       end 

 
      --End Actions (functions) 

 
       -- Timers 
       timerStash.timerErizo = timer.performWithDelay( 0, hideErizo, 1 ) 
       timerStash.timerHideAll = timer.performWithDelay( 0, hideAll, 1 ) 
       timerStash.timerAnimateAll = timer.performWithDelay( 1000, animateAll, 1 ) 

       -- Button event listeners 
       local function onkwkErizoEvent(event) 
          btnErizo(kwkErizo) 
          return true 
       end 
       kwkErizo:addEventListener("tap", onkwkErizoEvent ) 
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
       function btnErizo(self) 
           _G.hasErizo = true
          saveKwikVars({"hasErizo",true}) 
           hideErizo() 
       end 

       function btnNextPage(self) 
            local myClosure_switch = function() 
                dispose(); director:changeScene( "page_25", "moveFromRight" ) 
            end 
            timerStash.newTimer_597 = timer.performWithDelay(0, myClosure_switch, 1) 
       end 

       function btnPrevPage(self) 
            local myClosure_switch = function() 
                dispose(); director:changeScene( "page_23", "moveFromLeft" ) 
            end 
            timerStash.newTimer_598 = timer.performWithDelay(0, myClosure_switch, 1) 
       end 


       -- do not swipe this page 

       dispose = function(event) 
          cancelAllTimers(); cancelAllTransitions() 
          saveKwikVars({"hasBiberon",hasBiberon}) 
          saveKwikVars({"hasTijeras",hasTijeras}) 
          saveKwikVars({"CI2",CI2}) 
          saveKwikVars({"CI3",CI3}) 
          saveKwikVars({"CI4",CI4}) 
          saveKwikVars({"CI5",CI5}) 
          saveKwikVars({"CG8",CG8}) 
          saveKwikVars({"CG1",CG1}) 
          saveKwikVars({"CG2",CG2}) 
          saveKwikVars({"comodin",comodin}) 
          saveKwikVars({"CG",CG}) 
          saveKwikVars({"CI",CI}) 
          saveKwikVars({"CL",CL}) 
          saveKwikVars({"CL1",CL1}) 
          saveKwikVars({"CL2",CL2}) 
          saveKwikVars({"CL3",CL3}) 
          saveKwikVars({"CL5",CL5}) 
       end 

       -- (BOTTOM) External code will render here 


    end 
    drawScreen() 

    return menuGroup 
end 
