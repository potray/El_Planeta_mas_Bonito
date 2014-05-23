if (favor2Started) then
	hide(kwkNavnext)
	hide(kwkNavprev)
end

function btnGuitarra(self) 
	hasGuitarra = true
	saveKwikVars({"hasGuitarra",true}) 
	hideGuitarra() 
	hideInventory() 
	if (favor2Started) then
	    local myClosure_switch = function() 
	        dispose(); director:changeScene( "page_32", "fade" ) 
	    end 
	    timerStash.newTimer_980 = timer.performWithDelay(0, myClosure_switch, 1) 
	else
		local currComodin = kwkVarCheck("comodin")
		saveKwikVars({"comodin", currComodin + 10})
	end
end 