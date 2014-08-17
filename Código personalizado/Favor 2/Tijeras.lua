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