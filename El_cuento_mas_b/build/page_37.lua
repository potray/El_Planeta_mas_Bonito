-- Code created by Kwik - Copyright: kwiksher.com 
-- Version: 2.7.6b 
module(..., package.seeall) 

function new() 
    local numPages = 43 
    local menuGroup = display.newGroup() 
    local dispose 
    local _W = display.contentWidth; 
    local _H = display.contentHeight; 

    -- Audio callings 
    local fallo =  audio.loadSound( audioDir.."fallo.mp3") 
    local acierto =  audio.loadSound( audioDir.."acierto.mp3") 


    local drawScreen = function() 

       local curPage = 37 

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
       local btnBoton
       local btnBurbuja

       -- Action names 
       local Drag1 
       local Drag2 
       local Drag3 
       local Drag4 
       local Drag5 

       -- Layer names 
       local Fondo  
       local rect1  
       local rect2  
       local rect3  
       local rect4  
       local rect5  
       local T1  
       local T2  
       local T3  
       local T4  
       local T5  
       local thumb3  
       local thumb1  
       local thumb2  
       local thumb4  
       local thumb5  
       local Rubi  
       local Text1  
       local TextFaltan  
       local TextMal  
       local TextTerminado  
       local kwkBurbuja  

       -- (TOP) External code will render here 
       local pos1 = -1
local pos2 = -1
local pos3 = -1
local pos4 = -1
local pos5 = -1

local addCI3 = 5
local addCG8 = 5

local lastText = Text1

saveKwikVars({"Favor2Visitado", true})
print("Guardado favor2visitado a true")

function isOn (moving, static)
	local condicion1 = moving.x >= static.x - static.width/2
	local condicion2 = moving.x <= static.x + static.width/2
	local condicion3 = moving.y >= static.y - static.height/2
	local condicion4 = moving.y <= static.y + static.height/2

	if (condicion1 and condicion2 and condicion3 and condicion4) then
		return true
	else
		return false
	end
end

function moveToNumber (moving, number)
	if (number == 1) then
		moveTo (moving, rect1)
	end
	if (number == 2) then
		moveTo (moving, rect2)
	end
	if (number == 3) then
		moveTo (moving, rect3)
	end
	if (number == 4) then
		moveTo (moving, rect4)
	end
	if (number == 5) then
		moveTo (moving, rect5)
	end
end

function switchText (textToHide, textToShow)
    transition.to( textToHide, {alpha=0, time=500, delay=0}) 
    transition.to( textToShow, {alpha=textToShow.oldAlpha, time=500, delay=0}) 
    lastText = textToShow
end

function hide (toHide)
    transition.to( toHide, {alpha=0, time=500, delay=0}) 
end

function show (toShow)
    transition.to( toShow, {alpha=toShow.oldAlpha, time=500, delay=0}) 
end


function instantHide(toHide)
    transition.to( toHide, {alpha=0, time=0, delay=0}) 
end

function whereIs (thumbnail)
	switchText (lastText, Text1)
	local returnValue = -1
	if (isOn (thumbnail, rect1)) then
		returnValue = 1
	end
	if (isOn (thumbnail, rect2)) then
		returnValue = 2
	end
	if (isOn (thumbnail, rect3)) then
		returnValue = 3
	end
	if (isOn (thumbnail, rect4)) then
		returnValue = 4
	end
	if (isOn (thumbnail, rect5)) then
		returnValue = 5
	end

	if (returnValue ~= -1) then
		moveToNumber (thumbnail, returnValue)
	end

	return returnValue
end

function corregirValores()
	if (addCI3 < 0) then
		addCI3 = 0
	end
	if (addCG8 < 0) then
		addCG8 = 0
	end
end



function todosEnPosicion()
	if (pos1 ~= -1 and pos2 ~= -1 and pos3 ~= -1 and pos4 ~= -1 and pos5 ~= -1) then
		return true
	else 
		return false
	end
end

function todosEnSuSitio()
	if (pos1 == 1 and pos2 == 2 and pos3 == 3 and pos4 == 4 and pos5 == 5) then
		return true
	else
		return false
	end
end

function terminarPrueba()
	switchText(lastText, TextTerminado)
	audio.setVolume(1, {channel=1} ) 
	audio.play( acierto, {channel=1, loops = 0 } ) 
	show(kwkBurbuja)
	hide(Rubi)

	local currentCI3 = kwkVarCheck("CI3")
	local currentCG8 = kwkVarCheck("CG8")

	saveKwikVars({"CI3", currentCI3 + addCI3})	
	saveKwikVars({"CG8", currentCG8 + addCG8})

	updateCoefs()
