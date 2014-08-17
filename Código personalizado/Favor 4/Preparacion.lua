--Ocultar las cuerdas

instantHide(h1)
instantHide(h2)
instantHide(h3)
instantHide(v1)
instantHide(v2)
instantHide(v3)

-- Setting Canvas 
local reloadCanvas = 0 
canvas_h1 = display.newRect(0, 0, Cuerda_H1.width, Cuerda_H1.height) 
canvas_h1:setFillColor(255,255,255) 
canvas_h1.x = Cuerda_H1.x; canvas_h1.y = Cuerda_H1.xy canvas_h1.alpha = 0.01; 
cR, cG, cB = 196, 128, 2 
brushSize = 30; brushAlpha = 1 
canvas_h1.name = "canvas_h1" 
menuGroup:insert(canvas_h1) 
menuGroup.canvas_h1 = canvas_h1 


-- Canvas code 
local function touched( event ) 
  if event.phase == "moved" then 
     local painter = display.newCircle (event.x, event.y, brushSize, 100) 
     painter:setFillColor(cR, cG, cB); painter.alpha = brushAlpha 
     menuGroup:insert(painter); menuGroup:remove(Cuerda_H1); menuGroup:insert(Cuerda_H1); menuGroup.Cuerda_H1 = Cuerda_H1 
  elseif event.phase =="ended" then 
     menuGroup:remove(Cuerda_H1); menuGroup:insert(Cuerda_H1); menuGroup.Cuerda_H1 = Cuerda_H1 
  end 
end 
canvas_h1:addEventListener("touch", touched) 