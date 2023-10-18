-- Turtle commander, cheaper armor, doors and shields, faster doors

armour = FindMaterial("armour")
if armour then
	armour.Mass = 0.5*armour.Mass
end

door = FindMaterial("door")
if door then
	door.Mass = 0.5*door.Mass
end

function UpdateMaterial(material)
	local multiplier = 0.8
	material.MetalBuildCost = multiplier*(material.MetalBuildCost or 0)
	material.MetalReclaim = multiplier*(material.MetalReclaim or 0)
	material.EnergyBuildCost = multiplier*(material.EnergyBuildCost or 0)
	material.EnergyReclaim = multiplier*(material.EnergyReclaim or 0)
end

function UpdateMaterialRepair(material)
	local multiplier = 0.8
	if active then
		multiplier = 0.5
	end

	material.MetalRepairCost = multiplier*(material.MetalRepairCost or 0)
	material.EnergyRepairCost = multiplier*(material.EnergyRepairCost or 0)
end

CommanderApplyModBase = function()
	local multiplierShield = 0.8
	local multiplierDoorSpeed = 3

	for k, material in ipairs(Materials) do
		if material.SaveName == "armour" or
		   material.SaveName == "door" or
		   material.SaveName == "shield" then
			UpdateMaterial(material)
			if not active then
				UpdateMaterialRepair(material)
			end
		end

		if material.SaveName == "door" then
			material.DoorSpeed = multiplierDoorSpeed*material.DoorSpeed
			material.DoorSpeedClose = multiplierDoorSpeed*material.DoorSpeedClose
		end
		
		if material.SaveName == "shield" then
			material.EnergyRunCost = multiplierShield*(material.EnergyRunCost or 0)
		end
		
		if active then
			-- half price repair on everything
			UpdateMaterialRepair(material)
		end
	end
end
RegisterApplyMod(CommanderApplyModBase)