dofile("scripts/device_utility.lua")

RoundsEachBurst = RoundsEachBurst + 1

sprite = FindSpriteComponent(Root, "Head")
if sprite then
	sprite.Sprite = path .. "/weapons/minigun/head.png"
end
