function Merge(t1, t2) for k, v in pairs(t2) do t1[k] = v end end

Merge(Weapon,
{
	firebeam = L"Fascio di fuoco",
	firebeamTip2 = L"Uso: Penetra e incendia strutture, proiettili",

	rocketemp = L"Razzo IEM",
	rocketempTip2 = L"Uso: Disattiva armi e dispositivi nemici",

	rocket = L"Razzo",
	rocketTip2 = L"Uso: Assalto frontale",

	cannon20mm = L"Cannone 20 mm",
	cannon20mmTip2 = L"Uso: Indebolisce le difese nemiche, elimina le armi in vista",

	flak = L"Contraerea",
	flakTip2 = L"Uso: Difesa anti-aerea, rimuove le armi nascoste",

	shotgun = L"Mitragliatrice",
	shotgunTip2 = L"Uso: Difesa anti-aerea versatile, rimuove armi multiple",
})
