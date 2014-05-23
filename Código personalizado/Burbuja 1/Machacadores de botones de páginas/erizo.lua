if (favor2Started) then
	hide(kwkNavnext)
	hide(kwkNavprev)
end

function btnErizo(self) 
	hasErizo = true
	saveKwikVars({"hasErizo",true}) 
	hideErizo() 
	hideInventory() 
	if (favor2Started) then
		local pageToGo = "page_32"
		if (not hasGuitarra) then
			pageToGo = "page_31"
		end
		if (not hasMaquina) then
			pageToGo = "page_29"
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