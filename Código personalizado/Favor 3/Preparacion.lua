local addCL1 = 5
local addCL3 = 5
local addCI5 = 5

local acertado = false

--Ocultar árboles

instantHide(a1)
instantHide(a2)
instantHide(a3)
instantHide(a4)
instantHide(a5)
instantHide(a6)
instantHide(a7)
instantHide(a8)
instantHide(a9)
instantHide(a10)
instantHide(a11)
instantHide(a12)
instantHide(a13)
instantHide(a14)
instantHide(a15)
instantHide(a16)
instantHide(a17)
instantHide(a18)
instantHide(kwkArbol)

instantHide(TextFin)

function fallar(boton, arbol)

  if (not acertado) then
    hide(boton)
    show(arbol)

    audio.setVolume(1, {channel=2} ) 
    audio.play( fallo, {channel=2, loops = 0 } ) 

    addCL1 = 0
    addCL3 = addCL3 - 1
    addCI5 = 0

    if (addCL3 < 0) then
      addCL3 = 0
    end
  end
end

function acertar(event)
  if (not acertado) then
    acertado = true
    hide(TextAyuda)
    hide(bGrande)

    show(kwkArbol)
    show(TextFin)

    audio.setVolume(1, {channel=1} ) 
    audio.play( acierto, {channel=1, loops = 0 } ) 

    currentCL1 = kwkVarCheck("CL1")
    currentCL3 = kwkVarCheck("CL3")
    currentCI5 = kwkVarCheck("CI5")

    saveKwikVars({"CL1", currentCL1 + addCL1})
    saveKwikVars({"CL3", currentCL3 + addCL3})
    saveKwikVars({"CI5", currentCI5 + addCI5})


    saveKwikVars({"Fav03Completed", true})

    updateCoefs()

    local myClosure_switch = function() 
      local page = pag_favor3 + 1
        dispose(); director:changeScene( "page_"..page, "moveFromRight" ) 
    end 
    timerStash.newTimer_980 = timer.performWithDelay(2500, myClosure_switch, 1) 

  end
  return true
end


--Callbacks de cada botón

local function onb1Event(event) 
  fallar(b1, a1) 
  return true 
end 

local function onb2Event(event) 
  fallar(b2, a2)  
  return true 
end 

local function onb3Event(event) 
  fallar(b3, a3)  
  return true 
end 

local function onb4Event(event) 
  fallar(b4, a4)  
  return true 
end 

local function onb5Event(event) 
  fallar(b5, a5)  
  return true 
end 

local function onb6Event(event) 
  fallar(b6, a6)  
  return true 
end 

local function onb7Event(event) 
  fallar(b7, a7)  
  return true 
end 

local function onb8Event(event)
  fallar(b8, a8)  
  return true 
end 

local function onb9Event(event)
  fallar(b9, a9)  
  return true 
end 

local function onb10Event(event) 
  fallar(b10, a10)  
  return true 
end 

local function onb11Event(event) 
  fallar(b11, a11)  
  return true 
end 

local function onb12Event(event) 
  fallar(b12, a12)  
  return true 
end 

local function onb13Event(event) 
  fallar(b13, a13)  
  return true 
end 

local function onb14Event(event) 
  fallar(b14, a14)  
  return true 
end 

local function onb15Event(event) 
  fallar(b15, a15)  
  return true 
end 

local function onb16Event(event) 
  fallar(b16, a16)  
  return true 
end 

local function onb17Event(event) 
  fallar(b17, a17)  
  return true 
end 

local function onb18Event(event) 
  fallar(b18, a18)  
  return true 
end 

--Añadir event listeners

b1:addEventListener("tap", onb1Event ) 
b2:addEventListener("tap", onb2Event ) 
b3:addEventListener("tap", onb3Event ) 
b4:addEventListener("tap", onb4Event ) 
b5:addEventListener("tap", onb5Event ) 
b6:addEventListener("tap", onb6Event ) 
b7:addEventListener("tap", onb7Event ) 
b8:addEventListener("tap", onb8Event ) 
b9:addEventListener("tap", onb9Event ) 
b10:addEventListener("tap", onb10Event ) 
b11:addEventListener("tap", onb11Event ) 
b12:addEventListener("tap", onb12Event ) 
b13:addEventListener("tap", onb13Event ) 
b14:addEventListener("tap", onb14Event ) 
b15:addEventListener("tap", onb15Event ) 
b16:addEventListener("tap", onb16Event ) 
b17:addEventListener("tap", onb17Event ) 
b18:addEventListener("tap", onb18Event ) 

bGrande:addEventListener("tap", acertar ) 