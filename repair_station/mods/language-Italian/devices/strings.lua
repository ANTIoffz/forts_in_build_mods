function Merge(t1, t2) for k, v in pairs(t2) do t1[k] = v end end

Merge(Device,
{
	repairstation = L"Stazione Riparazioni",
	repairstationTip2 = L"Spegne incendi e ripara tutto ciò che c’è nelle vicinanze, libera dal fumo",
})
