-- Code created by Kwik - Copyright: kwiksher.com 
-- Version: 2.7.6b 
module(..., package.seeall) 

function new() 
    local numPages = 85 
    local menuGroup = display.newGroup() 
    local dispose 
    local _W = display.contentWidth; 
    local _H = display.contentHeight; 

    -- Audio callings 
    local fallo =  audio.loadSound( audioDir.."fallo.mp3") 
    local acierto =  audio.loadSound( audioDir.."acierto.mp3") 


    local drawScreen = function() 

       local curPage = 36 

       Navigation.new("page", { backColor = {125, 125, 125}, anim=1, timer=1,  totPages = numPages, curPage = curPage, thumbW = 200, thumbH = 125, alpha = 0, imageDir = imgDir, dire = "bottom", audio={{ 2, "fallo"},{ 1, "acierto"},} } ) 
       Navigation.hide() 

       if (tonumber(kBookmark) == 1) then 
          local path = system.pathForFile( "book.txt", system.DocumentsDirectory ) 
          local file = io.open( path, "w+" ) 
          file:write ( curPage.."\n1" ) 
          io.close( file ) 
       end 

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
       local btnBurbuja

       -- Action names 
       local DropTijeras 
       local DropHechizoAlas 
       local DropMaquina 
       local DropHechizoOro 
       local HideAll 

       -- Layer names 
       local kwkFondo3  
       local kwkTijeras  
       local kwkBiberon  
       local kwkErizo  
       local kwkRosa  
       local kwkGuitarra  
       local Hechizo_de_conv  
       local kwkMaquinaAgran  
       local Hechizo_de_hace  
       local Text1  
       local Ayuda1  
       local TextErizo  
       local TextBiberon  
       local TextGuitarra  
       local TextRosa  
       local TextFallo  
       local TextBurbuja  
       local TextTerminar  
       local kwkBurbuja  

       -- (TOP) External code will render here 
       local hasRosa = kwkVarCheck("hasRosa")
