dofile("weapons/minigun.lua")
dofile("scripts/device_utility.lua")

FireEffect = path .. "/effects/minigun2.lua"

Projectile = "minigun2"

EnergyFireCost = EnergyFireCost + 200
MetalFireCost = MetalFireCost + 10
ReloadTime = ReloadTime + 4

path = path .. "/common"

Sprites =
{
	{
		Name = "minigun-head-turtle",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/minigun2/head.dds" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "minigun-spinning-barrel-turtle",
		InitialState = "Null",
		States =
		{
			Null = {},
			Flash =
			{
				Frames =
				{
					{ texture = path .. "/weapons/minigun2/minigun-barrel01.dds" },
					{ texture = path .. "/weapons/minigun2/minigun-barrel02.dds" },
					{ texture = path .. "/weapons/minigun2/minigun-barrel03.dds" },
					{ texture = path .. "/weapons/minigun2/minigun-barrel04.dds" },
					{ texture = path .. "/weapons/minigun2/minigun-barrel05.dds" },
					{ texture = path .. "/weapons/minigun2/minigun-barrel06.dds" },

					duration = 0.05,
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				NextState = "Flash",

				LoopLength = 2.8,
				LoopExitState = "Null",
			},
		},
	},
}

head = FindSpriteComponent(Root, "Head")
if head then
	head.Sprite = "minigun-head-turtle"
end

barrel = FindSpriteComponent(Root, "MuzzleFlash")
if barrel then
	barrel.Sprite = "minigun-spinning-barrel-turtle"
end
