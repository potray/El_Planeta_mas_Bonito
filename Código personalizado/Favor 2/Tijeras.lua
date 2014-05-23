if (isOn(kwkTijeras, kwkErizo)) then
	tijerasOk = true
	terminar()
	hide(kwkTijeras)
	hide(kwkErizo)
	switchText(lastText, TextErizo)
	else if (isOn(kwkTijeras, kwkBiberon) or isOn(kwkTijeras, kwkRosa) or isOn (kwkTijeras, kwkGuitarra)) then
		if (not tijerasFallado) then
			fallar()
			tijerasFallado = true
		end
		kwkTijeras.x = initialTijerasx
		kwkTijeras.y = initialTijerasy
		switchText(lastText, TextFallo)
	end
end