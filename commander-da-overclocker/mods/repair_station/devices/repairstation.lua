dofile("scripts/sprites_utility.lua")
dofile("scripts/device_utility.lua")

MakeAlternateSprite("repairstation-base", "repairstation-base-overclocker", "/devices/repairstation/active.dds", path)

sprite = FindSpriteComponent(Root, "RepairStation")
if sprite then
	sprite.Sprite = "repairstation-base-overclocker"
end

EnergyStorageCapacity = 1000
MetalStorageCapacity = 100