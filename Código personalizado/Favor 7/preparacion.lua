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