end

function comprobar()
	if (todosEnPosicion()) then
		if (not todosEnSuSitio()) then
			switchText(lastText, TextMal)
			audio.setVolume(1, {channel=2} ) 
			audio.play( fallo, {channel=2, loops = 0 } ) 
			if (pos1 ~= 1) then
				addCI3 = addCI3 - 1
				addCG8 = addCG8 - 1
			end
			if (pos2 ~= 2) then
				addCI3 = addCI3 - 1
				addCG8 = addCG8 - 1
			end
			if (pos3 ~= 3) then
				addCI3 = addCI3 - 1
				addCG8 = addCG8 - 1
			end
			if (pos4 ~= 4) then
				addCI3 = addCI3 - 1
				addCG8 = addCG8 - 1
			end
			if (pos5 ~= 5) then
				addCI3 = addCI3 - 1
				addCG8 = addCG8 - 1
			end
		else 
			terminarPrueba()
		end
		corregirValores()
	else
		switchText(lastText, TextFaltan)
		audio.setVolume(1, {channel=2} ) 
		audio.play( fallo, {channel=2, loops = 0 } ) 
	end

	print ("CI3 = "..addCI3..", CG8 = "..addCG8)
end




 
       local hasRosa = kwkVarCheck("hasRosa")
local hasTijeras = kwkVarCheck("hasTijeras")
local hasBiberon = kwkVarCheck("hasBiberon")
local hasGuitarra = kwkVarCheck("hasGuitarra")
local hasMaquina = kwkVarCheck("hasMaquina")
local hasErizo = kwkVarCheck("hasErizo")
local hasCelo = kwkVarCheck("hasCelo")
local hasCola = kwkVarCheck("hasCola") 

       -- Fondo positioning 
       Fondo = display.newImageRect( imgDir.. "p37_fondo.png", 2560, 1600 ); 
       Fondo.x = 1280; Fondo.y = 800; Fondo.alpha = 1; Fondo.oldAlpha = 1 
       Fondo.oriX = Fondo.x; Fondo.oriY = Fondo.y 
       Fondo.name = "Fondo" 
       menuGroup:insert(1,Fondo); menuGroup.Fondo = Fondo 

       -- rect1 positioning 
       rect1 = display.newImageRect( imgDir.. "p37_rect1.png", 522, 330 ); 
       rect1.x = 256; rect1.y = 864; rect1.alpha = 0.67843137254902; rect1.oldAlpha = 0.67843137254902 
       rect1.oriX = rect1.x; rect1.oriY = rect1.y 
       rect1.name = "rect1" 
       menuGroup:insert(rect1); menuGroup.rect1 = rect1 

       -- rect2 positioning 
       rect2 = display.newImageRect( imgDir.. "p37_rect2.png", 522, 330 ); 
       rect2.x = 1274; rect2.y = 864; rect2.alpha = 0.67843137254902; rect2.oldAlpha = 0.67843137254902 
       rect2.oriX = rect2.x; rect2.oriY = rect2.y 
       rect2.name = "rect2" 
       menuGroup:insert(rect2); menuGroup.rect2 = rect2 

       -- rect3 positioning 
       rect3 = display.newImageRect( imgDir.. "p37_rect3.png", 522, 330 ); 
       rect3.x = 2304; rect3.y = 864; rect3.alpha = 0.67843137254902; rect3.oldAlpha = 0.67843137254902 
       rect3.oriX = rect3.x; rect3.oriY = rect3.y 
       rect3.name = "rect3" 
       menuGroup:insert(rect3); menuGroup.rect3 = rect3 

       -- rect4 positioning 
       rect4 = display.newImageRect( imgDir.. "p37_rect4.png", 522, 330 ); 
       rect4.x = 768; rect4.y = 1280; rect4.alpha = 0.67843137254902; rect4.oldAlpha = 0.67843137254902 
       rect4.oriX = rect4.x; rect4.oriY = rect4.y 
       rect4.name = "rect4" 
       menuGroup:insert(rect4); menuGroup.rect4 = rect4 

       -- rect5 positioning 
       rect5 = display.newImageRect( imgDir.. "p37_rect5.png", 522, 330 ); 
       rect5.x = 1792; rect5.y = 1280; rect5.alpha = 0.67843137254902; rect5.oldAlpha = 0.67843137254902 
       rect5.oriX = rect5.x; rect5.oriY = rect5.y 
       rect5.name = "rect5" 
       menuGroup:insert(rect5); menuGroup.rect5 = rect5 

       -- T1 positioning 
       T1 = display.newImageRect( imgDir.. "p37_t1.png", 13, 34 ); 
       T1.x = 255; T1.y = 677; T1.alpha = 1; T1.oldAlpha = 1 
       T1.oriX = T1.x; T1.oriY = T1.y 
       T1.name = "T1" 
       menuGroup:insert(T1); menuGroup.T1 = T1 

       -- T2 positioning 
       T2 = display.newImageRect( imgDir.. "p37_t2.png", 24, 34 ); 
       T2.x = 1281; T2.y = 676; T2.alpha = 1; T2.oldAlpha = 1 
       T2.oriX = T2.x; T2.oriY = T2.y 
       T2.name = "T2" 
       menuGroup:insert(T2); menuGroup.T2 = T2 

       -- T3 positioning 
       T3 = display.newImageRect( imgDir.. "p37_t3.png", 23, 34 ); 
       T3.x = 2303; T3.y = 680; T3.alpha = 1; T3.oldAlpha = 1 
       T3.oriX = T3.x; T3.oriY = T3.y 
       T3.name = "T3" 
       menuGroup:insert(T3); menuGroup.T3 = T3 

       -- T4 positioning 
       T4 = display.newImageRect( imgDir.. "p37_t4.png", 24, 34 ); 
       T4.x = 769; T4.y = 1093; T4.alpha = 1; T4.oldAlpha = 1 
       T4.oriX = T4.x; T4.oriY = T4.y 
       T4.name = "T4" 
       menuGroup:insert(T4); menuGroup.T4 = T4 

       -- T5 positioning 
       T5 = display.newImageRect( imgDir.. "p37_t5.png", 24, 34 ); 
       T5.x = 1792; T5.y = 1098; T5.alpha = 1; T5.oldAlpha = 1 
       T5.oriX = T5.x; T5.oriY = T5.y 
       T5.name = "T5" 
       menuGroup:insert(T5); menuGroup.T5 = T5 

       -- thumb3 positioning 
       thumb3 = display.newImageRect( imgDir.. "p37_thumb3.png", 512, 320 ); 
       thumb3.x = 1792; thumb3.y = 352; thumb3.alpha = 1; thumb3.oldAlpha = 1 
       thumb3.oriX = thumb3.x; thumb3.oriY = thumb3.y 
       thumb3.name = "thumb3" 
       menuGroup:insert(thumb3); menuGroup.thumb3 = thumb3 

       -- thumb1 positioning 
       thumb1 = display.newImageRect( imgDir.. "p37_thumb1.png", 512, 320 ); 
       thumb1.x = 768; thumb1.y = 352; thumb1.alpha = 1; thumb1.oldAlpha = 1 
       thumb1.oriX = thumb1.x; thumb1.oriY = thumb1.y 
       thumb1.name = "thumb1" 
       menuGroup:insert(thumb1); menuGroup.thumb1 = thumb1 

       -- thumb2 positioning 
       thumb2 = display.newImageRect( imgDir.. "p37_thumb2.png", 512, 320 ); 
       thumb2.x = 256; thumb2.y = 352; thumb2.alpha = 1; thumb2.oldAlpha = 1 
       thumb2.oriX = thumb2.x; thumb2.oriY = thumb2.y 
       thumb2.name = "thumb2" 
       menuGroup:insert(thumb2); menuGroup.thumb2 = thumb2 

       -- thumb4 positioning 
       thumb4 = display.newImageRect( imgDir.. "p37_thumb4.png", 512, 320 ); 
       thumb4.x = 1280; thumb4.y = 352; thumb4.alpha = 1; thumb4.oldAlpha = 1 
       thumb4.oriX = thumb4.x; thumb4.oriY = thumb4.y 
       thumb4.name = "thumb4" 
       menuGroup:insert(thumb4); menuGroup.thumb4 = thumb4 

       -- thumb5 positioning 
       thumb5 = display.newImageRect( imgDir.. "p37_thumb5.png", 512, 320 ); 
       thumb5.x = 2304; thumb5.y = 352; thumb5.alpha = 1; thumb5.oldAlpha = 1 
       thumb5.oriX = thumb5.x; thumb5.oriY = thumb5.y 
       thumb5.name = "thumb5" 
       menuGroup:insert(thumb5); menuGroup.thumb5 = thumb5 

       -- Rubi positioning 
       Rubi = display.newImageRect( imgDir.. "p37_rubi.png", 197, 289 ); 
       Rubi.x = 1280; Rubi.y = 1391; Rubi.alpha = 1; Rubi.oldAlpha = 1 
       Rubi.oriX = Rubi.x; Rubi.oriY = Rubi.y 
       Rubi.name = "Rubi" 
       menuGroup:insert(Rubi); menuGroup.Rubi = Rubi 

       -- Text1 positioning 
       Text1 = display.newImageRect( imgDir.. "p37_text1.png", 2421, 166 ); 
       Text1.x = 1268; Text1.y = 86; Text1.alpha = 1; Text1.oldAlpha = 1 
       Text1.oriX = Text1.x; Text1.oriY = Text1.y 
       Text1.name = "Text1" 
       menuGroup:insert(Text1); menuGroup.Text1 = Text1 

       -- TextFaltan positioning 
       TextFaltan = display.newImageRect( imgDir.. "p37_textfaltan.png", 847, 50 ); 
       TextFaltan.x = 1280; TextFaltan.y = 80; TextFaltan.alpha = 1; TextFaltan.oldAlpha = 1 
       TextFaltan.oriX = TextFaltan.x; TextFaltan.oriY = TextFaltan.y 
       TextFaltan.name = "TextFaltan" 
       menuGroup:insert(TextFaltan); menuGroup.TextFaltan = TextFaltan 

       -- TextMal positioning 
       TextMal = display.newImageRect( imgDir.. "p37_textmal.png", 1066, 51 ); 
       TextMal.x = 1272; TextMal.y = 77; TextMal.alpha = 1; TextMal.oldAlpha = 1 
       TextMal.oriX = TextMal.x; TextMal.oriY = TextMal.y 
       TextMal.name = "TextMal" 
       menuGroup:insert(TextMal); menuGroup.TextMal = TextMal 

       -- TextTerminado positioning 
       TextTerminado = display.newImageRect( imgDir.. "p37_textterminado.png", 1566, 51 ); 
       TextTerminado.x = 1274; TextTerminado.y = 77; TextTerminado.alpha = 1; TextTerminado.oldAlpha = 1 
       TextTerminado.oriX = TextTerminado.x; TextTerminado.oriY = TextTerminado.y 
       TextTerminado.name = "TextTerminado" 
       menuGroup:insert(TextTerminado); menuGroup.TextTerminado = TextTerminado 

       -- kwkBurbuja positioning 
       kwkBurbuja = display.newImageRect( imgDir.. "kwkburbuja.png", 428, 428 ); 
       kwkBurbuja.x = 1280; kwkBurbuja.y = 1334; kwkBurbuja.alpha = 1; kwkBurbuja.oldAlpha = 1 
       kwkBurbuja.oriX = kwkBurbuja.x; kwkBurbuja.oriY = kwkBurbuja.y 
       kwkBurbuja.name = "kwkBurbuja" 
       menuGroup:insert(kwkBurbuja); menuGroup.kwkBurbuja = kwkBurbuja 
 
       -- Group(s) creation 

       -- (MIDDLE) External code will render here 
       --Ocultar capas iniciales
