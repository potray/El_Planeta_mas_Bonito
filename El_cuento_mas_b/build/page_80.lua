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

       local curPage = 80 

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
       local kwkFondo1  
       local D1  
       local D2  
       local D3  
       local D4  
       local D5  
       local D6  
       local T1  
       local T2  
       local T3  
       local T4  
       local T5  
       local T6  
       local T7  
       local T8  
       local T9  
       local T10  
       local T11  
       local T12  
       local Text  
       local kwkBiberon  
       local Batido  
       local kwkRed  
       local Jazmin_detalle_  
       local Set_de_gafas  
       local Boton  
       local Cabeza_Mama_gaf  
       local Cabeza_Hija_Gaf  
       local Cabeza_bebe  
       local kwkHormiga2  
       local Cabeza_Ser  
       local Arbol  

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

       -- kwkFondo1 positioning 
       kwkFondo1 = display.newImageRect( imgDir.. "kwkfondo1.png", 2560, 1598 ); 
       kwkFondo1.x = 1280; kwkFondo1.y = 800; kwkFondo1.alpha = 1; kwkFondo1.oldAlpha = 1 
       kwkFondo1.oriX = kwkFondo1.x; kwkFondo1.oriY = kwkFondo1.y 
       kwkFondo1.name = "kwkFondo1" 
       menuGroup:insert(1,kwkFondo1); menuGroup.kwkFondo1 = kwkFondo1 

       -- D1 positioning 
       D1 = display.newImageRect( imgDir.. "p80_d1.png", 518, 530 ); 
       D1.x = 291; D1.y = 274; D1.alpha = 1; D1.oldAlpha = 1 
       D1.oriX = D1.x; D1.oriY = D1.y 
       D1.name = "D1" 
       menuGroup:insert(D1); menuGroup.D1 = D1 

       -- D2 positioning 
       D2 = display.newImageRect( imgDir.. "p80_d2.png", 519, 529 ); 
       D2.x = 773; D2.y = 295; D2.alpha = 1; D2.oldAlpha = 1 
       D2.oriX = D2.x; D2.oriY = D2.y 
       D2.name = "D2" 
       menuGroup:insert(D2); menuGroup.D2 = D2 

       -- D3 positioning 
       D3 = display.newImageRect( imgDir.. "p80_d3.png", 363, 371 ); 
       D3.x = 1162; D3.y = 270; D3.alpha = 1; D3.oldAlpha = 1 
       D3.oriX = D3.x; D3.oriY = D3.y 
       D3.name = "D3" 
       menuGroup:insert(D3); menuGroup.D3 = D3 

       -- D4 positioning 
       D4 = display.newImageRect( imgDir.. "p80_d4.png", 678, 693 ); 
       D4.x = 1604; D4.y = 302; D4.alpha = 1; D4.oldAlpha = 1 
       D4.oriX = D4.x; D4.oriY = D4.y 
       D4.name = "D4" 
       menuGroup:insert(D4); menuGroup.D4 = D4 

       -- D5 positioning 
       D5 = display.newImageRect( imgDir.. "p80_d5.png", 515, 527 ); 
       D5.x = 2118; D5.y = 292; D5.alpha = 1; D5.oldAlpha = 1 
       D5.oriX = D5.x; D5.oriY = D5.y 
       D5.name = "D5" 
       menuGroup:insert(D5); menuGroup.D5 = D5 

       -- D6 positioning 
       D6 = display.newImageRect( imgDir.. "p80_d6.png", 329, 336 ); 
       D6.x = 2416; D6.y = 275; D6.alpha = 1; D6.oldAlpha = 1 
       D6.oriX = D6.x; D6.oriY = D6.y 
       D6.name = "D6" 
       menuGroup:insert(D6); menuGroup.D6 = D6 

       -- T1 positioning 
       T1 = display.newImageRect( imgDir.. "p80_t1.png", 503, 514 ); 
       T1.x = 288; T1.y = 268; T1.alpha = 1; T1.oldAlpha = 1 
       T1.oriX = T1.x; T1.oriY = T1.y 
       T1.name = "T1" 
       menuGroup:insert(T1); menuGroup.T1 = T1 

       -- T2 positioning 
       T2 = display.newImageRect( imgDir.. "p80_t2.png", 504, 514 ); 
       T2.x = 771; T2.y = 296; T2.alpha = 1; T2.oldAlpha = 1 
       T2.oriX = T2.x; T2.oriY = T2.y 
       T2.name = "T2" 
       menuGroup:insert(T2); menuGroup.T2 = T2 

       -- T3 positioning 
       T3 = display.newImageRect( imgDir.. "p80_t3.png", 341, 347 ); 
       T3.x = 1164; T3.y = 270; T3.alpha = 1; T3.oldAlpha = 1 
       T3.oriX = T3.x; T3.oriY = T3.y 
       T3.name = "T3" 
       menuGroup:insert(T3); menuGroup.T3 = T3 

       -- T4 positioning 
       T4 = display.newImageRect( imgDir.. "p80_t4.png", 683, 698 ); 
       T4.x = 1605; T4.y = 296; T4.alpha = 1; T4.oldAlpha = 1 
       T4.oriX = T4.x; T4.oriY = T4.y 
       T4.name = "T4" 
       menuGroup:insert(T4); menuGroup.T4 = T4 

       -- T5 positioning 
       T5 = display.newImageRect( imgDir.. "p80_t5.png", 505, 517 ); 
       T5.x = 2115; T5.y = 290; T5.alpha = 1; T5.oldAlpha = 1 
       T5.oriX = T5.x; T5.oriY = T5.y 
       T5.name = "T5" 
       menuGroup:insert(T5); menuGroup.T5 = T5 

       -- T6 positioning 
       T6 = display.newImageRect( imgDir.. "p80_t6.png", 341, 347 ); 
       T6.x = 2417; T6.y = 270; T6.alpha = 1; T6.oldAlpha = 1 
       T6.oriX = T6.x; T6.oriY = T6.y 
       T6.name = "T6" 
       menuGroup:insert(T6); menuGroup.T6 = T6 

       -- T7 positioning 
       T7 = display.newImageRect( imgDir.. "p80_t7.png", 341, 348 ); 
       T7.x = 222; T7.y = 1316; T7.alpha = 1; T7.oldAlpha = 1 
       T7.oriX = T7.x; T7.oriY = T7.y 
       T7.name = "T7" 
       menuGroup:insert(T7); menuGroup.T7 = T7 

       -- T8 positioning 
       T8 = display.newImageRect( imgDir.. "p80_t8.png", 478, 488 ); 
       T8.x = 583; T8.y = 1339; T8.alpha = 1; T8.oldAlpha = 1 
       T8.oriX = T8.x; T8.oriY = T8.y 
       T8.name = "T8" 
       menuGroup:insert(T8); menuGroup.T8 = T8 

       -- T9 positioning 
       T9 = display.newImageRect( imgDir.. "p80_t9.png", 573, 585 ); 
       T9.x = 1035; T9.y = 1289; T9.alpha = 1; T9.oldAlpha = 1 
       T9.oriX = T9.x; T9.oriY = T9.y 
       T9.name = "T9" 
       menuGroup:insert(T9); menuGroup.T9 = T9 

       -- T10 positioning 
       T10 = display.newImageRect( imgDir.. "p80_t10.png", 573, 585 ); 
       T10.x = 1418; T10.y = 1314; T10.alpha = 1; T10.oldAlpha = 1 
       T10.oriX = T10.x; T10.oriY = T10.y 
       T10.name = "T10" 
       menuGroup:insert(T10); menuGroup.T10 = T10 

       -- T11 positioning 
       T11 = display.newImageRect( imgDir.. "p80_t11.png", 573, 586 ); 
       T11.x = 1880; T11.y = 1312; T11.alpha = 1; T11.oldAlpha = 1 
       T11.oriX = T11.x; T11.oriY = T11.y 
       T11.name = "T11" 
       menuGroup:insert(T11); menuGroup.T11 = T11 

       -- T12 positioning 
       T12 = display.newImageRect( imgDir.. "p80_t12.png", 573, 585 ); 
       T12.x = 2324; T12.y = 1269; T12.alpha = 1; T12.oldAlpha = 1 
       T12.oriX = T12.x; T12.oriY = T12.y 
       T12.name = "T12" 
       menuGroup:insert(T12); menuGroup.T12 = T12 

       -- Text positioning 
       Text = display.newImageRect( imgDir.. "p80_text.png", 2474, 153 ); 
       Text.x = 1284; Text.y = 926; Text.alpha = 1; Text.oldAlpha = 1 
       Text.oriX = Text.x; Text.oriY = Text.y 
       Text.name = "Text" 
       menuGroup:insert(Text); menuGroup.Text = Text 

       -- kwkBiberon positioning 
       kwkBiberon = display.newImageRect( imgDir.. "kwkbiberon.png", 92, 228 ); 
       kwkBiberon.x = 214; kwkBiberon.y = 1288; kwkBiberon.alpha = 1; kwkBiberon.oldAlpha = 1 
       kwkBiberon.oriX = kwkBiberon.x; kwkBiberon.oriY = kwkBiberon.y 
       kwkBiberon.name = "kwkBiberon" 
       menuGroup:insert(kwkBiberon); menuGroup.kwkBiberon = kwkBiberon 

       -- Batido positioning 
       Batido = display.newImageRect( imgDir.. "p80_batido.png", 225, 471 ); 
       Batido.x = 1006; Batido.y = 1271; Batido.alpha = 1; Batido.oldAlpha = 1 
       Batido.oriX = Batido.x; Batido.oriY = Batido.y 
       Batido.name = "Batido" 
       menuGroup:insert(Batido); menuGroup.Batido = Batido 

       -- kwkRed positioning 
       kwkRed = display.newImageRect( imgDir.. "kwkred.png", 385, 372 ); 
       kwkRed.x = 1405; kwkRed.y = 1322; kwkRed.alpha = 1; kwkRed.oldAlpha = 1 
       kwkRed.oriX = kwkRed.x; kwkRed.oriY = kwkRed.y 
       kwkRed.name = "kwkRed" 
       menuGroup:insert(kwkRed); menuGroup.kwkRed = kwkRed 

       -- Jazmin_detalle_ positioning 
       Jazmin_detalle_ = display.newImageRect( imgDir.. "p80_jazmin_detalle_.png", 528, 413 ); 
       Jazmin_detalle_.x = 1816; Jazmin_detalle_.y = 1298; Jazmin_detalle_.alpha = 1; Jazmin_detalle_.oldAlpha = 1 
       Jazmin_detalle_.oriX = Jazmin_detalle_.x; Jazmin_detalle_.oriY = Jazmin_detalle_.y 
       Jazmin_detalle_.name = "Jazmin_detalle_" 
       menuGroup:insert(Jazmin_detalle_); menuGroup.Jazmin_detalle_ = Jazmin_detalle_ 

       -- Set_de_gafas positioning 
       Set_de_gafas = display.newImageRect( imgDir.. "p80_set_de_gafas.png", 412, 335 ); 
       Set_de_gafas.x = 2303; Set_de_gafas.y = 1297; Set_de_gafas.alpha = 1; Set_de_gafas.oldAlpha = 1 
       Set_de_gafas.oriX = Set_de_gafas.x; Set_de_gafas.oriY = Set_de_gafas.y 
       Set_de_gafas.name = "Set_de_gafas" 
       menuGroup:insert(Set_de_gafas); menuGroup.Set_de_gafas = Set_de_gafas 

       -- Boton positioning 
       Boton = display.newImageRect( imgDir.. "p80_boton.png", 384, 214 ); 
       Boton.x = 579; Boton.y = 1357; Boton.alpha = 1; Boton.oldAlpha = 1 
       Boton.oriX = Boton.x; Boton.oriY = Boton.y 
       Boton.name = "Boton" 
       menuGroup:insert(Boton); menuGroup.Boton = Boton 

       -- Cabeza_Mama_gaf positioning 
       Cabeza_Mama_gaf = display.newImageRect( imgDir.. "p80_cabeza_mama_gaf.png", 368, 391 ); 
       Cabeza_Mama_gaf.x = 258; Cabeza_Mama_gaf.y = 285; Cabeza_Mama_gaf.alpha = 1; Cabeza_Mama_gaf.oldAlpha = 1 
       Cabeza_Mama_gaf.oriX = Cabeza_Mama_gaf.x; Cabeza_Mama_gaf.oriY = Cabeza_Mama_gaf.y 
       Cabeza_Mama_gaf.name = "Cabeza_Mama_gaf" 
       menuGroup:insert(Cabeza_Mama_gaf); menuGroup.Cabeza_Mama_gaf = Cabeza_Mama_gaf 

       -- Cabeza_Hija_Gaf positioning 
       Cabeza_Hija_Gaf = display.newImageRect( imgDir.. "p80_cabeza_hija_gaf.png", 267, 348 ); 
       Cabeza_Hija_Gaf.x = 766; Cabeza_Hija_Gaf.y = 272; Cabeza_Hija_Gaf.alpha = 1; Cabeza_Hija_Gaf.oldAlpha = 1 
       Cabeza_Hija_Gaf.oriX = Cabeza_Hija_Gaf.x; Cabeza_Hija_Gaf.oriY = Cabeza_Hija_Gaf.y 
       Cabeza_Hija_Gaf.name = "Cabeza_Hija_Gaf" 
       menuGroup:insert(Cabeza_Hija_Gaf); menuGroup.Cabeza_Hija_Gaf = Cabeza_Hija_Gaf 

       -- Cabeza_bebe positioning 
       Cabeza_bebe = display.newImageRect( imgDir.. "p80_cabeza_bebe.png", 234, 186 ); 
       Cabeza_bebe.x = 1144; Cabeza_bebe.y = 251; Cabeza_bebe.alpha = 1; Cabeza_bebe.oldAlpha = 1 
       Cabeza_bebe.oriX = Cabeza_bebe.x; Cabeza_bebe.oriY = Cabeza_bebe.y 
       Cabeza_bebe.name = "Cabeza_bebe" 
       menuGroup:insert(Cabeza_bebe); menuGroup.Cabeza_bebe = Cabeza_bebe 

       -- kwkHormiga2 positioning 
       kwkHormiga2 = display.newImageRect( imgDir.. "kwkhormiga2.png", 189, 193 ); 
       kwkHormiga2.x = 2407; kwkHormiga2.y = 256; kwkHormiga2.alpha = 1; kwkHormiga2.oldAlpha = 1 
       kwkHormiga2.oriX = kwkHormiga2.x; kwkHormiga2.oriY = kwkHormiga2.y 
       kwkHormiga2.name = "kwkHormiga2" 
       menuGroup:insert(kwkHormiga2); menuGroup.kwkHormiga2 = kwkHormiga2 

       -- Cabeza_Ser positioning 
       Cabeza_Ser = display.newImageRect( imgDir.. "p80_cabeza_ser.png", 364, 532 ); 
       Cabeza_Ser.x = 1594; Cabeza_Ser.y = 277; Cabeza_Ser.alpha = 1; Cabeza_Ser.oldAlpha = 1 
       Cabeza_Ser.oriX = Cabeza_Ser.x; Cabeza_Ser.oriY = Cabeza_Ser.y 
       Cabeza_Ser.name = "Cabeza_Ser" 
       menuGroup:insert(Cabeza_Ser); menuGroup.Cabeza_Ser = Cabeza_Ser 

       -- Arbol positioning 
       Arbol = display.newImageRect( imgDir.. "p80_arbol.png", 455, 425 ); 
       Arbol.x = 2087; Arbol.y = 286; Arbol.alpha = 1; Arbol.oldAlpha = 1 
       Arbol.oriX = Arbol.x; Arbol.oriY = Arbol.y 
       Arbol.name = "Arbol" 
       menuGroup:insert(Arbol); menuGroup.Arbol = Arbol 
 
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


    end 
    drawScreen() 

    return menuGroup 
end 
