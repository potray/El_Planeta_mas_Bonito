local path = system.pathForFile( "book.txt", system.DocumentsDirectory ) 
local file = io.open( path, "r" ) 
local goPage
local kBookmark

if file then 
   goPage = file:read("*l") 
   kBookmark = file:read("*l") 
   io.close(file) 
else 
   local file = io.open( path, "w+b" ) 
   file:write( "1\n1" ) 
   kBookmark = 1 
   goPage = 2
   io.close(file) 
end 

--Le han dado a empezar
if (goPage == "1") then
  goPage = "2"
  startVariables()
end

local myClosure_switch = function() 
    dispose(); director:changeScene( "page_"..goPage, "fade" ) 
end 
timerStash.newTimer_980 = timer.performWithDelay(0, myClosure_switch, 1) 

print ("continuando historia")

saveKwikVars ({"Reiniciado", false})