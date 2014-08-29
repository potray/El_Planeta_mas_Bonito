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

       local curPage = 72 

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
       local btnBurbuja

       -- Layer names 
       local Bolsillo  
       local kwkFondo_62  
       local D1  
       local D2  
       local D3  
       local D6  
       local D4  
       local D5  
       local Vestido_hija  
       local kwkCelo  
       local kwkTijeras  
       local kwkMaquinaAgran  
       local kwkCola  
       local kwkCremallera  
       local kwkRosa_oro  
       local TextoBurbuja  
       local Text1  
       local Text2  
       local Text3  
       local Text4  
       local Text5  
       local TextFin  
       local kwkBurbuja  
       local kwkTick  

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

       -- Bolsillo positioning 
       Bolsillo = display.newImageRect( imgDir.. "p72_bolsillo.png", 157, 140 ); 
       Bolsillo.x = 1373; Bolsillo.y = 1014; Bolsillo.alpha = 1; Bolsillo.oldAlpha = 1 
       Bolsillo.oriX = Bolsillo.x; Bolsillo.oriY = Bolsillo.y 
       Bolsillo.name = "Bolsillo" 
       menuGroup:insert(1,Bolsillo); menuGroup.Bolsillo = Bolsillo 

       -- kwkFondo_62 positioning 
       kwkFondo_62 = display.newImageRect( imgDir.. "kwkfondo_62.png", 2559, 1600 ); 
       kwkFondo_62.x = 1279; kwkFondo_62.y = 800; kwkFondo_62.alpha = 1; kwkFondo_62.oldAlpha = 1 
       kwkFondo_62.oriX = kwkFondo_62.x; kwkFondo_62.oriY = kwkFondo_62.y 
       kwkFondo_62.name = "kwkFondo_62" 
       menuGroup:insert(kwkFondo_62); menuGroup.kwkFondo_62 = kwkFondo_62 

       -- D1 positioning 
       D1 = display.newImageRect( imgDir.. "p72_d1.png", 422, 432 ); 
       D1.x = 278; D1.y = 274; D1.alpha = 1; D1.oldAlpha = 1 
       D1.oriX = D1.x; D1.oriY = D1.y 
       D1.name = "D1" 
       menuGroup:insert(D1); menuGroup.D1 = D1 

       -- D2 positioning 
       D2 = display.newImageRect( imgDir.. "p72_d2.png", 422, 431 ); 
       D2.x = 276; D2.y = 781; D2.alpha = 1; D2.oldAlpha = 1 
       D2.oriX = D2.x; D2.oriY = D2.y 
       D2.name = "D2" 
       menuGroup:insert(D2); menuGroup.D2 = D2 

       -- D3 positioning 
       D3 = display.newImageRect( imgDir.. "p72_d3.png", 422, 431 ); 
       D3.x = 276; D3.y = 1249; D3.alpha = 1; D3.oldAlpha = 1 
       D3.oriX = D3.x; D3.oriY = D3.y 
       D3.name = "D3" 
       menuGroup:insert(D3); menuGroup.D3 = D3 

       -- D6 positioning 
       D6 = display.newImageRect( imgDir.. "p72_d6.png", 422, 433 ); 
       D6.x = 2264; D6.y = 1304; D6.alpha = 1; D6.oldAlpha = 1 
       D6.oriX = D6.x; D6.oriY = D6.y 
       D6.name = "D6" 
       menuGroup:insert(D6); menuGroup.D6 = D6 

       -- D4 positioning 
       D4 = display.newImageRect( imgDir.. "p72_d4.png", 303, 310 ); 
       D4.x = 2298; D4.y = 287; D4.alpha = 1; D4.oldAlpha = 1 
       D4.oriX = D4.x; D4.oriY = D4.y 
       D4.name = "D4" 
       menuGroup:insert(D4); menuGroup.D4 = D4 

       -- D5 positioning 
       D5 = display.newImageRect( imgDir.. "p72_d5.png", 694, 700 ); 
       D5.x = 2298; D5.y = 728; D5.alpha = 1; D5.oldAlpha = 1 
       D5.oriX = D5.x; D5.oriY = D5.y 
       D5.name = "D5" 
       menuGroup:insert(D5); menuGroup.D5 = D5 

       -- Vestido_hija positioning 
       Vestido_hija = display.newImageRect( imgDir.. "p72_vestido_hija.png", 817, 1373 ); 
       Vestido_hija.x = 1272; Vestido_hija.y = 902; Vestido_hija.alpha = 1; Vestido_hija.oldAlpha = 1 
       Vestido_hija.oriX = Vestido_hija.x; Vestido_hija.oriY = Vestido_hija.y 
       Vestido_hija.name = "Vestido_hija" 
       menuGroup:insert(Vestido_hija); menuGroup.Vestido_hija = Vestido_hija 

       -- kwkCelo positioning 
       kwkCelo = display.newImageRect( imgDir.. "kwkcelo.png", 290, 270 ); 
       kwkCelo.x = 223; kwkCelo.y = 786; kwkCelo.alpha = 1; kwkCelo.oldAlpha = 1 
       kwkCelo.oriX = kwkCelo.x; kwkCelo.oriY = kwkCelo.y 
       kwkCelo.name = "kwkCelo" 
       menuGroup:insert(kwkCelo); menuGroup.kwkCelo = kwkCelo 

       -- kwkTijeras positioning 
       kwkTijeras = display.newImageRect( imgDir.. "kwktijeras.png", 180, 498 ); 
       kwkTijeras.x = 239; kwkTijeras.y = 266; kwkTijeras.alpha = 1; kwkTijeras.oldAlpha = 1 
       kwkTijeras.oriX = kwkTijeras.x; kwkTijeras.oriY = kwkTijeras.y 
       kwkTijeras.name = "kwkTijeras" 
       menuGroup:insert(kwkTijeras); menuGroup.kwkTijeras = kwkTijeras 

       -- kwkMaquinaAgran positioning 
       kwkMaquinaAgran = display.newImageRect( imgDir.. "kwkmaquinaagran.png", 484, 614 ); 
       kwkMaquinaAgran.x = 2298; kwkMaquinaAgran.y = 744; kwkMaquinaAgran.alpha = 1; kwkMaquinaAgran.oldAlpha = 1 
       kwkMaquinaAgran.oriX = kwkMaquinaAgran.x; kwkMaquinaAgran.oriY = kwkMaquinaAgran.y 
       kwkMaquinaAgran.name = "kwkMaquinaAgran" 
       menuGroup:insert(kwkMaquinaAgran); menuGroup.kwkMaquinaAgran = kwkMaquinaAgran 

       -- kwkCola positioning 
       kwkCola = display.newImageRect( imgDir.. "kwkcola.png", 88, 209 ); 
       kwkCola.x = 2297; kwkCola.y = 259; kwkCola.alpha = 1; kwkCola.oldAlpha = 1 
       kwkCola.oriX = kwkCola.x; kwkCola.oriY = kwkCola.y 
       kwkCola.name = "kwkCola" 
       menuGroup:insert(kwkCola); menuGroup.kwkCola = kwkCola 

       -- kwkCremallera positioning 
       kwkCremallera = display.newImageRect( imgDir.. "kwkcremallera.png", 335, 415 ); 
       kwkCremallera.x = 2297; kwkCremallera.y = 1294; kwkCremallera.alpha = 1; kwkCremallera.oldAlpha = 1 
       kwkCremallera.oriX = kwkCremallera.x; kwkCremallera.oriY = kwkCremallera.y 
       kwkCremallera.name = "kwkCremallera" 
       menuGroup:insert(kwkCremallera); menuGroup.kwkCremallera = kwkCremallera 

       -- kwkRosa_oro positioning 
       kwkRosa_oro = display.newImageRect( imgDir.. "kwkrosa_oro.png", 143, 416 ); 
       kwkRosa_oro.x = 262; kwkRosa_oro.y = 1280; kwkRosa_oro.alpha = 1; kwkRosa_oro.oldAlpha = 1 
       kwkRosa_oro.oriX = kwkRosa_oro.x; kwkRosa_oro.oriY = kwkRosa_oro.y 
       kwkRosa_oro.name = "kwkRosa_oro" 
       menuGroup:insert(kwkRosa_oro); menuGroup.kwkRosa_oro = kwkRosa_oro 

       -- TextoBurbuja positioning 
       TextoBurbuja = display.newImageRect( imgDir.. "p72_textoburbuja.png", 1674, 109 ); 
       TextoBurbuja.x = 1274; TextoBurbuja.y = 87; TextoBurbuja.alpha = 1; TextoBurbuja.oldAlpha = 1 
       TextoBurbuja.oriX = TextoBurbuja.x; TextoBurbuja.oriY = TextoBurbuja.y 
       TextoBurbuja.name = "TextoBurbuja" 
       menuGroup:insert(TextoBurbuja); menuGroup.TextoBurbuja = TextoBurbuja 

       -- Text1 positioning 
       Text1 = display.newImageRect( imgDir.. "p72_text1.png", 1053, 51 ); 
       Text1.x = 1277; Text1.y = 53; Text1.alpha = 1; Text1.oldAlpha = 1 
       Text1.oriX = Text1.x; Text1.oriY = Text1.y 
       Text1.name = "Text1" 
       menuGroup:insert(Text1); menuGroup.Text1 = Text1 

       -- Text2 positioning 
       Text2 = display.newImageRect( imgDir.. "p72_text2.png", 1059, 51 ); 
       Text2.x = 1278; Text2.y = 53; Text2.alpha = 1; Text2.oldAlpha = 1 
       Text2.oriX = Text2.x; Text2.oriY = Text2.y 
       Text2.name = "Text2" 
       menuGroup:insert(Text2); menuGroup.Text2 = Text2 

       -- Text3 positioning 
       Text3 = display.newImageRect( imgDir.. "p72_text3.png", 1252, 51 ); 
       Text3.x = 1279; Text3.y = 58; Text3.alpha = 1; Text3.oldAlpha = 1 
       Text3.oriX = Text3.x; Text3.oriY = Text3.y 
       Text3.name = "Text3" 
       menuGroup:insert(Text3); menuGroup.Text3 = Text3 

       -- Text4 positioning 
       Text4 = display.newImageRect( imgDir.. "p72_text4.png", 1960, 51 ); 
       Text4.x = 1277; Text4.y = 56; Text4.alpha = 1; Text4.oldAlpha = 1 
       Text4.oriX = Text4.x; Text4.oriY = Text4.y 
       Text4.name = "Text4" 
       menuGroup:insert(Text4); menuGroup.Text4 = Text4 

       -- Text5 positioning 
       Text5 = display.newImageRect( imgDir.. "p72_text5.png", 1370, 51 ); 
       Text5.x = 1281; Text5.y = 52; Text5.alpha = 1; Text5.oldAlpha = 1 
       Text5.oriX = Text5.x; Text5.oriY = Text5.y 
       Text5.name = "Text5" 
       menuGroup:insert(Text5); menuGroup.Text5 = Text5 

       -- TextFin positioning 
       TextFin = display.newImageRect( imgDir.. "p72_textfin.png", 1186, 51 ); 
       TextFin.x = 1280; TextFin.y = 56; TextFin.alpha = 1; TextFin.oldAlpha = 1 
       TextFin.oriX = TextFin.x; TextFin.oriY = TextFin.y 
       TextFin.name = "TextFin" 
       menuGroup:insert(TextFin); menuGroup.TextFin = TextFin 

       -- kwkBurbuja positioning 
       kwkBurbuja = display.newImageRect( imgDir.. "kwkburbuja.png", 428, 428 ); 
       kwkBurbuja.x = 737; kwkBurbuja.y = 757; kwkBurbuja.alpha = 1; kwkBurbuja.oldAlpha = 1 
       kwkBurbuja.oriX = kwkBurbuja.x; kwkBurbuja.oriY = kwkBurbuja.y 
       kwkBurbuja.name = "kwkBurbuja" 
       menuGroup:insert(kwkBurbuja); menuGroup.kwkBurbuja = kwkBurbuja 

       -- kwkTick positioning 
       kwkTick = display.newImageRect( imgDir.. "kwktick.png", 303, 227 ); 
       kwkTick.x = 1671; kwkTick.y = 710; kwkTick.alpha = 1; kwkTick.oldAlpha = 1 
       kwkTick.oriX = kwkTick.x; kwkTick.oriY = kwkTick.y 
       kwkTick.name = "kwkTick" 
       menuGroup:insert(kwkTick); menuGroup.kwkTick = kwkTick 
 
       -- Group(s) creation 

       -- (MIDDLE) External code will render here 

       -- Button event listeners 
       local function onkwkBurbujaEvent(event) 
          btnBurbuja(kwkBurbuja) 
          return true 
       end 
       kwkBurbuja:addEventListener("tap", onkwkBurbujaEvent ) 

       -- Button functions 
       function btnBurbuja(self) 
            local myClosure_switch = function() 
                dispose(); director:changeScene( "page_73", "fade" ) 
            end 
            timerStash.newTimer_995 = timer.performWithDelay(0, myClosure_switch, 1) 
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
       ---------------------------------------------------------------------------
