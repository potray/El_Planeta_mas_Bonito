--Mostrar evaluación de CL
if (CL < 75) then
	instantHide(CLRegu)
	instantHide(CLBien)
elseif(CL >= 75 and CL <= 130) then
	instantHide(CLMal)
	instantHide(CLBien)
else
	instantHide(CLMal)
	instantHide(CLRegu)
end

--Mostrar evaluación de CI
if (CI < 50) then
	instantHide(CIRegu)
	instantHide(CIBien)
elseif(CI >= 50 and CI <= 100) then
	instantHide(CIMal)
	instantHide(CIBien)
else
	instantHide(CIMal)
	instantHide(CIRegu)
end

--Mostrar evaluación de CG
if (CG < 20) then
	instantHide(CGRegu)
	instantHide(CGBien)
elseif(CG >= 20 and CG <= 40) then
	instantHide(CGMal)
	instantHide(CGBien)
else
	instantHide(CGMal)
	instantHide(CGRegu)
end