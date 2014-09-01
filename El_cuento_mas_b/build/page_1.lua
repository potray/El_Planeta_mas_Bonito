-- Code created by Kwik - Copyright: kwiksher.com 
-- Version: 2.7.6b 
module(..., package.seeall) 

function new() 
    local numPages = 85 
    local menuGroup = display.newGroup() 
    local dispose 
    local _W = display.contentWidth; 
    local _H = display.contentHeight; 

    local drawScreen = function() 

       local curPage = 1 

       Navigation.new("page", { backColor = {125, 125, 125}, anim=1, timer=1,  totPages = numPages, curPage = curPage, thumbW = 200, thumbH = 125, alpha = 0, imageDir = imgDir, dire = "bottom", audio={} } ) 
       Navigation.hide() 

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
       local btnEmpezar
       local but_877

       -- Layer names 
       local kwkFondo3  
       local btn1  
       local btn3  
       local Rectangulo_redo  
       local btn2  
       local Empezar  
       local Continuar  
       local Reiniciar  
       local Textnav  
       local Cabeza_Mama_gaf  
       local Cabeza_Hija_Gaf  
       local Cabeza_bebe  
       local Cabeza_Ser  
       local Cabeza_Hormigui  
       local Cabeza_Sabio  
       local Cabeza_Ser_2  
       local Nube  
       local Nube_caballo  
       local Objeto_intelige  

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
       _G.Preg01Completed = false --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("Preg01Completed") ~= nil then  
          _G.Preg01Completed = kwkVarCheck("Preg01Completed") 
       end  
       _G.Preg02Completed = false --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("Preg02Completed") ~= nil then  
          _G.Preg02Completed = kwkVarCheck("Preg02Completed") 
       end  
       _G.Preg03Completed = false --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("Preg03Completed") ~= nil then  
          _G.Preg03Completed = kwkVarCheck("Preg03Completed") 
       end  
       _G.Preg04Completed = false --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("Preg04Completed") ~= nil then  
          _G.Preg04Completed = kwkVarCheck("Preg04Completed") 
       end  
       _G.Preg05Completed = false --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("Preg05Completed") ~= nil then  
          _G.Preg05Completed = kwkVarCheck("Preg05Completed") 
       end  
       _G.Preg06Completed = false --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("Preg06Completed") ~= nil then  
          _G.Preg06Completed = kwkVarCheck("Preg06Completed") 
       end  
       _G.Preg07Completed = false --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("Preg07Completed") ~= nil then  
          _G.Preg07Completed = kwkVarCheck("Preg07Completed") 
       end  
       _G.Preg08Completed = false --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("Preg08Completed") ~= nil then  
          _G.Preg08Completed = kwkVarCheck("Preg08Completed") 
       end  
       _G.Preg09Completed = false --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("Preg09Completed") ~= nil then  
          _G.Preg09Completed = kwkVarCheck("Preg09Completed") 
       end  
       _G.Fav04Completed = false --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("Fav04Completed") ~= nil then  
          _G.Fav04Completed = kwkVarCheck("Fav04Completed") 
       end  
       _G.Fav03Completed = false --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("Fav03Completed") ~= nil then  
          _G.Fav03Completed = kwkVarCheck("Fav03Completed") 
       end  
       _G.Fav05Completed = false --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("Fav05Completed") ~= nil then  
          _G.Fav05Completed = kwkVarCheck("Fav05Completed") 
       end  
       _G.Favor5Visitado = false --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("Favor5Visitado") ~= nil then  
          _G.Favor5Visitado = kwkVarCheck("Favor5Visitado") 
       end  
       _G.Fav06Completed = false --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("Fav06Completed") ~= nil then  
          _G.Fav06Completed = kwkVarCheck("Fav06Completed") 
       end  
       _G.Fav07Completed = false --  
       -- Check if variable has a pre-saved content 
       if kwkVarCheck("Fav07Completed") ~= nil then  
          _G.Fav07Completed = kwkVarCheck("Fav07Completed") 
       end  

       -- (TOP) External code will render here 

       -- kwkFondo3 positioning 
       kwkFondo3 = display.newImageRect( imgDir.. "kwkfondo3.png", 2559, 1600 ); 
       kwkFondo3.x = 1279; kwkFondo3.y = 800; kwkFondo3.alpha = 1; kwkFondo3.oldAlpha = 1 
       kwkFondo3.oriX = kwkFondo3.x; kwkFondo3.oriY = kwkFondo3.y 
       kwkFondo3.name = "kwkFondo3" 
       menuGroup:insert(1,kwkFondo3); menuGroup.kwkFondo3 = kwkFondo3 

       -- btn1 positioning 
       btn1 = display.newImageRect( imgDir.. "p1_btn1.png", 523, 109 ); 
       btn1.x = 767; btn1.y = 974; btn1.alpha = 1; btn1.oldAlpha = 1 
       btn1.oriX = btn1.x; btn1.oriY = btn1.y 
       btn1.name = "btn1" 
       menuGroup:insert(btn1); menuGroup.btn1 = btn1 

       -- btn3 positioning 
       btn3 = display.newImageRect( imgDir.. "p1_btn3.png", 523, 110 ); 
       btn3.x = 1279; btn3.y = 974; btn3.alpha = 1; btn3.oldAlpha = 1 
       btn3.oriX = btn3.x; btn3.oriY = btn3.y 
       btn3.name = "btn3" 
       menuGroup:insert(btn3); menuGroup.btn3 = btn3 

       -- Rectangulo_redo positioning 
       Rectangulo_redo = display.newImageRect( imgDir.. "p1_rectangulo_redo.png", 408, 408 ); 
       Rectangulo_redo.x = 1256; Rectangulo_redo.y = 540; Rectangulo_redo.alpha = 1; Rectangulo_redo.oldAlpha = 1 
       Rectangulo_redo.oriX = Rectangulo_redo.x; Rectangulo_redo.oriY = Rectangulo_redo.y 
       Rectangulo_redo.name = "Rectangulo_redo" 
       menuGroup:insert(Rectangulo_redo); menuGroup.Rectangulo_redo = Rectangulo_redo 

       -- btn2 positioning 
       btn2 = display.newImageRect( imgDir.. "p1_btn2.png", 523, 110 ); 
       btn2.x = 1791; btn2.y = 974; btn2.alpha = 1; btn2.oldAlpha = 1 
       btn2.oriX = btn2.x; btn2.oriY = btn2.y 
       btn2.name = "btn2" 
       menuGroup:insert(btn2); menuGroup.btn2 = btn2 

       -- Empezar positioning 
       Empezar = display.newImageRect( imgDir.. "p1_empezar.png", 194, 51 ); 
       Empezar.x = 1281; Empezar.y = 971; Empezar.alpha = 1; Empezar.oldAlpha = 1 
       Empezar.oriX = Empezar.x; Empezar.oriY = Empezar.y 
       Empezar.name = "Empezar" 
       menuGroup:insert(Empezar); menuGroup.Empezar = Empezar 

       -- Continuar positioning 
       Continuar = display.newImageRect( imgDir.. "p1_continuar.png", 215, 39 ); 
       Continuar.x = 1792; Continuar.y = 970; Continuar.alpha = 1; Continuar.oldAlpha = 1 
       Continuar.oriX = Continuar.x; Continuar.oriY = Continuar.y 
       Continuar.name = "Continuar" 
       menuGroup:insert(Continuar); menuGroup.Continuar = Continuar 

       -- Reiniciar positioning 
       Reiniciar = display.newImageRect( imgDir.. "p1_reiniciar.png", 425, 40 ); 
       Reiniciar.x = 768; Reiniciar.y = 970; Reiniciar.alpha = 1; Reiniciar.oldAlpha = 1 
       Reiniciar.oriX = Reiniciar.x; Reiniciar.oriY = Reiniciar.y 
       Reiniciar.name = "Reiniciar" 
       menuGroup:insert(Reiniciar); menuGroup.Reiniciar = Reiniciar 

       -- Textnav positioning 
       Textnav = display.newImageRect( imgDir.. "p1_textnav.png", 330, 280 ); 
       Textnav.x = 1253; Textnav.y = 535; Textnav.alpha = 1; Textnav.oldAlpha = 1 
       Textnav.oriX = Textnav.x; Textnav.oriY = Textnav.y 
       Textnav.name = "Textnav" 
       menuGroup:insert(Textnav); menuGroup.Textnav = Textnav 

       -- Cabeza_Mama_gaf positioning 
       Cabeza_Mama_gaf = display.newImageRect( imgDir.. "p1_cabeza_mama_gaf.png", 368, 391 ); 
       Cabeza_Mama_gaf.x = 264; Cabeza_Mama_gaf.y = 1346; Cabeza_Mama_gaf.alpha = 1; Cabeza_Mama_gaf.oldAlpha = 1 
       Cabeza_Mama_gaf.oriX = Cabeza_Mama_gaf.x; Cabeza_Mama_gaf.oriY = Cabeza_Mama_gaf.y 
       Cabeza_Mama_gaf.name = "Cabeza_Mama_gaf" 
       menuGroup:insert(Cabeza_Mama_gaf); menuGroup.Cabeza_Mama_gaf = Cabeza_Mama_gaf 

       -- Cabeza_Hija_Gaf positioning 
       Cabeza_Hija_Gaf = display.newImageRect( imgDir.. "p1_cabeza_hija_gaf.png", 267, 348 ); 
       Cabeza_Hija_Gaf.x = 2346; Cabeza_Hija_Gaf.y = 1048; Cabeza_Hija_Gaf.alpha = 1; Cabeza_Hija_Gaf.oldAlpha = 1 
       Cabeza_Hija_Gaf.oriX = Cabeza_Hija_Gaf.x; Cabeza_Hija_Gaf.oriY = Cabeza_Hija_Gaf.y 
       Cabeza_Hija_Gaf.name = "Cabeza_Hija_Gaf" 
       menuGroup:insert(Cabeza_Hija_Gaf); menuGroup.Cabeza_Hija_Gaf = Cabeza_Hija_Gaf 

       -- Cabeza_bebe positioning 
       Cabeza_bebe = display.newImageRect( imgDir.. "p1_cabeza_bebe.png", 382, 303 ); 
       Cabeza_bebe.x = 1281; Cabeza_bebe.y = 1409; Cabeza_bebe.alpha = 1; Cabeza_bebe.oldAlpha = 1 
       Cabeza_bebe.oriX = Cabeza_bebe.x; Cabeza_bebe.oriY = Cabeza_bebe.y 
       Cabeza_bebe.name = "Cabeza_bebe" 
       menuGroup:insert(Cabeza_bebe); menuGroup.Cabeza_bebe = Cabeza_bebe 

       -- Cabeza_Ser positioning 
       Cabeza_Ser = display.newImageRect( imgDir.. "p1_cabeza_ser.png", 236, 346 ); 
       Cabeza_Ser.x = 271; Cabeza_Ser.y = 927; Cabeza_Ser.alpha = 1; Cabeza_Ser.oldAlpha = 1 
       Cabeza_Ser.oriX = Cabeza_Ser.x; Cabeza_Ser.oriY = Cabeza_Ser.y 
       Cabeza_Ser.name = "Cabeza_Ser" 
       menuGroup:insert(Cabeza_Ser); menuGroup.Cabeza_Ser = Cabeza_Ser 

       -- Cabeza_Hormigui positioning 
       Cabeza_Hormigui = display.newImageRect( imgDir.. "p1_cabeza_hormigui.png", 217, 329 ); 
       Cabeza_Hormigui.x = 2406; Cabeza_Hormigui.y = 1402; Cabeza_Hormigui.alpha = 1; Cabeza_Hormigui.oldAlpha = 1 
       Cabeza_Hormigui.oriX = Cabeza_Hormigui.x; Cabeza_Hormigui.oriY = Cabeza_Hormigui.y 
       Cabeza_Hormigui.name = "Cabeza_Hormigui" 
       menuGroup:insert(Cabeza_Hormigui); menuGroup.Cabeza_Hormigui = Cabeza_Hormigui 

       -- Cabeza_Sabio positioning 
       Cabeza_Sabio = display.newImageRect( imgDir.. "p1_cabeza_sabio.png", 424, 514 ); 
       Cabeza_Sabio.x = 1907; Cabeza_Sabio.y = 1328; Cabeza_Sabio.alpha = 1; Cabeza_Sabio.oldAlpha = 1 
       Cabeza_Sabio.oriX = Cabeza_Sabio.x; Cabeza_Sabio.oriY = Cabeza_Sabio.y 
       Cabeza_Sabio.name = "Cabeza_Sabio" 
       menuGroup:insert(Cabeza_Sabio); menuGroup.Cabeza_Sabio = Cabeza_Sabio 

       -- Cabeza_Ser_2 positioning 
       Cabeza_Ser_2 = display.newImageRect( imgDir.. "p1_cabeza_ser_2.png", 291, 420 ); 
       Cabeza_Ser_2.x = 777; Cabeza_Ser_2.y = 1351; Cabeza_Ser_2.alpha = 1; Cabeza_Ser_2.oldAlpha = 1 
       Cabeza_Ser_2.oriX = Cabeza_Ser_2.x; Cabeza_Ser_2.oriY = Cabeza_Ser_2.y 
       Cabeza_Ser_2.name = "Cabeza_Ser_2" 
       menuGroup:insert(Cabeza_Ser_2); menuGroup.Cabeza_Ser_2 = Cabeza_Ser_2 

       -- Nube positioning 
       Nube = display.newImageRect( imgDir.. "p1_nube.png", 551, 299 ); 
       Nube.x = 294; Nube.y = 569; Nube.alpha = 1; Nube.oldAlpha = 1 
       Nube.oriX = Nube.x; Nube.oriY = Nube.y 
       Nube.name = "Nube" 
       menuGroup:insert(Nube); menuGroup.Nube = Nube 

       -- Nube_caballo positioning 
       Nube_caballo = display.newImageRect( imgDir.. "p1_nube_caballo.png", 718, 449 ); 
       Nube_caballo.x = 2313; Nube_caballo.y = 716; Nube_caballo.alpha = 1; Nube_caballo.oldAlpha = 1 
       Nube_caballo.oriX = Nube_caballo.x; Nube_caballo.oriY = Nube_caballo.y 
       Nube_caballo.name = "Nube_caballo" 
       menuGroup:insert(Nube_caballo); menuGroup.Nube_caballo = Nube_caballo 

       -- Objeto_intelige positioning 
       Objeto_intelige = display.newImageRect( imgDir.. "p1_objeto_intelige.png", 2291, 729 ); 
       Objeto_intelige.x = 1285; Objeto_intelige.y = 392; Objeto_intelige.alpha = 1; Objeto_intelige.oldAlpha = 1 
       Objeto_intelige.oriX = Objeto_intelige.x; Objeto_intelige.oriY = Objeto_intelige.y 
       Objeto_intelige.name = "Objeto_intelige" 
       menuGroup:insert(Objeto_intelige); menuGroup.Objeto_intelige = Objeto_intelige 
 
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
       local function onbtn3Event(event) 
          btnEmpezar(btn3) 
          return true 
       end 
       btn3:addEventListener("tap", onbtn3Event ) 
       local function onRectangulo_redoEvent(event) 
          but_877(Rectangulo_redo) 
          return true 
       end 
       Rectangulo_redo:addEventListener("tap", onRectangulo_redoEvent ) 

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

       function btnEmpezar(self) 
           --External code 
           
startVariables()

local myClosure_switch = function() 
    dispose(); director:changeScene( "page_2", "fade" ) 
end 
timerStash.newTimer_980 = timer.performWithDelay(0, myClosure_switch, 1) 

saveKwikVars ({"Reiniciado", false}) 
       end 

       function but_877(self) 
           if (kNavig.alpha == 0) then 
              Navigation.show() 
           else  
              Navigation.hide() 
           end 
       end 


       -- do not swipe this page 

       dispose = function(event) 
          cancelAllTimers(); cancelAllTransitions() 
       end 

       -- (BOTTOM) External code will render here 
       local reiniciado = kwkVarCheck("Reiniciado")

if (reiniciado == true or reiniciado == nil) then
	instantHide(Continuar)
	instantHide(Reiniciar)
	instantHide(btn1)
	instantHide(btn2)
else
	instantHide(Empezar)
	instantHide(btn3)
end 


    end 
    drawScreen() 

    return menuGroup 
end 
