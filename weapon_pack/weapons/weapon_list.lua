cannonIconWP =
{
	Name = "hud-cannon-icon",
	States =
	{
		Normal = { Frames = {{ texture = path .. "/ui/textures/HUD/HUD-Cannon" .."-A.dds", bottom = ButtonSpriteBottom, right = nil, },},},
		Rollover = { Frames = {{ texture = path .. "/ui/textures/HUD/HUD-Cannon" .."-R.dds", bottom = ButtonSpriteBottom, right = nil },},},
		Pressed = { Frames = {{ texture = path .. "/ui/textures/HUD/HUD-Cannon" .."-S.dds", bottom = ButtonSpriteBottom, right = nil },},},
		Disabled = { Frames = {{ texture = path .. "/ui/textures/HUD/HUD-Cannon" .."-D.dds", bottom = ButtonSpriteBottom, right = nil },},},
	},
}


--ReplaceSprite(ButtonSprite("hud-cannon-icon", "HUD/HUD-Cannon", nil, ButtonSpriteBottom))
--table.insert(Sprites, ButtonSprite("hud-cannon-icon-wp", "HUD/HUD-Cannon", nil, ButtonSpriteBottom))
ReplaceSprite(cannonIconWP)

local cannon = FindWeapon("cannon")
if cannon then
	cannon.Enabled = true
	cannon.Prerequisite = "munitions"
	cannon.CompatibleGroupTypes = {	"cannon20mm", }
	cannon.Detail = "hud-detail-cannon-wp"
	--cannon.Icon = "hud-cannon-icon-wp"
end

local laser = FindWeapon("laser")
if laser then
	laser.Enabled = true
	laser.Prerequisite = "factory"
	laser.CompatibleGroupTypes = { "firebeam", }
end

table.insert(Sprites, ButtonSprite("hud-group-rocket", "groups/Group-Rocket", GroupButtonSpriteBottom, GroupButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-group-flak", "groups/Group-Flak", GroupButtonSpriteBottom, GroupButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-group-shotgun", "groups/Group-Shotgun", GroupButtonSpriteBottom, GroupButtonSpriteBottom, nil, nil, path))

