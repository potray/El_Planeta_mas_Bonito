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
    local fallo =  audio.loadSound( audioDir.."fallo.mp3") 
    local acierto =  audio.loadSound( audioDir.."acierto.mp3") 


    local drawScreen = function() 

       local curPage = 73 

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

 
       -- Layer names 
       local kwkFondoN  
       local rect1  
       local rect2  
       local rect3  
       local rect4  
       local rect5  
       local rect6  
       local rect7  
       local rect8  
       local T1  
       local T2  
       local T3  
       local T4  
       local T5  
       local T6  
       local T7  
       local T8  
       local thumb3  
       local thumb1  
       local thumb2  
       local thumb4  
       local thumb5  
       local thumb6  
       local thumb7  
       local thumb8  
       local Rubi  
       local Text1  
       local TextFaltan  
       local TextMal  
       local TextTerminado  
       local kwkBurbuja  

       -- (TOP) External code will render here 
       local hasRosa = kwkVarCheck("hasRosa")
local hasTijeras = kwkVarCheck("hasTijeras")
local hasBiberon = kwkVarCheck("hasBiberon")
local hasGuitarra = kwkVarCheck("hasGuitarra")
local hasMaquina = kwkVarCheck("hasMaquina")
local hasErizo = kwkVarCheck("hasErizo")
local hasCelo = kwkVarCheck("hasCelo")
local hasCola = kwkVarCheck("hasCola") 

       -- kwkFondoN positioning 
       kwkFondoN = display.newImageRect( imgDir.. "kwkfondon.png", 2560, 1600 ); 
       kwkFondoN.x = 1280; kwkFondoN.y = 800; kwkFondoN.alpha = 1; kwkFondoN.oldAlpha = 1 
       kwkFondoN.oriX = kwkFondoN.x; kwkFondoN.oriY = kwkFondoN.y 
       kwkFondoN.name = "kwkFondoN" 
       menuGroup:insert(1,kwkFondoN); menuGroup.kwkFondoN = kwkFondoN 

       -- rect1 positioning 
       rect1 = display.newImageRect( imgDir.. "p73_rect1.png", 522, 330 ); 
       rect1.x = 255; rect1.y = 1016; rect1.alpha = 0.67843137254902; rect1.oldAlpha = 0.67843137254902 
       rect1.oriX = rect1.x; rect1.oriY = rect1.y 
       rect1.name = "rect1" 
       menuGroup:insert(rect1); menuGroup.rect1 = rect1 

       -- rect2 positioning 
       rect2 = display.newImageRect( imgDir.. "p73_rect2.png", 522, 330 ); 
       rect2.x = 902; rect2.y = 1017; rect2.alpha = 0.67843137254902; rect2.oldAlpha = 0.67843137254902 
       rect2.oriX = rect2.x; rect2.oriY = rect2.y 
       rect2.name = "rect2" 
       menuGroup:insert(rect2); menuGroup.rect2 = rect2 

       -- rect3 positioning 
       rect3 = display.newImageRect( imgDir.. "p73_rect3.png", 522, 330 ); 
       rect3.x = 1653; rect3.y = 1015; rect3.alpha = 0.67843137254902; rect3.oldAlpha = 0.67843137254902 
       rect3.oriX = rect3.x; rect3.oriY = rect3.y 
       rect3.name = "rect3" 
       menuGroup:insert(rect3); menuGroup.rect3 = rect3 

       -- rect4 positioning 
       rect4 = display.newImageRect( imgDir.. "p73_rect4.png", 522, 330 ); 
       rect4.x = 2306; rect4.y = 1016; rect4.alpha = 0.67843137254902; rect4.oldAlpha = 0.67843137254902 
       rect4.oriX = rect4.x; rect4.oriY = rect4.y 
       rect4.name = "rect4" 
       menuGroup:insert(rect4); menuGroup.rect4 = rect4 

       -- rect5 positioning 
       rect5 = display.newImageRect( imgDir.. "p73_rect5.png", 522, 330 ); 
       rect5.x = 255; rect5.y = 1439; rect5.alpha = 0.67843137254902; rect5.oldAlpha = 0.67843137254902 
       rect5.oriX = rect5.x; rect5.oriY = rect5.y 
       rect5.name = "rect5" 
       menuGroup:insert(rect5); menuGroup.rect5 = rect5 

       -- rect6 positioning 
       rect6 = display.newImageRect( imgDir.. "p73_rect6.png", 522, 330 ); 
       rect6.x = 907; rect6.y = 1439; rect6.alpha = 0.67843137254902; rect6.oldAlpha = 0.67843137254902 
       rect6.oriX = rect6.x; rect6.oriY = rect6.y 
       rect6.name = "rect6" 
       menuGroup:insert(rect6); menuGroup.rect6 = rect6 

       -- rect7 positioning 
       rect7 = display.newImageRect( imgDir.. "p73_rect7.png", 522, 330 ); 
       rect7.x = 1654; rect7.y = 1439; rect7.alpha = 0.67843137254902; rect7.oldAlpha = 0.67843137254902 
       rect7.oriX = rect7.x; rect7.oriY = rect7.y 
       rect7.name = "rect7" 
       menuGroup:insert(rect7); menuGroup.rect7 = rect7 

       -- rect8 positioning 
       rect8 = display.newImageRect( imgDir.. "p73_rect8.png", 522, 330 ); 
       rect8.x = 2300; rect8.y = 1439; rect8.alpha = 0.67843137254902; rect8.oldAlpha = 0.67843137254902 
       rect8.oriX = rect8.x; rect8.oriY = rect8.y 
       rect8.name = "rect8" 
       menuGroup:insert(rect8); menuGroup.rect8 = rect8 

       -- T1 positioning 
       T1 = display.newImageRect( imgDir.. "p73_t1.png", 13, 34 ); 
       T1.x = 251; T1.y = 822; T1.alpha = 1; T1.oldAlpha = 1 
       T1.oriX = T1.x; T1.oriY = T1.y 
       T1.name = "T1" 
       menuGroup:insert(T1); menuGroup.T1 = T1 

       -- T2 positioning 
       T2 = display.newImageRect( imgDir.. "p73_t2.png", 24, 34 ); 
       T2.x = 903; T2.y = 832; T2.alpha = 1; T2.oldAlpha = 1 
       T2.oriX = T2.x; T2.oriY = T2.y 
       T2.name = "T2" 
       menuGroup:insert(T2); menuGroup.T2 = T2 

       -- T3 positioning 
       T3 = display.newImageRect( imgDir.. "p73_t3.png", 23, 34 ); 
       T3.x = 1667; T3.y = 830; T3.alpha = 1; T3.oldAlpha = 1 
       T3.oriX = T3.x; T3.oriY = T3.y 
       T3.name = "T3" 
       menuGroup:insert(T3); menuGroup.T3 = T3 

       -- T4 positioning 
       T4 = display.newImageRect( imgDir.. "p73_t4.png", 24, 34 ); 
       T4.x = 2301; T4.y = 827; T4.alpha = 1; T4.oldAlpha = 1 
       T4.oriX = T4.x; T4.oriY = T4.y 
       T4.name = "T4" 
       menuGroup:insert(T4); menuGroup.T4 = T4 

       -- T5 positioning 
       T5 = display.newImageRect( imgDir.. "p73_t5.png", 24, 34 ); 
       T5.x = 252; T5.y = 1243; T5.alpha = 1; T5.oldAlpha = 1 
       T5.oriX = T5.x; T5.oriY = T5.y 
       T5.name = "T5" 
       menuGroup:insert(T5); menuGroup.T5 = T5 

       -- T6 positioning 
       T6 = display.newImageRect( imgDir.. "p73_t6.png", 23, 34 ); 
       T6.x = 908; T6.y = 1243; T6.alpha = 1; T6.oldAlpha = 1 
       T6.oriX = T6.x; T6.oriY = T6.y 
       T6.name = "T6" 
       menuGroup:insert(T6); menuGroup.T6 = T6 

       -- T7 positioning 
       T7 = display.newImageRect( imgDir.. "p73_t7.png", 22, 34 ); 
       T7.x = 1670; T7.y = 1243; T7.alpha = 1; T7.oldAlpha = 1 
       T7.oriX = T7.x; T7.oriY = T7.y 
       T7.name = "T7" 
       menuGroup:insert(T7); menuGroup.T7 = T7 

       -- T8 positioning 
       T8 = display.newImageRect( imgDir.. "p73_t8.png", 24, 34 ); 
       T8.x = 2303; T8.y = 1243; T8.alpha = 1; T8.oldAlpha = 1 
       T8.oriX = T8.x; T8.oriY = T8.y 
       T8.name = "T8" 
       menuGroup:insert(T8); menuGroup.T8 = T8 

       -- thumb3 positioning 
       thumb3 = display.newImageRect( imgDir.. "p73_thumb3.png", 512, 320 ); 
       thumb3.x = 1656; thumb3.y = 238; thumb3.alpha = 1; thumb3.oldAlpha = 1 
       thumb3.oriX = thumb3.x; thumb3.oriY = thumb3.y 
       thumb3.name = "thumb3" 
       menuGroup:insert(thumb3); menuGroup.thumb3 = thumb3 

       -- thumb1 positioning 
       thumb1 = display.newImageRect( imgDir.. "p73_thumb1.png", 512, 320 ); 
       thumb1.x = 2303; thumb1.y = 608; thumb1.alpha = 1; thumb1.oldAlpha = 1 
       thumb1.oriX = thumb1.x; thumb1.oriY = thumb1.y 
       thumb1.name = "thumb1" 
       menuGroup:insert(thumb1); menuGroup.thumb1 = thumb1 

       -- thumb2 positioning 
       thumb2 = display.newImageRect( imgDir.. "p73_thumb2.png", 512, 320 ); 
       thumb2.x = 258; thumb2.y = 610; thumb2.alpha = 1; thumb2.oldAlpha = 1 
       thumb2.oriX = thumb2.x; thumb2.oriY = thumb2.y 
       thumb2.name = "thumb2" 
       menuGroup:insert(thumb2); menuGroup.thumb2 = thumb2 

       -- thumb4 positioning 
       thumb4 = display.newImageRect( imgDir.. "p73_thumb4.png", 512, 320 ); 
       thumb4.x = 902; thumb4.y = 242; thumb4.alpha = 1; thumb4.oldAlpha = 1 
       thumb4.oriX = thumb4.x; thumb4.oriY = thumb4.y 
       thumb4.name = "thumb4" 
       menuGroup:insert(thumb4); menuGroup.thumb4 = thumb4 

       -- thumb5 positioning 
       thumb5 = display.newImageRect( imgDir.. "p73_thumb5.png", 512, 320 ); 
       thumb5.x = 907; thumb5.y = 611; thumb5.alpha = 1; thumb5.oldAlpha = 1 
       thumb5.oriX = thumb5.x; thumb5.oriY = thumb5.y 
       thumb5.name = "thumb5" 
       menuGroup:insert(thumb5); menuGroup.thumb5 = thumb5 

       -- thumb6 positioning 
       thumb6 = display.newImageRect( imgDir.. "p73_thumb6.png", 512, 320 ); 
       thumb6.x = 253; thumb6.y = 246; thumb6.alpha = 1; thumb6.oldAlpha = 1 
       thumb6.oriX = thumb6.x; thumb6.oriY = thumb6.y 
       thumb6.name = "thumb6" 
       menuGroup:insert(thumb6); menuGroup.thumb6 = thumb6 

       -- thumb7 positioning 
       thumb7 = display.newImageRect( imgDir.. "p73_thumb7.png", 512, 320 ); 
       thumb7.x = 2305; thumb7.y = 233; thumb7.alpha = 1; thumb7.oldAlpha = 1 
       thumb7.oriX = thumb7.x; thumb7.oriY = thumb7.y 
       thumb7.name = "thumb7" 
       menuGroup:insert(thumb7); menuGroup.thumb7 = thumb7 

       -- thumb8 positioning 
       thumb8 = display.newImageRect( imgDir.. "p73_thumb8.png", 512, 320 ); 
       thumb8.x = 1652; thumb8.y = 603; thumb8.alpha = 1; thumb8.oldAlpha = 1 
       thumb8.oriX = thumb8.x; thumb8.oriY = thumb8.y 
       thumb8.name = "thumb8" 
       menuGroup:insert(thumb8); menuGroup.thumb8 = thumb8 

       -- Rubi positioning 
       Rubi = display.newImageRect( imgDir.. "p73_rubi.png", 197, 289 ); 
       Rubi.x = 1280; Rubi.y = 1391; Rubi.alpha = 1; Rubi.oldAlpha = 1 
       Rubi.oriX = Rubi.x; Rubi.oriY = Rubi.y 
       Rubi.name = "Rubi" 
       menuGroup:insert(Rubi); menuGroup.Rubi = Rubi 

       -- Text1 positioning 
       Text1 = display.newImageRect( imgDir.. "p73_text1.png", 2158, 51 ); 
       Text1.x = 1286; Text1.y = 43; Text1.alpha = 1; Text1.oldAlpha = 1 
       Text1.oriX = Text1.x; Text1.oriY = Text1.y 
       Text1.name = "Text1" 
       menuGroup:insert(Text1); menuGroup.Text1 = Text1 

       -- TextFaltan positioning 
       TextFaltan = display.newImageRect( imgDir.. "p73_textfaltan.png", 847, 50 ); 
       TextFaltan.x = 1280; TextFaltan.y = 43; TextFaltan.alpha = 1; TextFaltan.oldAlpha = 1 
       TextFaltan.oriX = TextFaltan.x; TextFaltan.oriY = TextFaltan.y 
       TextFaltan.name = "TextFaltan" 
       menuGroup:insert(TextFaltan); menuGroup.TextFaltan = TextFaltan 

       -- TextMal positioning 
       TextMal = display.newImageRect( imgDir.. "p73_textmal.png", 1065, 51 ); 
       TextMal.x = 1278; TextMal.y = 46; TextMal.alpha = 1; TextMal.oldAlpha = 1 
       TextMal.oriX = TextMal.x; TextMal.oriY = TextMal.y 
       TextMal.name = "TextMal" 
       menuGroup:insert(TextMal); menuGroup.TextMal = TextMal 

       -- TextTerminado positioning 
       TextTerminado = display.newImageRect( imgDir.. "p73_textterminado.png", 1566, 51 ); 
       TextTerminado.x = 1278; TextTerminado.y = 42; TextTerminado.alpha = 1; TextTerminado.oldAlpha = 1 
       TextTerminado.oriX = TextTerminado.x; TextTerminado.oriY = TextTerminado.y 
       TextTerminado.name = "TextTerminado" 
       menuGroup:insert(TextTerminado); menuGroup.TextTerminado = TextTerminado 

       -- kwkBurbuja positioning 
       kwkBurbuja = display.newImageRect( imgDir.. "kwkburbuja.png", 428, 428 ); 
       kwkBurbuja.x = 1278; kwkBurbuja.y = 655; kwkBurbuja.alpha = 1; kwkBurbuja.oldAlpha = 1 
       kwkBurbuja.oriX = kwkBurbuja.x; kwkBurbuja.oriY = kwkBurbuja.y 
       kwkBurbuja.name = "kwkBurbuja" 
       menuGroup:insert(kwkBurbuja); menuGroup.kwkBurbuja = kwkBurbuja 
 
       -- Group(s) creation 

       -- (MIDDLE) External code will render here 
       ---------------------------------------------------------------------------