local hasTijeras = kwkVarCheck("hasTijeras")
local hasBiberon = kwkVarCheck("hasBiberon")
local hasGuitarra = kwkVarCheck("hasGuitarra")
local hasMaquina = kwkVarCheck("hasMaquina")
local hasErizo = kwkVarCheck("hasErizo")
local hasCelo = kwkVarCheck("hasCelo")
local hasCola = kwkVarCheck("hasCola") 

       -- kwkFondo3 positioning 
       kwkFondo3 = display.newImageRect( imgDir.. "kwkfondo3.png", 2559, 1600 ); 
       kwkFondo3.x = 1279; kwkFondo3.y = 800; kwkFondo3.alpha = 1; kwkFondo3.oldAlpha = 1 
       kwkFondo3.oriX = kwkFondo3.x; kwkFondo3.oriY = kwkFondo3.y 
       kwkFondo3.name = "kwkFondo3" 
       menuGroup:insert(1,kwkFondo3); menuGroup.kwkFondo3 = kwkFondo3 

       -- kwkTijeras positioning 
       kwkTijeras = display.newImageRect( imgDir.. "kwktijeras.png", 180, 498 ); 
       kwkTijeras.x = 953; kwkTijeras.y = 339; kwkTijeras.alpha = 1; kwkTijeras.oldAlpha = 1 
       kwkTijeras.oriX = kwkTijeras.x; kwkTijeras.oriY = kwkTijeras.y 
       kwkTijeras.name = "kwkTijeras" 
       menuGroup:insert(kwkTijeras); menuGroup.kwkTijeras = kwkTijeras 

       -- kwkBiberon positioning 
       kwkBiberon = display.newImageRect( imgDir.. "kwkbiberon.png", 133, 329 ); 
       kwkBiberon.x = 256; kwkBiberon.y = 1338; kwkBiberon.alpha = 1; kwkBiberon.oldAlpha = 1 
       kwkBiberon.oriX = kwkBiberon.x; kwkBiberon.oriY = kwkBiberon.y 
       kwkBiberon.name = "kwkBiberon" 
       menuGroup:insert(kwkBiberon); menuGroup.kwkBiberon = kwkBiberon 

       -- kwkErizo positioning 
       kwkErizo = display.newImageRect( imgDir.. "kwkerizo.png", 828, 523 ); 
       kwkErizo.x = 2089; kwkErizo.y = 1328; kwkErizo.alpha = 1; kwkErizo.oldAlpha = 1 
       kwkErizo.oriX = kwkErizo.x; kwkErizo.oriY = kwkErizo.y 
       kwkErizo.name = "kwkErizo" 
       menuGroup:insert(kwkErizo); menuGroup.kwkErizo = kwkErizo 

       -- kwkRosa positioning 
       kwkRosa = display.newImageRect( imgDir.. "kwkrosa.png", 180, 524 ); 
       kwkRosa.x = 768; kwkRosa.y = 1280; kwkRosa.alpha = 1; kwkRosa.oldAlpha = 1 
       kwkRosa.oriX = kwkRosa.x; kwkRosa.oriY = kwkRosa.y 
       kwkRosa.name = "kwkRosa" 
       menuGroup:insert(kwkRosa); menuGroup.kwkRosa = kwkRosa 

       -- kwkGuitarra positioning 
       kwkGuitarra = display.newImageRect( imgDir.. "kwkguitarra.png", 427, 662 ); 
       kwkGuitarra.x = 1319; kwkGuitarra.y = 1259; kwkGuitarra.alpha = 1; kwkGuitarra.oldAlpha = 1 
       kwkGuitarra.oriX = kwkGuitarra.x; kwkGuitarra.oriY = kwkGuitarra.y 
       kwkGuitarra.name = "kwkGuitarra" 
       menuGroup:insert(kwkGuitarra); menuGroup.kwkGuitarra = kwkGuitarra 

       -- Hechizo_de_conv positioning 
       Hechizo_de_conv = display.newImageRect( imgDir.. "p36_hechizo_de_conv.png", 517, 481 ); 
       Hechizo_de_conv.x = 1542; Hechizo_de_conv.y = 308; Hechizo_de_conv.alpha = 1; Hechizo_de_conv.oldAlpha = 1 
       Hechizo_de_conv.oriX = Hechizo_de_conv.x; Hechizo_de_conv.oriY = Hechizo_de_conv.y 
       Hechizo_de_conv.name = "Hechizo_de_conv" 
       menuGroup:insert(Hechizo_de_conv); menuGroup.Hechizo_de_conv = Hechizo_de_conv 

       -- kwkMaquinaAgran positioning 
       kwkMaquinaAgran = display.newImageRect( imgDir.. "kwkmaquinaagran.png", 484, 614 ); 
       kwkMaquinaAgran.x = 2236; kwkMaquinaAgran.y = 338; kwkMaquinaAgran.alpha = 1; kwkMaquinaAgran.oldAlpha = 1 
       kwkMaquinaAgran.oriX = kwkMaquinaAgran.x; kwkMaquinaAgran.oriY = kwkMaquinaAgran.y 
       kwkMaquinaAgran.name = "kwkMaquinaAgran" 
       menuGroup:insert(kwkMaquinaAgran); menuGroup.kwkMaquinaAgran = kwkMaquinaAgran 

       -- Hechizo_de_hace positioning 
       Hechizo_de_hace = display.newImageRect( imgDir.. "p36_hechizo_de_hace.png", 700, 433 ); 
       Hechizo_de_hace.x = 432; Hechizo_de_hace.y = 240; Hechizo_de_hace.alpha = 1; Hechizo_de_hace.oldAlpha = 1 
       Hechizo_de_hace.oriX = Hechizo_de_hace.x; Hechizo_de_hace.oriY = Hechizo_de_hace.y 
       Hechizo_de_hace.name = "Hechizo_de_hace" 
       menuGroup:insert(Hechizo_de_hace); menuGroup.Hechizo_de_hace = Hechizo_de_hace 

       -- Text1 positioning 
       Text1 = display.newImageRect( imgDir.. "p36_text1.png", 1707, 51 ); 
       Text1.x = 1273; Text1.y = 765; Text1.alpha = 1; Text1.oldAlpha = 1 
       Text1.oriX = Text1.x; Text1.oriY = Text1.y 
       Text1.name = "Text1" 
       menuGroup:insert(Text1); menuGroup.Text1 = Text1 

       -- Ayuda1 positioning 
       Ayuda1 = display.newImageRect( imgDir.. "p36_ayuda1.png", 1461, 109 ); 
       Ayuda1.x = 1273; Ayuda1.y = 876; Ayuda1.alpha = 1; Ayuda1.oldAlpha = 1 
       Ayuda1.oriX = Ayuda1.x; Ayuda1.oriY = Ayuda1.y 
       Ayuda1.name = "Ayuda1" 
       menuGroup:insert(Ayuda1); menuGroup.Ayuda1 = Ayuda1 

       -- TextErizo positioning 
       TextErizo = display.newImageRect( imgDir.. "p36_texterizo.png", 766, 51 ); 
       TextErizo.x = 1280; TextErizo.y = 765; TextErizo.alpha = 1; TextErizo.oldAlpha = 1 
       TextErizo.oriX = TextErizo.x; TextErizo.oriY = TextErizo.y 
       TextErizo.name = "TextErizo" 
       menuGroup:insert(TextErizo); menuGroup.TextErizo = TextErizo 

       -- TextBiberon positioning 
       TextBiberon = display.newImageRect( imgDir.. "p36_textbiberon.png", 1164, 51 ); 
       TextBiberon.x = 1274; TextBiberon.y = 764; TextBiberon.alpha = 1; TextBiberon.oldAlpha = 1 
       TextBiberon.oriX = TextBiberon.x; TextBiberon.oriY = TextBiberon.y 
       TextBiberon.name = "TextBiberon" 
       menuGroup:insert(TextBiberon); menuGroup.TextBiberon = TextBiberon 

       -- TextGuitarra positioning 
       TextGuitarra = display.newImageRect( imgDir.. "p36_textguitarra.png", 1166, 51 ); 
       TextGuitarra.x = 1279; TextGuitarra.y = 756; TextGuitarra.alpha = 1; TextGuitarra.oldAlpha = 1 
       TextGuitarra.oriX = TextGuitarra.x; TextGuitarra.oriY = TextGuitarra.y 
       TextGuitarra.name = "TextGuitarra" 
       menuGroup:insert(TextGuitarra); menuGroup.TextGuitarra = TextGuitarra 

       -- TextRosa positioning 
       TextRosa = display.newImageRect( imgDir.. "p36_textrosa.png", 834, 50 ); 
       TextRosa.x = 1281; TextRosa.y = 765; TextRosa.alpha = 1; TextRosa.oldAlpha = 1 
       TextRosa.oriX = TextRosa.x; TextRosa.oriY = TextRosa.y 
       TextRosa.name = "TextRosa" 
       menuGroup:insert(TextRosa); menuGroup.TextRosa = TextRosa 

       -- TextFallo positioning 
       TextFallo = display.newImageRect( imgDir.. "p36_textfallo.png", 1220, 51 ); 
       TextFallo.x = 1282; TextFallo.y = 765; TextFallo.alpha = 1; TextFallo.oldAlpha = 1 
       TextFallo.oriX = TextFallo.x; TextFallo.oriY = TextFallo.y 
       TextFallo.name = "TextFallo" 
       menuGroup:insert(TextFallo); menuGroup.TextFallo = TextFallo 

       -- TextBurbuja positioning 
       TextBurbuja = display.newImageRect( imgDir.. "p36_textburbuja.png", 1579, 51 ); 
       TextBurbuja.x = 1279; TextBurbuja.y = 765; TextBurbuja.alpha = 1; TextBurbuja.oldAlpha = 1 
       TextBurbuja.oriX = TextBurbuja.x; TextBurbuja.oriY = TextBurbuja.y 
       TextBurbuja.name = "TextBurbuja" 
       menuGroup:insert(TextBurbuja); menuGroup.TextBurbuja = TextBurbuja 

       -- TextTerminar positioning 
       TextTerminar = display.newImageRect( imgDir.. "p36_textterminar.png", 1004, 50 ); 
       TextTerminar.x = 1280; TextTerminar.y = 755; TextTerminar.alpha = 1; TextTerminar.oldAlpha = 1 
       TextTerminar.oriX = TextTerminar.x; TextTerminar.oriY = TextTerminar.y 
       TextTerminar.name = "TextTerminar" 
       menuGroup:insert(TextTerminar); menuGroup.TextTerminar = TextTerminar 

       -- kwkBurbuja positioning 
       kwkBurbuja = display.newImageRect( imgDir.. "kwkburbuja.png", 428, 428 ); 
       kwkBurbuja.x = 215; kwkBurbuja.y = 787; kwkBurbuja.alpha = 1; kwkBurbuja.oldAlpha = 1 
       kwkBurbuja.oriX = kwkBurbuja.x; kwkBurbuja.oriY = kwkBurbuja.y 
       kwkBurbuja.name = "kwkBurbuja" 
       menuGroup:insert(kwkBurbuja); menuGroup.kwkBurbuja = kwkBurbuja 
 
       -- Group(s) creation 

       -- (MIDDLE) External code will render here 
       --Variables
