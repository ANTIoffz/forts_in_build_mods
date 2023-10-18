
minigun = FindWeapon("minigun")
if minigun then
	local minigun2 = DeepCopy(minigun)

	minigun2.CommanderCommon = true
	minigun2.Enabled = false
	minigun2.SaveName = "minigun2"
	minigun2.FileName = path .. "/weapons/minigun2.lua"
	minigun2.BuildTimeComplete = minigun.BuildTimeComplete + 5
	minigun2.MetalCost = minigun.MetalCost + 125
	minigun2.EnergyCost = minigun.EnergyCost + 800

	if minigun2.CompatibleGroupTypes == nil then minigun2.CompatibleGroupTypes = {} end
	table.insert(minigun2.CompatibleGroupTypes, "minigun")

	InsertWeaponBehind("minigun", minigun2)

	if minigun.CompatibleGroupTypes == nil then minigun.CompatibleGroupTypes = {} end

	table.insert(minigun.CompatibleGroupTypes, "minigun2")
end
