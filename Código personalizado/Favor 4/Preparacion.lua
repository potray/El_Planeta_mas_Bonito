--Puntuaciones
local addCL1 = 15
local addCL3 = 15
local addCI2 = 15
local addCI5 = 15

local falloCL_1 = false
local falloCL_2 = false
local falloCL_3 = false

--Fases
local faseActual = 1
local fase1Terminada = false
local fase2Terminada = false

--Ocultar las cuerdas
instantHide(h1)
instantHide(h2)
instantHide(h3)
instantHide(v1)
instantHide(v2)
instantHide(v3)

--Ocultar la ayuda
instantHide(Ayuda1)
instantHide(Ayuda2)
instantHide(Ayuda3)
instantHide(Fin)
local ayudaActual = Ayuda0
local necesitaAyuda1 = true
local necesitaAyuda2 = true
local necesitaAyuda3 = true

local reloadCanvas = 0 

--Cerrojos para no poder spamear nueces ni hojas
local lockNuez = false
local lockHoja = false

--Contadores para que cada objeto tenga un nombre único
local contadorNueces = 0
local contadorHojas = 0

--Nuez que se ha empezado a unir
local nuezUniendose = -1

--Grupo de círculos pintados
local grupoCirculos

--Tabla con las nueces transparentes, para hacer las comprobaciones con bucles
local nuecesTransparentes = {}
nuecesTransparentes[0] = NuezV1_1
nuecesTransparentes[1] = NuezV1_2
nuecesTransparentes[2] = NuezV2_1
nuecesTransparentes[3] = NuezV2_2
nuecesTransparentes[4] = NuezV3_1
nuecesTransparentes[5] = NuezV3_2
nuecesTransparentes[6] = NuezH1_1
nuecesTransparentes[7] = NuezH1_2
nuecesTransparentes[8] = NuezH2_1
nuecesTransparentes[9] = NuezH2_2
nuecesTransparentes[10] = NuezH3_1
nuecesTransparentes[11] = NuezH3_2

--Tabla con las hojas transparentes
local hojasTransparentes = {}
hojasTransparentes[0] = Nudo1
hojasTransparentes[1] = Nudo2
hojasTransparentes[2] = Nudo3
hojasTransparentes[3] = Nudo4
hojasTransparentes[4] = Nudo5
hojasTransparentes[5] = Nudo6
hojasTransparentes[6] = Nudo7
hojasTransparentes[7] = Nudo8
hojasTransparentes[8] = Nudo9

--Tabla para controlar las nueces colcadas correctamente
nuecesColocadas = {}
for i = 0, 11 do
	nuecesColocadas[i] = false
end

--Tabla para controlar las hojas colocadas correctamente
hojasColocadas = {}
for i = 0, 8 do
	hojasColocadas[i] = false
end

--Tabla para controlar las nueces unidas
local nuecesUnidas = {}
for i = 0, 11 do
	--En lugar de tener índices numéricos, los índices son los nombres de las nueces
	nuecesUnidas[nuecesTransparentes[i].name] = false
end

--Canvas horizontal 1
canvas_h1 = display.newRect(0, 0, Cuerda_H1.width, Cuerda_H1.height) 
canvas_h1:setFillColor(255,255,255) 
canvas_h1.x = Cuerda_H1.x; canvas_h1.y = Cuerda_H1.y canvas_h1.alpha = 0.01; 
cR, cG, cB = 196, 128, 2 
brushSize = 30; brushAlpha = 1 
canvas_h1.name = "canvas_h1" 
menuGroup:insert(canvas_h1) 
menuGroup.canvas_h1 = canvas_h1 

--Canvas horizontal 2
canvas_h2 = display.newRect(0, 0, Cuerda_H2.width, Cuerda_H2.height) 
canvas_h2:setFillColor(255,255,255) 
canvas_h2.x = Cuerda_H2.x; canvas_h2.y = Cuerda_H2.y canvas_h2.alpha = 0.01; 
cR, cG, cB = 196, 128, 2 
brushSize = 30; brushAlpha = 1 
canvas_h2.name = "canvas_h2" 
menuGroup:insert(canvas_h2) 
menuGroup.canvas_h2 = canvas_h2 

