function Merge(t1, t2) for k, v in pairs(t2) do t1[k] = v end end

Merge(Device,
{
	repairstation = L"Stacja naprawcza",
	repairstationTip2 = L"Gasi pożary i naprawia wszystkie pobliskie obiekty, rozprasza dym",
})
