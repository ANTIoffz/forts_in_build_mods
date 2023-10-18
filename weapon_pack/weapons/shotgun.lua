Scale = 1
SelectionWidth = 40.0
SelectionHeight = 58.75
SelectionOffset = { 0.0, -59.25 }
RecessionBox =
{
	Size = { 100, 25 },
	Offset = { -120, -65 },
}

WeaponMass = 80.0
HitPoints = 130.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
IgnitePlatformOnDestruct = true
StructureSplashDamage = 60
StructureSplashDamageMaxRadius = 150

FireEffect = path .. "/effects/fire_shotgun.lua"
ShellEffect = path .. "/effects/shell_eject_shotgun.lua"
ConstructEffect = "effects/device_upgrade.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = path .. "/effects/shotgun_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged.lua"
ReloadEffect = path .. "/effects/reload_shotgun.lua"
ReloadEffectOffset = -0.5
Projectile = "shotgun"
BarrelLength = 60.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
ReloadTime = 9
ReloadTimeIncludesBurst = false
MinFireSpeed = 10000.0
MaxFireSpeed = 10000.1
MinFireRadius = 500.0
MaxFireRadius = 1000.0
MinFireSpread = 8
MinVisibility = 0.25
MaxVisibilityHeight = 500
MinFireAngle = -50
MaxFireAngle = 50
KickbackMean = 15
KickbackStdDev = 3
MouseSensitivityFactor = 0.5
PanDuration = 0
FireStdDev = 0.015
FireStdDevAuto = 0.05
Recoil = 20000
EnergyFireCost = 800.0
MetalFireCost = 30
ShowFireAngle = true
RoundsEachBurst = 10
RoundPeriod = 0
UniformSpray = true
BeamDuration = 0.05
ReloadFramePeriod = (ReloadTime + RoundsEachBurst*RoundPeriod)/12

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "shotgun-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/shotgun/base.dds" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "shotgun-head",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/shotgun/head.dds" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "shotgun-reload",
		States =
		{
			Normal = { Frames = { { texture =  path .. "/weapons/shotgun/barrel01.png" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path .. "/weapons/shotgun/barrel01.png", duration = 0.5 },
					{ texture = path .. "/weapons/shotgun/barrel02.png" },
					{ texture = path .. "/weapons/shotgun/barrel03.png" },
					{ texture = path .. "/weapons/shotgun/barrel04.png" },
					{ texture = path .. "/weapons/shotgun/barrel05.png" },
					{ texture = path .. "/weapons/shotgun/barrel04.png", duration = 120 },
					mipmap = true,
					duration = 0.1,
				},
			},
			ReloadEnd =
			{
				Frames =
				{
					{ texture = path .. "/weapons/shotgun/barrel03.png" },
					{ texture = path .. "/weapons/shotgun/barrel02.png" },
					mipmap = true,
					duration = 0.1,
				},
				NextState = "Normal",
			},
		},
	},
}

Root =
{
	Name = "Shotgun",
	Angle = 0,
	Pivot = { -0.05, -0.37 },
	PivotOffset = { 0, 0 },
	Sprite = "shotgun-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0.14, -0.1 },
			PivotOffset = { -0.05, -0.13 },
			Sprite = "shotgun-head",
			UserData = 50,

			ChildrenInFront =
			{
				{
					Name = "Reload",
					Angle = 0,
					Pivot = { 0.09, -0.05 },
					Sprite = "shotgun-reload",
					PivotOffset = { 0, 0 },
					UserData = 50,
				},
				{
					Name = "Hardpoint0",
					Angle = 90,
					Pivot = { 0, 0 },
					PivotOffset = { 0, 0 },
				},
				{
					Name = "LaserSight",
					Angle = 90,
					Pivot = { 0.26, -0.3 },
					PivotOffset = { 0, 0 },
				},
				{
					Name = "Chamber",
					Angle = 0,
					Pivot = { 0.165, -0.05 },
					PivotOffset = { 0, 0 },
				},
--[[				{
					Name = "MuzzleFlash",
					Angle = 0,
					Pivot = { 0.6, 0 },
					PivotOffset = { 0, 0 },
					Sprite = "shotgun-flash",
					Visible = false,
				},
]]
			},
		},
	},
	ChildrenInFront =
	{
	},
}
