local reiniciado = kwkVarCheck("Reiniciado")

if (reiniciado == true or reiniciado == nil) then
	instantHide(Continuar)
	instantHide(Reiniciar)
	instantHide(btn1)
	instantHide(btn2)
else
	instantHide(Empezar)
	instantHide(btn3)
end

if (Audio) then
	instantHide(TextAudioOn)
	instantHide(AudioNo)
else
	instantHide(TextAudioOff)
	instantHide(AudioSi)
end

function quitarAudio()
	saveKwikVars({"Audio", false})	
  instantShow(TextAudioOn)
  instantHide(TextAudioOff)
  instantHide(AudioSi)
  instantShow(AudioNo)
end

function ponerAudio()
	saveKwikVars({"Audio", true})	
  instantHide(TextAudioOn)
	instantShow(TextAudioOff)
	instantShow(AudioSi)
  instantHide(AudioNo)
end

TextAudioOn:addEventListener( "tap", ponerAudio )
TextAudioOff:addEventListener( "tap", quitarAudio )