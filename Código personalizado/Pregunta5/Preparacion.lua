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
instantHide(End4)

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

	if (lastPressed == "B" or lastPressed == "C") then
		end1()
	elseif (lastPressed == "A") then
		end2()
	elseif (lastPressed == "D") then
		end3()
	else
		end4()
	end

	saveKwikVars({"Preg05Completed", true})

    local myClosure_switch = function() 
        dispose(); director:changeScene( "page_"..(pag_pregunta5 + 1), "fade" ) 
    end 
    timerStash.newTimer_980 = timer.performWithDelay(4000, myClosure_switch, 1) 
end

function end1()
	delayShow(End1, 0)
	playAudioWithDelay(fallo, 0)
end

function end2()
	delayShow(End2, 0)
	playAudioWithDelay(fallo, 0)
end


function end3()
	delayShow(End3, 0)
	playAudioWithDelay(acierto, 0)

	local currentCL1 = kwkVarCheck("CL1")
	local currentCL3 = kwkVarCheck("CL3")
	local currentCI4 = kwkVarCheck("CI4")

	saveKwikVars({"CL1", currentCL1 + 1})
	saveKwikVars({"CL3", currentCL3 + 3})

	updateCoefs()
end


function end4()
	delayShow(End4, 0)
	playAudioWithDelay(acierto, 0)

	local currentCL3 = kwkVarCheck("CL3")
	local currentCI4 = kwkVarCheck("CI4")
	local currentCG1 = kwkVarCheck("CG1")

	saveKwikVars({"CL3", currentCL3 + 3})
	saveKwikVars({"CI4", currentCI4 + 5})
	saveKwikVars({"CG1", currentCG1 + 5})

	updateCoefs()
end