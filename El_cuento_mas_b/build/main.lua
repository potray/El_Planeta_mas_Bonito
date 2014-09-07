-- Book created by Kwik for Adobe Photoshop  - Developed by Kwiksher 
-- Copyright (C) 2012 kwiksher.com. All Rights Reserved. 
-- uses Director class, by Ricardo Rauber 
-- uses DMC classes, by David McCuskey 
-- Exported on Sun Sep 07 2014 16:18:43 GMT+0200 
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

Navigation = require("kNavi") 
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
local goPage = 83 

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

-- Bookmark function 
local path = system.pathForFile( "book.txt", system.DocumentsDirectory ) 
local file = io.open( path, "r" ) 
if file then 
   goPage = file:read("*l") 
   kBookmark = file:read("*l") 
   io.close(file) 
else 
   local file = io.open( path, "w+b" ) 
   file:write( "1\n1" ) 
   kBookmark = 1 
   io.close(file) 
end 


--Create a main group
local mainGroup = display.newGroup()

-- Main function
local function main()
   -- Add the group from Director calls
   mainGroup:insert(director.directorView)

   -- Adding external code
   function hide (toHide)
    transition.to( toHide, {alpha=0, time=500, delay=0}) 
end

function show (toShow)
    transition.to( toShow, {alpha=toShow.oldAlpha, time=500, delay=0}) 
end

function instantShow (toShow)
    transition.to( toShow, {alpha=toShow.oldAlpha, time=1, delay=0})
end

function delayShow (toShow, del)
    transition.to( toShow, {alpha=toShow.oldAlpha, time=500, delay=del*1000})
end

function instantDelayShow (toShow, del)
    transition.to( toShow, {alpha=toShow.oldAlpha, time=1, delay=del*1000})
end


function instantHide(toHide)
    transition.to( toHide, {alpha=0, time=0, delay=0}) 
end

function delayHide(toHide, del)
    transition.to( toHide, {alpha=0, time=500, delay=del*1000}) 
end

function instantDelayHide(toHide, del)
    transition.to( toHide, {alpha=0, time=0, delay=del*1000}) 
end

function playAudioWithDelay(clip, delay) 
   audio.setVolume(1, {channel=1} ) 

  local audioPlay = function() 
     audio.play(clip, {  channel=1, loops=0 } ) 
  end 
  timerStash.newTimerAudio = timer.performWithDelay(delay*1000, audioPlay, 1) 
end 

function isOn (moving, static)
	local condicion1 = moving.x >= static.x - static.width/2
	local condicion2 = moving.x <= static.x + static.width/2
	local condicion3 = moving.y >= static.y - static.height/2
	local condicion4 = moving.y <= static.y + static.height/2

	if (condicion1 and condicion2 and condicion3 and condicion4) then
		return true
	else
		return false
	end
end

function isPositionOn (x, y, static)
	local condicion1 = x >= static.x - static.width/2
	local condicion2 = x <= static.x + static.width/2
	local condicion3 = y >= static.y - static.height/2
	local condicion4 = y <= static.y + static.height/2

	if (condicion1 and condicion2 and condicion3 and condicion4) then
		return true
	else
		return false
	end
end


function moveTo (moving, static)
	moving.x = static.x
	moving.y = static.y
end

function updateCoefs()
	local newCL
	local newCI
	local newCG

	local uCL1 = kwkVarCheck("CL1")
	local uCL2 = kwkVarCheck("CL2")
	local uCL3 = kwkVarCheck("CL3")
	local uCL5 = kwkVarCheck("CL5")

	local uCI2 = kwkVarCheck("CI2")
	local uCI3 = kwkVarCheck("CI3")
	local uCI4 = kwkVarCheck("CI4")
	local uCI5 = kwkVarCheck("CI5")

	local uCG1 = kwkVarCheck("CG1")
	local uCG2 = kwkVarCheck("CG2")
	local uCG8 = kwkVarCheck("CG8")

	newCL = uCL1 + uCL2 + uCL3 + uCL5
	newCI = uCI2 + uCI3 + uCI4 + uCI5
	newCG = uCG1 + uCG2 + uCG8

	saveKwikVars({"CL", newCL})
	saveKwikVars({"CI", newCI})
	saveKwikVars({"CG", newCG})
	
