function Merge(t1, t2) for k, v in pairs(t2) do t1[k] = v end end

Merge(Device,
{
	repairstation = L"Onarım İstasyonu",
	repairstationTip2 = L"Yangın söndürür ve civardaki her şeyi tamir eder, dumanı dağıtır",
})
