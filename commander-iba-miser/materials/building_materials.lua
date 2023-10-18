
CommanderApplyModBase = function()
	local mult = 1
	for k, material in ipairs(Materials) do
		material.MetalReclaim = mult*material.MetalBuildCost
	end
end
RegisterApplyMod(CommanderApplyModBase)