local newCL
local newCI
local newCG

local uCL1 = kwkVarCheck("CL1")
local uCL2 = kwkVarCheck("CL2")
local uCL3 = kwkVarCheck("CL3")
local uCL5 = kwkVarCheck("CL5")

print("UCL5 = "..uCL5)


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

print("CL = "..newCL..", CI = "..newCI..", CG = "..newCG)

saveKwikVars({"CL", newCL})
saveKwikVars({"CI", newCI})
saveKwikVars({"CG", newCG})

local a = kwkVarCheck("CL")
local s = kwkVarCheck("CI")
local d = kwkVarCheck("CG")

print ("AHora todo vale: "..a.." "..s.." "..d)