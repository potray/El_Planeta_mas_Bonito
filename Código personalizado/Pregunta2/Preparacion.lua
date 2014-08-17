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

	show(End1)

	if (lastPressed == "A") then
		end1()
	elseif (lastPressed == "B" or lastPressed == "D") then
		end2()
	elseif (lastPressed == "C") then
		badEnd()
	end

	saveKwikVars({"Preg02Completed", true})

    local myClosure_switch = function() 
        dispose(); director:changeScene( "page_"..(pag_pregunta2 + 1), "fade" ) 
    end 
    timerStash.newTimer_980 = timer.performWithDelay(3000, myClosure_switch, 1) 
end

function end1()
	delayShow(End1, 0)
	playAudioWithDelay(acierto, 0)

	local currComodin = kwkVarCheck("comodin")
	saveKwikVars({"comodin", currComodin + 10})	

	updateCoefs()

end

function end2()
	delayShow(End1, 0)
	playAudioWithDelay(acierto, 0)

	local currentCL3 = kwkVarCheck("CL3")
	local currentCL1 = kwkVarCheck("CL1")

	saveKwikVars({"CL3", currentCL3 + 5})
	saveKwikVars({"CL1", currentCL1 + 2})

	updateCoefs()
end

function badEnd()
	delayShow(End1, 0)
	playAudioWithDelay(fallo, 0)
end