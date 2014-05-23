if (isOn(kwkRosa, Hechizo_de_conv)) then
	oroOk = true
	terminar()
	hide(Hechizo_de_conv)
	hide(kwkRosa)
	switchText(lastText, TextRosa)
	else if (isOn(kwkBiberon, Hechizo_de_conv) or isOn(kwkGuitarra, Hechizo_de_conv) or isOn (Hechizo_de_conv, kwkErizo)) then
		if (not oroFallado) then
			fallar()
			oroFallado = true
		end
		Hechizo_de_conv.x = initialHechizoOrox
		Hechizo_de_conv.y = initialHechizoOroy
		switchText(lastText, TextFallo)
	end
end