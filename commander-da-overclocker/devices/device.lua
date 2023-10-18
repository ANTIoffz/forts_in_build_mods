
CommanderApplyModBase = function()
	local multiplier = 2
	if active then
		if EnergyProductionRate then EnergyProductionRate = multiplier*EnergyProductionRate end
		if MetalProductionRate then MetalProductionRate = multiplier*MetalProductionRate end
	end
end
RegisterApplyMod(CommanderApplyModBase)