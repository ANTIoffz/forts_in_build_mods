function Merge(t1, t2) for k, v in pairs(t2) do t1[k] = v end end

Merge(Device,
{
	armoury = L"Armería",

	munitions = L"Planta de munición",

})
