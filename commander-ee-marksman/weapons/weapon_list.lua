sniper = FindWeapon("sniper")
if sniper then
	local multiplier = 0.5
	sniper.BuildTimeComplete = multiplier*sniper.BuildTimeComplete
	sniper.MaxWeaponGroupSize = nil

	if not sniper.CompatibleGroupTypes then sniper.CompatibleGroupTypes = {} end
	table.insert(sniper.CompatibleGroupTypes, "sniper2")
end

sniper2 = FindWeapon("sniper2")
if sniper2 then
	sniper2.MaxWeaponGroupSize = nil

	if not sniper2.CompatibleGroupTypes then sniper2.CompatibleGroupTypes = {} end
	table.insert(sniper2.CompatibleGroupTypes, "sniper")
end
