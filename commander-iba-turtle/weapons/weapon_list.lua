minigun = FindWeapon("minigun")
if minigun then
	if minigun.Upgrades == nil then
		minigun.Upgrades = {}
	end

	table.insert(minigun.Upgrades,
	{
		Enabled = true,
		SaveName = "minigun2",
		MetalCost = 125,
		EnergyCost = 800,
	})
end

minigun2 = FindWeapon("minigun2")
if minigun2 then
	minigun2.CommanderCommon = nil
end

CommanderApplyModBase = function()
	local multiplier = 0.5
	if active then
		for k, device in ipairs(Weapons) do
			device.MetalRepairCost = multiplier*(device.MetalRepairCost or 0)
			device.EnergyRepairCost = multiplier*(device.EnergyRepairCost or 0)
		end
	end
end
RegisterApplyMod(CommanderApplyModBase)