Scale = 1
SelectionWidth = 40.0
SelectionHeight = 55.75
SelectionOffset = { 0.0, -56.25 }
RecessionBox =
{
	Size = { 100, 25 },
	Offset = { -120, -65 },
}

WeaponMass = 80.0
HitPoints = 150.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
IgnitePlatformOnDestruct = true
IncendiaryRadius = 50
IncendiaryRadiusHeated = 60
StructureSplashDamage = 70
StructureSplashDamageMaxRadius = 170

FireEffect = path .. "/effects/rocket_launch.lua"
ShellEffect = nil
ConstructEffect = "effects/device_upgrade.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = path .. "/effects/rocket_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged.lua"
ReloadEffect = path .. "/effects/reload_rocket.lua"
ReloadEffectOffset = -0.5
Projectile = "rocket"
BarrelLength = 60.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
ReloadTime = 12
ReloadTimeIncludesBurst = false
MinFireSpeed = 500.0
MaxFireSpeed = 500.1
MinFireRadius = 500.0
MaxFireRadius = 1000.0
MinVisibility = 0.5
MaxVisibilityHeight = 500
MinFireAngle = -50
MaxFireAngle = 50
KickbackMean = 15
KickbackStdDev = 3
MouseSensitivityFactor = 0.5
PanDuration = 0
FireDelay = 0
FireStdDev = 0
FireStdDevAuto = 0
Recoil = 20000
EnergyFireCost = 1200.0
MetalFireCost = 30
ShowFireAngle = true
RoundsEachBurst = 2
RoundPeriod = 0
BeamDuration = 0.05
ReloadFramePeriod = (ReloadTime + RoundsEachBurst*RoundPeriod)/12

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "rocket-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/rocket/base.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "rocket-head",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/rocket/head01.png" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path .. "/weapons/rocket/head02.png" },
					{ texture = path .. "/weapons/rocket/head03.png" },
					{ texture = path .. "/weapons/rocket/head04.png", duration = 120  },
					mipmap = true,
					duration = 0.05,
				},
			},
			ReloadEnd =
			{
				Frames =
				{
					{ texture = path .. "/weapons/rocket/head05.png" },
					{ texture = path .. "/weapons/rocket/head06.png" },
					{ texture = path .. "/weapons/rocket/head07.png" },
					{ texture = path .. "/weapons/rocket/head08.png" },
					{ texture = path .. "/weapons/rocket/head09.png" },
					{ texture = path .. "/weapons/rocket/head10.png" },
					mipmap = true,
					duration = 0.05,
				},
				NextState = "Normal",
			},
		},
	},
}

Root =
{
	Name = "rocket",
	Angle = 0,
	Pivot = { 0, -0.5 },
	PivotOffset = { 0, 0 },
	Sprite = "rocket-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0.11, 0.05 },
			PivotOffset = { 0.03, -0.3 },
			Sprite = "rocket-head",
			UserData = 50,

			ChildrenInFront =
			{
				{
					Name = "Hardpoint0",
					Angle = 90,
					Pivot = { 0, 0 },
					PivotOffset = { 0, 0 },
				},
				{
					Name = "LaserSight",
					Angle = 90,
					Pivot = { 0.14, 0.115 },
					PivotOffset = { 0, 0 },
				},
				{
					Name = "Chamber",
					Angle = 0,
					Pivot = { 0.165, -0.05 },
					PivotOffset = { 0, 0 },
				},
			},
		},
	},
	ChildrenInFront =
	{
	},
}
