local reiniciado = kwkVarCheck("Reiniciado")

if (reiniciado == true or reiniciado == nil) then
	instantHide(Continuar)
else
	instantHide(Empezar)
end