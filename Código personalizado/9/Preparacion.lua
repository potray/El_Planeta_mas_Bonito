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

	if (lastPressed == "C") then
		end2()
	else
		end1()
	end

	updateCoefs()

	saveKwikVars({"Preg08Completed", true})

    local myClosure_switch = function() 
        dispose(); director:changeScene( "page_"..(pag_pregunta8 + 1), "fade" ) 
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

	local currentCL1 = kwkVarCheck("CL1")
	local currentCL3 = kwkVarCheck("CL3")
	
	saveKwikVars({"CL1", currentCL1 + 1})
	saveKwikVars({"CL3", currentCL1 + 1})
end