--Canvas horizontal 3
canvas_h3 = display.newRect(0, 0, Cuerda_H3.width, Cuerda_H3.height) 
canvas_h3:setFillColor(255,255,255) 
canvas_h3.x = Cuerda_H3.x; canvas_h3.y = Cuerda_H3.y canvas_h3.alpha = 0.01; 
cR, cG, cB = 196, 128, 2 
brushSize = 30; brushAlpha = 1 
canvas_h3.name = "canvas_h3" 
menuGroup:insert(canvas_h3) 
menuGroup.canvas_h3 = canvas_h3

--Canvas vertical 1
canvas_v1 = display.newRect(0, 0, Cuerda_V1.width, Cuerda_V1.height) 
canvas_v1:setFillColor(255,255,255) 
canvas_v1.x = Cuerda_V1.x; canvas_v1.y = Cuerda_V1.y canvas_v1.alpha = 0.01; 
cR, cG, cB = 196, 128, 2 
brushSize = 30; brushAlpha = 1 
canvas_v1.name = "canvas_v1" 
menuGroup:insert(canvas_v1) 
menuGroup.canvas_v1 = canvas_v1 

--Canvas vertical 2
canvas_v2 = display.newRect(0, 0, Cuerda_V2.width, Cuerda_V2.height) 
canvas_v2:setFillColor(255,255,255) 
canvas_v2.x = Cuerda_V2.x; canvas_v2.y = Cuerda_V2.y canvas_v2.alpha = 0.01; 
cR, cG, cB = 196, 128, 2 
brushSize = 30; brushAlpha = 1 
canvas_v2.name = "canvas_v2" 
menuGroup:insert(canvas_v2) 
menuGroup.canvas_v2 = canvas_v2 

--Canvas vertical 3
canvas_v3 = display.newRect(0, 0, Cuerda_V3.width, Cuerda_V3.height) 
canvas_v3:setFillColor(255,255,255) 
canvas_v3.x = Cuerda_V3.x; canvas_v3.y = Cuerda_V3.y canvas_v3.alpha = 0.01; 
cR, cG, cB = 196, 128, 2 
brushSize = 30; brushAlpha = 1 
canvas_v3.name = "canvas_v3" 
menuGroup:insert(canvas_v3) 
menuGroup.canvas_v3 = canvas_v3 

--Función para mostrar la cuerda correspondiente a una nuez
function mostrarCuerda (nuez)
	if (nuez == NuezH1_1 or nuez == NuezH1_2) then show (h1)
	elseif (nuez == NuezH2_1 or nuez == NuezH2_2) then show (h2)
	elseif (nuez == NuezH3_1 or nuez == NuezH3_2) then show (h3)
	elseif (nuez == NuezV1_1 or nuez == NuezV1_2) then show (v1)
	elseif (nuez == NuezV2_1 or nuez == NuezV2_2) then show (v2)
	elseif (nuez == NuezV3_1 or nuez == NuezV3_2) then show (v3)
	end
end

function printNuecesUnidas ()
	for i = 0, 11 do
		print (nuecesUnidas[nuecesTransparentes[i].name])
	end
end

--Función para comprobar si todas las nueces se han unido
function checkNuecesUnidas ()
	local todasUnidas = true

	for i = 0, 11 do
		if (nuecesUnidas[nuecesTransparentes[i].name] == false) then
			todasUnidas = false
		end
	end

	return todasUnidas
end


function mostrarPuntuaciones()
	print ("Se le otorgan "..tostring(addCL1).." puntos de CL1")
	print ("Se le otorgan "..tostring(addCL3).." puntos de CL3")
	print ("Se le otorgan "..tostring(addCI2).." puntos de CI2")
	print ("Se le otorgan "..tostring(addCI5).." puntos de CI5")
	print ("\n")
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

--Funciones de ayuda
function ayuda1()
	if (necesitaAyuda1) then
		hide(Ayuda0)
		show(kwkHormiga2)
		show(Ayuda1)
		ayudaActual = Ayuda1
		addCI2 = addCI2 - 5
		checkNegativos()
		mostrarPuntuaciones()
		necesitaAyuda1 = false
	end
end

function ayuda2()
	if (necesitaAyuda2) then
		show(kwkHormiga2)
		show(Ayuda2)
		ayudaActual = Ayuda2
		addCI2 = addCI2 - 5
		checkNegativos()
		mostrarPuntuaciones()
		necesitaAyuda2 = false
	end
end

function ayuda3()
	if (necesitaAyuda3) then
		show(kwkHormiga2)
		show(Ayuda3)
		ayudaActual = Ayuda3
		addCI2 = addCI2 - 5
		checkNegativos()
		mostrarPuntuaciones()
		necesitaAyuda3 = false
	end
