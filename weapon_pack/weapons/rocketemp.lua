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

FireEffect = path .. "/effects/emp_launch.lua"
ShellEffect = nil
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = path .. "/effects/rocketemp_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged.lua"
ReloadEffect = path .. "/effects/reload_emp.lua"
ReloadEffectOffset = -0.5
Projectile = "rocketemp"
BarrelLength = 60.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
ReloadTime = 10
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
EnergyFireCost = 800.0
MetalFireCost = 20
ShowFireAngle = true
RoundsEachBurst = 1
RoundPeriod = 0.0001
BeamDuration = 0.05
ReloadFramePeriod = (ReloadTime + RoundsEachBurst*RoundPeriod)/12
EMPRadius = 140
EMPDuration = 7

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "rocketemp-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/rocketemp/base.dds" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "rocketemp-reload",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/rocketemp/EMP-ReloadAnim01.png" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path .. "/weapons/rocketemp/EMP-ReloadAnim02.png" },
					{ texture = path .. "/weapons/rocketemp/EMP-ReloadAnim03.png" },
					{ texture = path .. "/weapons/rocketemp/EMP-ReloadAnim04.png" },
					{ texture = path .. "/weapons/rocketemp/EMP-ReloadAnim05.png" },
					{ texture = path .. "/weapons/rocketemp/EMP-ReloadAnim06.png", duration = 120, },
					mipmap = true,
					duration = 0.05,
				},
			},
			ReloadEnd =
			{
				Frames =
				{
					{ texture = path .. "/weapons/rocketemp/EMP-ReloadAnim07.png" },
					{ texture = path .. "/weapons/rocketemp/EMP-ReloadAnim08.png" },
					{ texture = path .. "/weapons/rocketemp/EMP-ReloadAnim09.png" },
					{ texture = path .. "/weapons/rocketemp/EMP-ReloadAnim10.png" },
					{ texture = path .. "/weapons/rocketemp/EMP-ReloadAnim11.png" },
					{ texture = path .. "/weapons/rocketemp/EMP-ReloadAnim12.png" },
					{ texture = path .. "/weapons/rocketemp/EMP-ReloadAnim13.png", },
					mipmap = true,
					duration = 0.05,
				},
				NextState = "Normal",
			},
		},
	},
	{
		Name = "rocketemp_flash",

		InitialState = "Null",
		States =
		{
			Null = {},

			Flash =
			{
				Frames =
				{
					{ texture = "effects/media/mg_flash01.dds" },
					{ texture = "effects/media/mg_flash01.dds", colour = { 1, 1, 1, 0 }, },
					{ texture = "effects/media/mg_flash02.dds" },
					{ texture = "effects/media/mg_flash02.dds", colour = { 1, 1, 1, 0 }, },
					{ texture = "effects/media/mg_flash03.dds" },
					{ texture = "effects/media/mg_flash03.dds", colour = { 1, 1, 1, 0 }, },
					{ texture = "effects/media/mg_flash04.dds" },
					{ texture = "effects/media/mg_flash04.dds", colour = { 1, 1, 1, 0 }, },
					{ texture = "effects/media/mg_flash05.dds" },
					{ texture = "effects/media/mg_flash05.dds", colour = { 1, 1, 1, 0 }, },

					duration = 0.06,
					blendColour = false,
					blendCoordinates = false,
					--mipmap = true,
				},
				--RandomPlayLength = 2,
				NextState = "Flash",
				
				LoopLength = 1.13,
				LoopExitState = "Null",
			},
		},
	},
}

NodeEffects =
{
	{
		NodeName = "Hardpoint0",
		EffectPath = "effects/weapon_overheated.lua",
		Automatic = false,
	},
}

Root =
{
	Name = "rocketemp",
	Angle = 0,
	Pivot = { 0, -0.5 },
	PivotOffset = { 0, 0 },
	Sprite = "rocketemp-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0.11, 0.05 },
			PivotOffset = { 0.03, -0.3 },
			Sprite = "rocketemp-reload",
			UserData = 50,

			ChildrenInFront =
			{
				{
					Name = "Hardpoint0",
					Angle = 90,
					Pivot = { 0, -0.02 },
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
