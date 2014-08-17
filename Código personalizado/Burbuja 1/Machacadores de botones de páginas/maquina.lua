if (favor2Started) then
	hide(kwkNavnext)
	hide(kwkNavprev)
end

instantHide(kwkInvDestacado)

function btnMaquina(self) 
	hasMaquina = true
	show(kwkInvDestacado)
	saveKwikVars({"hasMaquina",true}) 
	hideMaquina() 
	hideInventory() 
	if (favor2Started) then
		local pageToGo = pag_favor2
		if (not hasGuitarra) then
			pageToGo = pag_guitarra
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