local initialTijerasx = kwkTijeras.x
local initialTijerasy = kwkTijeras.y
local initialHechizoVolarx = Hechizo_de_hace.x
local initialHechizoVolary = Hechizo_de_hace.y
local initialHechizoOrox = Hechizo_de_conv.x
local initialHechizoOroy = Hechizo_de_conv.y
local initialMaquinax = kwkMaquinaAgran.x
local initialMaquinay = kwkMaquinaAgran.y

local lastText = Text1

local addCL1 = 20
local addCL3 = 20
local addCI2 = 20
local addCI5 = 15

local alasFallado = false
local tijerasFallado = false
local oroFallado = false
local maquinaFallado = false

local alasOk = false
local tijerasOk = false
local oroOk = false
local maquinaOk = false

--Funciones
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

function switchText (textToHide, textToShow)
    transition.to( textToHide, {alpha=0, time=500, delay=0}) 
    transition.to( textToShow, {alpha=textToShow.oldAlpha, time=500, delay=0}) 
    lastText = textToShow
end

function instantSwitchText (textToHide, textToShow)
    transition.to( textToHide, {alpha=0, time=1, delay=0}) 
    transition.to( textToShow, {alpha=textToShow.oldAlpha, time=1, delay=0}) 
    lastText = textToShow
