---------------------------------------------------------------------------
--VARIABLES
---------------------------------------------------------------------------

--Tabla que relaciona objetos de arriba con los de abajo
local correspondencias = {}
correspondencias[Cabeza_Mama_gaf] = Jazmin_detalle_
correspondencias[Cabeza_Hija_Gaf] = Batido
correspondencias[Cabeza_bebe] = kwkBiberon
correspondencias[Cabeza_Ser] = Set_de_gafas
correspondencias[Arbol] = Boton
correspondencias[kwkHormiga2] = kwkRed

--Tabla con los destacadores verdes
local destacadoresVerdes = {}
destacadoresVerdes[Cabeza_Mama_gaf] = T1
destacadoresVerdes[Cabeza_Hija_Gaf] = T2
destacadoresVerdes[Cabeza_bebe] = T3
destacadoresVerdes[Cabeza_Ser] = T4
destacadoresVerdes[Arbol] = T5
destacadoresVerdes[kwkHormiga2] = T6
destacadoresVerdes[kwkBiberon] = T7
destacadoresVerdes[Boton] = T8
destacadoresVerdes[Batido] = T9
destacadoresVerdes[kwkRed] = T10
destacadoresVerdes[Jazmin_detalle_] = T11
destacadoresVerdes[Set_de_gafas] = T12

--Tabla con los destacadores naranjas
local destacadores = {}
destacadores[Cabeza_Mama_gaf] = D1
destacadores[Cabeza_Hija_Gaf] = D2
destacadores[Cabeza_bebe] = D3
destacadores[Cabeza_Ser] = D4
destacadores[Arbol] = D5
destacadores[kwkHormiga2] = D6

--Tabla con las imágenes unidas incorrectamente alguna vez
local incorrectos = {}
for key, value in pairs (correspondencias) do
	incorrectos[key] = false
end

--Objetos unidos correctamente
local correctos = 0 

--Objeto de arriba pulsado
local pulsado = nil

--Destacador mostrado
local destacadorMostrado = nil

local addCG8 = 6
local addCL1 = 30


---------------------------------------------------------------------------
--FUNCIONES
---------------------------------------------------------------------------

--Funciones de reproducción de audio
function audioFallar()
	audio.setVolume(1, {channel=2} ) 
	audio.play( fallo, {channel=2, loops = 0 } ) 
end

function audioAcertar()
	audio.setVolume(1, {channel=1} ) 
	audio.play( acierto, {channel=1, loops = 0 } ) 
end

--Cambiar un destacador por otro
function cambiarDestacador(destacador)
	if not (destacadorMostrado == nil) then
		instantHide(destacadorMostrado)
	end
		instantShow(destacador)
		destacadorMostrado = destacador
end

function terminar()
	print("Terminado!")

	local currentCL1 = kwkVarCheck("CL1")
	local currentCG8 = kwkVarCheck("CG8")

	saveKwikVars({"CL1", currentCL1 + addCL1})
	saveKwikVars({"CG8", currentCG8 + addCG8})

	saveKwikVars({"Fav06Completed", true})

	--Mandar a la página siguiente
	local myClosure_switch = function() 
   		dispose(); director:changeScene( "page_"..(pag_favor6 + 1), "fade" ) 
	end 
	timerStash.newTimer_980 = timer.performWithDelay(2000, myClosure_switch, 1) 
end

--Callback de los objetos de arriba
function objetoArriba (event)
	local t = event.target

	pulsado = t
	cambiarDestacador(destacadores[t])
end

--Callback de los objetos de abajo
function objetoAbajo (event)
	local t = event.target

	if (pulsado ~= nil) then		
		hide(destacadorMostrado)

		if (correspondencias[pulsado] == t) then
			--Ha acertado
			audioAcertar()
			correctos = correctos + 1

			--Quitar listeners
			pulsado:removeEventListener("tap", objetoArriba)
			t:removeEventListener("tap", objetoAbajo)

			--Intercambiar destacadores
			show(destacadoresVerdes[pulsado])
			show(destacadoresVerdes[t])

			if (correctos == 6) then
				terminar()
			end

		else
			--Ha fallado
			audioFallar()

			if (not incorrectos[pulsado]) then
				addCL1 = addCL1 - 5
				incorrectos[pulsado] = true
			end

			addCG8 = addCG8 - 1

			if (addCG8 == 0) then
				addCG8 = 0
			end 
		end

		pulsado = nil
	end
end

---------------------------------------------------------------------------
--PREPARACION DE LA ESCENA
---------------------------------------------------------------------------
--Ocultar destacadores y asignar callbacks para ahorrar un bucle
for key, value in pairs (correspondencias) do
	instantHide(destacadoresVerdes[key])
	instantHide(destacadoresVerdes[value])
	instantHide(destacadores[key])
	key:addEventListener( "tap", objetoArriba )
	value:addEventListener( "tap", objetoAbajo )
end


---------------------------------------------------------------------------
--CALLBACKS
---------------------------------------------------------------------------