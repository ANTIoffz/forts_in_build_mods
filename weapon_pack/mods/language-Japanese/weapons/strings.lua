function Merge(t1, t2) for k, v in pairs(t2) do t1[k] = v end end

Merge(Weapon,
{
	firebeam = L"火炎ビーム",
	firebeamTip2 = L"用途：構造物や武器を貫通し着火する",

	rocketemp = L"EMPロケット砲",
	rocketempTip2 = L"用途：敵の武器や装置を無効化する",

	rocket = L"ロケット砲",
	rocketTip2 = L"用途：前方攻撃、中程度の爆発力",

	cannon20mm = L"20mmキャノン砲",
	cannon20mmTip2 = L"用途：敵の防御を崩してむき出しの武器を排除する",

	flak = L"対空砲",
	flakTip2 = L"用途：対空防御、目視できない武器の破壊",

	shotgun = L"ショットガン",
	shotgunTip2 = L"用途：汎用対空防御や目視できない武器の破壊",
})
