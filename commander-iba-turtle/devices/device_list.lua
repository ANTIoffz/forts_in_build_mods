repairstation = FindDevice("repairstation")
if repairstation then
	local multiplier = 0.75
	repairstation.MetalCost = multiplier*repairstation.MetalCost
	repairstation.EnergyCost = multiplier*repairstation.EnergyCost
end

CommanderApplyModBase = function()
	local multiplier = 0.5
	if active then
		for k, device in ipairs(Devices) do
			device.MetalRepairCost = multiplier*(device.MetalRepairCost or 0)
			device.EnergyRepairCost = multiplier*(device.EnergyRepairCost or 0)
		end
	end
end
RegisterApplyMod(CommanderApplyModBase)