end

--Función para controlar que no haya puntos negativos
function checkNegativos()	
	if (addCL1 < 0 ) then
		addCL1 = 0
	end
	if (addCL3 < 0 ) then
		addCL3 = 0
	end

	if (addCI2 < 0) then
		addCI2 = 0
	end

	if (addCI5 < 0) then
		addCI5 = 0
	end
end

--Función para iniciar la fase 2
function fase2()
	hide(kwkHormiga2)
	hide(ayudaActual)
	faseActual = 2
	fase1Terminada = true
	timerStash.timerAyuda2 = timer.performWithDelay( 15000, ayuda2, 0 ) 
end 

--Función para iniciar la fase 3
function fase3()
	hide(kwkHormiga2)
	hide(ayudaActual)
	faseActual = 3
	fase2Terminada = true
	timerStash.timerAyuda3 = timer.performWithDelay( 15000, ayuda3, 0 ) 
end

--Función para terminar
function terminar()
	print ("Terminado!!!")
	mostrarPuntuaciones()

	hide(ayudaActual)
	show(kwkHormiga2)
	show(Fin)

	local currentCL1 = kwkVarCheck ("CL1")
	local currentCL3 = kwkVarCheck ("CL3")
	local currentCI2 = kwkVarCheck ("CI2")
	local currentCI5 = kwkVarCheck ("CI5")

	saveKwikVars ({"CL1", addCL1 + currentCL1})
	saveKwikVars ({"CL3", addCL3 + currentCL3})
	saveKwikVars ({"CI2", addCI2 + currentCI2})
	saveKwikVars ({"CI5", addCI5 + currentCI5})

	saveKwikVars({"Fav04Completed", true})

	local myClosure_switch = function() 
	    dispose(); director:changeScene( "page_"..pag_favor4 + 1, "fade" ) 
	end 
	timerStash.newTimer_980 = timer.performWithDelay(1500, myClosure_switch, 1) 
end

--Funciones de fallo en CL3
function fallarCL_1 ()
	if (not falloCL_1) then
		addCL1 = addCL1 - 5
		addCL3 = addCL3 - 5
		checkNegativos()
		falloCL_1 = true
	end
	mostrarPuntuaciones()
end

function fallarCL_2 ()
	if (not falloCL_2) then
		addCL1 = addCL1 - 5
		addCL3 = addCL3 - 5
		checkNegativos()
		falloCL_2 = true
	end
	mostrarPuntuaciones()
end

function fallarCL_3 ()
	if (not falloCL_3) then
		addCL1 = addCL1 - 5
		addCL3 = addCL3 - 5
		checkNegativos()
		falloCL_3 = true
	end
	mostrarPuntuaciones()
end


--Función para comprobar si todas las nueces están colocadas.
function checkNuecesColocadas ()
	local todasColocadas = true

	for i = 0, 11 do
		if (not nuecesColocadas[i]) then
			todasColocadas = false
		end
	end

	return todasColocadas
end

--Función para comprobar si todas las nueces están colocadas.
function checkHojasColocadas ()
	local todasColocadas = true

	for i = 0, 8 do
		if (not hojasColocadas[i]) then
			todasColocadas = false
		end
	end

	return todasColocadas
end

--Función para comprobar qué extremo de nuez se está tocando con el dedo
function checkExtremoNuez (x, y)
	local nuez = -1

	for i = 0, 11 do
		if (isPositionOn(x, y, nuecesTransparentes[i])) then
			nuez = nuecesTransparentes[i]
		end
	end

	return nuez
end

--Función que dada un número de una nuez devuelve cuál es la opuesta
function opuesta (nuez)
	local opuesta

	if (nuez == NuezH1_1) then opuesta = NuezH1_2
	elseif (nuez == NuezH1_2) then opuesta = NuezH1_1
	elseif (nuez == NuezH2_1) then opuesta = NuezH2_2
	elseif (nuez == NuezH2_2) then opuesta = NuezH2_1
	elseif (nuez == NuezH3_1) then opuesta = NuezH3_2
	elseif (nuez == NuezH3_2) then opuesta = NuezH3_1

	elseif (nuez == NuezV1_1) then opuesta = NuezV1_2
	elseif (nuez == NuezV1_2) then opuesta = NuezV1_1
	elseif (nuez == NuezV2_1) then opuesta = NuezV2_2
	elseif (nuez == NuezV2_2) then opuesta = NuezV2_1
	elseif (nuez == NuezV3_1) then opuesta = NuezV3_2
	elseif (nuez == NuezV3_2) then opuesta = NuezV3_1

	end

	return opuesta
