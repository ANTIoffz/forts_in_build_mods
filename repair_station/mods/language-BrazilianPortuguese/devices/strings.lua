function Merge(t1, t2) for k, v in pairs(t2) do t1[k] = v end end

Merge(Device,
{
	repairstation = L"Estação de Reparos",
	repairstationTip2 = L"Apaga incêndios, conserta qualquer coisa que estiver perto e dissipa fumaça.",
})
