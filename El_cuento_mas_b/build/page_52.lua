-- Code created by Kwik - Copyright: kwiksher.com 
-- Version: 2.7.6b 
module(..., package.seeall) 

function new() 
    local numPages = 53 
    local menuGroup = display.newGroup() 
    local dispose 
    local _W = display.contentWidth; 
    local _H = display.contentHeight; 

    -- Audio callings 
    local acierto =  audio.loadSound( audioDir.."acierto.mp3") 
    local fallo =  audio.loadSound( audioDir.."fallo.mp3") 


    local drawScreen = function() 

       local curPage = 52 

       Navigation.new("page", { backColor = {125, 125, 125}, anim=1, timer=1,  totPages = numPages, curPage = curPage, thumbW = 200, thumbH = 125, alpha = 0, imageDir = imgDir, dire = "bottom", audio={{ 1, "acierto"},{ 2, "fallo"},} } ) 
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

 
       -- Layer names 
       local kwkFondo6  
       local kwkHija_gafas  
       local kwkHormiga  
       local kwkMama_gafas  
       local bGrande  
       local b1  
       local b2  
       local b3  
       local b4  
       local b5  
       local b6  
       local b7  
       local b8  
       local b9  
       local b10  
       local b11  
       local b12  
       local b13  
       local b14  
       local b15  
       local b16  
       local b17  
       local b18  
       local a1  
       local a2  
       local a6  
       local a3  
       local a4  
       local a5  
       local a7  
       local a8  
       local a9  
       local a10  
       local a11  
       local a12  
       local a13  
       local a14  
       local a15  
       local a16  
       local a17  
       local a18  
       local kwkArbol  
       local kwkRect2  
       local kwkRect1  
       local kwkCLText  
       local kwkComodinText  
       local kwkCIText  
       local kwkCGText  
       local kwkDiamante  
       local kwkEsmeralda  
       local kwkMedalla  
       local kwkruby  
       local TextAyuda  
       local TextFin  

       -- (TOP) External code will render here 
       local CL1 = kwkVarCheck("CL1")
local CL2 = kwkVarCheck("CL2")
local CL3 = kwkVarCheck("CL3")
local CL5 = kwkVarCheck("CL5")

local CI2 = kwkVarCheck("CI2")
local CI3 = kwkVarCheck("CI3")
local CI4 = kwkVarCheck("CI4")
local CI5 = kwkVarCheck("CI5")

local CG1 = kwkVarCheck("CG1")
local CG2 = kwkVarCheck("CG2")
local CG8 = kwkVarCheck("CG8")

local CL = kwkVarCheck("CL")
local CI = kwkVarCheck("CI")
local CG = kwkVarCheck("CG")
local comodin = kwkVarCheck("comodin")

local favor2Started = kwkVarCheck("Favor2Visitado")
local Fav01Completed = kwkVarCheck("Fav01Completed")
local Fav02Completed = kwkVarCheck("Fav02Completed")
local Fav03Completed = kwkVarCheck("Fav03Completed")
local Fav04Completed = kwkVarCheck("Fav04Completed")
local Preg01Completed = kwkVarCheck("Preg01Completed")
local Preg02Completed = kwkVarCheck("Preg02Completed")
local Preg03Completed = kwkVarCheck("Preg03Completed")
local Preg04Completed = kwkVarCheck("Preg04Completed")
local Preg05Completed = kwkVarCheck("Preg05Completed")
local Preg06Completed = kwkVarCheck("Preg06Completed")
local Preg07Completed = kwkVarCheck("Preg07Completed")
local Preg08Completed = kwkVarCheck("Preg08Completed")
local Preg09Completed = kwkVarCheck("Preg09Completed") 
       local hasRosa = kwkVarCheck("hasRosa")
