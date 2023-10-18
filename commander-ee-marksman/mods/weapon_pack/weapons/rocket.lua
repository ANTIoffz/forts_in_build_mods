dofile("scripts/sprites_utility.lua")
dofile("scripts/device_utility.lua")

HasLaserSight = true

MakeAlternateSprite("rocket-head", "rocket-head-marksman", "/weapons/rocket/head", path)

head = FindSpriteComponent(Root, "Head")
if head then
	head.Sprite = "rocket-head-marksman"
end
