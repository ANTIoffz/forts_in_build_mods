
CommanderApplyModBase = function()
	local multiplier = 1.05
	EnergyProductionRate = multiplier*(EnergyProductionRate or 0)
end
RegisterApplyMod(CommanderApplyModBase)