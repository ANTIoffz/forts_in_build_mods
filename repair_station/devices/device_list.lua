table.insert(Sprites, ButtonSprite("hud-repairstation-icon", "HUD/HUD-RepairStation", nil, ButtonSpriteBottom, nil, nil, path))

table.insert(Sprites, DetailSprite("hud-detail-repairstation", "HUD-Details-RepairStation", path))

table.insert(Devices, IndexOfDevice("sandbags") + 1,
{
	SaveName = "repairstation",
	FileName = path .. "/devices/repairstation.lua",
	Icon = "hud-repairstation-icon",
	Detail = "hud-detail-repairstation",
	BuildTimeComplete = 20,
	ScrapPeriod = 5,
	MetalCost = 200,
	EnergyCost = 1500,
	MetalRepairCost = 100,
	EnergyRepairCost = 750,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	SelectEffect = "ui/hud/devices/ui_devices",
})

