
CommanderApplyModBase = function()
	local multiplier = 0.5

	for k, material in ipairs(Materials) do
		if material.CatchesFire then
			material.DegreesPerSecondMin = multiplier*(material.DegreesPerSecondMin or 0)
			material.DegreesPerSecondMax = multiplier*(material.DegreesPerSecondMax or 0)
		end
	end
end
RegisterApplyMod(CommanderApplyModBase)

armour = FindMaterial("armour")
if armour then
	armour.BeamPenetrationBlockDist = 45
end

door = FindMaterial("door")
if door then
	door.BeamPenetrationBlockDist = 45
end
