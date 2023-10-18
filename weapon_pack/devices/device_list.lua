local factory = FindDevice("factory")
if factory then
	factory.PrerequisiteAlt = "armoury"
	factory.BuildTimeComplete = 90
	factory.EnergyCost = 5000
	factory.EnergyRepairCost = 4000
end

table.insert(Sprites, ButtonSprite("hud-munitions-icon", "HUD/HUD-Munitions", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-armoury-icon", "HUD/HUD-Armoury", nil, ButtonSpriteBottom, nil, nil, path))

table.insert(Sprites, DetailSprite("hud-detail-armoury", "HUD-Details-Armoury", path))
table.insert(Sprites, DetailSprite("hud-detail-munitions", "HUD-Details-Munitions", path))

table.insert(Devices, IndexOfDevice("workshop") + 1,
{
	SaveName = "armoury",
	FileName = path .. "/devices/armoury.lua",
	Icon = "hud-armoury-icon",
	Detail = "hud-detail-armoury",
	BuildTimeComplete = 60,
	ScrapPeriod = 8,
	MetalCost = 400,
	EnergyCost = 2000,
	MetalRepairCost = 300,
	EnergyRepairCost = 1500,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	PopulationCap = 1,
	IgnitePlatformOnDestruct = true,
	SelectEffect = "ui/hud/technology/ui_technology",
	ObserverBuildEvent = true,
	Tech = true,
})

table.insert(Devices, IndexOfDevice("factory"),
{
	SaveName = "munitions",
	FileName = path .. "/devices/munitions.lua",
	Icon = "hud-munitions-icon",
	Detail = "hud-detail-munitions",
	Prerequisite = "workshop",
	PrerequisiteAlt = "armoury",
	BuildTimeComplete = 90,
	ScrapPeriod = 8,
	MetalCost = 800,
	EnergyCost = 5000,
	MetalRepairCost = 600,
	EnergyRepairCost = 4000,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	PopulationCap = 1,
	IgnitePlatformOnDestruct = true,
	SelectEffect = "ui/hud/technology/ui_technology",
	ObserverBuildEvent = true,
	Tech = true,
})