end

function fallar ()
	addCL1 = addCL1 - 5
	if (addCL1 < 0) then
		addCL1 = 0
	end
	addCI2 = addCI2 - 5
	if (addCI2 < 0) then
		addCI2 = 0
	end
end

function terminar()
	if (alasOk and tijerasOk and oroOk and maquinaOk) then
		switchText(lastText, TextTerminar)

		local currCL1 = kwkVarCheck("CL1")
		local currCL3 = kwkVarCheck("CL3")
		local currCI2 = kwkVarCheck("CI2")
		local currCI5 = kwkVarCheck("CI5")

		saveKwikVars({"CL1", currCL1 + addCL1})
		saveKwikVars({"CL3", currCL3 + addCL3})
		saveKwikVars({"CI2", currCI2 + addCI2})
		saveKwikVars({"CI5", currCI5 + addCI5})

		updateCoefs()

		saveKwikVars({"Fav02Completed", true})
		saveKwikVars({"Favor2Visitado", false})

	    local myClosure_switch = function() 
	    	local page = pag_favor2 + 2
	        dispose(); director:changeScene( "page_"..page, "moveFromRight" ) 
	    end 
	    timerStash.newTimer_980 = timer.performWithDelay(2000, myClosure_switch, 1) 
	end
end

--COSAS QUE HACER

--Ocultar cosas

if (not hasTijeras) then
	instantHide(kwkTijeras)
end

if (not hasBiberon) then
	instantHide(kwkBiberon)
end

if (not hasMaquina) then
	instantHide(kwkMaquinaAgran)
end

if (not hasRosa) then
	instantHide(kwkRosa)
end

if (not hasGuitarra) then
	instantHide(kwkGuitarra)
end

if (not hasErizo) then
	instantHide(kwkErizo)
end

local missingSomething = not hasTijeras or not hasBiberon or not hasMaquina or not hasRosa or not hasGuitarra or not hasErizo

if (missingSomething) then
	instantSwitchText(lastText, TextBurbuja)
	instantHide(Ayuda1)
else
	instantHide(kwkBurbuja)
end
 
 
       -- Actions (functions) 
       function DropTijeras(event) 
           --External code 
           if (isOn(kwkTijeras, kwkErizo) and not missingSomething) then
	tijerasOk = true
	terminar()
	audio.setVolume(1, {channel=1} ) 
	audio.play( acierto, {channel=1, loops = 0 } ) 
	hide(kwkTijeras)
	hide(kwkErizo)
	switchText(lastText, TextErizo)
	else if ((isOn(kwkTijeras, kwkBiberon) or isOn(kwkTijeras, kwkRosa) or isOn (kwkTijeras, kwkGuitarra)) and not missingSomething) then
		audio.setVolume(1, {channel=2} ) 
		audio.play( fallo, {channel=2, loops = 0 } ) 
		if (not tijerasFallado) then
			fallar()
			tijerasFallado = true
		end
		kwkTijeras.x = initialTijerasx
		kwkTijeras.y = initialTijerasy
		switchText(lastText, TextFallo)
	end
