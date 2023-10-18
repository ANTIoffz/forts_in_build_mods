dofile("scripts/sprites_utility.lua")
dofile("scripts/device_utility.lua")

RoundsEachBurst = RoundsEachBurst + 1

if active then
	ProjectilesEachRound = 5
	RoundsEachBurst = math.ceil(RoundsEachBurst/ProjectilesEachRound)

	FireStdDevSpray = FireStdDev
	FireStdDev = 0.072
	FireStdDevAuto = 0.072
	MinFireSpread = 3
	FireSpreadMultiplier = 0.0108

	UniformSpray = true
end

MakeAlternateSprite("20mmReloadAnim", "20mmReloadAnimScattershot", "/weapons/20mmcannon/20mmReloadAnim", path)

sprite = FindSpriteComponent(Root, "ReloadAnim")
if sprite then
	sprite.Sprite = "20mmReloadAnimScattershot"
end