end

function startVariables()
	saveKwikVars({"hasBiberon",false}) 
	saveKwikVars({"hasTijeras",false}) 
	saveKwikVars({"hasRosa",false}) 
	saveKwikVars({"hasChanclaVerde", false})
	saveKwikVars({"hasErizo", false})
	saveKwikVars({"hasBotaAbeja", false})
	saveKwikVars({"hasMaquina", false})
	saveKwikVars({"hasGuitarra", false})
	saveKwikVars({"hasCola", false})
	saveKwikVars({"hasCelo", false})

	saveKwikVars({"CL1", 0})
	saveKwikVars({"CL2", 0})
	saveKwikVars({"CL3", 0})
	saveKwikVars({"CL5", 0})

	saveKwikVars({"CI2", 0})
	saveKwikVars({"CI3", 0})
	saveKwikVars({"CI4", 0})
	saveKwikVars({"CI5", 0})

	saveKwikVars({"CG1", 0})
	saveKwikVars({"CG2", 0})
	saveKwikVars({"CG8", 0})

	saveKwikVars({"comodin", 0})
	saveKwikVars({"CL", 0})
	saveKwikVars({"CI", 0})
	saveKwikVars({"CG", 0})

	saveKwikVars({"Reiniciado", true})

	saveKwikVars({"Fav01Completed", false})

	saveKwikVars({"Favor2Visitado", false})
	saveKwikVars({"Favor5Visitado", false})
	saveKwikVars({"Fav02Completed", false})
	saveKwikVars({"Fav03Completed", false})
	saveKwikVars({"Fav04Completed", false})
	saveKwikVars({"Fav05Completed", false})
	saveKwikVars({"Fav06Completed", false})
	saveKwikVars({"Fav07Completed", false})

	saveKwikVars({"Preg01Completed", false})
	saveKwikVars({"Preg02Completed", false})
	saveKwikVars({"Preg03Completed", false})
	saveKwikVars({"Preg04Completed", false})
	saveKwikVars({"Preg05Completed", false})
	saveKwikVars({"Preg06Completed", false})
	saveKwikVars({"Preg07Completed", false})
	saveKwikVars({"Preg08Completed", false})
	saveKwikVars({"Preg09Completed", false})

	saveKwikVars({"CuentoTerminado", false})

	saveKwikVars({"Audio", true})

	print("Variables reiniciadas")
end

--Mandar siempre a la primera pagina
director:changeScene("page_1") 
   --Códigos de páginas

--Favores
pag_favor1 = 7 	
pag_favor2 = 36	
pag_favor3 = 52
pag_favor4 = 64
pag_favor5 = 72
pag_favor6 = 80
pag_favor7 = 84
pag_burbuja1 = 37	
pag_burbuja2 = 73

--Objetos
pag_tijeras = 2  	--Tijeras y biberón
pag_rosa = 11 		--Rosa
pag_erizo = 25 		--Erizo
pag_maquina = 31 	--Maquina de agrandar cosas
pag_guitarra = 35 	--Guitarra
pag_cola = 49		--Cola blanca
pag_celo = 71		--Celo

--Preguntas
pag_pregunta1 = 22	--Pregunta 1
pag_pregunta2 = 33	--Pregunta 2
pag_pregunta3 = 42	--Pregunta 3
pag_pregunta4 = 45	--Pregunta 4
pag_pregunta5 = 50 	--Pregunta 5
pag_pregunta6 = 55	--Pregunta 6
pag_pregunta7 = 57	--Pregunta 7
pag_pregunta8 = 78	--Pregunta 8
 

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