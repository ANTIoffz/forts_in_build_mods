function Merge(t1, t2) for k, v in pairs(t2) do t1[k] = v end end

Merge(Device,
{
	repairstation = L"Javítóállomás",
	repairstationTip2 = L"Eloltja a tüzeket és mindent megjavít a közelében, eltünteti a füstöt",
})