end


--Función de pintar el canvas
local function touched( event ) 
	--Miro qué nuez toca el niño, y esa es la que se va a unir.
	local nuezTocada = checkExtremoNuez (event.x, event.y)

	if (nuezUniendose == -1) then
		grupoCirculos = display.newGroup()
		menuGroup:insert(grupoCirculos)
    	nuezUniendose = nuezTocada
	end

	--Solo pinto si se está uniendo una nuez que no esté unida, y si estamos en la fase 2
	if (nuezUniendose ~= -1) then
		if (fase1Terminada or nuecesUnidas[nuezUniendose.name]) then
			if event.phase == "moved" then 
        		--Según se va moviendo el cursor se pinta un nuevo círculo y se inserta en el grupo
				local painter = display.newCircle (event.x, event.y, brushSize, 100) 
				painter:setFillColor(cR, cG, cB); painter.alpha = brushAlpha 
				grupoCirculos:insert(painter)
			elseif event.phase =="ended" then 
				--En cuanto se levanta el dedo se borran los círculos y se comprueba si se ha unido con el correcto.
				if (isPositionOn(event.x, event.y, opuesta(nuezUniendose))) then
					necesitaAyuda2 = false
					nuecesUnidas[nuezUniendose.name] = true
					nuecesUnidas[opuesta(nuezUniendose).name] = true


					--Muestro la cuerda correspondiente
					mostrarCuerda(nuezUniendose)
					audioAcertar()

					--Si están todas las cuerdas se cambia de fase
					if (checkNuecesUnidas ()) then
						fase3()
					end
				else
					addCI5 = addCI5 - 3
					checkNegativos()
					audioFallar()
				end
				grupoCirculos:removeSelf( )
				nuezUniendose = -1
			end 
		else
			audioFallar()
			if (faseActual == 1) then
				fallarCL_1()
			else
				fallarCL_3()
			end
		end
	end
end 

--Función de arrastrar una nuez
local function kwkNuezDrag (event ) 
	local t = event.target 
	if event.phase == "began" then  
		local parent = t.parent; parent:insert(t); display.getCurrentStage():setFocus(t); t.isFocus = true 
	elseif event.phase == "moved" then  
	elseif event.phase == "ended" or event.phase == "cancelled" then  
		display.getCurrentStage():setFocus(nil); t.isFocus = false 
		lockNuez = false
		--Miro dónde está la nuez
		local estaEnNuez = false
	    for i = 0, 11 do
	    	if (isOn(event.target, nuecesTransparentes[i])) then
	    		--Si no está en la fase 1, se le penaliza y se destruye la nuez
	    		if (faseActual ~= 1) then
	    			audioFallar()
	    			if (faseActual == 2) then
	    				fallarCL_2()
	    			else
	    				fallarCL_3()
	    			end
	    			event.target:removeSelf()
	    		else
	    			estaEnNuez = true
		    		necesitaAyuda1 = false
		    		if (not nuecesColocadas[i]) then
		    			--La pongo en su sitio, desactivo su eventListener y hago que no se pueda mover.
		    			nuecesColocadas[i] = true
		    			moveTo (event.target, nuecesTransparentes[i])
		    			audioAcertar()
		    			event.target:removeEventListener(MultiTouch.MULTITOUCH_EVENT, kwkNuezDrag)
						MultiTouch.deactivate( event.target, "move", "single"  ) 
		    		end

		    		if (checkNuecesColocadas()) then
		    			fase2()
		    		end
		    	end
	    	end
    	end
    	--Si no esta en algun hueco de nuez, miro si está en un hueco de hoja 
    	if (not estaEnNuez) then
    		for i = 0, 8 do
    			if (isOn(event.target, hojasTransparentes[i])) then
    				audioFallar()
    				addCI5 = addCI5 - 3
    				mostrarPuntuaciones()
    				checkNegativos()
    			end
    		end
    	end
	end  
	return true 
end 

