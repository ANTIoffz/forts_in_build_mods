function Merge(t1, t2) for k, v in pairs(t2) do t1[k] = v end end

Merge(Device,
{
	repairstation = L"수리 스테이션",
	repairstationTip2 = L"불을 끄고 주변에 있는 것을 수리하며, 연기를 제거합니다",
})
