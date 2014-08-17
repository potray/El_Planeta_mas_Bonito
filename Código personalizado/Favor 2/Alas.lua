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