table.insert(Sprites, ButtonSprite("hud-rocketemp-icon", "HUD/HUD-RocketEMP", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-rocket-icon", "HUD/HUD-Rocket", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-flak-icon", "HUD/HUD-Flak", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-shotgun-icon", "HUD/HUD-Shotgun", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-20mmcannon-icon", "HUD/HUD-20mmCannon", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-firebeam-icon", "HUD/HUD-FireBeam", nil, ButtonSpriteBottom, nil, nil, path))

table.insert(Sprites, DetailSprite("hud-detail-rocket", "HUD-Details-Rocket", path))
table.insert(Sprites, DetailSprite("hud-detail-rocketemp", "HUD-Details-RocketEMP", path))
table.insert(Sprites, DetailSprite("hud-detail-firebeam", "HUD-Details-Firebeam", path))
table.insert(Sprites, DetailSprite("hud-detail-flak", "HUD-Details-Flak", path))
table.insert(Sprites, DetailSprite("hud-detail-shotgun", "HUD-Details-Shotgun", path))
table.insert(Sprites, DetailSprite("hud-detail-20mmcannon", "HUD-Details-20mmCannon", path))
table.insert(Sprites, DetailSprite("hud-detail-cannon-wp", "HUD-Details-Cannon", path))

table.insert(Weapons, IndexOfWeapon("missile2") + 1,
{
	SaveName = "flak",
	FileName = path .. "/weapons/flak.lua",
	Prerequisite = "armoury",
	Icon = "hud-flak-icon",
	GroupButton = "hud-group-flak",
	Detail = "hud-detail-flak",
	BuildTimeComplete = 25.0,
	ScrapPeriod = 5,
	MetalCost = 200,
	EnergyCost = 800,
	MetalRepairCost = 40,
	EnergyRepairCost = 200,
	SpotterFactor = 0,
	MaxSpotterAssistance = 0.1, -- small benefit from other spotters
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	DrawBlurredProjectile = true,
	SelectEffect = "ui/hud/weapons/ui_weapons",
	
	Upgrades =
	{
		{
			Enabled = true,
			SaveName = "shotgun",
			MetalCost = 100,
			EnergyCost = 400,
		},
	},
})

table.insert(Weapons, IndexOfWeapon("flak") + 1,
{
	Enabled = false,
	SaveName = "shotgun",
	FileName = path .. "/weapons/shotgun.lua",
	Prerequisite = "upgrade",
	Icon = "hud-shotgun-icon",
	GroupButton = "hud-group-shotgun",
	Detail = "hud-detail-shotgun",
	BuildTimeComplete = 25.0,
	ScrapPeriod = 5,
	MetalCost = 300,
	EnergyCost = 1200,
	MetalRepairCost = 100,
	EnergyRepairCost = 400,
	SpotterFactor = 0,
	MaxSpotterAssistance = 0.1, -- small benefit from other spotters
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	DrawBlurredProjectile = true,
	SelectEffect = "ui/hud/weapons/ui_weapons",
})

table.insert(Weapons, IndexOfWeapon("shotgun") + 1,
{
	Enabled = true,
	SaveName = "rocketemp",
	FileName = path .. "/weapons/rocketemp.lua",
	Prerequisite = "armoury",
	Icon = "hud-rocketemp-icon",
	GroupButton = "hud-group-rocket",
	Detail = "hud-detail-rocketemp",
	BuildTimeComplete = 30.0,
	ScrapPeriod = 5,
	MetalCost = 200,
	EnergyCost = 2000,
	MetalRepairCost = 66,
	EnergyRepairCost = 660,
	SpotterFactor = 0,
	MaxSpotterAssistance = 0.1, -- small benefit from other spotters
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	DrawBlurredProjectile = true,
	SelectEffect = "ui/hud/weapons/ui_weapons",

	CompatibleGroupTypes =
	{
		"rocket",
	},
	
	Upgrades =
	{
		{
			Enabled = true,
			SaveName = "rocket",
			MetalCost = 200,
			EnergyCost = 2000,
		},
	},
})

table.insert(Weapons, IndexOfWeapon("rocketemp") + 1,
{
	Enabled = false,
	SaveName = "rocket",
	FileName = path .. "/weapons/rocket.lua",
	Prerequisite = "upgrade",
	Icon = "hud-rocket-icon",
	GroupButton = "hud-group-rocket",
	Detail = "hud-detail-rocket",
	BuildTimeComplete = 40.0,
	ScrapPeriod = 5,
	MetalCost = 400,
	EnergyCost = 4000,
	MetalRepairCost = 132,
	EnergyRepairCost = 1320,
	SpotterFactor = 0,
	MaxSpotterAssistance = 0.1, -- small benefit from other spotters
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	DrawBlurredProjectile = true,
	SelectEffect = "ui/hud/weapons/ui_weapons",
	
	CompatibleGroupTypes =
	{
		"rocketemp",
	},
})

table.insert(Weapons, IndexOfWeapon("laser"),
{
	SaveName = "firebeam",
	FileName = path .. "/weapons/firebeam.lua",
	Icon = "hud-firebeam-icon",
	GroupButton = "hud-group-laser",
	Detail = "hud-detail-firebeam",
	Prerequisite = "factory",
	BuildTimeComplete = 75,
	ScrapPeriod = 8,
	MetalCost = 400,
	EnergyCost = 3000,
	MetalRepairCost = 132,
	EnergyRepairCost = 3000,
	MaxSpotterAssistance = 0.5, -- moderate benefit from spotterss
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	IgnitePlatformOnDestruct = true,
	SelectEffect = "ui/hud/weapons/ui_weapons",
	ObserverBuildEvent = true,	
	
	CompatibleGroupTypes =
	{
		"laser",
	},
})

table.insert(Weapons, IndexOfWeapon("cannon"),
{
	SaveName = "cannon20mm",
	FileName = path .. "/weapons/20mmcannon.lua",
	Icon = "hud-20mmcannon-icon",
	GroupButton = "hud-group-cannon",
	Detail = "hud-detail-20mmcannon",
	Prerequisite = "munitions",
	BuildTimeComplete = 70.0,
	ScrapPeriod = 8,
	MetalCost = 600,
	EnergyCost = 4000,
	MetalRepairCost = 200,
	EnergyRepairCost = 1500,
	MaxSpotterAssistance = 1, -- major benefit from spotters
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	IgnitePlatformOnDestruct = true,
	SelectEffect = "ui/hud/weapons/ui_weapons",
	ObserverBuildEvent = true,
	
	CompatibleGroupTypes =
	{
		"cannon",
	},
})
