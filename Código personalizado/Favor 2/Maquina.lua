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