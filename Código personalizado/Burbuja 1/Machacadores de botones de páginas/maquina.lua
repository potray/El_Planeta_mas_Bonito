if (favor2Started) then
	hide(kwkNavnext)
	hide(kwkNavprev)
end

function btnMaquina(self) 
	hasMaquina = true
	saveKwikVars({"hasMaquina",true}) 
	hideMaquina() 
	hideInventory() 
	if (favor2Started) then
		local pageToGo = "page_32"
		if (not hasGuitarra) then
			pageToGo = "page_31"
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