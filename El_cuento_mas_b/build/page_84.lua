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

       local curPage = 84 

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
       local kwkFondoN  
       local kwkRect2  
       local kwkRect1  
       local kwkCLText  
       local kwkComodinText  
       local kwkCIText  
       local kwkCGText  
       local Text1  
       local M1  
       local M2  
       local M3  
       local kwkDiamante  
       local kwkEsmeralda  
       local kwkruby  
       local kwkMedalla  
       local Cabeza_Mama_gaf  
       local Cabeza_Hija_Gaf  
       local Cabeza_bebe  
       local Cabeza_Ser  
       local kwkTick  
       local Cabeza_Hormigui  
       local Cabeza_Sabio  
       local Cabeza_Ser_2  
       local Nube  
       local Nube_caballo  
       local TextAcierto  
       local TextFallo  

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

local Audio = kwkVarCheck("Audio") 
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

       -- Text1 positioning 
       Text1 = display.newImageRect( imgDir.. "p84_text1.png", 2401, 166 ); 
       Text1.x = 1274; Text1.y = 396; Text1.alpha = 1; Text1.oldAlpha = 1 
       Text1.oriX = Text1.x; Text1.oriY = Text1.y 
       Text1.name = "Text1" 
       menuGroup:insert(Text1); menuGroup.Text1 = Text1 

       -- M1 positioning 
       M1 = display.newImageRect( imgDir.. "p84_m1.png", 254, 286 ); 
       M1.x = 1281; M1.y = 152; M1.alpha = 1; M1.oldAlpha = 1 
       M1.oriX = M1.x; M1.oriY = M1.y 
       M1.name = "M1" 
       menuGroup:insert(M1); menuGroup.M1 = M1 

       -- M2 positioning 
       M2 = display.newImageRect( imgDir.. "p84_m2.png", 254, 286 ); 
       M2.x = 1665; M2.y = 152; M2.alpha = 1; M2.oldAlpha = 1 
       M2.oriX = M2.x; M2.oriY = M2.y 
       M2.name = "M2" 
       menuGroup:insert(M2); menuGroup.M2 = M2 

       -- M3 positioning 
       M3 = display.newImageRect( imgDir.. "p84_m3.png", 254, 286 ); 
       M3.x = 886; M3.y = 143; M3.alpha = 1; M3.oldAlpha = 1 
       M3.oriX = M3.x; M3.oriY = M3.y 
       M3.name = "M3" 
       menuGroup:insert(M3); menuGroup.M3 = M3 

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

       -- kwkruby positioning 
       kwkruby = display.newImageRect( imgDir.. "kwkruby.png", 224, 220 ); 
       kwkruby.x = 332; kwkruby.y = 128; kwkruby.alpha = 1; kwkruby.oldAlpha = 1 
       kwkruby.oriX = kwkruby.x; kwkruby.oriY = kwkruby.y 
       kwkruby.name = "kwkruby" 
       menuGroup:insert(kwkruby); menuGroup.kwkruby = kwkruby 

       -- kwkMedalla positioning 
       kwkMedalla = display.newImageRect( imgDir.. "kwkmedalla.png", 176, 199 ); 
       kwkMedalla.x = 2392; kwkMedalla.y = 113; kwkMedalla.alpha = 1; kwkMedalla.oldAlpha = 1 
       kwkMedalla.oriX = kwkMedalla.x; kwkMedalla.oriY = kwkMedalla.y 
       kwkMedalla.name = "kwkMedalla" 
       menuGroup:insert(kwkMedalla); menuGroup.kwkMedalla = kwkMedalla 

       -- Cabeza_Mama_gaf positioning 
       Cabeza_Mama_gaf = display.newImageRect( imgDir.. "p84_cabeza_mama_gaf.png", 368, 391 ); 
       Cabeza_Mama_gaf.x = 264; Cabeza_Mama_gaf.y = 1346; Cabeza_Mama_gaf.alpha = 1; Cabeza_Mama_gaf.oldAlpha = 1 
       Cabeza_Mama_gaf.oriX = Cabeza_Mama_gaf.x; Cabeza_Mama_gaf.oriY = Cabeza_Mama_gaf.y 
       Cabeza_Mama_gaf.name = "Cabeza_Mama_gaf" 
       menuGroup:insert(Cabeza_Mama_gaf); menuGroup.Cabeza_Mama_gaf = Cabeza_Mama_gaf 

       -- Cabeza_Hija_Gaf positioning 
       Cabeza_Hija_Gaf = display.newImageRect( imgDir.. "p84_cabeza_hija_gaf.png", 267, 348 ); 
       Cabeza_Hija_Gaf.x = 2421; Cabeza_Hija_Gaf.y = 709; Cabeza_Hija_Gaf.alpha = 1; Cabeza_Hija_Gaf.oldAlpha = 1 
       Cabeza_Hija_Gaf.oriX = Cabeza_Hija_Gaf.x; Cabeza_Hija_Gaf.oriY = Cabeza_Hija_Gaf.y 
       Cabeza_Hija_Gaf.name = "Cabeza_Hija_Gaf" 
       menuGroup:insert(Cabeza_Hija_Gaf); menuGroup.Cabeza_Hija_Gaf = Cabeza_Hija_Gaf 

       -- Cabeza_bebe positioning 
       Cabeza_bebe = display.newImageRect( imgDir.. "p84_cabeza_bebe.png", 382, 303 ); 
       Cabeza_bebe.x = 1281; Cabeza_bebe.y = 1409; Cabeza_bebe.alpha = 1; Cabeza_bebe.oldAlpha = 1 
       Cabeza_bebe.oriX = Cabeza_bebe.x; Cabeza_bebe.oriY = Cabeza_bebe.y 
       Cabeza_bebe.name = "Cabeza_bebe" 
       menuGroup:insert(Cabeza_bebe); menuGroup.Cabeza_bebe = Cabeza_bebe 

       -- Cabeza_Ser positioning 
       Cabeza_Ser = display.newImageRect( imgDir.. "p84_cabeza_ser.png", 236, 346 ); 
       Cabeza_Ser.x = 271; Cabeza_Ser.y = 927; Cabeza_Ser.alpha = 1; Cabeza_Ser.oldAlpha = 1 
       Cabeza_Ser.oriX = Cabeza_Ser.x; Cabeza_Ser.oriY = Cabeza_Ser.y 
       Cabeza_Ser.name = "Cabeza_Ser" 
       menuGroup:insert(Cabeza_Ser); menuGroup.Cabeza_Ser = Cabeza_Ser 

       -- kwkTick positioning 
       kwkTick = display.newImageRect( imgDir.. "kwktick.png", 303, 227 ); 
       kwkTick.x = 1275; kwkTick.y = 821; kwkTick.alpha = 1; kwkTick.oldAlpha = 1 
       kwkTick.oriX = kwkTick.x; kwkTick.oriY = kwkTick.y 
       kwkTick.name = "kwkTick" 
       menuGroup:insert(kwkTick); menuGroup.kwkTick = kwkTick 

       -- Cabeza_Hormigui positioning 
       Cabeza_Hormigui = display.newImageRect( imgDir.. "p84_cabeza_hormigui.png", 217, 329 ); 
       Cabeza_Hormigui.x = 2406; Cabeza_Hormigui.y = 1402; Cabeza_Hormigui.alpha = 1; Cabeza_Hormigui.oldAlpha = 1 
       Cabeza_Hormigui.oriX = Cabeza_Hormigui.x; Cabeza_Hormigui.oriY = Cabeza_Hormigui.y 
       Cabeza_Hormigui.name = "Cabeza_Hormigui" 
       menuGroup:insert(Cabeza_Hormigui); menuGroup.Cabeza_Hormigui = Cabeza_Hormigui 

       -- Cabeza_Sabio positioning 
       Cabeza_Sabio = display.newImageRect( imgDir.. "p84_cabeza_sabio.png", 424, 514 ); 
       Cabeza_Sabio.x = 1907; Cabeza_Sabio.y = 1328; Cabeza_Sabio.alpha = 1; Cabeza_Sabio.oldAlpha = 1 
       Cabeza_Sabio.oriX = Cabeza_Sabio.x; Cabeza_Sabio.oriY = Cabeza_Sabio.y 
       Cabeza_Sabio.name = "Cabeza_Sabio" 
       menuGroup:insert(Cabeza_Sabio); menuGroup.Cabeza_Sabio = Cabeza_Sabio 

       -- Cabeza_Ser_2 positioning 
       Cabeza_Ser_2 = display.newImageRect( imgDir.. "p84_cabeza_ser_2.png", 291, 420 ); 
       Cabeza_Ser_2.x = 777; Cabeza_Ser_2.y = 1351; Cabeza_Ser_2.alpha = 1; Cabeza_Ser_2.oldAlpha = 1 
       Cabeza_Ser_2.oriX = Cabeza_Ser_2.x; Cabeza_Ser_2.oriY = Cabeza_Ser_2.y 
       Cabeza_Ser_2.name = "Cabeza_Ser_2" 
       menuGroup:insert(Cabeza_Ser_2); menuGroup.Cabeza_Ser_2 = Cabeza_Ser_2 

       -- Nube positioning 
       Nube = display.newImageRect( imgDir.. "p84_nube.png", 551, 299 ); 
       Nube.x = 294; Nube.y = 569; Nube.alpha = 1; Nube.oldAlpha = 1 
       Nube.oriX = Nube.x; Nube.oriY = Nube.y 
       Nube.name = "Nube" 
       menuGroup:insert(Nube); menuGroup.Nube = Nube 

       -- Nube_caballo positioning 
       Nube_caballo = display.newImageRect( imgDir.. "p84_nube_caballo.png", 718, 449 ); 
       Nube_caballo.x = 2211; Nube_caballo.y = 989; Nube_caballo.alpha = 1; Nube_caballo.oldAlpha = 1 
       Nube_caballo.oriX = Nube_caballo.x; Nube_caballo.oriY = Nube_caballo.y 
       Nube_caballo.name = "Nube_caballo" 
       menuGroup:insert(Nube_caballo); menuGroup.Nube_caballo = Nube_caballo 

       -- TextAcierto positioning 
       TextAcierto = display.newImageRect( imgDir.. "p84_textacierto.png", 243, 46 ); 
       TextAcierto.x = 1274; TextAcierto.y = 402; TextAcierto.alpha = 1; TextAcierto.oldAlpha = 1 
       TextAcierto.oriX = TextAcierto.x; TextAcierto.oriY = TextAcierto.y 
       TextAcierto.name = "TextAcierto" 
       menuGroup:insert(TextAcierto); menuGroup.TextAcierto = TextAcierto 

       -- TextFallo positioning 
       TextFallo = display.newImageRect( imgDir.. "p84_textfallo.png", 1304, 108 ); 
       TextFallo.x = 1289; TextFallo.y = 400; TextFallo.alpha = 1; TextFallo.oldAlpha = 1 
       TextFallo.oriX = TextFallo.x; TextFallo.oriY = TextFallo.y 
       TextFallo.name = "TextFallo" 
       menuGroup:insert(TextFallo); menuGroup.TextFallo = TextFallo 
 
       -- Group(s) creation 

       -- (MIDDLE) External code will render here 

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
       ---------------------------------------------------------------------------
