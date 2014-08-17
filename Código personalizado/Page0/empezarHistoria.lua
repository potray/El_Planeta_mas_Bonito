
startVariables()

local myClosure_switch = function() 
    dispose(); director:changeScene( "page_2", "fade" ) 
end 
timerStash.newTimer_980 = timer.performWithDelay(0, myClosure_switch, 1) 

saveKwikVars ({"Reiniciado", false})