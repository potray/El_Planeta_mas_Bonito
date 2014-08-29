if (favor2Started) then
	instantHide(kwkNavnext)
	instantHide(kwkNavPrev)
end

instantHide(kwkInvDestacado)

function btnBiberon(self) 
	hasBiberon = true
	show(kwkInvDestacado)
	saveKwikVars({"hasBiberon",true}) 
	hideBiberon() 
	hideInventory() 
	if (favor2Started and hasTijeras) then
		local pageToGo = pag_favor2
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
	    local myClosure_switch = function() 
	        dispose(); director:changeScene( "page_"..pageToGo, "fade" ) 
	    end 
	    timerStash.newTimer_980 = timer.performWithDelay(0, myClosure_switch, 1) 
	elseif (not favor2Started) then
		local currComodin = kwkVarCheck("comodin")
		saveKwikVars({"comodin", currComodin + 10})
	end

end 


function btnTijeras(self) 
	hasTijeras = true
	show(kwkInvDestacado)
	saveKwikVars({"hasTijeras",true}) 
	hideTijeras() 
	hideInventory() 
	if (favor2Started and hasBiberon) then
		local pageToGo = pag_favor2
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
	    local myClosure_switch = function() 
	        dispose(); director:changeScene( "page_"..pageToGo, "fade" ) 
	    end 
	    timerStash.newTimer_980 = timer.performWithDelay(0, myClosure_switch, 1) 
	elseif (not favor2Started) then		
		local currComodin = kwkVarCheck("comodin")
		saveKwikVars({"comodin", currComodin + 10})
	end   		
end 