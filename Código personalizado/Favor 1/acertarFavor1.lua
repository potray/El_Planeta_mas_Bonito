local currentCL1 = kwkVarCheck("CL1")
local currentCL3 = kwkVarCheck("CL3")
local currentCI2 = kwkVarCheck("CI2")
local currentCI4 = kwkVarCheck("CI4")

saveKwikVars({"CL1", addCL1 + currentCL1})
saveKwikVars({"CL3", addCL3 + currentCL3})
saveKwikVars({"CI2", addCI2 + currentCI2})
saveKwikVars({"CI4", addCI4 + currentCI4})

local p1 = kwkVarCheck("CL1")
local p2 = kwkVarCheck("CL3")
local p3 = kwkVarCheck("CI2")
local p4 = kwkVarCheck("CI4")

print (p1.." "..p2.." "..p3.." "..p4)