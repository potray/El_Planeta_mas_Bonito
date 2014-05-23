if (isOn(Hechizo_de_hace, kwkGuitarra)) then
	alasOk = true
	terminar()
	hide(Hechizo_de_hace)
	hide(kwkGuitarra)
	switchText(lastText, TextGuitarra)
	else if (isOn(kwkBiberon, Hechizo_de_hace) or isOn(kwkRosa, Hechizo_de_hace) or isOn (Hechizo_de_hace, kwkErizo)) then	
		if (not alasFallado) then
			fallar()
			alasFallado = true
		end
		Hechizo_de_hace.x = initialHechizoVolarx
		Hechizo_de_hace.y = initialHechizoVolary
		switchText(lastText, TextFallo)
	end
end