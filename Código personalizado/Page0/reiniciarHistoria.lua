startVariables()

local path = system.pathForFile( "book.txt", system.DocumentsDirectory ) 
local file

file = io.open( path, "w+b" ) 
file:write( "2\n1" ) 
kBookmark = 1 
io.close(file) 

local myClosure_switch = function() 
    dispose(); director:changeScene( "page_1", "fade" ) 
end 
timerStash.newTimer_980 = timer.performWithDelay(0, myClosure_switch, 1) 

print ("Reiniciada historia")