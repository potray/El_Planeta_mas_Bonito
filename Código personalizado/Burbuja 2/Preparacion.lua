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