--VARIABLES
---------------------------------------------------------------------------

--Tabla para saber si un objeto seleccioando es correcto o no
local correctos = {}
correctos[Cabeza_Mama_gaf] = true  
correctos[Cabeza_Hija_Gaf] = true  
correctos[Cabeza_bebe] = true  
correctos[Cabeza_Ser] = false  
correctos[kwkTick] = false  
correctos[Cabeza_Hormigui] = false  
correctos[Cabeza_Sabio] = false  
correctos[Cabeza_Ser_2] = false  
correctos[Nube] = false  
correctos[Nube_caballo] = false  

--Dónde está cada medalla
local posiciones = {}
posiciones[M1] = -1
posiciones[M2] = -1
posiciones[M3] = -1

local addCL2 = 15
local addCL3 = 2

local textoActual = Text1


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

--Comprobar si todas las medallas están en alguna posición correcta
function checkTodosColocados()
	local colocados = true

	--Primero compruebo que todos estén en algún sitio.
	for key, value in pairs(posiciones) do
		if (value == -1) then
			colocados = false
		end
	end

	--A continuación compruebo que los tres sean distintos
	if (posiciones[M1] == posiciones[M2] or posiciones[M2] == posiciones[M3] or posiciones[M1] == posiciones[M3]) then
		colocados = false
	end

	return colocados