--VARIABLES
---------------------------------------------------------------------------

--Tabla para relacionar destacadores con objetos e índices de otras tablas
local destacadores = {}
destacadores[kwkTijeras.name] = {D1, 0}
destacadores[kwkCelo.name] = {D2, 1}
destacadores[kwkRosa_oro.name] = {D3, 2}
destacadores[kwkCola.name] = {D4, 3}
destacadores[kwkMaquinaAgran.name] = {D5, 4}
destacadores[kwkCremallera.name] = {D6, 5}

--Tabla con los objetos
local objetos = {}
objetos[0] = kwkTijeras
objetos[1] = kwkCelo
objetos[2] = kwkRosa_oro
objetos[3] = kwkCola
objetos[4] = kwkMaquinaAgran
objetos[5] = kwkCremallera

--Tabla con los destacadores activados
local destacadoresActivados = {}

for i = 0, 5 do
	destacadoresActivados[i] = false
end

--Tabla de los objetos usados
local objetosUsados = {}
objetosUsados[kwkCelo.name] = 0
objetosUsados[kwkCola.name] = 0
objetosUsados[kwkCremallera.name] = 0

--Posibiones iniciales de los objetos que se pueden arrastrar
local posiciones = {}
posiciones[kwkCelo.name] = {kwkCelo.x, kwkCelo.y}
posiciones[kwkCola.name] = {kwkCola.x, kwkCola.y}
posiciones[kwkCremallera.name] = {kwkCremallera.x, kwkCremallera.y}

