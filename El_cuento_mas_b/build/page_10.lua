-- Code created by Kwik - Copyright: kwiksher.com 
-- Version: 2.7.6b 
module(..., package.seeall) 

function new() 
    local numPages = 10 
    local menuGroup = display.newGroup() 
    local dispose 
    local _W = display.contentWidth; 
    local _H = display.contentHeight; 

    local drawScreen = function() 

       local curPage = 10 
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
       local botonRosa

       -- Action names 
       local hideRosa 

       -- Layer names 
       local Fondo  
       local Text  
       local Hija_casa_sorpr  
       local Rosa  
       local Jazmin1  
       local Jazmin2  
       local Bebe_sorprendid  
       local Mama_sorprendid  

       -- Added variables before layers render 
       local hasRosa = false --  

       -- (TOP) External code will render here 

       -- Fondo positioning 
       Fondo = display.newImageRect( imgDir.. "p10_fondo.png", 2559, 1600 ); 
       Fondo.x = 1279; Fondo.y = 800; Fondo.alpha = 1; Fondo.oldAlpha = 1 
       Fondo.oriX = Fondo.x; Fondo.oriY = Fondo.y 
       Fondo.name = "Fondo" 
       menuGroup:insert(1,Fondo); menuGroup.Fondo = Fondo 

       -- Text positioning 
       Text = display.newImageRect( imgDir.. "p10_text.png", 1747, 39 ); 
       Text.x = 1348; Text.y = 105; Text.alpha = 1; Text.oldAlpha = 1 
       Text.oriX = Text.x; Text.oriY = Text.y 
       Text.name = "Text" 
       menuGroup:insert(Text); menuGroup.Text = Text 

       -- Hija_casa_sorpr positioning 
       Hija_casa_sorpr = display.newImageRect( imgDir.. "p10_hija_casa_sorpr.png", 442, 795 ); 
       Hija_casa_sorpr.x = 930; Hija_casa_sorpr.y = 1059; Hija_casa_sorpr.alpha = 1; Hija_casa_sorpr.oldAlpha = 1 
       Hija_casa_sorpr.oriX = Hija_casa_sorpr.x; Hija_casa_sorpr.oriY = Hija_casa_sorpr.y 
       Hija_casa_sorpr.name = "Hija_casa_sorpr" 
       menuGroup:insert(Hija_casa_sorpr); menuGroup.Hija_casa_sorpr = Hija_casa_sorpr 

       -- Rosa positioning 
       Rosa = display.newImageRect( imgDir.. "p10_rosa.png", 172, 500 ); 
       Rosa.x = 2332; Rosa.y = 1116; Rosa.alpha = 1; Rosa.oldAlpha = 1 
       Rosa.oriX = Rosa.x; Rosa.oriY = Rosa.y 
       Rosa.name = "Rosa" 
       menuGroup:insert(Rosa); menuGroup.Rosa = Rosa 

       -- Jazmin1 positioning 
       Jazmin1 = display.newImageRect( imgDir.. "p10_jazmin1.png", 395, 152 ); 
       Jazmin1.x = 283; Jazmin1.y = 1465; Jazmin1.alpha = 1; Jazmin1.oldAlpha = 1 
       Jazmin1.oriX = Jazmin1.x; Jazmin1.oriY = Jazmin1.y 
       Jazmin1.name = "Jazmin1" 
       menuGroup:insert(Jazmin1); menuGroup.Jazmin1 = Jazmin1 

       -- Jazmin2 positioning 
       Jazmin2 = display.newImageRect( imgDir.. "p10_jazmin2.png", 433, 215 ); 
       Jazmin2.x = 2162; Jazmin2.y = 1349; Jazmin2.alpha = 1; Jazmin2.oldAlpha = 1 
       Jazmin2.oriX = Jazmin2.x; Jazmin2.oriY = Jazmin2.y 
       Jazmin2.name = "Jazmin2" 
       menuGroup:insert(Jazmin2); menuGroup.Jazmin2 = Jazmin2 

       -- Bebe_sorprendid positioning 
       Bebe_sorprendid = display.newImageRect( imgDir.. "p10_bebe_sorprendid.png", 375, 561 ); 
       Bebe_sorprendid.x = 1287; Bebe_sorprendid.y = 1146; Bebe_sorprendid.alpha = 1; Bebe_sorprendid.oldAlpha = 1 
       Bebe_sorprendid.oriX = Bebe_sorprendid.x; Bebe_sorprendid.oriY = Bebe_sorprendid.y 
       Bebe_sorprendid.name = "Bebe_sorprendid" 
       menuGroup:insert(Bebe_sorprendid); menuGroup.Bebe_sorprendid = Bebe_sorprendid 

       -- Mama_sorprendid positioning 
       Mama_sorprendid = display.newImageRect( imgDir.. "p10_mama_sorprendid.png", 505, 967 ); 
       Mama_sorprendid.x = 1684; Mama_sorprendid.y = 1084; Mama_sorprendid.alpha = 1; Mama_sorprendid.oldAlpha = 1 
       Mama_sorprendid.oriX = Mama_sorprendid.x; Mama_sorprendid.oriY = Mama_sorprendid.y 
       Mama_sorprendid.name = "Mama_sorprendid" 
       menuGroup:insert(Mama_sorprendid); menuGroup.Mama_sorprendid = Mama_sorprendid 
 
       -- Group(s) creation 

       -- (MIDDLE) External code will render here 
 
       -- Actions (functions) 
       function hideRosa(event) 
         if (hasRosa == true) then 
            transitionStash.newTransition_456 = transition.to( Rosa, {alpha=0, time=0, delay=0}) 
         end 
       end 

 
      --End Actions (functions) 

 
       -- Timers 
       timerStash.timerRosa = timer.performWithDelay( 0, hideRosa, 1 ) 

       -- Button event listeners 
       local function onRosaEvent(event) 
          botonRosa(Rosa) 
          return true 
       end 
       Rosa:addEventListener("tap", onRosaEvent ) 

       -- Button functions 
       function botonRosa(self) 
           hasRosa = true
          saveKwikVars({"hasRosa",true}) 
       end 


       -- swipe this page with spacer of 120 in normal direction 
       Gesture.activate( Fondo, {swipeLength=120} ) 
       local function pageSwap(event ) 
         if event.phase == "ended" and event.direction ~= nil then  
            local wPage = curPage  
            local direction  
            if event.direction == "left" and kBidi == false then  
               wPage = curPage + 1  
               if wPage > numPages then wPage = curPage end  
               direction = "moveFromRight"  
            elseif event.direction == "left" and kBidi == true then  
               wPage = curPage - 1  
               if wPage < tonumber(initPage) then wPage = initPage end  
               direction = "moveFromLeft"  
            elseif event.direction == "right" and kBidi == true then  
               wPage = curPage + 1  
               if wPage > numPages then wPage = curPage end  
               direction = "moveFromRight"  
            elseif event.direction == "right" and kBidi == false then  
               wPage = curPage - 1  
               if wPage < tonumber(initPage) then wPage = initPage end  
               direction = "moveFromLeft"  
            end  
            if tonumber(wPage) ~= tonumber(curPage) then dispose(); 
               dispose(); director:changeScene("page_"..wPage, direction) 
            end 
         end  
       end 
       Fondo:addEventListener( Gesture.SWIPE_EVENT, pageSwap ) 

       dispose = function(event) 
          cancelAllTimers(); cancelAllTransitions() 
          saveKwikVars({"hasBiberon",hasBiberon}) 
          saveKwikVars({"hasTijeras",hasTijeras}) 
          Fondo:removeEventListener( Gesture.SWIPE_EVENT, pageSwap ); Gesture.deactivate(Fondo) 
       end 

       -- (BOTTOM) External code will render here 


    end 
    drawScreen() 

    return menuGroup 
end 
