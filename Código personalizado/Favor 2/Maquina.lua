if (isOn(kwkBiberon, kwkMaquinaAgran)) then
	maquinaOk = true
	terminar()
	hide(kwkMaquinaAgran)
	hide(kwkBiberon)
	switchText(lastText, TextBiberon)
	else if (isOn(kwkRosa, kwkMaquinaAgran) or isOn(kwkGuitarra, kwkMaquinaAgran) or isOn (kwkMaquinaAgran, kwkErizo)) then
		if (not maquinaFallado) then
			fallar()
			maquinaFallado = true
		end
		kwkMaquinaAgran.x = initialMaquinax
		kwkMaquinaAgran.y = initialMaquinay
		switchText(lastText, TextFallo)
	end
end