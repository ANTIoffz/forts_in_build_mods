function Merge(t1, t2) for k, v in pairs(t2) do t1[k] = v end end

Merge(Weapon,
{
	firebeam = L"Raio de fogo",
	firebeamTip2 = L"Usar: Penetra e incendeia estruturas, projéteis",

	rocketemp = L"Foguete PEM",
	rocketempTip2 = L"Usar: Desabilita armas e dispositivos inimigos",

	rocket = L"Foguete",
	rocketTip2 = L"Usar: Assalto frontal, carga explosiva média",

	cannon20mm = L"Canhão de 20 mm",
	cannon20mmTip2 = L"Usar: Enfraquece as defesas inimigas eliminando armas expostas",

	flak = L"Bateria antiaérea",
	flakTip2 = L"Usar: Defesa antiaérea que remove armas escondidas",

	shotgun = L"Escopeta",
	shotgunTip2 = L"Usar: Defesa antiaérea versátil que remove diversas armas",
})
