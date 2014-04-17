-- Code created by Kwik - Copyright: kwiksher.com 
-- Version: 2.7.6b 
module(..., package.seeall) 

function new() 
    local numPages = 1 
    local menuGroup = display.newGroup() 
    local dispose 
    local _W = display.contentWidth; 
    local _H = display.contentHeight; 

    local drawScreen = function() 

       local curPage = 1 
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
       local JefeMuseo_00000  

       -- (TOP) External code will render here 

       -- JefeMuseo_00000 positioning 
       local JefeMuseo_00000_options = { 
           -- created with TexturePacker (http://www.texturepacker.com)
           frames = {
             
               { x=2, y=2, width=140, height=189 }, -- JefeMuseo_00000
               { x=144, y=2, width=140, height=189 }, -- JefeMuseo_00001
               { x=286, y=2, width=140, height=189 }, -- JefeMuseo_00002
               { x=428, y=2, width=140, height=189 }, -- JefeMuseo_00003
               { x=570, y=2, width=140, height=189 }, -- JefeMuseo_00004
               { x=712, y=2, width=140, height=189 }, -- JefeMuseo_00005
               { x=854, y=2, width=140, height=189 }, -- JefeMuseo_00006
               { x=2, y=193, width=140, height=189 }, -- JefeMuseo_00007
               { x=144, y=193, width=140, height=189 }, -- JefeMuseo_00008
               { x=286, y=193, width=140, height=189 }, -- JefeMuseo_00009
               { x=428, y=193, width=140, height=189 }, -- JefeMuseo_00010
               { x=570, y=193, width=140, height=189 }, -- JefeMuseo_00011
               { x=712, y=193, width=140, height=189 }, -- JefeMuseo_00012
               { x=854, y=193, width=140, height=189 }, -- JefeMuseo_00013
               { x=2, y=384, width=140, height=189 }, -- JefeMuseo_00014
               { x=144, y=384, width=140, height=189 }, -- JefeMuseo_00015
               { x=286, y=384, width=140, height=189 }, -- JefeMuseo_00016
               { x=428, y=384, width=140, height=189 }, -- JefeMuseo_00017
               { x=570, y=384, width=140, height=189 }, -- JefeMuseo_00018
               { x=712, y=384, width=140, height=189 }, -- JefeMuseo_00019
               { x=854, y=384, width=140, height=189 }, -- JefeMuseo_00020
               { x=2, y=575, width=140, height=189 }, -- JefeMuseo_00021
               { x=144, y=575, width=140, height=189 }, -- JefeMuseo_00022
               { x=286, y=575, width=140, height=189 }, -- JefeMuseo_00023
               { x=428, y=575, width=140, height=189 }, -- JefeMuseo_00024
               { x=570, y=575, width=140, height=189 }, -- JefeMuseo_00025
               { x=712, y=575, width=140, height=189 }, -- JefeMuseo_00026
               { x=854, y=575, width=140, height=189 }, -- JefeMuseo_00027
               { x=2, y=766, width=140, height=189 }, -- JefeMuseo_00028
               { x=144, y=766, width=140, height=189 }, -- JefeMuseo_00029
               { x=286, y=766, width=140, height=189 }, -- JefeMuseo_00030
               { x=428, y=766, width=140, height=189 }, -- JefeMuseo_00031
           },
    
           sheetContentWidth = 996,
           sheetContentHeight = 957
 
       } 
       JefeMuseo_00000_sheet = graphics.newImageSheet( spriteDir.. "sprite.png", JefeMuseo_00000_options ) 
       JefeMuseo_00000_seq = { name = "default", start = 1, count = 32, time = 1000, loopCount = 0, loopDirection = "forward" }; 
       JefeMuseo_00000 = display.newSprite(JefeMuseo_00000_sheet, JefeMuseo_00000_seq ) 
       JefeMuseo_00000:play(); 
       JefeMuseo_00000.x = 1023; JefeMuseo_00000.y = 740; JefeMuseo_00000.alpha = 1; JefeMuseo_00000.oldAlpha = 1 
       JefeMuseo_00000.xScale = 5; 
       JefeMuseo_00000.yScale = 5; 
       JefeMuseo_00000.oriX = JefeMuseo_00000.x; JefeMuseo_00000.oriY = JefeMuseo_00000.y 
       JefeMuseo_00000.name = "JefeMuseo_00000" 
       menuGroup:insert(JefeMuseo_00000); menuGroup.JefeMuseo_00000 = JefeMuseo_00000 
 
       -- Group(s) creation 

       -- (MIDDLE) External code will render here 

       -- swipe this page with spacer of 120 in normal direction 
       Gesture.activate( JefeMuseo_00000, {swipeLength=120} ) 
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
       JefeMuseo_00000:addEventListener( Gesture.SWIPE_EVENT, pageSwap ) 

       dispose = function(event) 
          cancelAllTimers(); cancelAllTransitions() 
          JefeMuseo_00000:removeEventListener( Gesture.SWIPE_EVENT, pageSwap ); Gesture.deactivate(JefeMuseo_00000) 
       end 

       function cleanSprite() 
           JefeMuseo_00000_sheet = nil; JefeMuseo_00000 = nil 
 
       end 

       -- (BOTTOM) External code will render here 


    end 
    drawScreen() 

    function clean() 
       cleanSprite() 
    end 

    return menuGroup 
end 
