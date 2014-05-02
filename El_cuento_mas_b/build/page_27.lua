-- Code created by Kwik - Copyright: kwiksher.com 
-- Version: 2.7.6b 
module(..., package.seeall) 

function new() 
    local numPages = 27 
    local menuGroup = display.newGroup() 
    local dispose 
    local _W = display.contentWidth; 
    local _H = display.contentHeight; 

    local drawScreen = function() 

       local curPage = 27 
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
       local btnBotaAbeja

       -- Action names 
       local hideBotaAbeja 

       -- Layer names 
       local kwkFondo3  
       local Text1  
       local kwkCaballo  
       local kwkBota_abeja  
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
       local kwkHija_gafas  
       local kwkMama_gafas  

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

       -- Text1 positioning 
       Text1 = display.newImageRect( imgDir.. "p27_text1.png", 1436, 82 ); 
       Text1.x = 1306; Text1.y = 87; Text1.alpha = 1; Text1.oldAlpha = 1 
       Text1.oriX = Text1.x; Text1.oriY = Text1.y 
       Text1.name = "Text1" 
       menuGroup:insert(Text1); menuGroup.Text1 = Text1 

       -- kwkCaballo positioning 
       kwkCaballo = display.newImageRect( imgDir.. "kwkcaballo.png", 1393, 780 ); 
       kwkCaballo.x = 2465; kwkCaballo.y = 306; kwkCaballo.alpha = 1; kwkCaballo.oldAlpha = 1 
       kwkCaballo.oriX = kwkCaballo.x; kwkCaballo.oriY = kwkCaballo.y 
       kwkCaballo.name = "kwkCaballo" 
       menuGroup:insert(kwkCaballo); menuGroup.kwkCaballo = kwkCaballo 

       -- kwkBota_abeja positioning 
       kwkBota_abeja = display.newImageRect( imgDir.. "kwkbota_abeja.png", 428, 378 ); 
       kwkBota_abeja.x = 359; kwkBota_abeja.y = 1269; kwkBota_abeja.alpha = 1; kwkBota_abeja.oldAlpha = 1 
       kwkBota_abeja.oriX = kwkBota_abeja.x; kwkBota_abeja.oriY = kwkBota_abeja.y 
       kwkBota_abeja.name = "kwkBota_abeja" 
       menuGroup:insert(kwkBota_abeja); menuGroup.kwkBota_abeja = kwkBota_abeja 

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

       -- kwkHija_gafas positioning 
       kwkHija_gafas = display.newImageRect( imgDir.. "kwkhija_gafas.png", 448, 816 ); 
       kwkHija_gafas.x = 1123; kwkHija_gafas.y = 999; kwkHija_gafas.alpha = 1; kwkHija_gafas.oldAlpha = 1 
       kwkHija_gafas.oriX = kwkHija_gafas.x; kwkHija_gafas.oriY = kwkHija_gafas.y 
       kwkHija_gafas.name = "kwkHija_gafas" 
       menuGroup:insert(kwkHija_gafas); menuGroup.kwkHija_gafas = kwkHija_gafas 

       -- kwkMama_gafas positioning 
       kwkMama_gafas = display.newImageRect( imgDir.. "kwkmama_gafas.png", 518, 994 ); 
       kwkMama_gafas.x = 1539; kwkMama_gafas.y = 1039; kwkMama_gafas.alpha = 1; kwkMama_gafas.oldAlpha = 1 
       kwkMama_gafas.oriX = kwkMama_gafas.x; kwkMama_gafas.oriY = kwkMama_gafas.y 
       kwkMama_gafas.name = "kwkMama_gafas" 
       menuGroup:insert(kwkMama_gafas); menuGroup.kwkMama_gafas = kwkMama_gafas 
 
       -- Group(s) creation 

       -- (MIDDLE) External code will render here 

       --Animations
       gtStash.gt_pathCaballo = btween.new( kwkCaballo, 1, { 
         { x = 2352, y = 300}, --regular curve
         { x = 2352, y = 300}, 
         { x = 2047, y = 451}, 
         { x = 1791, y = 454}, 

         { x = 1791, y = 454}, --regular curve
         { x = 1535, y = 458}, 
         { x = 1171, y = 296}, 
         { x = 935, y = 255}, 

         { x = 935, y = 255}, --regular curve
         { x = 698, y = 215}, 
         { x = -70, y = 320}, 
         { x = -208, y = 383}, 

         { x = -208, y = 383}, --regular curve
         { x = -347, y = 447}, 
         { x = -1056, y = 392}, 
         { x = -1135, y = 255}, 

         { x = -1135, y = 255}, 
         { x = -1135, y = 255}, 
         { x = -1135, y = 255}, 
         { x = -1135, y = 255}, 
angle = 0       }, {ease = gtween.easing.linear, repeatCount = 1, reflect = false,  delay=4, ""}, {  x=2465, y=306,  alpha=1, rotation=0, xScale=1, yScale=1, newAngle=180}) 

       gtStash.gt_pathHija = btween.new( kwkHija_gafas, 1, { 
         { x = 1100, y = 928}, --regular curve
         { x = 1100, y = 928}, 
         { x = 748, y = 973}, 
         { x = 658, y = 835}, 

         { x = 658, y = 835}, --regular curve
         { x = 569, y = 698}, 
         { x = 408, y = 634}, 
         { x = 230, y = 595}, 

         { x = 230, y = 595}, --regular curve
         { x = 53, y = 557}, 
         { x = -57, y = 573}, 
         { x = -191, y = 670}, 

         { x = -191, y = 670}, --regular curve
         { x = -326, y = 767}, 
         { x = -932, y = 785}, 
         { x = -946, y = 982}, 

         { x = -946, y = 982}, 
         { x = -946, y = 982}, 
         { x = -946, y = 982}, 
         { x = -946, y = 982}, 
angle = 0       }, {ease = gtween.easing.linear, repeatCount = 1, reflect = false,  delay=2, ""}, {  x=1123, y=999,  alpha=1, rotation=0, xScale=1, yScale=1, newAngle=180}) 

       gtStash.gt_pathMama = btween.new( kwkMama_gafas, 1, { 
         { x = 1535, y = 892}, --regular curve
         { x = 1535, y = 892}, 
         { x = 1159, y = 607}, 
         { x = 922, y = 622}, 

         { x = 922, y = 622}, --regular curve
         { x = 686, y = 638}, 
         { x = 344, y = 736}, 
         { x = 255, y = 595}, 

         { x = 255, y = 595}, --regular curve
         { x = 183, y = 480}, 
         { x = -353, y = -63}, 
         { x = -632, y = 95}, 

         { x = -632, y = 95}, --regular curve
         { x = -912, y = 255}, 
         { x = -1415, y = 411}, 
         { x = -1347, y = 717}, 

         { x = -1347, y = 717}, 
         { x = -1347, y = 717}, 
         { x = -1347, y = 717}, 
         { x = -1347, y = 717}, 
angle = 0       }, {ease = gtween.easing.linear, repeatCount = 1, reflect = false,  delay=2, ""}, {  x=1539, y=1039,  alpha=1, rotation=0, xScale=1, yScale=1, newAngle=180}) 

 
       -- Actions (functions) 
       function hideBotaAbeja(event) 
         if (hasBotaAbeja == true) then 
            transitionStash.newTransition_379 = transition.to( kwkBota_abeja, {alpha=0, time=0, delay=0}) 
         end 
       end 

 
      --End Actions (functions) 

 
       -- Timers 
       timerStash.timerBotaAbeja = timer.performWithDelay( 0, hideBotaAbeja, 1 ) 
 
       -- Drag objects 
       MultiTouch.activate( kwkBota_abeja, "move", "single"  ) 
       local function kwkBota_abDrag (event ) 
          local t = event.target 
          if event.phase == "began" then  
             local parent = t.parent; parent:insert(t); display.getCurrentStage():setFocus(t); t.isFocus = true 
          elseif event.phase == "moved" then  
            elseif event.phase == "ended" or event.phase == "cancelled" then  
               display.getCurrentStage():setFocus(nil); t.isFocus = false 
          end  
          return true 
       end 
       kwkBota_abeja:addEventListener( MultiTouch.MULTITOUCH_EVENT, kwkBota_abDrag ) 


       -- Button event listeners 
       local function onkwkBota_abejaEvent(event) 
          btnBotaAbeja(kwkBota_abeja) 
          return true 
       end 
       kwkBota_abeja:addEventListener("tap", onkwkBota_abejaEvent ) 

       -- Button functions 
       function btnBotaAbeja(self) 
           _G.hasBotaAbeja = true
          saveKwikVars({"hasBotaAbeja",true}) 
           hideBotaAbeja() 
       end 


       -- swipe this page with spacer of 120 in normal direction 
       Gesture.activate( kwkFondo3, {swipeLength=120} ) 
       local function pageSwap(event ) 
         if event.phase == "ended" and event.direction ~= nil then  
            local wPage = curPage  
            local direction  
            if event.direction == "left" and kBidi == false then  
               wPage = curPage + 1  
               if wPage > numPages then wPage = curPage end  
               direction = "moveFromRight"  
            elseif event.direction == "left" and kBidi == true then  
               wPage = curPage - 1  
               if wPage < tonumber(initPage) then wPage = initPage end  
               direction = "moveFromLeft"  
            elseif event.direction == "right" and kBidi == true then  
               wPage = curPage + 1  
               if wPage > numPages then wPage = curPage end  
               direction = "moveFromRight"  
            elseif event.direction == "right" and kBidi == false then  
               wPage = curPage - 1  
               if wPage < tonumber(initPage) then wPage = initPage end  
               direction = "moveFromLeft"  
            end  
            if tonumber(wPage) ~= tonumber(curPage) then dispose(); 
               dispose(); director:changeScene("page_"..wPage, direction) 
            end 
         end  
       end 
       kwkFondo3:addEventListener( Gesture.SWIPE_EVENT, pageSwap ) 

       dispose = function(event) 
          cancelAllTweens() 
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
          kwkBota_abeja:removeEventListener ( MultiTouch.MULTITOUCH_EVENT,  kwkBota_abDrag ); Gesture.deactivate(kwkBota_abeja) 
          kwkFondo3:removeEventListener( Gesture.SWIPE_EVENT, pageSwap ); Gesture.deactivate(kwkFondo3) 
       end 

       -- (BOTTOM) External code will render here 


    end 
    drawScreen() 

    return menuGroup 
end 
