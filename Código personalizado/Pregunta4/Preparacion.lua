--Ocultar capas al principio

instantHide(circuloA)
instantHide(circuloB)
instantHide(circuloC)
instantHide(circuloD)
instantHide(circuloE)
instantHide(kwkTick)
instantHide(End1)
instantHide(End2)
instantHide(End3)

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
	elseif (lastPressed == "E") then
		hide(circuloE)
	end
end

function terminar ()
	terminado = true

	hide(Text1)
	hide(kwkTick)

	if (lastPressed == "D") then
		end1()
	elseif (lastPressed == "E") then
		end2()
	else
		badEnd()
	end

	saveKwikVars({"Preg04Completed", true})

    local myClosure_switch = function() 
        dispose(); director:changeScene( "page_"..(pag_pregunta4 + 1), "fade" ) 
    end 
    timerStash.newTimer_980 = timer.performWithDelay(4000, myClosure_switch, 1) 
end

function end1()
	delayShow(End1, 0)
	playAudioWithDelay(acierto, 0)

	local currentCL1 = kwkVarCheck("CL1")
	local currentCL3 = kwkVarCheck("CL3")

	saveKwikVars({"CL1", currentCL1 + 1})
	saveKwikVars({"CL3", currentCL1 + 3})

	updateCoefs()
end

function end2()
	delayShow(End2, 0)
	playAudioWithDelay(acierto, 0)

	local currentCL1 = kwkVarCheck("CL1")
	local currentCL3 = kwkVarCheck("CL3")
	local currentCL5 = kwkVarCheck("CL5")

	saveKwikVars({"CL1", currentCL1 + 1})
	saveKwikVars({"CL3", currentCL1 + 3})
	saveKwikVars({"CL5", currentCL5 + 10})

	updateCoefs()
end


function badEnd()
	delayShow(End3, 0)
	playAudioWithDelay(fallo, 0)
end