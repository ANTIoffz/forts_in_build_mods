function Merge(t1, t2) for k, v in pairs(t2) do t1[k] = v end end

Merge(Device,
{
	repairstation = L"Ремонтная станция",
	repairstationTip2 = L"Тушит огонь и ремонтирует все повреждения поблизости, расчищает дым",
})