--Puntuaciones
local addCL3 = 2
local addCI2 = 15
local addCI5 = 5

local CI2CeloRestado = false
local CI2ColaRestado = false
local CI2CremalleraRestado = false

local objetosSeleccionados = 0
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

function terminar()

	hide(D2)
	hide(D4)
	hide(D6)

	hide(kwkCelo)
	hide(kwkCola)
	hide(kwkCremallera)

	switchText(TextFin)

	local currentCL3 = kwkVarCheck("CL3")
	local currentCI2 = kwkVarCheck("CI2")
	local currentCI5 = kwkVarCheck("CI5")

	saveKwikVars ({"CL3", currentCL3 + addCL3})
	saveKwikVars ({"CI2", currentCI2 + addCI2})
	saveKwikVars ({"CI5", currentCI5 + addCI5})

	saveKwikVars({"Fav05Completed", true})
	saveKwikVars({"Favor5Visitado", false})
	
	updateCoefs()

	--Mandar a la página siguiente
	local myClosure_switch = function() 
   		dispose(); director:changeScene( "page_"..(pag_favor5 + 2), "fade" ) 
	end 
	timerStash.newTimer_980 = timer.performWithDelay(3000, myClosure_switch, 1) 

end

--Comprueba que se han usado todos los objetos correctamente.
function checkObjetosUsados()
	local celos = objetosUsados[kwkCelo.name]
	local colas = objetosUsados[kwkCola.name]
	local cremalleras = objetosUsados[kwkCremallera.name]

	print ("celos = "..celos.." colas = "..colas.." cremalleras = "..cremalleras)

	if (celos >= 3 and colas >= 3 and cremalleras >= 3 and (colas + cremalleras + celos) >= 10) then
		terminar()
	elseif (celos >= 3 or colas >= 3 or cremalleras >= 3) then
		--Se activan las ayudas
		if (colas + cremalleras + celos >= 10) then
			--Se destacan los objetos que falten
			if (celos < 3 ) then
				show(D2)
			else
				hide(D2)
			end

			if (colas < 3 ) then
				show(D4)
			else
				hide(D4)
			end

			if (cremalleras < 3) then
				show(D6)
			else
				hide(D6)
			end

		elseif (celos > 0 and colas > 0 and cremalleras > 0) then
			--Se muestra el texto
			hide(D2)
			hide(D4)
			hide(D6)
			switchText(Text5)
		end
	end
