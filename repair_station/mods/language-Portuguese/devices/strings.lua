function Merge(t1, t2) for k, v in pairs(t2) do t1[k] = v end end

Merge(Device,
{
	repairstation = L"Centro de Manutenção",
	repairstationTip2 = L"Extingue o fogo, conserta tudo o que esteja nas proximidades e elimina o fumo.",
})
