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