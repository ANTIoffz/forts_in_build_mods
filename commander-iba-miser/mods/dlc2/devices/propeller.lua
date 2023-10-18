
CommanderApplyModBase = function()
	local multiplier = 1.05
	MetalProductionRate = multiplier*(MetalProductionRate or 0)
end
RegisterApplyMod(CommanderApplyModBase)