end 
       end 

       function DropHechizoAlas(event) 
           --External code 
           if (isOn(Hechizo_de_hace, kwkGuitarra) and not missingSomething) then
	alasOk = true
	terminar()
	audio.setVolume(1, {channel=1} ) 
	audio.play( acierto, {channel=1, loops = 0 } ) 
	hide(Hechizo_de_hace)
	hide(kwkGuitarra)
	switchText(lastText, TextGuitarra)
	else if ((isOn(kwkBiberon, Hechizo_de_hace) or isOn(kwkRosa, Hechizo_de_hace) or isOn (Hechizo_de_hace, kwkErizo)) and not missingSomething) then	
		audio.setVolume(1, {channel=2} ) 
		audio.play( fallo, {channel=2, loops = 0 } ) 
		if (not alasFallado) then
			fallar()
			alasFallado = true
		end
		Hechizo_de_hace.x = initialHechizoVolarx
		Hechizo_de_hace.y = initialHechizoVolary
		switchText(lastText, TextFallo)
	end
end 
       end 

       function DropMaquina(event) 
           --External code 
           if (isOn(kwkBiberon, kwkMaquinaAgran) and not missingSomething) then
	maquinaOk = true
	terminar()
	audio.setVolume(1, {channel=1} ) 
	audio.play( acierto, {channel=1, loops = 0 } ) 
	hide(kwkMaquinaAgran)
	hide(kwkBiberon)
	switchText(lastText, TextBiberon)
	else if ((isOn(kwkRosa, kwkMaquinaAgran) or isOn(kwkGuitarra, kwkMaquinaAgran) or isOn (kwkMaquinaAgran, kwkErizo)) and not missingSomething) then
		audio.setVolume(1, {channel=2} ) 
		audio.play( fallo, {channel=2, loops = 0 } ) 
		if (not maquinaFallado) then
			fallar()
			maquinaFallado = true
		end
		kwkMaquinaAgran.x = initialMaquinax
		kwkMaquinaAgran.y = initialMaquinay
		switchText(lastText, TextFallo)
	end
end 
       end 

       function DropHechizoOro(event) 
           --External code 
           if (isOn(kwkRosa, Hechizo_de_conv) and not missingSomething) then
	oroOk = true
	terminar()
	audio.setVolume(1, {channel=1} ) 
	audio.play( acierto, {channel=1, loops = 0 } ) 
	hide(Hechizo_de_conv)
	hide(kwkRosa)
	switchText(lastText, TextRosa)
	else if ((isOn(kwkBiberon, Hechizo_de_conv) or isOn(kwkGuitarra, Hechizo_de_conv) or isOn (Hechizo_de_conv, kwkErizo)) and not missingSomething) then
		audio.setVolume(1, {channel=2} ) 
		audio.play( fallo, {channel=2, loops = 0 } ) 
		if (not oroFallado) then
			fallar()
			oroFallado = true
		end
		Hechizo_de_conv.x = initialHechizoOrox
		Hechizo_de_conv.y = initialHechizoOroy
		switchText(lastText, TextFallo)
	end
