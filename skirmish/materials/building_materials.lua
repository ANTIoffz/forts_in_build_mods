bracing = FindMaterial("bracing")
if bracing then
	bracing.MetalRepairCost = 0.1
end

backbracing = FindMaterial("backbracing")
if backbracing then
	backbracing.MetalRepairCost = 0.1
end

armour = FindMaterial("armour")
if armour then
	armour.MetalRepairCost = 0.4
end

door = FindMaterial("door")
if door then
	-- so cap has reduced obstruction
	door.DoorOpenMax = 10
	door.DoorSpeed = 70
	door.DoorSpeedClose = 50
end
