function Merge(t1, t2) for k, v in pairs(t2) do t1[k] = v end end

Merge(Weapon,
{
	firebeam = L"火焰束",
	firebeamTip2 = L"用途：滲透並點燃結構和彈射物",

	rocketemp = L"電磁脈衝火箭炮",
	rocketempTip2 = L"用途：命中處的武器和裝置會暫時失效",

	rocket = L"火箭炮",
	rocketTip2 = L"用途：正面攻擊，中等爆炸力",

	cannon20mm = L"20毫米口徑炮",
	cannon20mmTip2 = L"用途：軟化敵人防禦，清除暴露在外的武器",

	flak = L"高射砲",
	flakTip2 = L"用途：防空、清理隱藏在結構中的武器",

	shotgun = L"霰彈槍",
	shotgunTip2 = L"用途：多功能防空，可針對多種武器",
})