end 
       end 

       function HideAll(event) 
            transitionStash.newTransition_940 = transition.to( TextErizo, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_940 = transition.to( TextBiberon, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_941 = transition.to( TextGuitarra, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_941 = transition.to( TextRosa, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_941 = transition.to( TextFallo, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_941 = transition.to( TextBurbuja, {alpha=0, time=0, delay=0}) 
            transitionStash.newTransition_942 = transition.to( TextTerminar, {alpha=0, time=0, delay=0}) 
       end 

 
      --End Actions (functions) 

 
       -- Timers 
       timerStash.timerHideAll = timer.performWithDelay( 0, HideAll, 1 ) 
 
       -- Drag objects 
       MultiTouch.activate( kwkTijeras, "move", "single"  ) 
       local function kwkTijerasDrag (event ) 
          local t = event.target 
          if event.phase == "began" then  
             local parent = t.parent; parent:insert(t); display.getCurrentStage():setFocus(t); t.isFocus = true 
          elseif event.phase == "moved" then  
            elseif event.phase == "ended" or event.phase == "cancelled" then  
               DropTijeras()  
               display.getCurrentStage():setFocus(nil); t.isFocus = false 
          end  
          return true 
       end 
       kwkTijeras:addEventListener( MultiTouch.MULTITOUCH_EVENT, kwkTijerasDrag ) 

       MultiTouch.activate( Hechizo_de_hace, "move", "single"  ) 
       local function Hechizo_deDrag (event ) 
          local t = event.target 
          if event.phase == "began" then  
             local parent = t.parent; parent:insert(t); display.getCurrentStage():setFocus(t); t.isFocus = true 
          elseif event.phase == "moved" then  
            elseif event.phase == "ended" or event.phase == "cancelled" then  
               DropHechizoAlas()  
               display.getCurrentStage():setFocus(nil); t.isFocus = false 
          end  
          return true 
       end 
       Hechizo_de_hace:addEventListener( MultiTouch.MULTITOUCH_EVENT, Hechizo_deDrag ) 

       MultiTouch.activate( Hechizo_de_conv, "move", "single"  ) 
       local function Hechizo_deDrag (event ) 
          local t = event.target 
          if event.phase == "began" then  
             local parent = t.parent; parent:insert(t); display.getCurrentStage():setFocus(t); t.isFocus = true 
          elseif event.phase == "moved" then  
            elseif event.phase == "ended" or event.phase == "cancelled" then  
               DropHechizoOro()  
               display.getCurrentStage():setFocus(nil); t.isFocus = false 
          end  
          return true 
       end 
       Hechizo_de_conv:addEventListener( MultiTouch.MULTITOUCH_EVENT, Hechizo_deDrag ) 

       MultiTouch.activate( kwkMaquinaAgran, "move", "single"  ) 
       local function kwkMaquinaDrag (event ) 
          local t = event.target 
          if event.phase == "began" then  
             local parent = t.parent; parent:insert(t); display.getCurrentStage():setFocus(t); t.isFocus = true 
          elseif event.phase == "moved" then  
            elseif event.phase == "ended" or event.phase == "cancelled" then  
               DropMaquina()  
               display.getCurrentStage():setFocus(nil); t.isFocus = false 
          end  
          return true 
       end 
       kwkMaquinaAgran:addEventListener( MultiTouch.MULTITOUCH_EVENT, kwkMaquinaDrag ) 


       -- Button event listeners 
       local function onkwkBurbujaEvent(event) 
          btnBurbuja(kwkBurbuja) 
          return true 
       end 
       kwkBurbuja:addEventListener("tap", onkwkBurbujaEvent ) 

       -- Button functions 
       function btnBurbuja(self) 
            local myClosure_switch = function() 
                dispose(); director:changeScene( "page_37", "crossfade" ) 
            end 
            timerStash.newTimer_018 = timer.performWithDelay(0, myClosure_switch, 1) 
       end 


       -- do not swipe this page 

       dispose = function(event) 
          cancelAllTimers(); cancelAllTransitions() 
          if audio.isChannelActive ( 2 ) then 
   audio.stop(2); 
 end 
 audio.dispose(fallo); fallo = nil 
          if audio.isChannelActive ( 1 ) then 
   audio.stop(1); 
 end 
 audio.dispose(acierto); acierto = nil 
          kwkTijeras:removeEventListener ( MultiTouch.MULTITOUCH_EVENT,  kwkTijerasDrag ); Gesture.deactivate(kwkTijeras) 
          Hechizo_de_hace:removeEventListener ( MultiTouch.MULTITOUCH_EVENT,  Hechizo_deDrag ); Gesture.deactivate(Hechizo_de_hace) 
          Hechizo_de_conv:removeEventListener ( MultiTouch.MULTITOUCH_EVENT,  Hechizo_deDrag ); Gesture.deactivate(Hechizo_de_conv) 
          kwkMaquinaAgran:removeEventListener ( MultiTouch.MULTITOUCH_EVENT,  kwkMaquinaDrag ); Gesture.deactivate(kwkMaquinaAgran) 
       end 

       -- (BOTTOM) External code will render here 
       instantHide (kwkInvDestacado) 


    end 
    drawScreen() 

    return menuGroup 
end 
