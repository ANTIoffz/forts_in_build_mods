dofile("scripts/device_utility.lua")

FireEffect = path .. "/effects/fire_minigun.lua"

ReloadTime = ReloadTime + FireDelay

-- reduced projectile count (vs 13 normally) to balance explosive rounds
-- and temper minigun rushes
RoundsEachBurst = 11

multiplier = 0.5
KickbackMean = multiplier*KickbackMean
KickbackStdDev = multiplier*KickbackStdDev
FireDelay = 0

HasLaserSight = true

head = FindSpriteComponent(Root, "Head")
if head then
	head.Sprite = path .. "/weapons/minigun/head.png"
end

if active then
	EnergyFireCost = 600.0
	MetalFireCost = 30

	IgnitePlatformOnDestruct = true
	StructureSplashDamage = 80
	StructureSplashDamageMaxRadius = 150
end
