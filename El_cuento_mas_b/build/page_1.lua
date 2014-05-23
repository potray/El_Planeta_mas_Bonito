-- Code created by Kwik - Copyright: kwiksher.com 
-- Version: 2.7.6b 
module(..., package.seeall) 

function new() 
    local numPages = 34 
    local menuGroup = display.newGroup() 
    local dispose 
    local _W = display.contentWidth; 
    local _H = display.contentHeight; 

    local drawScreen = function() 

        math.randomseed(os.time()) 

       if (tonumber(_G.kAutoPlay) > 0) then 
          local function act_autoPlay(event) 
             if(curPage < numPages) then 
                if(kBidi == false) then  
                   dispose(); director:changeScene( "page_"..curPage+1, "moveFromRight" ) 
                else  
                   dispose(); director:changeScene( "page_"..curPage-1, "moveFromLeft" ) 
                end  
             end 
          end 
          timerStash.timer_AP = timer.performWithDelay( _G.kAutoPlay*1000, act_autoPlay, 1 ) 
       end 

 
       -- Button names 
       local btnReiniciar
       local btnContinuar

       -- Layer names 
       local btn1  
       local btn2  
       local Empezar  
       local Continuar  
       local Text1  

       -- Added variables before layers render 
       _G.hasTijeras = false --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("hasTijeras") ~= nil then  
          _G.hasTijeras = kwkVarCheck("hasTijeras") 
       end  
       _G.CI2 = 0 --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("CI2") ~= nil then  
          _G.CI2 = kwkVarCheck("CI2") 
       end  
       _G.CI3 = 0 --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("CI3") ~= nil then  
          _G.CI3 = kwkVarCheck("CI3") 
       end  
       _G.CI4 = 0 --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("CI4") ~= nil then  
          _G.CI4 = kwkVarCheck("CI4") 
       end  
       _G.CI5 = 0 --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("CI5") ~= nil then  
          _G.CI5 = kwkVarCheck("CI5") 
       end  
       _G.CG8 = 0 --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("CG8") ~= nil then  
          _G.CG8 = kwkVarCheck("CG8") 
       end  
       _G.comodin = 0 --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("comodin") ~= nil then  
          _G.comodin = kwkVarCheck("comodin") 
       end  
       _G.CL = 0 --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("CL") ~= nil then  
          _G.CL = kwkVarCheck("CL") 
       end  
       _G.CL1 = 0 --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("CL1") ~= nil then  
          _G.CL1 = kwkVarCheck("CL1") 
       end  
       _G.CL2 = 0 --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("CL2") ~= nil then  
          _G.CL2 = kwkVarCheck("CL2") 
       end  
       _G.CL3 = 0 --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("CL3") ~= nil then  
          _G.CL3 = kwkVarCheck("CL3") 
       end  
       _G.CL5 = 0 --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("CL5") ~= nil then  
          _G.CL5 = kwkVarCheck("CL5") 
       end  
       _G.hasMaquina = false --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("hasMaquina") ~= nil then  
          _G.hasMaquina = kwkVarCheck("hasMaquina") 
       end  
       _G.hasCelo = true --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("hasCelo") ~= nil then  
          _G.hasCelo = kwkVarCheck("hasCelo") 
       end  
       _G.hasCola = false --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("hasCola") ~= nil then  
          _G.hasCola = kwkVarCheck("hasCola") 
       end  
       _G.hasGuitarra = true --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("hasGuitarra") ~= nil then  
          _G.hasGuitarra = kwkVarCheck("hasGuitarra") 
       end  
       _G.Reiniciado = false --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("Reiniciado") ~= nil then  
          _G.Reiniciado = kwkVarCheck("Reiniciado") 
       end  
       _G.Favor02Complete = false --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("Favor02Complete") ~= nil then  
          _G.Favor02Complete = kwkVarCheck("Favor02Complete") 
       end  
       _G.Fav02Completed = false --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("Fav02Completed") ~= nil then  
          _G.Fav02Completed = kwkVarCheck("Fav02Completed") 
       end  
       _G.hasRosa = false --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("hasRosa") ~= nil then  
          _G.hasRosa = kwkVarCheck("hasRosa") 
       end  
       _G.hasErizo = false --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("hasErizo") ~= nil then  
          _G.hasErizo = kwkVarCheck("hasErizo") 
       end  
       _G.hasBiberon = false --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("hasBiberon") ~= nil then  
          _G.hasBiberon = kwkVarCheck("hasBiberon") 
       end  

       -- (TOP) External code will render here 

       -- btn1 positioning 
       btn1 = display.newImageRect( imgDir.. "p1_btn1.png", 523, 109 ); 
       btn1.x = 767; btn1.y = 974; btn1.alpha = 1; btn1.oldAlpha = 1 
       btn1.oriX = btn1.x; btn1.oriY = btn1.y 
       btn1.name = "btn1" 
       menuGroup:insert(btn1); menuGroup.btn1 = btn1 

       -- btn2 positioning 
       btn2 = display.newImageRect( imgDir.. "p1_btn2.png", 523, 110 ); 
       btn2.x = 1791; btn2.y = 974; btn2.alpha = 1; btn2.oldAlpha = 1 
       btn2.oriX = btn2.x; btn2.oriY = btn2.y 
       btn2.name = "btn2" 
       menuGroup:insert(btn2); menuGroup.btn2 = btn2 

       -- Empezar positioning 
       Empezar = display.newImageRect( imgDir.. "p1_empezar.png", 193, 51 ); 
       Empezar.x = 1802; Empezar.y = 980; Empezar.alpha = 1; Empezar.oldAlpha = 1 
       Empezar.oriX = Empezar.x; Empezar.oriY = Empezar.y 
       Empezar.name = "Empezar" 
       menuGroup:insert(Empezar); menuGroup.Empezar = Empezar 

       -- Continuar positioning 
       Continuar = display.newImageRect( imgDir.. "p1_continuar.png", 215, 39 ); 
       Continuar.x = 1792; Continuar.y = 970; Continuar.alpha = 1; Continuar.oldAlpha = 1 
       Continuar.oriX = Continuar.x; Continuar.oriY = Continuar.y 
       Continuar.name = "Continuar" 
       menuGroup:insert(Continuar); menuGroup.Continuar = Continuar 

       -- Text1 positioning 
       Text1 = display.newImageRect( imgDir.. "p1_text1.png", 425, 40 ); 
       Text1.x = 768; Text1.y = 970; Text1.alpha = 1; Text1.oldAlpha = 1 
       Text1.oriX = Text1.x; Text1.oriY = Text1.y 
       Text1.name = "Text1" 
       menuGroup:insert(Text1); menuGroup.Text1 = Text1 
 
       -- Group(s) creation 

       -- Added variables after layers render 
       _G.CI = 0 --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("CI") ~= nil then  
          _G.CI = kwkVarCheck("CI") 
       end  

       -- (MIDDLE) External code will render here 

       -- Button event listeners 
       local function onbtn1Event(event) 
          btnReiniciar(btn1) 
          return true 
       end 
       btn1:addEventListener("tap", onbtn1Event ) 
       local function onbtn2Event(event) 
          btnContinuar(btn2) 
          return true 
       end 
       btn2:addEventListener("tap", onbtn2Event ) 

       -- Button functions 
       function btnReiniciar(self) 
           --External code 
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
       end 

       function btnContinuar(self) 
           --External code 
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
       end 


       -- do not swipe this page 

       dispose = function(event) 
          cancelAllTimers(); cancelAllTransitions() 
       end 

       -- (BOTTOM) External code will render here 
       local reiniciado = kwkVarCheck("Reiniciado")

if (reiniciado == true or reiniciado == nil) then
	instantHide(Continuar)
else
	instantHide(Empezar)
end 


    end 
    drawScreen() 

    return menuGroup 
end 
