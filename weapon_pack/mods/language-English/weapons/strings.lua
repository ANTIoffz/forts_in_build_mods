function Merge(t1, t2) for k, v in pairs(t2) do t1[k] = v end end

Merge(Weapon,
{
	firebeam = L"Firebeam",
	firebeamTip2 = L"Use: Penetrates and ignites structure, projectiles",

	rocketemp = L"EMP Rocket",
	rocketempTip2 = L"Use: Disabling enemy weapons and devices",

	rocket = L"Rocket",
	rocketTip2 = L"Use: Frontal assault, medium payload",

	cannon20mm = L"20mm Cannon",
	cannon20mmTip2 = L"Use: Softening enemy defenses, eliminating exposed weapons",

	flak = L"Flak",
	flakTip2 = L"Use: Anti-air defence, removing hidden weapons",

	shotgun = L"Shotgun",
	shotgunTip2 = L"Use: Versatile anti-air defence, removing multiple weapons",
})
