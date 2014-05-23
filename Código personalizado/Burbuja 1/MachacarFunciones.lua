function btnBurbuja(self) 
	local pageToGo
	if (not hasGuitarra) then
		pageToGo = "page_31"
	end
	if (not hasMaquina) then
		pageToGo = "page_29"
	end
	if (not hasErizo) then
		pageToGo = "page_25"
	end
	if (not hasRosa) then
		pageToGo = "page_11"
	end
	if (not hasBiberon or not hasTijeras) then
		pageToGo = "page_2"
	end
    local myClosure_switch = function() 
        dispose(); director:changeScene( pageToGo, "fade" ) 
    end 
    timerStash.newTimer_980 = timer.performWithDelay(0, myClosure_switch, 1) 
end 

