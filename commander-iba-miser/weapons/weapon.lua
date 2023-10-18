
CommanderApplyModBase = function()
	if active then
		EnergyFireCost = 0.5*(EnergyFireCost or 0)
		MetalFireCost = 0.5*(MetalFireCost or 0)
	end
end
RegisterApplyMod(CommanderApplyModBase)
