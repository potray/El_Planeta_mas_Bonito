--Variables
local initialTijerasx = kwkTijeras.x
local initialTijerasy = kwkTijeras.y
local initialHechizoVolarx = Hechizo_de_hace.x
local initialHechizoVolary = Hechizo_de_hace.y
local initialHechizoOrox = Hechizo_de_conv.x
local initialHechizoOroy = Hechizo_de_conv.y
local initialMaquinax = kwkMaquinaAgran.x
local initialMaquinay = kwkMaquinaAgran.y

local lastText = Text1

local addCL1 = 20
local addCL3 = 20
local addCI2 = 20
local addCI5 = 15

local alasFallado = false
local tijerasFallado = false
local oroFallado = false
local maquinaFallado = false

local alasOk = false
local tijerasOk = false
local oroOk = false
local maquinaOk = false

--Funciones
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

function switchText (textToHide, textToShow)
    transition.to( textToHide, {alpha=0, time=500, delay=0}) 
    transition.to( textToShow, {alpha=textToShow.oldAlpha, time=500, delay=0}) 
    lastText = textToShow
end

function instantSwitchText (textToHide, textToShow)
    transition.to( textToHide, {alpha=0, time=1, delay=0}) 
    transition.to( textToShow, {alpha=textToShow.oldAlpha, time=1, delay=0}) 
    lastText = textToShow
end

function fallar ()
	addCL1 = addCL1 - 5
	if (addCL1 < 0) then
		addCL1 = 0
	end
	addCI2 = addCI2 - 5
	if (addCI2 < 0) then
		addCI2 = 0
	end
end

function terminar()
	if (alasOk and tijerasOk and oroOk and maquinaOk) then
		switchText(lastText, TextTerminar)

		local currCL1 = kwkVarCheck("CL1")
		local currCL3 = kwkVarCheck("CL3")
		local currCI2 = kwkVarCheck("CI2")
		local currCI5 = kwkVarCheck("CI5")

		saveKwikVars({"CL1", currCL1 + addCL1})
		saveKwikVars({"CL3", currCL3 + addCL3})
		saveKwikVars({"CI2", currCI2 + addCI2})
		saveKwikVars({"CI5", currCI5 + addCI5})

		updateCoefs()

		saveKwikVars({"Fav02Completed", true})
		saveKwikVars({"Favor2Visitado", false})

	    local myClosure_switch = function() 
	    	local page = pag_favor2 + 2
	        dispose(); director:changeScene( "page_"..page, "moveFromRight" ) 
	    end 
	    timerStash.newTimer_980 = timer.performWithDelay(2000, myClosure_switch, 1) 
	end
end

--COSAS QUE HACER

--Ocultar cosas

transitionStash.newTransition_299 = transition.to( TextErizo, {alpha=0, time=0, delay=0}) 
transitionStash.newTransition_299 = transition.to( TextBiberon, {alpha=0, time=0, delay=0}) 
transitionStash.newTransition_299 = transition.to( TextGuitarra, {alpha=0, time=0, delay=0}) 
transitionStash.newTransition_300 = transition.to( TextRosa, {alpha=0, time=0, delay=0}) 
transitionStash.newTransition_300 = transition.to( TextFallo, {alpha=0, time=0, delay=0}) 
transitionStash.newTransition_300 = transition.to( TextBurbuja, {alpha=0, time=0, delay=0}) 
transitionStash.newTransition_300 = transition.to( TextTerminar, {alpha=0, time=0, delay=0}) 

if (not hasTijeras) then
	instantHide(kwkTijeras)
end

if (not hasBiberon) then
	instantHide(kwkBiberon)
end

if (not hasMaquina) then
	instantHide(kwkMaquinaAgran)
end

if (not hasRosa) then
	instantHide(kwkRosa)
end

if (not hasGuitarra) then
	instantHide(kwkGuitarra)
end

if (not hasErizo) then
	instantHide(kwkErizo)
end

local missingSomething = not hasTijeras or not hasBiberon or not hasMaquina or not hasRosa or not hasGuitarra or not hasErizo

if (missingSomething) then
	instantHide(Text1)
	instantShow(TextBurbuja)
	instantHide(Ayuda1)
else
	instantHide(kwkBurbuja)
end

