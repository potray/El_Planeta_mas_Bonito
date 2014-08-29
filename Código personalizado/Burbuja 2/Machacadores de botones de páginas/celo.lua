if (favor5Started) then
	hide(kwkNavnext)
	hide(kwkNavprev)
end

instantHide(kwkInvDestacado)

function btnCelo(self) 
	hasCelo = true
	show(kwkInvDestacado)
	saveKwikVars({"hasCelo",true}) 
	hideCelo() 
	hideInventory() 
	if (favor5Started) then
		local pageToGo = pag_favor5
	    local myClosure_switch = function() 
	        dispose(); director:changeScene( "page_"..pageToGo, "fade" ) 
	    end 
	    timerStash.newTimer_980 = timer.performWithDelay(0, myClosure_switch, 1) 
	else
		local currComodin = kwkVarCheck("comodin")
		saveKwikVars({"comodin", currComodin + 10})
	end
end 