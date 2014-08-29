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