local hasTijeras = kwkVarCheck("hasTijeras")
local hasBiberon = kwkVarCheck("hasBiberon")
local hasGuitarra = kwkVarCheck("hasGuitarra")
local hasMaquina = kwkVarCheck("hasMaquina")
local hasErizo = kwkVarCheck("hasErizo")
local hasCelo = kwkVarCheck("hasCelo")
local hasCola = kwkVarCheck("hasCola") 

       -- kwkFondo6 positioning 
       kwkFondo6 = display.newImageRect( imgDir.. "kwkfondo6.png", 2559, 1600 ); 
       kwkFondo6.x = 1279; kwkFondo6.y = 800; kwkFondo6.alpha = 1; kwkFondo6.oldAlpha = 1 
       kwkFondo6.oriX = kwkFondo6.x; kwkFondo6.oriY = kwkFondo6.y 
       kwkFondo6.name = "kwkFondo6" 
       menuGroup:insert(1,kwkFondo6); menuGroup.kwkFondo6 = kwkFondo6 

       -- kwkHija_gafas positioning 
       kwkHija_gafas = display.newImageRect( imgDir.. "kwkhija_gafas.png", 268, 489 ); 
       kwkHija_gafas.x = 2077; kwkHija_gafas.y = 485; kwkHija_gafas.alpha = 1; kwkHija_gafas.oldAlpha = 1 
       kwkHija_gafas.oriX = kwkHija_gafas.x; kwkHija_gafas.oriY = kwkHija_gafas.y 
       kwkHija_gafas.name = "kwkHija_gafas" 
       menuGroup:insert(kwkHija_gafas); menuGroup.kwkHija_gafas = kwkHija_gafas 

       -- kwkHormiga positioning 
       kwkHormiga = display.newImageRect( imgDir.. "kwkhormiga.png", 169, 240 ); 
       kwkHormiga.x = 2178; kwkHormiga.y = 355; kwkHormiga.alpha = 1; kwkHormiga.oldAlpha = 1 
       kwkHormiga.oriX = kwkHormiga.x; kwkHormiga.oriY = kwkHormiga.y 
       kwkHormiga.name = "kwkHormiga" 
       menuGroup:insert(kwkHormiga); menuGroup.kwkHormiga = kwkHormiga 

       -- kwkMama_gafas positioning 
       kwkMama_gafas = display.newImageRect( imgDir.. "kwkmama_gafas.png", 310, 596 ); 
       kwkMama_gafas.x = 1847; kwkMama_gafas.y = 499; kwkMama_gafas.alpha = 1; kwkMama_gafas.oldAlpha = 1 
       kwkMama_gafas.oriX = kwkMama_gafas.x; kwkMama_gafas.oriY = kwkMama_gafas.y 
       kwkMama_gafas.name = "kwkMama_gafas" 
       menuGroup:insert(kwkMama_gafas); menuGroup.kwkMama_gafas = kwkMama_gafas 

       -- bGrande positioning 
       bGrande = display.newImageRect( imgDir.. "p52_bgrande.png", 233, 145 ); 
       bGrande.x = 624; bGrande.y = 1006; bGrande.alpha = 1; bGrande.oldAlpha = 1 
       bGrande.oriX = bGrande.x; bGrande.oriY = bGrande.y 
       bGrande.name = "bGrande" 
       menuGroup:insert(bGrande); menuGroup.bGrande = bGrande 

       -- b1 positioning 
       b1 = display.newImageRect( imgDir.. "p52_b1.png", 86, 52 ); 
       b1.x = 194; b1.y = 1503; b1.alpha = 1; b1.oldAlpha = 1 
       b1.oriX = b1.x; b1.oriY = b1.y 
       b1.name = "b1" 
       menuGroup:insert(b1); menuGroup.b1 = b1 

       -- b2 positioning 
       b2 = display.newImageRect( imgDir.. "p52_b2.png", 155, 94 ); 
       b2.x = 271; b2.y = 1078; b2.alpha = 1; b2.oldAlpha = 1 
       b2.oriX = b2.x; b2.oriY = b2.y 
       b2.name = "b2" 
       menuGroup:insert(b2); menuGroup.b2 = b2 

       -- b3 positioning 
       b3 = display.newImageRect( imgDir.. "p52_b3.png", 87, 51 ); 
       b3.x = 1894; b3.y = 1116; b3.alpha = 1; b3.oldAlpha = 1 
       b3.oriX = b3.x; b3.oriY = b3.y 
       b3.name = "b3" 
       menuGroup:insert(b3); menuGroup.b3 = b3 

       -- b4 positioning 
       b4 = display.newImageRect( imgDir.. "p52_b4.png", 85, 54 ); 
       b4.x = 2282; b4.y = 1368; b4.alpha = 1; b4.oldAlpha = 1 
       b4.oriX = b4.x; b4.oriY = b4.y 
       b4.name = "b4" 
       menuGroup:insert(b4); menuGroup.b4 = b4 

       -- b5 positioning 
       b5 = display.newImageRect( imgDir.. "p52_b5.png", 83, 55 ); 
       b5.x = 603; b5.y = 1327; b5.alpha = 1; b5.oldAlpha = 1 
       b5.oriX = b5.x; b5.oriY = b5.y 
       b5.name = "b5" 
       menuGroup:insert(b5); menuGroup.b5 = b5 

       -- b6 positioning 
       b6 = display.newImageRect( imgDir.. "p52_b6.png", 158, 88 ); 
       b6.x = 1372; b6.y = 895; b6.alpha = 1; b6.oldAlpha = 1 
       b6.oriX = b6.x; b6.oriY = b6.y 
       b6.name = "b6" 
       menuGroup:insert(b6); menuGroup.b6 = b6 

       -- b7 positioning 
       b7 = display.newImageRect( imgDir.. "p52_b7.png", 87, 48 ); 
       b7.x = 906; b7.y = 731; b7.alpha = 1; b7.oldAlpha = 1 
       b7.oriX = b7.x; b7.oriY = b7.y 
       b7.name = "b7" 
       menuGroup:insert(b7); menuGroup.b7 = b7 

       -- b8 positioning 
       b8 = display.newImageRect( imgDir.. "p52_b8.png", 87, 49 ); 
       b8.x = 2107; b8.y = 1546; b8.alpha = 1; b8.oldAlpha = 1 
       b8.oriX = b8.x; b8.oriY = b8.y 
       b8.name = "b8" 
       menuGroup:insert(b8); menuGroup.b8 = b8 

       -- b9 positioning 
       b9 = display.newImageRect( imgDir.. "p52_b9.png", 85, 54 ); 
       b9.x = 327; b9.y = 1263; b9.alpha = 1; b9.oldAlpha = 1 
       b9.oriX = b9.x; b9.oriY = b9.y 
       b9.name = "b9" 
       menuGroup:insert(b9); menuGroup.b9 = b9 

       -- b10 positioning 
       b10 = display.newImageRect( imgDir.. "p52_b10.png", 84, 53 ); 
       b10.x = 2285; b10.y = 948; b10.alpha = 1; b10.oldAlpha = 1 
       b10.oriX = b10.x; b10.oriY = b10.y 
       b10.name = "b10" 
       menuGroup:insert(b10); menuGroup.b10 = b10 

       -- b11 positioning 
       b11 = display.newImageRect( imgDir.. "p52_b11.png", 87, 49 ); 
       b11.x = 1328; b11.y = 1265; b11.alpha = 1; b11.oldAlpha = 1 
       b11.oriX = b11.x; b11.oriY = b11.y 
       b11.name = "b11" 
       menuGroup:insert(b11); menuGroup.b11 = b11 

       -- b12 positioning 
       b12 = display.newImageRect( imgDir.. "p52_b12.png", 85, 54 ); 
       b12.x = 1084; b12.y = 1378; b12.alpha = 1; b12.oldAlpha = 1 
       b12.oriX = b12.x; b12.oriY = b12.y 
       b12.name = "b12" 
       menuGroup:insert(b12); menuGroup.b12 = b12 

       -- b13 positioning 
       b13 = display.newImageRect( imgDir.. "p52_b13.png", 85, 53 ); 
       b13.x = 1551; b13.y = 1063; b13.alpha = 1; b13.oldAlpha = 1 
       b13.oriX = b13.x; b13.oriY = b13.y 
       b13.name = "b13" 
       menuGroup:insert(b13); menuGroup.b13 = b13 

       -- b14 positioning 
       b14 = display.newImageRect( imgDir.. "p52_b14.png", 154, 97 ); 
       b14.x = 1913; b14.y = 1357; b14.alpha = 1; b14.oldAlpha = 1 
       b14.oriX = b14.x; b14.oriY = b14.y 
       b14.name = "b14" 
       menuGroup:insert(b14); menuGroup.b14 = b14 

       -- b15 positioning 
       b15 = display.newImageRect( imgDir.. "p52_b15.png", 154, 97 ); 
       b15.x = 1052; b15.y = 1069; b15.alpha = 1; b15.oldAlpha = 1 
       b15.oriX = b15.x; b15.oriY = b15.y 
       b15.name = "b15" 
       menuGroup:insert(b15); menuGroup.b15 = b15 

       -- b16 positioning 
       b16 = display.newImageRect( imgDir.. "p52_b16.png", 154, 97 ); 
       b16.x = 621; b16.y = 1504; b16.alpha = 1; b16.oldAlpha = 1 
       b16.oriX = b16.x; b16.oriY = b16.y 
       b16.name = "b16" 
       menuGroup:insert(b16); menuGroup.b16 = b16 

       -- b17 positioning 
       b17 = display.newImageRect( imgDir.. "p52_b17.png", 154, 96 ); 
       b17.x = 1928; b17.y = 853; b17.alpha = 1; b17.oldAlpha = 1 
       b17.oriX = b17.x; b17.oriY = b17.y 
       b17.name = "b17" 
       menuGroup:insert(b17); menuGroup.b17 = b17 

       -- b18 positioning 
       b18 = display.newImageRect( imgDir.. "p52_b18.png", 154, 97 ); 
       b18.x = 1489; b18.y = 1394; b18.alpha = 1; b18.oldAlpha = 1 
       b18.oriX = b18.x; b18.oriY = b18.y 
       b18.name = "b18" 
       menuGroup:insert(b18); menuGroup.b18 = b18 

       -- a1 positioning 
       a1 = display.newImageRect( imgDir.. "p52_a1.png", 90, 141 ); 
       a1.x = 226; a1.y = 1435; a1.alpha = 1; a1.oldAlpha = 1 
       a1.oriX = a1.x; a1.oriY = a1.y 
       a1.name = "a1" 
       menuGroup:insert(a1); menuGroup.a1 = a1 

       -- a2 positioning 
       a2 = display.newImageRect( imgDir.. "p52_a2.png", 210, 331 ); 
       a2.x = 361; a2.y = 905; a2.alpha = 1; a2.oldAlpha = 1 
       a2.oriX = a2.x; a2.oriY = a2.y 
       a2.name = "a2" 
       menuGroup:insert(a2); menuGroup.a2 = a2 

       -- a6 positioning 
       a6 = display.newImageRect( imgDir.. "p52_a6.png", 188, 336 ); 
       a6.x = 1405; a6.y = 710; a6.alpha = 1; a6.oldAlpha = 1 
       a6.oriX = a6.x; a6.oriY = a6.y 
       a6.name = "a6" 
       menuGroup:insert(a6); menuGroup.a6 = a6 

       -- a3 positioning 
       a3 = display.newImageRect( imgDir.. "p52_a3.png", 90, 141 ); 
       a3.x = 1926; a3.y = 1051; a3.alpha = 1; a3.oldAlpha = 1 
       a3.oriX = a3.x; a3.oriY = a3.y 
       a3.name = "a3" 
       menuGroup:insert(a3); menuGroup.a3 = a3 

       -- a4 positioning 
       a4 = display.newImageRect( imgDir.. "p52_a4.png", 92, 154 ); 
       a4.x = 2260; a4.y = 1293; a4.alpha = 1; a4.oldAlpha = 1 
       a4.oriX = a4.x; a4.oriY = a4.y 
       a4.name = "a4" 
       menuGroup:insert(a4); menuGroup.a4 = a4 

       -- a5 positioning 
       a5 = display.newImageRect( imgDir.. "p52_a5.png", 90, 141 ); 
       a5.x = 639; a5.y = 1257; a5.alpha = 1; a5.oldAlpha = 1 
       a5.oriX = a5.x; a5.oriY = a5.y 
       a5.name = "a5" 
       menuGroup:insert(a5); menuGroup.a5 = a5 

       -- a7 positioning 
       a7 = display.newImageRect( imgDir.. "p52_a7.png", 80, 143 ); 
       a7.x = 918; a7.y = 656; a7.alpha = 1; a7.oldAlpha = 1 
       a7.oriX = a7.x; a7.oriY = a7.y 
       a7.name = "a7" 
       menuGroup:insert(a7); menuGroup.a7 = a7 

       -- a8 positioning 
       a8 = display.newImageRect( imgDir.. "p52_a8.png", 79, 143 ); 
       a8.x = 2122; a8.y = 1471; a8.alpha = 1; a8.oldAlpha = 1 
       a8.oriX = a8.x; a8.oriY = a8.y 
       a8.name = "a8" 
       menuGroup:insert(a8); menuGroup.a8 = a8 

       -- a9 positioning 
       a9 = display.newImageRect( imgDir.. "p52_a9.png", 91, 154 ); 
       a9.x = 295; a9.y = 1187; a9.alpha = 1; a9.oldAlpha = 1 
       a9.oriX = a9.x; a9.oriY = a9.y 
       a9.name = "a9" 
       menuGroup:insert(a9); menuGroup.a9 = a9 

       -- a10 positioning 
       a10 = display.newImageRect( imgDir.. "p52_a10.png", 91, 154 ); 
       a10.x = 2257; a10.y = 869; a10.alpha = 1; a10.oldAlpha = 1 
       a10.oriX = a10.x; a10.oriY = a10.y 
       a10.name = "a10" 
       menuGroup:insert(a10); menuGroup.a10 = a10 

       -- a11 positioning 
       a11 = display.newImageRect( imgDir.. "p52_a11.png", 80, 143 ); 
       a11.x = 1336; a11.y = 1195; a11.alpha = 1; a11.oldAlpha = 1 
       a11.oriX = a11.x; a11.oriY = a11.y 
       a11.name = "a11" 
       menuGroup:insert(a11); menuGroup.a11 = a11 

       -- a12 positioning 
       a12 = display.newImageRect( imgDir.. "p52_a12.png", 91, 153 ); 
       a12.x = 1059; a12.y = 1301; a12.alpha = 1; a12.oldAlpha = 1 
       a12.oriX = a12.x; a12.oriY = a12.y 
       a12.name = "a12" 
       menuGroup:insert(a12); menuGroup.a12 = a12 

       -- a13 positioning 
       a13 = display.newImageRect( imgDir.. "p52_a13.png", 92, 154 ); 
       a13.x = 1520; a13.y = 984; a13.alpha = 1; a13.oldAlpha = 1 
       a13.oriX = a13.x; a13.oriY = a13.y 
       a13.name = "a13" 
       menuGroup:insert(a13); menuGroup.a13 = a13 

       -- a14 positioning 
       a14 = display.newImageRect( imgDir.. "p52_a14.png", 209, 331 ); 
       a14.x = 2011; a14.y = 1182; a14.alpha = 1; a14.oldAlpha = 1 
       a14.oriX = a14.x; a14.oriY = a14.y 
       a14.name = "a14" 
       menuGroup:insert(a14); menuGroup.a14 = a14 

       -- a15 positioning 
       a15 = display.newImageRect( imgDir.. "p52_a15.png", 209, 331 ); 
       a15.x = 1149; a15.y = 905; a15.alpha = 1; a15.oldAlpha = 1 
       a15.oriX = a15.x; a15.oriY = a15.y 
       a15.name = "a15" 
       menuGroup:insert(a15); menuGroup.a15 = a15 

       -- a16 positioning 
       a16 = display.newImageRect( imgDir.. "p52_a16.png", 209, 332 ); 
       a16.x = 709; a16.y = 1330; a16.alpha = 1; a16.oldAlpha = 1 
       a16.oriX = a16.x; a16.oriY = a16.y 
       a16.name = "a16" 
       menuGroup:insert(a16); menuGroup.a16 = a16 

       -- a17 positioning 
       a17 = display.newImageRect( imgDir.. "p52_a17.png", 234, 354 ); 
       a17.x = 1843; a17.y = 675; a17.alpha = 1; a17.oldAlpha = 1 
       a17.oriX = a17.x; a17.oriY = a17.y 
       a17.name = "a17" 
       menuGroup:insert(a17); menuGroup.a17 = a17 

       -- a18 positioning 
       a18 = display.newImageRect( imgDir.. "p52_a18.png", 233, 354 ); 
       a18.x = 1392; a18.y = 1206; a18.alpha = 1; a18.oldAlpha = 1 
       a18.oriX = a18.x; a18.oriY = a18.y 
       a18.name = "a18" 
       menuGroup:insert(a18); menuGroup.a18 = a18 

       -- kwkArbol positioning 
       kwkArbol = display.newImageRect( imgDir.. "kwkarbol.png", 1219, 1140 ); 
       kwkArbol.x = 599; kwkArbol.y = 441; kwkArbol.alpha = 1; kwkArbol.oldAlpha = 1 
       kwkArbol.oriX = kwkArbol.x; kwkArbol.oriY = kwkArbol.y 
       kwkArbol.name = "kwkArbol" 
       menuGroup:insert(kwkArbol); menuGroup.kwkArbol = kwkArbol 

       -- kwkRect2 positioning 
       kwkRect2 = display.newImageRect( imgDir.. "kwkrect2.png", 523, 264 ); 
       kwkRect2.x = 2303; kwkRect2.y = 127; kwkRect2.alpha = 0.74901960784314; kwkRect2.oldAlpha = 0.74901960784314 
       kwkRect2.oriX = kwkRect2.x; kwkRect2.oriY = kwkRect2.y 
       kwkRect2.name = "kwkRect2" 
       menuGroup:insert(kwkRect2); menuGroup.kwkRect2 = kwkRect2 

       -- kwkRect1 positioning 
       kwkRect1 = display.newImageRect( imgDir.. "kwkrect1.png", 522, 265 ); 
       kwkRect1.x = 256; kwkRect1.y = 128; kwkRect1.alpha = 0.74901960784314; kwkRect1.oldAlpha = 0.74901960784314 
       kwkRect1.oriX = kwkRect1.x; kwkRect1.oriY = kwkRect1.y 
       kwkRect1.name = "kwkRect1" 
       menuGroup:insert(kwkRect1); menuGroup.kwkRect1 = kwkRect1 

       -- kwkCLText positioning 
       kwkCLText = display.newText( CL, 2185, 97, native.systemFont, 48 ) 
       kwkCLText:setTextColor (0, 0, 0) 
       kwkCLText.oriX = kwkCLText.x; kwkCLText.oriY = kwkCLText.y 
       kwkCLText.alpha = 1; kwkCLText.oldAlpha = 1 
       menuGroup:insert(kwkCLText); menuGroup.kwkCLText = kwkCLText 

       -- kwkComodinText positioning 
       kwkComodinText = display.newText( comodin, 2473, 97, native.systemFont, 48 ) 
       kwkComodinText:setTextColor (0, 0, 0) 
       kwkComodinText.oriX = kwkComodinText.x; kwkComodinText.oriY = kwkComodinText.y 
       kwkComodinText.alpha = 1; kwkComodinText.oldAlpha = 1 
       menuGroup:insert(kwkComodinText); menuGroup.kwkComodinText = kwkComodinText 

       -- kwkCIText positioning 
       kwkCIText = display.newText( CI, 425, 99, native.systemFont, 48 ) 
       kwkCIText:setTextColor (0, 0, 0) 
       kwkCIText.oriX = kwkCIText.x; kwkCIText.oriY = kwkCIText.y 
       kwkCIText.alpha = 1; kwkCIText.oldAlpha = 1 
       menuGroup:insert(kwkCIText); menuGroup.kwkCIText = kwkCIText 

       -- kwkCGText positioning 
       kwkCGText = display.newText( CG, 169, 103, native.systemFont, 48 ) 
       kwkCGText:setTextColor (0, 0, 0) 
       kwkCGText.oriX = kwkCGText.x; kwkCGText.oriY = kwkCGText.y 
       kwkCGText.alpha = 1; kwkCGText.oldAlpha = 1 
       menuGroup:insert(kwkCGText); menuGroup.kwkCGText = kwkCGText 

       -- kwkDiamante positioning 
       kwkDiamante = display.newImageRect( imgDir.. "kwkdiamante.png", 154, 105 ); 
       kwkDiamante.x = 77; kwkDiamante.y = 125; kwkDiamante.alpha = 1; kwkDiamante.oldAlpha = 1 
       kwkDiamante.oriX = kwkDiamante.x; kwkDiamante.oriY = kwkDiamante.y 
       kwkDiamante.name = "kwkDiamante" 
       menuGroup:insert(kwkDiamante); menuGroup.kwkDiamante = kwkDiamante 

       -- kwkEsmeralda positioning 
       kwkEsmeralda = display.newImageRect( imgDir.. "kwkesmeralda.png", 109, 167 ); 
       kwkEsmeralda.x = 2102; kwkEsmeralda.y = 114; kwkEsmeralda.alpha = 1; kwkEsmeralda.oldAlpha = 1 
       kwkEsmeralda.oriX = kwkEsmeralda.x; kwkEsmeralda.oriY = kwkEsmeralda.y 
       kwkEsmeralda.name = "kwkEsmeralda" 
       menuGroup:insert(kwkEsmeralda); menuGroup.kwkEsmeralda = kwkEsmeralda 

       -- kwkMedalla positioning 
       kwkMedalla = display.newImageRect( imgDir.. "kwkmedalla.png", 176, 199 ); 
       kwkMedalla.x = 2392; kwkMedalla.y = 113; kwkMedalla.alpha = 1; kwkMedalla.oldAlpha = 1 
       kwkMedalla.oriX = kwkMedalla.x; kwkMedalla.oriY = kwkMedalla.y 
       kwkMedalla.name = "kwkMedalla" 
       menuGroup:insert(kwkMedalla); menuGroup.kwkMedalla = kwkMedalla 

       -- kwkruby positioning 
       kwkruby = display.newImageRect( imgDir.. "kwkruby.png", 224, 220 ); 
       kwkruby.x = 332; kwkruby.y = 128; kwkruby.alpha = 1; kwkruby.oldAlpha = 1 
       kwkruby.oriX = kwkruby.x; kwkruby.oriY = kwkruby.y 
       kwkruby.name = "kwkruby" 
       menuGroup:insert(kwkruby); menuGroup.kwkruby = kwkruby 

       -- TextAyuda positioning 
       TextAyuda = display.newImageRect( imgDir.. "p52_textayuda.png", 811, 51 ); 
       TextAyuda.x = 1282; TextAyuda.y = 230; TextAyuda.alpha = 1; TextAyuda.oldAlpha = 1 
       TextAyuda.oriX = TextAyuda.x; TextAyuda.oriY = TextAyuda.y 
       TextAyuda.name = "TextAyuda" 
       menuGroup:insert(TextAyuda); menuGroup.TextAyuda = TextAyuda 

       -- TextFin positioning 
       TextFin = display.newImageRect( imgDir.. "p52_textfin.png", 660, 109 ); 
       TextFin.x = 1490; TextFin.y = 113; TextFin.alpha = 1; TextFin.oldAlpha = 1 
       TextFin.oriX = TextFin.x; TextFin.oriY = TextFin.y 
       TextFin.name = "TextFin" 
       menuGroup:insert(TextFin); menuGroup.TextFin = TextFin 
 
       -- Group(s) creation 

       -- (MIDDLE) External code will render here 
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

       -- do not swipe this page 

       dispose = function(event) 
          cancelAllTimers(); cancelAllTransitions() 
          if audio.isChannelActive ( 1 ) then 
   audio.stop(1); 
 end 
 audio.dispose(acierto); acierto = nil 
          if audio.isChannelActive ( 2 ) then 
   audio.stop(2); 
 end 
 audio.dispose(fallo); fallo = nil 
       end 

       -- (BOTTOM) External code will render here 


    end 
    drawScreen() 

    return menuGroup 
end 
