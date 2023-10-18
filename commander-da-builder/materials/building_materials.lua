-- Commander Architect

multiplierBracingCost = 0.8
multiplierBuiltTime = 0.5
multiplierBuiltTimeActive = 0.25

function UpdateMaterial(material)
	material.MetalBuildCost = material.MetalBuildCost*multiplierBracingCost
	material.MetalRepairCost = material.MetalRepairCost*multiplierBracingCost
	material.MetalReclaim = material.MetalReclaim*multiplierBracingCost
	material.EnergyBuildCost = material.EnergyBuildCost*multiplierBracingCost
	material.EnergyRepairCost = material.EnergyRepairCost*multiplierBracingCost
end

CommanderApplyModBase = function()
	bracing = FindMaterial("bracing")
	UpdateMaterial(bracing)

	bracingbg = FindMaterial("backbracing")
	UpdateMaterial(bracingbg)

	for k, material in ipairs(Materials) do
		if active then
			material.BuildTime = material.BuildTime*multiplierBuiltTimeActive
		else
			material.BuildTime = material.BuildTime*multiplierBuiltTime
		end
	end
end
RegisterApplyMod(CommanderApplyModBase)