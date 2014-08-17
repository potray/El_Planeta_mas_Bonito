--Ocultar capas al principio

instantHide(circuloA)
instantHide(circuloB)
instantHide(circuloC)
instantHide(circuloD)
instantHide(kwkTick)
instantHide(End1)
instantHide(End2)

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

	hide(Text1)
	hide(kwkTick)

	if (lastPressed == "B") then
		end1()
	else
		badEnd()
	end

	saveKwikVars({"Preg03Completed", true})

    local myClosure_switch = function() 
        dispose(); director:changeScene( "page_"..(pag_pregunta3 + 1), "fade" ) 
    end 
    timerStash.newTimer_980 = timer.performWithDelay(4000, myClosure_switch, 1) 
end

function end1()
	delayShow(End1, 0)
	playAudioWithDelay(acierto, 0)

	local currentCL3 = kwkVarCheck("CL3")
	local currentCL1 = kwkVarCheck("CL1")

	saveKwikVars({"CL3", currentCL3 + 5})
	saveKwikVars({"CL1", currentCL1 + 5})

	updateCoefs()
end

function badEnd()
	delayShow(End2, 0)
	playAudioWithDelay(fallo, 0)
end