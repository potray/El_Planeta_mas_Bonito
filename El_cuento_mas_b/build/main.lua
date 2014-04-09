-- Book created by Kwik for Adobe Photoshop  - Developed by Kwiksher 
-- Copyright (C) 2012 kwiksher.com. All Rights Reserved. 
-- uses Director class, by Ricardo Rauber 
-- uses DMC classes, by David McCuskey 
-- Exported on Wed Apr 09 2014 21:34:05 GMT+0200 
-- uses gTween class, by Josh Tynjala (modified by Kwiksher) 
-- uses bTween class, by Josh Tynjala (modified by Kwiksher) 

_G.kwk_readMe = 0 

director = require("director") 
Gesture = require("dmc_gesture") 
MultiTouch = require("dmc_multitouch") 
system.activate("multitouch") 
json = require("json") 
-- check if current SDK version is the latest compatible with Kwik 
local function versionCheck(event) if "clicked" == event.action then if event.index == 2 then system.openURL( "https://developer.coronalabs.com/downloads/coronasdk" ) end end end 
if ( system.getInfo("environment") =="simulator" and system.getInfo("build") ~="2013.2100" ) then native.showAlert("Corona SDK Incompatible Version","Your Corona SDK version is different than the certified one with Kwik. Install build 2013.2100 or you may have issues in your project.",{"OK", "Download"}, versionCheck) end 

local gtween = require("gtween") 
local btween = require("btween") 
Inventory = require("inventory") 

display.setStatusBar( display.HiddenStatusBar ) 
imgDir = "images/" 
audioDir = "audio/" 
videoDir = "video/" 
spriteDir = "sprites/" 

_G.lang = "" 

kBidi = false 
_G.kAutoPlay = 0 
initPage = 1 
local goPage = 1 

-- Json code for external variable loading 
local jsonFile = function(filename ) 
   local path = system.pathForFile(filename, system.DocumentsDirectory ) 
   local contents 
   local file = io.open( path, "r" ) 
   if file then 
      contents = file:read("*a") 
      io.close(file) 
   end 
   return contents 
end 
-- Variable saving function 
local path = system.pathForFile( "kwkVars.json", system.DocumentsDirectory ) 
local file = io.open( path, "r" ) 
if file then 
else 
   local file = io.open( path, "w+b" ) 
   file:write("{{}}") 
   io.close(file) 
end 

-- Loads vars 
kwkVar = json.decode( jsonFile("kwkVars.json") ) 
-- Check for saved variables 
function kwkVarCheck(variable) 
   kwkVar = json.decode( jsonFile("kwkVars.json") ) 
   local found = nil 
   if kwkVar ~= nil then 
      for i = 1, #kwkVar do 
         if (variable == kwkVar[i].name) then 
            found = kwkVar[i].value; break 
         end 
      end 
   end
   return (found) 
end 



--Create a main group
local mainGroup = display.newGroup()

-- Main function
local function main()
   -- Add the group from Director calls
   mainGroup:insert(director.directorView)

   -- Adding external code
   saveKwikVars({"hasBiberon",false}) 
saveKwikVars({"hasTijeras",false}) 
 

   director:changeScene("page_"..goPage)
   return true
end




--Clear timers and transitions
timerStash = {}
transitionStash = {}
gtStash = {}

function cancelAllTimers()
    local k, v

    for k,v in pairs(timerStash) do
        timer.cancel( v )
        v = nil; k = nil
    end

    timerStash = nil
    timerStash = {}
end

--

function cancelAllTransitions()
    local k, v

    for k,v in pairs(transitionStash) do
        transition.cancel( v )
        v = nil; k = nil
    end

    transitionStash = nil
    transitionStash = {}
end

--cancel all gtweens
function cancelAllTweens()
    local k, v

    for k,v in pairs(gtStash) do
        v:pause();
        v = nil; k = nil
    end

    gtStash = nil
    gtStash = {}
end

--save all permanent variables
function zeroesKwikVars() --restart the file to save variable content
	local path = system.pathForFile( "kwkVars.json", system.DocumentsDirectory )
	local contents
	local file = io.open( path, "w+b" )
	if file then
	   contents = file:write( "{{}}" )
	   io.close( file )	-- close the file after using it
	end
end

function saveKwikVars(toSave) --toSave is a table with contents
    local varTab={}
	--loop current kwkVar content (contains ALL variables saved)
	local found = nil
	local jsonString
	
	--checks if current file is empty or not
	local path = system.pathForFile( "kwkVars.json", system.DocumentsDirectory )
	local contents
	--check if file exists
	local file = io.open( path, "r" )
	if file then
	    --reads to check if original content is empty == {{}}
	    local test = file:read("*l") 

	    if (test=="{{}}") then
	        -- kwkVar.json is empty. Recreates the file with the new content
	    	local file = io.open( path, "w+b" )
	    	varTab[1] = {["name"] = toSave[1],["value"] = toSave[2]}
			jsonString = json.encode( varTab )

			contents = file:write( jsonString )
			io.close( file )
	    else
	        --there are already variables saved in the kwkVars.json file
	    	local file = io.open( path, "w" )
	    	local ts = 0

		    for i = 1,#kwkVar do
		      if (toSave[1] == kwkVar[i].name) then
				kwkVar[i].value = toSave[2]
				varTab[i] = {["name"] = kwkVar[i].name,["value"] = kwkVar[i].value}
				ts = 1
			  else
				varTab[i] = {["name"] = kwkVar[i].name,["value"] = kwkVar[i].value}
			  end
		    end
		    if (ts == 0) then --variable not in the file yet
		    	local x = #kwkVar
		    	x = x + 1
			    varTab[x] = {["name"] = toSave[1],["value"] = toSave[2]}
			end

		    jsonString = json.encode( varTab )
	    	contents = file:write( jsonString )
			io.close( file )
	    end
	    
	    
	else
	    --re-creation scenario
	    zeroesKwikVars()
	end
	kwkVar = json.decode( jsonFile( "kwkVars.json" ) )	
	
end


-- Begin
main()