instantHide(kwkBurbuja)
instantHide(TextTerminado)
instantHide(TextMal)
instantHide(TextFaltan)

lastText = Text1
 
 
       -- Actions (functions) 
       function Drag1(event) 
           --External code 
           pos1 = whereIs (thumb1) 
       end 

       function Drag2(event) 
           --External code 
           pos2 = whereIs (thumb2) 
       end 

       function Drag3(event) 
           --External code 
           pos3 = whereIs (thumb3) 
       end 

       function Drag4(event) 
           --External code 
           pos4 = whereIs (thumb4) 
       end 

       function Drag5(event) 
           --External code 
           pos5 = whereIs (thumb5) 
       end 

 
      --End Actions (functions) 

 
       -- Drag objects 
       MultiTouch.activate( thumb1, "move", "single"  ) 
       local function thumb1Drag (event ) 
          local t = event.target 
          if event.phase == "began" then  
             local parent = t.parent; parent:insert(t); display.getCurrentStage():setFocus(t); t.isFocus = true 
          elseif event.phase == "moved" then  
            elseif event.phase == "ended" or event.phase == "cancelled" then  
               Drag1()  
               display.getCurrentStage():setFocus(nil); t.isFocus = false 
          end  
          return true 
       end 
       thumb1:addEventListener( MultiTouch.MULTITOUCH_EVENT, thumb1Drag ) 

       MultiTouch.activate( thumb2, "move", "single"  ) 
       local function thumb2Drag (event ) 
          local t = event.target 
          if event.phase == "began" then  
             local parent = t.parent; parent:insert(t); display.getCurrentStage():setFocus(t); t.isFocus = true 
          elseif event.phase == "moved" then  
            elseif event.phase == "ended" or event.phase == "cancelled" then  
               Drag2()  
               display.getCurrentStage():setFocus(nil); t.isFocus = false 
          end  
          return true 
       end 
       thumb2:addEventListener( MultiTouch.MULTITOUCH_EVENT, thumb2Drag ) 

       MultiTouch.activate( thumb3, "move", "single"  ) 
       local function thumb3Drag (event ) 
          local t = event.target 
          if event.phase == "began" then  
             local parent = t.parent; parent:insert(t); display.getCurrentStage():setFocus(t); t.isFocus = true 
          elseif event.phase == "moved" then  
            elseif event.phase == "ended" or event.phase == "cancelled" then  
               Drag3()  
               display.getCurrentStage():setFocus(nil); t.isFocus = false 
          end  
          return true 
       end 
       thumb3:addEventListener( MultiTouch.MULTITOUCH_EVENT, thumb3Drag ) 

       MultiTouch.activate( thumb4, "move", "single"  ) 
       local function thumb4Drag (event ) 
          local t = event.target 
          if event.phase == "began" then  
             local parent = t.parent; parent:insert(t); display.getCurrentStage():setFocus(t); t.isFocus = true 
          elseif event.phase == "moved" then  
            elseif event.phase == "ended" or event.phase == "cancelled" then  
               Drag4()  
               display.getCurrentStage():setFocus(nil); t.isFocus = false 
          end  
          return true 
       end 
       thumb4:addEventListener( MultiTouch.MULTITOUCH_EVENT, thumb4Drag ) 

       MultiTouch.activate( thumb5, "move", "single"  ) 
       local function thumb5Drag (event ) 
          local t = event.target 
          if event.phase == "began" then  
             local parent = t.parent; parent:insert(t); display.getCurrentStage():setFocus(t); t.isFocus = true 
          elseif event.phase == "moved" then  
            elseif event.phase == "ended" or event.phase == "cancelled" then  
               Drag5()  
               display.getCurrentStage():setFocus(nil); t.isFocus = false 
          end  
          return true 
       end 
       thumb5:addEventListener( MultiTouch.MULTITOUCH_EVENT, thumb5Drag ) 


       -- Button event listeners 
       local function onRubiEvent(event) 
          btnBoton(Rubi) 
          return true 
       end 
       Rubi:addEventListener("tap", onRubiEvent ) 
       local function onkwkBurbujaEvent(event) 
          btnBurbuja(kwkBurbuja) 
          return true 
       end 
       kwkBurbuja:addEventListener("tap", onkwkBurbujaEvent ) 

       -- Button functions 
       function btnBoton(self) 
           --External code 
           comprobar() 
       end 

       function btnBurbuja(self) 
            local myClosure_switch = function() 
                dispose(); director:changeScene( "page_2", "fade" ) 
            end 
            timerStash.newTimer_926 = timer.performWithDelay(0, myClosure_switch, 1) 
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
          thumb1:removeEventListener ( MultiTouch.MULTITOUCH_EVENT,  thumb1Drag ); Gesture.deactivate(thumb1) 
          thumb2:removeEventListener ( MultiTouch.MULTITOUCH_EVENT,  thumb2Drag ); Gesture.deactivate(thumb2) 
          thumb3:removeEventListener ( MultiTouch.MULTITOUCH_EVENT,  thumb3Drag ); Gesture.deactivate(thumb3) 
          thumb4:removeEventListener ( MultiTouch.MULTITOUCH_EVENT,  thumb4Drag ); Gesture.deactivate(thumb4) 
          thumb5:removeEventListener ( MultiTouch.MULTITOUCH_EVENT,  thumb5Drag ); Gesture.deactivate(thumb5) 
       end 

       -- (BOTTOM) External code will render here 
       function btnBurbuja(self) 
	local pageToGo = pag_burbuja1 + 1
	if (not hasGuitarra) then
		pageToGo = pag_guitarra
	end
	if (not hasMaquina) then
		pageToGo = pag_maquina
	end
	if (not hasErizo) then
		pageToGo = pag_erizo
	end
	if (not hasRosa) then
		pageToGo = pag_rosa
	end
	if (not hasBiberon or not hasTijeras) then
		pageToGo = pag_tijeras
	end

	print ("Vamos a la página "..pageToGo)

    local myClosure_switch = function() 
        dispose(); director:changeScene( "page_"..pageToGo, "fade" ) 
    end 
    timerStash.newTimer_980 = timer.performWithDelay(0, myClosure_switch, 1) 
end 

 


    end 
    drawScreen() 

    return menuGroup 
end 
