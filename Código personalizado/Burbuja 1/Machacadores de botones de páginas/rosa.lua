if (favor2Started) then
	instantHide(kwkNavnext)
	instantHide(kwkNavprev)
end

instantHide(kwkInvDestacado)

function btnRosa(self) 
	hasRosa = true
	show(kwkInvDestacado)
	saveKwikVars({"hasRosa",true}) 
	hideRosa() 
	hideInventory() 
	if (favor2Started) then
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
	    local myClosure_switch = function() 
	        dispose(); director:changeScene( "page_"..pageToGo, "fade" ) 
	    end 
	    timerStash.newTimer_980 = timer.performWithDelay(0, myClosure_switch, 1) 
	else
		local currComodin = kwkVarCheck("comodin")
		saveKwikVars({"comodin", currComodin + 10})
	end
end 