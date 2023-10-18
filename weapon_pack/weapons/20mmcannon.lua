Scale = 1
SelectionWidth = 90
SelectionHeight = 55
SelectionOffset = { -18, -55.5 }
RecessionBox =
{
	Size = { 200, 25 },
	Offset = { -300, -60 },
}
CanFlip = false

WeaponMass = 100.0
HitPoints = 200.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
DeviceSplashDamage = 100
DeviceSplashDamageMaxRadius = 400
DeviceSplashDamageDelay = 0.2
IgnitePlatformOnDestruct = true
IncendiaryRadius = 100
IncendiaryRadiusHeated = 120
StructureSplashDamage = 160
StructureSplashDamageMaxRadius = 150

FireEffect = path .. "/effects/fire_20mmcannon.lua"

ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = path .. "/effects/20mmcannon_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged_large.lua"
ShellEffect = path .. "/effects/shell_eject_20mmcannon.lua"
ReloadEffect = path .. "/effects/reload_20mmcannon.lua"
FireEndEffect = path .. "/effects/cooldown_20mmcannon.lua"
RetriggerFireEffect = true
ReloadEffectOffset = -2
Projectile = "cannon20mm"
BarrelLength = 100.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
AttractZoomOutDuration = 5
ReloadTime = 28.8
ReloadTimeIncludesBurst = false
MinFireSpeed = 6000.0
MaxFireSpeed = 6000.1
MinFireRadius = 600.0
MaxFireRadius = 1200.0
MinVisibility = 0.7
MaxVisibilityHeight = 1000
MinFireAngle = -40
MaxFireAngle = 40
KickbackMean = 40
KickbackStdDev = 5
MouseSensitivityFactor = 0.5
PanDuration = 0
FireStdDev = 0.02
FireStdDevAuto = 0.02
Recoil = 400000
EnergyFireCost = 2000
MetalFireCost = 40
RoundsEachBurst = 9
RoundPeriod = 0.32

ShowFireAngle = true

BarrelRecoilLimit = -0.15
BarrelRecoilSpeed = -1.5
BarrelReturnForce = 1

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "20mmcannon-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/20mmcannon/base.dds" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "20mmcannon-head",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/20mmcannon/head.dds" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "20mmcannon-barrel",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/20mmcannon/barrel.dds" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "20mmReloadAnim",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/20mmcannon/20mmReloadAnim01.dds" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path .. "/weapons/20mmcannon/20mmReloadAnim01.dds" },
					{ texture = path .. "/weapons/20mmcannon/20mmReloadAnim02.dds" },
					{ texture = path .. "/weapons/20mmcannon/20mmReloadAnim03.dds", duration = 120 },
					mipmap = true,
					duration = 0.1,
				},
			},
			ReloadEnd =
			{
				Frames =
				{
					{ texture = path .. "/weapons/20mmcannon/20mmReloadAnim04.dds" },
					{ texture = path .. "/weapons/20mmcannon/20mmReloadAnim05.dds" },
					{ texture = path .. "/weapons/20mmcannon/20mmReloadAnim06.dds" },
					{ texture = path .. "/weapons/20mmcannon/20mmReloadAnim07.dds" },
					{ texture = path .. "/weapons/20mmcannon/20mmReloadAnim08.dds" },
					{ texture = path .. "/weapons/20mmcannon/20mmReloadAnim09.dds" },
					{ texture = path .. "/weapons/20mmcannon/20mmReloadAnim10.dds", duration = 0.05 },
					{ texture = path .. "/weapons/20mmcannon/20mmReloadAnim11.dds", duration = 0.05 },
					{ texture = path .. "/weapons/20mmcannon/20mmReloadAnim10.dds", duration = 0.05 },
					{ texture = path .. "/weapons/20mmcannon/20mmReloadAnim11.dds", duration = 0.05 },
					{ texture = path .. "/weapons/20mmcannon/20mmReloadAnim10.dds", duration = 0.05 },
					{ texture = path .. "/weapons/20mmcannon/20mmReloadAnim11.dds", duration = 0.05 },
					{ texture = path .. "/weapons/20mmcannon/20mmReloadAnim10.dds", duration = 0.05 },
					{ texture = path .. "/weapons/20mmcannon/20mmReloadAnim11.dds", duration = 0.05 },
					{ texture = path .. "/weapons/20mmcannon/20mmReloadAnim10.dds", duration = 0.05 },
					{ texture = path .. "/weapons/20mmcannon/20mmReloadAnim11.dds", duration = 0.05 },
					{ texture = path .. "/weapons/20mmcannon/20mmReloadAnim10.dds", duration = 0.05 },
					{ texture = path .. "/weapons/20mmcannon/20mmReloadAnim10.dds", duration = 0.5 },
					{ texture = path .. "/weapons/20mmcannon/20mmReloadAnim12.dds", duration = 0.2 },
					{ texture = path .. "/weapons/20mmcannon/20mmReloadAnim01.dds" },
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
	Name = "Cannon20mm",
	Angle = 0,
	Pivot = { -0.06, -0.57 },
	PivotOffset = { 0, 0 },
	Sprite = "20mmcannon-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0.1, -0.2 },
			PivotOffset = { 0.1, 0 },
			Sprite = "20mmcannon-head",
			UserData = 50,

			ChildrenBehind =
			{
				{
					Name = "Barrel",
					Angle = 0,
					Pivot = { -0.515, 0.05},
					PivotOffset = { 0.5, 0 },
					Sprite = "20mmcannon-barrel",
					UserData = 100,
					
					ChildrenInFront =
					{
						{
							Name = "Hardpoint0",
							Angle = 90,
							Pivot = { 0, 0.2},
							PivotOffset = { 0, 0 },
						},
						{
							Name = "LaserSight",
							Angle = 90,
							Pivot = { 0.125, -0.15 },
							PivotOffset = { 0, 0 },
						},
						{
							Name = "Chamber",
							Angle = 0,
							Pivot = { -0.17, -0.15 },
							PivotOffset = { 0, 0 },
						},
					},
				},
				{
					Name = "ReloadAnim",
					Angle = 0,
					Pivot = { -0.515, -0.3},
					PivotOffset = { 0.5, 0 },
					Sprite = "20mmReloadAnim",
					UserData = 100,
				},
			},
		},
	},
}
