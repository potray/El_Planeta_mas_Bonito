--Ocultar capas al principio

instantHide(circuloA)
instantHide(circuloB)
instantHide(circuloC)
instantHide(circuloD)
instantHide(kwkTick)
instantHide(End1)

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

	delayShow(End1, 0)
	playAudioWithDelay(acierto, 0)

	if (lastPressed == "A") then
		end1()
	elseif (lastPressed == "B") then
		end2()
	elseif (lastPressed == "C") then
		end3()
	else
		end4()
	end

	updateCoefs()

	saveKwikVars({"Preg07Completed", true})

    local myClosure_switch = function() 
        dispose(); director:changeScene( "page_"..(pag_pregunta7 + 1), "fade" ) 
    end 
    timerStash.newTimer_980 = timer.performWithDelay(4000, myClosure_switch, 1) 
end

function end1()

	local currentCI2 = kwkVarCheck("CI2")
	local currentCG1 = kwkVarCheck("CG1")

	saveKwikVars({"CI2", currentCI2 + 5})
	saveKwikVars({"CG1", currentCG1 + 10})

end

function end2()

	local currentCL1 = kwkVarCheck("CL1")
	
	saveKwikVars({"CL1", currentCL1 + 1})
end

function end3()

	local currentCL1 = kwkVarCheck("CL1")
	local currentCI2 = kwkVarCheck("CI2")
	
	saveKwikVars({"CL1", currentCL1 + 1})
	saveKwikVars({"CI2", currentCI2 + 5})
end

function end4()

	local currentCL1 = kwkVarCheck("CL1")
	local currentCG1 = kwkVarCheck("CG1")
	
	saveKwikVars({"CL1", currentCL1 + 1})
	saveKwikVars({"CG1", currentCG1 + 10})
end