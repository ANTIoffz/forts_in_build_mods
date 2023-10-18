dofile("scripts/device_utility.lua")

newRoundsEachBurst = RoundsEachBurst + 1
if HeatPeriod then
	HeatPeriod = HeatPeriod*newRoundsEachBurst/RoundsEachBurst
end
RoundsEachBurst = newRoundsEachBurst

head = FindSpriteComponent(Root, "Head")
if head then
	head.Sprite = path .. "/weapons/machinegun/head.dds"
end