--Función de arrastrar un nudo
local function kwkHojaDrag (event ) 
	local t = event.target 
	if event.phase == "began" then  
		local parent = t.parent; parent:insert(t); display.getCurrentStage():setFocus(t); t.isFocus = true 
	elseif event.phase == "moved" then  
	elseif event.phase == "ended" or event.phase == "cancelled" then  
		display.getCurrentStage():setFocus(nil); t.isFocus = false 
		lockHoja = false
		--Miro dónde está la hoja
		local estaEnHoja = false
	    for i = 0, 8 do
	    	if (isOn(event.target, hojasTransparentes[i])) then
	    		--Si no está en la fase 3, se le penaliza y se destruye la hoja
	    		if (faseActual ~= 3) then
	    			audioFallar()
	    			if (faseActual == 1) then
	    				fallarCL_1()
	    			else
	    				fallarCL_2()
	    			end
	    			event.target:removeSelf()
	    		else
		    		estaEnHoja = true
		    		necesitaAyuda3 = false
		    		if (not hojasColocadas[i]) then
		    			--La pongo en su sitio, desactivo su eventListener y hago que no se pueda mover.
		    			hojasColocadas[i] = true
		    			moveTo (event.target, hojasTransparentes[i])
		    			event.target:removeEventListener(MultiTouch.MULTITOUCH_EVENT, kwkHojaDrag)
						MultiTouch.deactivate( event.target, "move", "single"  ) 
		    			audioAcertar()
		    		end

		    		if (checkHojasColocadas()) then
		    			terminar()
		    		end
		    	end
	    	end
    	end
    	--Si no esta en algun hueco de hoja, miro si está en un hueco de nuez 
    	if (not estaEnHoja) then
    		for i = 0, 11 do
    			if (isOn(event.target, nuecesTransparentes[i])) then
    				audioFallar()
    				addCI5 = addCI5 - 3
    				mostrarPuntuaciones()
    				checkNegativos()
    			end
    		end
    	end

	end  
	return true 
end 

--Función de crear una nueva nuez
local function crearNuez()
	if (not lockNuez) then
		lockNuez = true
		local nuevaNuez
		nuevaNuez = display.newImageRect( imgDir.. "kwknuez.png", 174, 140 ); 
		nuevaNuez.x = 1624; nuevaNuez.y = 287; nuevaNuez.alpha = 1; nuevaNuez.oldAlpha = 1 
		nuevaNuez.oriX = nuevaNuez.x; nuevaNuez.oriY = nuevaNuez.y 
		nuevaNuez.name = "nuevaNuez"..tostring(contadorNueces) 
		contadorNueces = contadorNueces + 1
		menuGroup:insert(nuevaNuez); menuGroup.nuevaNuez = nuevaNuez 

		MultiTouch.activate( nuevaNuez, "move", "single"  ) 
		nuevaNuez:addEventListener( MultiTouch.MULTITOUCH_EVENT, kwkNuezDrag )

	else
		print ("Lock de nueces activado")
	end
end

--Función de crear un nudo de hoja
local function crearHoja()
	if (not lockHoja) then
		lockHoja = true
		local nuevaHoja
		nuevaHoja = display.newImageRect( imgDir.. "kwkNudo.png", 235, 181 ); 
		nuevaHoja.x = 930; nuevaHoja.y = 226; nuevaHoja.alpha = 1; nuevaHoja.oldAlpha = 1 
		nuevaHoja.oriX = nuevaHoja.x; nuevaHoja.oriY = nuevaHoja.y 
		nuevaHoja.name = "nuevaHoja"..tostring(contadorHojas) 
		contadorHojas = contadorHojas + 1
		menuGroup:insert(nuevaHoja); menuGroup.nuevaHoja = nuevaHoja 

		MultiTouch.activate( nuevaHoja, "move", "single"  ) 
		nuevaHoja:addEventListener( MultiTouch.MULTITOUCH_EVENT, kwkHojaDrag )

	else
		print ("Lock de hojas activado")
	end
end

--Event Listeners
canvas_h1:addEventListener("touch", touched) 
canvas_h2:addEventListener("touch", touched) 
canvas_h3:addEventListener("touch", touched) 
canvas_v1:addEventListener("touch", touched) 
canvas_v2:addEventListener("touch", touched) 
canvas_v3:addEventListener("touch", touched) 

Cesta_de_nueces:addEventListener("tap", crearNuez ) 
kwkBolsa3:addEventListener( "tap", crearHoja )

--Contador para la ayuda1
timerStash.timerAyuda1 = timer.performWithDelay( 15000, ayuda1, 0 ) 