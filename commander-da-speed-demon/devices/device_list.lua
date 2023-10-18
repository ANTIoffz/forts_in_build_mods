
CommanderApplyModBase = function()
	local multiplierBuild = 0.9
	local multiplierRepair = 1
	local multiplierScrap = 0.25

	for k, device in ipairs(Devices) do
		device.BuildTimeComplete = multiplierBuild*(device.BuildTimeComplete or 0)
		
		device.EnergyRepairCost = multiplierRepair*(device.EnergyRepairCost or 0)
		device.MetalRepairCost = multiplierRepair*(device.MetalRepairCost or 0)
		
		device.ScrapPeriod = multiplierScrap*(device.ScrapPeriod or 0)
	end
end
RegisterApplyMod(CommanderApplyModBase)