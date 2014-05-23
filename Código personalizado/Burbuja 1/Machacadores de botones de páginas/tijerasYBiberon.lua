if (favor2Started) then
	hide(kwkNavnext)
	hide(kwkNavPrev)
end

function btnBiberon(self) 
	hasBiberon = true
	saveKwikVars({"hasBiberon",true}) 
	hideBiberon() 
	hideInventory() 
	if (favor2Started and hasTijeras) then
		local pageToGo = "page_33"
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
	    local myClosure_switch = function() 
	        dispose(); director:changeScene( pageToGo, "fade" ) 
	    end 
	    timerStash.newTimer_980 = timer.performWithDelay(0, myClosure_switch, 1) 
	else
		local currComodin = kwkVarCheck("comodin")
		saveKwikVars({"comodin", currComodin + 10})
	end

end 


function btnTijeras(self) 
	hasTijeras = true
	saveKwikVars({"hasTijeras",true}) 
	hideTijeras() 
	hideInventory() 
	if (favor2Started and hasBiberon) then
		local pageToGo = "page_33"
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
	    local myClosure_switch = function() 
	        dispose(); director:changeScene( pageToGo, "fade" ) 
	    end 
	    timerStash.newTimer_980 = timer.performWithDelay(0, myClosure_switch, 1) 
	else		
		local currComodin = kwkVarCheck("comodin")
		saveKwikVars({"comodin", currComodin + 10})
	end   		
end 