function hide (toHide)
    transition.to( toHide, {alpha=0, time=500, delay=0}) 
end

function show (toShow)
    transition.to( toShow, {alpha=toShow.oldAlpha, time=500, delay=0}) 
end


function instantHide(toHide)
    transition.to( toHide, {alpha=0, time=0, delay=0}) 
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
	saveKwikVars({"Fav02Completed", false})

	print("Variables reiniciadas")
end

--Mandar siempre a la primera pagina
director:changeScene("page_1")