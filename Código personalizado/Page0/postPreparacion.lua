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