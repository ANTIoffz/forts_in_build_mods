function Merge(t1, t2) for k, v in pairs(t2) do t1[k] = v end end

Merge(Device,
{
	repairstation = L"維修站",
	repairstationTip2 = L"自動對周圍進行滅火和修復，清除煙霧",
})
