function Merge(t1, t2) for k, v in pairs(t2) do t1[k] = v end end

Merge(Weapon,
{
	firebeam = L"Rayo ígneo",
	firebeamTip2 = L"Uso: Penetra y prende en llamas estructuras y proyectiles",

	rocketemp = L"Cohete electromagnético",
	rocketempTip2 = L"Uso: Desactivando armas y dispositivos del enemigo",

	rocket = L"Cohete",
	rocketTip2 = L"Uso: Asalto frontal, carga explosiva intermedia",

	cannon20mm = L"Cañón 20 mm",
	cannon20mmTip2 = L"Uso: Afloja la defensa del enemigo y elimina las armas expuestas",

	flak = L"Fuego antiaéreo",
	flakTip2 = L"Uso: Defensa antiaérea, elimina las armas ocultas",

	shotgun = L"Escopeta",
	shotgunTip2 = L"Uso: Defensa antiaérea versátil, elimina armas múltiples",
})
