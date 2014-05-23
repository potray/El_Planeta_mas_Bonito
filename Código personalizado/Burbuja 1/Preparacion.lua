local pos1 = -1
local pos2 = -1
local pos3 = -1
local pos4 = -1
local pos5 = -1

local addCI3 = 5
local addCG8 = 5

local lastText = Text1

saveKwikVars({"Favor2Visitado", true})
print("Guardado favor2visitado a true")

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

function moveTo (moving, static)
	moving.x = static.x
	moving.y = static.y
end

function moveToNumber (moving, number)
	if (number == 1) then
		moveTo (moving, rect1)
	end
	if (number == 2) then
		moveTo (moving, rect2)
	end
	if (number == 3) then
		moveTo (moving, rect3)
	end
	if (number == 4) then
		moveTo (moving, rect4)
	end
	if (number == 5) then
		moveTo (moving, rect5)
	end
end

function switchText (textToHide, textToShow)
    transition.to( textToHide, {alpha=0, time=500, delay=0}) 
    transition.to( textToShow, {alpha=textToShow.oldAlpha, time=500, delay=0}) 
    lastText = textToShow
end

function hide (toHide)
    transition.to( toHide, {alpha=0, time=500, delay=0}) 
end

function show (toShow)
    transition.to( toShow, {alpha=toShow.oldAlpha, time=500, delay=0}) 
end


function instantHide(toHide)
    transition.to( toHide, {alpha=0, time=0, delay=0}) 
end

function whereIs (thumbnail)
	switchText (lastText, Text1)
	local returnValue = -1
	if (isOn (thumbnail, rect1)) then
		returnValue = 1
	end
	if (isOn (thumbnail, rect2)) then
		returnValue = 2
	end
	if (isOn (thumbnail, rect3)) then
		returnValue = 3
	end
	if (isOn (thumbnail, rect4)) then
		returnValue = 4
	end
	if (isOn (thumbnail, rect5)) then
		returnValue = 5
	end

	if (returnValue ~= -1) then
		moveToNumber (thumbnail, returnValue)
	end

	return returnValue
end

function todosEnPosicion()
	if (pos1 ~= -1 and pos2 ~= -1 and pos3 ~= -1 and pos4 ~= -1 and pos5 ~= -1) then
		return true
	else 
		return false
	end
end

function todosEnSuSitio()
	if (pos1 == 1 and pos2 == 2 and pos3 == 3 and pos4 == 4 and pos5 == 5) then
		return true
	else
		return false
	end
end

function terminarPrueba()
	switchText(lastText, TextTerminado)
	show(kwkBurbuja)
	hide(Rubi)

	local currentCI3 = kwkVarCheck("CI3")
	local currentCG8 = kwkVarCheck("CG8")

	saveKwikVars({"CI3", currentCI3 + addCI3})	
	saveKwikVars({"CG8", currentCG8 + addCG8})

	updateCoefs()
end

function comprobar()
	if (todosEnPosicion()) then
		if (not todosEnSuSitio()) then
			switchText(lastText, TextMal)
			if (pos1 ~= 1) then
				addCI3 = addCI3 - 1
				addCG8 = addCG8 - 1
			end
			if (pos2 ~= 2) then
				addCI3 = addCI3 - 1
				addCG8 = addCG8 - 1
			end
			if (pos3 ~= 3) then
				addCI3 = addCI3 - 1
				addCG8 = addCG8 - 1
			end
			if (pos4 ~= 4) then
				addCI3 = addCI3 - 1
				addCG8 = addCG8 - 1
			end
			if (pos5 ~= 5) then
				addCI3 = addCI3 - 1
				addCG8 = addCG8 - 1
			end
		else 
			terminarPrueba()
		end
	else
		switchText(lastText, TextFaltan)
	end

	print ("CI3 = "..addCI3..", CG8 = "..addCG8)
end