end


--Función de arrastrar un objeto
function arrastrar (event)	
	local t = event.target 
	if event.phase == "began" then  
		local parent = t.parent; parent:insert(t); display.getCurrentStage():setFocus(t); t.isFocus = true 
	elseif event.phase == "moved" then  
	elseif event.phase == "ended" or event.phase == "cancelled" then  
		display.getCurrentStage():setFocus(nil); t.isFocus = false 
		--Si se ha soltado en el bolsillo, se mueve a la posición final y se contabiliza
		if (isOn (t, Bolsillo)) then
			objetosUsados[t.name] = objetosUsados[t.name] + 1
			t.x = posiciones[t.name][1]
			t.y = posiciones[t.name][2]
			--Se mira si se han usado 10 objetos, y cada objetos 3 veces o más
			checkObjetosUsados()
		end
	end
end

--Función para cambiar de fase: descactivar botones, ocultar cosas innecesarias, y hacer objetos arrastrables
function fase2()
	--Cambiar el texto
	switchText(Text4)

	--Desactivar botones y ocultar destacadores
	for i = 0, 5 do
		objetos[i]:removeEventListener( "tap", seleccionarObjeto )
		hide(destacadores[objetos[i].name][1])
	end

	hide(kwkMaquinaAgran)
	hide(kwkTijeras)
	hide(kwkRosa_oro)
	hide(kwkTick)

	--Asignar callbacks a arrastrables		
	MultiTouch.activate( kwkCelo, "move", "single"  ) 
	MultiTouch.activate( kwkCola, "move", "single"  ) 
	MultiTouch.activate( kwkCremallera, "move", "single"  ) 

	kwkCelo:addEventListener( MultiTouch.MULTITOUCH_EVENT, arrastrar )
	kwkCola:addEventListener( MultiTouch.MULTITOUCH_EVENT, arrastrar )
	kwkCremallera:addEventListener( MultiTouch.MULTITOUCH_EVENT, arrastrar )