--VARIABLES
---------------------------------------------------------------------------

--Tabla de correspondencias entre thumbnails y rectángulos

local correspondencias = {}
correspondencias[thumb1] = rect1
correspondencias[thumb2] = rect2
correspondencias[thumb3] = rect3
correspondencias[thumb4] = rect4
correspondencias[thumb5] = rect5
correspondencias[thumb6] = rect6
correspondencias[thumb7] = rect7
correspondencias[thumb8] = rect8

--Tabla de thumbnails colocadas
local colocadas = {}
for key, value in pairs(correspondencias) do
	colocadas[key] = false
end

local textoActual = Text1

local addCI3 = 20
local addCG8 = 20

---------------------------------------------------------------------------
--FUNCIONES
---------------------------------------------------------------------------

--Cambiar un texto por otro
function switchText (nuevoTexto)
	hide(textoActual)
	show(nuevoTexto)
	textoActual = nuevoTexto
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

--Función de terminar

function terminar()
	switchText(TextTerminado)
	audioAcertar()
	local currentCI3 = kwkVarCheck("CI3")
	local currentCG8 = kwkVarCheck("CG8")

	saveKwikVars({"CI3", currentCI3 + addCI3})
	saveKwikVars({"CG8", currentCG8 + addCG8})

	updateCoefs()

	show(kwkBurbuja)
	hide(Rubi)

