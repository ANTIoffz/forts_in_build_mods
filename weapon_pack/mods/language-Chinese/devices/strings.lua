function Merge(t1, t2) for k, v in pairs(t2) do t1[k] = v end end

Merge(Device,
{
	armoury = L"军械库",

	munitions = L"弹药厂",

})
