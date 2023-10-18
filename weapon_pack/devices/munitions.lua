ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged.lua"
Scale = 1
SelectionWidth = 45.0
SelectionHeight = 84.75
SelectionOffset = { 0.0, -85.25 }
Mass = 120.0
HitPoints = 400.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
DrawBracket = false
DrawBehindTerrain = true
NoReclaim = false
TeamOwned = true

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "MunitionsShells",

		States =
		{
			Normal =
			{
				Frames =
				{
					{ texture = "mods/weapon_pack/devices/tier3munitions/shells00000.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/shells00001.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/shells00002.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/shells00003.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/shells00004.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/shells00005.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/shells00006.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/shells00007.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/shells00008.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/shells00009.jpg" },

					duration = 0.1,
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				NextState = "Normal",
			},
		},
	},
	{
		Name = "MunitionsWorker",

		States =
		{
			Normal =
			{
				Frames =
				{
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00000.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00001.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00002.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00003.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00004.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00005.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00006.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00007.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00008.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00009.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00010.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00011.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00012.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00013.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00014.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00015.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00016.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00017.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00018.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00019.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00020.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00021.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00022.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00023.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00024.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00025.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00026.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00027.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00028.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00029.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00030.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00031.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00032.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00033.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00034.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00035.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00036.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00037.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00038.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00039.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00040.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00041.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00042.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00043.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00044.jpg" },
					{ texture = "mods/weapon_pack/devices/tier3munitions/welder00045.jpg" },

					duration = 0.1,
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				NextState = "Normal",
			},
		},
	},
	{
		Name = "munitions-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/devices/tier3munitions/base.dds" }, mipmap = true, }, },
		},
	},
}

NodeEffects =
{
	{
		NodeName = "SteamMunitions",
		EffectPath = "effects/reactor_steam.lua",
		Automatic = true,
	},
}

Root =
{
	Name = "munitions",
	Angle = 0,
	Pivot = { 0, -0.54 },
	PivotOffset = { 0, 0 },
	Sprite = "munitions-base",

	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0.07, 0.38 },
			PivotOffset = { 0, 0 },
			Sprite = "MunitionsShells",
		},
		{
			Name = "Worker",
			Angle = 0,
			Pivot = { 0.05, 0.08 },
			PivotOffset = { 0, 0 },
			Sprite = "MunitionsWorker",
		},
		{
			Name = "SteamMunitions",
			Angle = 0,
			Pivot = { 0.15, -0.2 },
			PivotOffset = { 0, 0 },
		},
	},
}