end

--Función de fallar
function fallar()
	print("Fallado!")
  	switchText(textMal)
	audioFallar()
	addCI3 = addCI3 - 1
	addCG8 = addCG8 - 1

	if (addCI3 < 0) then 
		addCI3 = 0 
	end

	if (addCG8 < 0) then
		addCG8 = 0
	end
end

--Función del botón
function boton ()
	--Contar cuántas están colocadas
	local numColocadas = 0

	for key, value in pairs(colocadas) do
		if (value) then
			numColocadas = numColocadas + 1
		end
	end

	--Si no están todas colocadas se notifica
	if (numColocadas ~= 8) then
		audioFallar()
		switchText(TextFaltan)
	else
		--Se comprueba que estén bien colocadas
		local todasBien = true
		for key, value in pairs(correspondencias) do
			if (not isOn(key, value)) then
				todasBien = false
			end
		end

		if (todasBien) then
			terminar()
		else
			fallar()
		end
	end
end

--Comprobar si una thumbnail está en algún rectángulo
function enRectangulo (thumbnail)
	local estaEnRectangulo = false

	for key, value in pairs (correspondencias) do
		if (isOn(thumbnail, value)) then
			estaEnRectangulo = value
		end
	end

	return estaEnRectangulo
end

--Arrastrar una thumbnail
function arrastrar (event) 
	local t = event.target 
	
	if event.phase == "began" then  
		colocadas[t] = false
		local parent = t.parent; parent:insert(t); display.getCurrentStage():setFocus(t); t.isFocus = true 
	elseif event.phase == "moved" then  
	elseif event.phase == "ended" or event.phase == "cancelled" then  

		local rect = enRectangulo(t)

		if (rect ~= false) then
			colocadas[t] = true
			moveTo(t, rect)
		end
		display.getCurrentStage():setFocus(nil); t.isFocus = false 
	end  
end 

--Callback de la burbuja
function burbuja ()
	local pageToGo = pag_celo

	if (not hasCola) then
		pageToGo = pag_cola

	end

	local myClosure_switch = function() 
   		dispose(); director:changeScene( "page_"..pageToGo, "fade" ) 
	end 
	timerStash.newTimer_980 = timer.performWithDelay(0, myClosure_switch, 1) 
end
	


---------------------------------------------------------------------------
--PREPARACION DE LA ESCENA
---------------------------------------------------------------------------

--Ocultar textos
instantHide(TextFaltan)
instantHide(TextMal)
instantHide(TextTerminado)

instantHide(kwkBurbuja)

---------------------------------------------------------------------------
--CALLBACKS
---------------------------------------------------------------------------
for key, value in pairs(correspondencias) do
	MultiTouch.activate(key, "move", "single") 

	key:addEventListener( MultiTouch.MULTITOUCH_EVENT, arrastrar )
end

Rubi:addEventListener( "tap", boton )
kwkBurbuja:addEventListener( "tap", burbuja ) 

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


    end 
    drawScreen() 

    return menuGroup 
end 