end




--Comprobar que los objetos correctos están seleccionados
function checkObjetosSeleccionados ()
	if (not destacadoresActivados[0] and destacadoresActivados[1] and not destacadoresActivados[2] and destacadoresActivados[3] and not destacadoresActivados[4] and destacadoresActivados[5]) then
		return true
	else
		return false
	end
end

--Ocultar o mostrar el destacador en función del objeto que se pulse
function seleccionarObjeto (event)

	local nombre = event.target.name

	local destacador = destacadores[nombre][1]
	local indice = destacadores[nombre][2]

	if (destacadoresActivados[indice]) then
		destacadoresActivados[indice] = false
		hide(destacador)
		objetosSeleccionados = objetosSeleccionados - 1
	else
		destacadoresActivados[indice] = true
		show(destacador)
		objetosSeleccionados = objetosSeleccionados + 1
	end

	--Muestro el tick al seleccionar un objeto
	show(kwkTick)
end

--Callback del tick
function tick ()
	if (objetosSeleccionados < 3) then
		--Si no hay suficientes objetos seleccionados se notifica
		switchText (Text2)
		audioFallar()
	else
		if (not checkObjetosSeleccionados()) then
			--Si los objetos que están seleccionados no son los correctos se notifica y se restan las puntuaciones
			switchText(Text3)
			audioFallar()

			addCL3 = 0

			if (not CI2CeloRestado and not destacadoresActivados[2]) then
				addCI2 = addCI2 - 5
				CI2CeloRestado = true
			end

			if (not CI2ColaRestado and not destacadoresActivados[4]) then
				addCI2 = addCI2 - 5
				CI2ColaRestado = true
			end

			if (not CI2CremalleraRestado and not destacadoresActivados[6]) then
				addCI2 = addCI2 - 5
				CI2CremalleraRestado = true
			end
			
		else
			--Se cambia a la segunda fase
			audioAcertar()
			fase2()
		end
	end
end

---------------------------------------------------------------------------
--PREPARACION DE LA ESCENA
---------------------------------------------------------------------------

--Ocultar destacadores
for i = 0, 5 do
	instantHide(destacadores[objetos[i].name][1])
end

--Ocultar textos
instantHide(Text2)
instantHide(Text3)
instantHide(Text4)
instantHide(Text5)
instantHide(TextFin)
instantHide(TextoBurbuja)

--Ocultar tick
instantHide(kwkTick)

--Guardar visitado a true
saveKwikVars({"Favor5Visitado", true})

---------------------------------------------------------------------------
--CALLBACKS
---------------------------------------------------------------------------

--Si no se tienen los objetos necesarios no se puede empezar la prueba
if (hasCelo and hasCola) then

	instantHide(kwkBurbuja)

	for i = 0, 5 do
		objetos[i]:addEventListener( "tap", seleccionarObjeto )
	end

	kwkTick:addEventListener( "tap", tick )
else
	instantHide(textoActual)
	instantShow(TextoBurbuja)

	if (not hasCelo) then
		instantHide(kwkCelo)
	end

	if (not hasCola) then
		instantHide(kwkCola)
	end

end
 


    end 
    drawScreen() 

    return menuGroup 
end 
