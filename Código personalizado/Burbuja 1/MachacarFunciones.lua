function btnBurbuja(self) 
	local pageToGo = pag_burbuja1 + 1
	if (not hasGuitarra) then
		pageToGo = pag_guitarra
	end
	if (not hasMaquina) then
		pageToGo = pag_maquina
	end
	if (not hasErizo) then
		pageToGo = pag_erizo
	end
	if (not hasRosa) then
		pageToGo = pag_rosa
	end
	if (not hasBiberon or not hasTijeras) then
		pageToGo = pag_tijeras
	end

	print ("Vamos a la página "..pageToGo)

    local myClosure_switch = function() 
        dispose(); director:changeScene( "page_"..pageToGo, "fade" ) 
    end 
    timerStash.newTimer_980 = timer.performWithDelay(0, myClosure_switch, 1) 
end 

