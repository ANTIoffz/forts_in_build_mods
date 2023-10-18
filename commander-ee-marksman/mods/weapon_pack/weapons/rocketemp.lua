dofile("scripts/device_utility.lua")
dofile("scripts/sprites_utility.lua")

HasLaserSight = true

MakeAlternateSprite("rocketemp-reload", "rocketemp-reload-marksman", "/weapons/rocketemp/EMP-", path)

head = FindSpriteComponent(Root, "Head")
if head then
	head.Sprite = "rocketemp-reload-marksman"
end
