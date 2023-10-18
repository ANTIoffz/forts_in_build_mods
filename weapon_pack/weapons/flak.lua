Scale = 1
SelectionWidth = 40.0
SelectionHeight = 58.75
SelectionOffset = { 0.0, -59.25 }
RecessionBox =
{
	Size = { 80, 25 },
	Offset = { -100, -60 },
}

WeaponMass = 80.0
HitPoints = 90.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
IgnitePlatformOnDestruct = true
StructureSplashDamage = 50
StructureSplashDamageMaxRadius = 150

FireEffect = path .. "/effects/fire_flak.lua"
ShellEffect = "effects/shell_eject_small.lua"
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = path .. "/effects/flak_weapon_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged.lua"
ReloadEffect = path .. "/effects/reload_flak.lua"
FireEndEffect = path .. "/effects/cooldown_flak.lua"
ReloadEffectOffset = -1.5
RetriggerFireEffect = true
Projectile = "flak"
BarrelLength = 60.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
ReloadTime = 6.75
ReloadTimeIncludesBurst = false
MinFireSpeed = 8000.0
MaxFireSpeed = 8000.1
MaxFireClamp = 0.85
MinFireRadius = 350.0
MaxFireRadius = 1200.0
MinFireSpread = 8
MinVisibility = 1
MaxVisibilityHeight = 500
MinFireAngle = -50
MaxFireAngle = 50
KickbackMean = 15
KickbackStdDev = 3
MouseSensitivityFactor = 0.6
PanDuration = 0
FireStdDev = 0.005
FireStdDevAuto = 0.005
Recoil = 20000
EnergyFireCost = 300.0
MetalFireCost = 30
ShowFireAngle = true
RoundsEachBurst = 4
RoundPeriod = 0.25
BeamDuration = 0.05
ReloadFramePeriod = (ReloadTime + RoundsEachBurst*RoundPeriod)/12
DisruptionBlocksFire = true

TriggerProjectileAgeAction = true
MinAgeTrigger = 0.3
MaxAgeTrigger = 1.1

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "flak-base",
		States =
		{
			Normal = { Frames = { { texture = "mods/weapon_pack/weapons/flak/base.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "flak-head",
		States =
		{
			Normal = { Frames = { { texture = "mods/weapon_pack/weapons/flak/head.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "flak-arm",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/flak/FlakFX01.dds" }, mipmap = true, }, },
			Idle = Normal,
			Firing =
			{
				Frames =
				{
					{ texture = path .. "/weapons/flak/FlakFX01.dds", },
					{ texture = path .. "/weapons/flak/FlakFX02.dds", },
					{ texture = path .. "/weapons/flak/FlakFX03.dds", },
					{ texture = path .. "/weapons/flak/FlakFX04.dds", },
					{ texture = path .. "/weapons/flak/FlakFX05.dds", },
					{ texture = path .. "/weapons/flak/FlakFX06.dds", },
					{ texture = path .. "/weapons/flak/FlakFX07.dds", },
					{ texture = path .. "/weapons/flak/FlakFX08.dds", },
					{ texture = path .. "/weapons/flak/FlakFX09.dds", },
					{ texture = path .. "/weapons/flak/FlakFX10.dds", },
					{ texture = path .. "/weapons/flak/FlakFX11.dds", },
					{ texture = path .. "/weapons/flak/FlakFX12.dds", },
					{ texture = path .. "/weapons/flak/FlakFX13.dds", },
					{ texture = path .. "/weapons/flak/FlakFX14.dds", },
					{ texture = path .. "/weapons/flak/FlakFX15.dds", },
					{ texture = path .. "/weapons/flak/FlakFX16.dds", },
					{ texture = path .. "/weapons/flak/FlakFX17.dds", duration = 120, },

					duration = RoundPeriod/4,
					blendColour = false,
					blendCoordinates = false,
					--mipmap = true,
				},
				--RandomPlayLength = 2,
				NextState = "Firing",
				
				LoopLength = 10.13,
				LoopExitState = "Reload",
			},
			Reload =
			{
				Frames =
				{
					{ texture = path .. "/weapons/flak/FlakFX17.dds", duration = 120, },
					mipmap = true,
					duration = ReloadFramePeriod,
				},
			},
			ReloadEnd =
			{
				Frames =
				{
					{ texture = path .. "/weapons/flak/FlakFX17.dds", },
					{ texture = path .. "/weapons/flak/FlakFX09.dds", },
					{ texture = path .. "/weapons/flak/FlakFX01.dds", },
					mipmap = true,
					duration = 0.3,
				},
				NextState = "Normal",
			},
		},
	},
	{
		Name = "flak-reload",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/flak/FlakReload_00000.png" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path .. "/weapons/flak/FlakReload_00000.png" },
					{ texture = path .. "/weapons/flak/FlakReload_00001.png" },
					{ texture = path .. "/weapons/flak/FlakReload_00002.png" },
					{ texture = path .. "/weapons/flak/FlakReload_00003.png" },
					{ texture = path .. "/weapons/flak/FlakReload_00004.png", duration = 0.3 },
					{ texture = path .. "/weapons/flak/FlakReload_00005.png" },
					{ texture = path .. "/weapons/flak/FlakReload_00006.png" },
					{ texture = path .. "/weapons/flak/FlakReload_00007.png" },
					{ texture = path .. "/weapons/flak/FlakReload_00008.png", duration = 120 },
					mipmap = true,
					duration = 0.1,
				},
			},
			ReloadEnd =
			{
				Frames =
				{
					{ texture = path .. "/weapons/flak/FlakReload_00008.png" },
					{ texture = path .. "/weapons/flak/FlakReload_00009.png" },
					{ texture = path .. "/weapons/flak/FlakReload_00010.png" },
					{ texture = path .. "/weapons/flak/FlakReload_00011.png" },
					{ texture = path .. "/weapons/flak/FlakReload_00012.png", duration = 0.3 },
					{ texture = path .. "/weapons/flak/FlakReload_00013.png" },
					{ texture = path .. "/weapons/flak/FlakReload_00014.png" },
					{ texture = path .. "/weapons/flak/FlakReload_00015.png" },
					{ texture = path .. "/weapons/flak/FlakReload_00016.png", duration = 0.3 },
					{ texture = path .. "/weapons/flak/FlakReload_00017.png" },
					{ texture = path .. "/weapons/flak/FlakReload_00018.png" },
					{ texture = path .. "/weapons/flak/FlakReload_00019.png" },
					mipmap = true,
					duration = 0.1,
				},
				NextState = "Normal",
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
	Name = "flak",
	Angle = 0,
	Pivot = { 0, -0.37 },
	PivotOffset = { 0, 0 },
	Sprite = "flak-base",
	UserData = 0,
	
	ChildrenInFront =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { -0.1, -0.15 },
			PivotOffset = { 0.1, -0.05 },
			Sprite = "flak-head",
			UserData = 50,

			ChildrenBehind =
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
					Pivot = { 0.26, -0.22 },
					PivotOffset = { 0, 0 },
				},
				{
					Name = "Chamber",
					Angle = 0,
					Pivot = { 0.165, -0.05 },
					PivotOffset = { 0, 0 },
				},
				{
					Name = "FlakReload",
					Angle = 0,
					Pivot = { -0.25, 0 },
					PivotOffset = { 0, 0 },
					Sprite = "flak-reload",
					UserData = 100,
				},
				{
					Name = "FlakArm",
					Angle = 0,
					Pivot = { 0.6, -0.02 },
					PivotOffset = { 0, 0 },
					Sprite = "flak-arm",
					UserData = 70,
				},
			},
		},
	},
}
