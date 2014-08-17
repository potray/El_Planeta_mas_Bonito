--Ocultar capas al principio

instantHide(kwkMama_gafas)
instantHide(kwkMama_llorand)
instantHide(circuloA)
instantHide(circuloB)
instantHide(circuloC)
instantHide(circuloD)
instantHide(kwkTick)
instantHide(End1)
instantHide(End2)
instantHide(End3)
instantHide(Perfume)

local lastPressed = ""
local terminado = false

function hideLastPressed ()
	if (lastPressed == "A") then
		hide(circuloA)
	elseif (lastPressed == "B") then
		hide(circuloB)
	elseif (lastPressed == "C") then
		hide(circuloC)
	elseif (lastPressed == "D") then
		hide(circuloD)
	end
end

function terminar ()
	terminado = true

	hide(Instrucciones)
	hide(Text1)
	hide(miniTick)
	hide(kwkHija_gafas)
	hide(kwkTick)

	show(End1)
	show(kwkMama_gafas)
	show(Perfume)

	if (lastPressed == "A") then
		goodEnd()
	else
		badEnd()
	end

	saveKwikVars({"Preg01Completed", true})

    local myClosure_switch = function() 
        dispose(); director:changeScene( "page_23", "fade" ) 
    end 
    timerStash.newTimer_980 = timer.performWithDelay(5000, myClosure_switch, 1) 
end

function goodEnd()
	delayShow(End2, 2)
	playAudioWithDelay(acierto, 2)

	local currentCL3 = kwkVarCheck("CL3")
	local currentCL1 = kwkVarCheck("CL1")
	local currentCI2 = kwkVarCheck("CI2")

	saveKwikVars({"CL3", currentCL3 + 5})
	saveKwikVars({"CL1", currentCL1 + 5})
	saveKwikVars({"CI2", currentCI2 + 5})

	updateCoefs()
end

function badEnd()
	delayShow(End3, 2)
	delayHide(kwkMama_gafas, 2)
	delayShow(kwkMama_llorand, 2)
	playAudioWithDelay(fallo, 2)
end