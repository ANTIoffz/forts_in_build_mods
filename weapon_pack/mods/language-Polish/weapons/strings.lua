function Merge(t1, t2) for k, v in pairs(t2) do t1[k] = v end end

Merge(Weapon,
{
	firebeam = L"Wiązka ognia",
	firebeamTip2 = L"Przeznaczenie: penetruje i podpala budowle, pociski",

	rocketemp = L"Rakieta EMP",
	rocketempTip2 = L"Przeznaczenie: wyłącza bronie i urządzenia wroga",

	rocket = L"Rakieta",
	rocketTip2 = L"Przeznaczenie: atak frontalny, średni ładunek",

	cannon20mm = L"Działo kal. 20 mm",
	cannon20mmTip2 = L"Przeznaczenie: osłabia obronę wroga, eliminuje odsłonięte bronie",

	flak = L"Flak",
	flakTip2 = L"Przeznaczenie: obrona przeciwlotnicza, eliminowanie ukrytych broni",

	shotgun = L"Strzelba",
	shotgunTip2 = L"Przeznaczenie: wszechstronna obrona przeciwlotnicza, eliminowanie wielu broni",
})
