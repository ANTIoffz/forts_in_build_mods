dofile("scripts/device_utility.lua")

HasLaserSight = true

head = FindSpriteComponent(Root, "Barrel")
if head then
	head.Sprite = path .. "/weapons/20mmcannon/barrel.dds"
end