end


--Callback de las medallas
function dragMedalla (event)
	local t = event.target 

	if event.phase == "began" then  
		local parent = t.parent; parent:insert(t); display.getCurrentStage():setFocus(t); t.isFocus = true 
		hide(kwkTick)
		posiciones[t] = -1
	elseif event.phase == "moved" then  
	elseif event.phase == "ended" or event.phase == "cancelled" then 		
		display.getCurrentStage():setFocus(-1); t.isFocus = false 

		--Miro dónde está
		for key, value in pairs (correctos) do
			if (isOn(t, key)) then
				moveTo (t, key)
				posiciones[t] = key

				if (checkTodosColocados()) then
					show(kwkTick)
				end
			end
		end
	end
end 

--Callback del tick
function tick ()
	local acertado = true
	local timeDelay = 1500

	for key, value in pairs( posiciones ) do
		if (not correctos[value]) then
			addCL3 = addCL3 - 1
			if (addCL3 < 0) then
				addCL3 = 0
			end
			addCL2 = addCL2 - 5
			acertado = false
		end
	end

	print ("Se va a dar "..addCL3.." de CL.3 y "..addCL2.." de CL.2")

	if (acertado) then
		switchText(TextAcierto)
		audioAcertar()
	else
		switchText(TextFallo)
		audioFallar()
		timeDelay = 5000
	end

	local currentCL2 = kwkVarCheck("CL2")
	local currentCL3 = kwkVarCheck("CL3")

	saveKwikVars({"CL2", currentCL2 + addCL2})
	saveKwikVars({"CL3", currentCL3 + addCL3})

	updateCoefs()

	saveKwikVars({"Fav07Completed", true})

	--Quito los eventListeners para que no pueda hacer trampas

	instantHide(kwkTick)

	MultiTouch.deactivate( M1, "move", "single"  ) 
	MultiTouch.deactivate( M2, "move", "single"  ) 
	MultiTouch.deactivate( M3, "move", "single"  ) 


	M1:removeEventListener( MultiTouch.MULTITOUCH_EVENT, dragMedalla )
	M2:removeEventListener( MultiTouch.MULTITOUCH_EVENT, dragMedalla )
	M3:removeEventListener( MultiTouch.MULTITOUCH_EVENT, dragMedalla )


	local myClosure_switch = function() 
   		dispose(); director:changeScene( "page_"..(pag_favor7 + 1), "fade" ) 
	end 

	timerStash.newTimer_980 = timer.performWithDelay(timeDelay, myClosure_switch, 1) 

end




---------------------------------------------------------------------------
--PREPARACION DE LA ESCENA
---------------------------------------------------------------------------

instantHide(TextAcierto)
instantHide(TextFallo)
instantHide(kwkTick)

---------------------------------------------------------------------------
--CALLBACKS
---------------------------------------------------------------------------
MultiTouch.activate( M1, "move", "single"  ) 
MultiTouch.activate( M2, "move", "single"  ) 
MultiTouch.activate( M3, "move", "single"  ) 

M1:addEventListener( MultiTouch.MULTITOUCH_EVENT, dragMedalla )
M2:addEventListener( MultiTouch.MULTITOUCH_EVENT, dragMedalla )
M3:addEventListener( MultiTouch.MULTITOUCH_EVENT, dragMedalla )

kwkTick:addEventListener( "tap", tick ) 


    end 
    drawScreen() 

    return menuGroup 
end 
