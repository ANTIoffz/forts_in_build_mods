ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged.lua"
Scale = 1
SelectionWidth = 45.0
SelectionHeight = 84.75
SelectionOffset = { 0.0, -85.25 }
Mass = 100.0
HitPoints = 300.0
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
		Name = "ArmouryAnimation",

		States =
		{
			Normal =
			{
				Frames =
				{
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00000.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00001.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00002.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00003.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00004.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00005.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00006.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00007.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00008.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00009.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00010.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00011.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00012.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00013.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00014.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00015.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00016.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00017.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00018.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00019.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00020.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00021.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00022.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00023.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00024.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00025.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00026.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00027.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00028.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00029.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00030.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00031.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00032.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00033.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00034.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00035.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00036.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00037.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00038.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00039.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00040.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00041.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00042.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00043.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00044.jpg" },
					{ texture = path.. "/devices/tier2armoury/ArmouryAnim_00045.jpg" },

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
		Name = "SignAnimation2",

		States =
		{
			Normal =
			{
				Frames =
				{
					{ texture = path .. "/devices/tier2armoury/Sign01.dds" },
					{ texture = path .. "/devices/tier2armoury/Sign02.dds" },
					{ texture = path .. "/devices/tier2armoury/Sign03.dds" },

					duration = 0.5,
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				NextState = "Normal",
			},
		},
	},
	{
		Name = "armoury-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/devices/tier2armoury/base.dds" }, mipmap = true, }, },
		},
	},
}

Root =
{
	Name = "Armoury",
	Angle = 0,
	Pivot = { 0, -0.54 },
	PivotOffset = { 0, 0 },
	Sprite = "armoury-base",

--[[ChildrenInFront =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0.174, -0.2 },
			PivotOffset = { 0, 0 },
			Sprite = "SignAnimation2",
		},
	},
	]]

	ChildrenInFront =
	{
		{
			Name = "ArmouryAnimation",
			Angle = 0,
			Pivot = { 0, 0 },
			PivotOffset = { 0.14, 0.45 },
			Sprite = "ArmouryAnimation",
		},
	},
}