dofile("scripts/device_utility.lua")

HasLaserSight = true

barrel = FindSpriteComponent(Root, "Barrel")
if barrel then
	barrel.Sprite = path .. "/weapons/cannon/barrel.dds"
end
