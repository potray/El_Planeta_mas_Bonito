--Ocultar capas al principio

instantHide(circuloA)
instantHide(circuloB)
instantHide(circuloC)
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
	end
end

function terminar ()
	terminado = true

	hide(Text1)
	hide(kwkTick)

	if (lastPressed == "B") then
		end2()
	else
		end1()
	end

	updateCoefs()

	saveKwikVars({"Preg09Completed", true})

	saveKwikVars({"CuentoTerminado", true})

    local myClosure_switch = function() 
        dispose(); director:changeScene( "page_1", "fade" ) 
    end 
    timerStash.newTimer_980 = timer.performWithDelay(4000, myClosure_switch, 1) 
end

function end1()
	delayShow(End1, 0)
	playAudioWithDelay(fallo, 0)
end

function end2()
	delayShow(End2, 0)
	playAudioWithDelay(acierto, 0)

	local currentCL3 = kwkVarCheck("CL3")
	local currentCG2 = kwkVarCheck("CG2")
	
	saveKwikVars({"CL3", currentCL3 + 5})
	saveKwikVars({"CG2", currentCG2 + 10})
end