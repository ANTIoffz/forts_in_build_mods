function Merge(t1, t2) for k, v in pairs(t2) do t1[k] = v end end

Merge(Device,
{
	repairstation = L"Estación de reparaciones",
	repairstationTip2 = L"Extingue el fuego y repara objetos cercanos, airea el humo",
})
