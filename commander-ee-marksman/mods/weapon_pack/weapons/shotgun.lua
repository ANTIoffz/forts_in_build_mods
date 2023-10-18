dofile("scripts/device_utility.lua")

HasLaserSight = true

table.insert(Sprites,
{
	Name = "shotgun-reload-marksman",
	States =
	{
		Normal = { Frames = { { texture =  path .. "/weapons/shotgun/barrel01.dds" }, mipmap = true, }, },
		Idle = Normal,
		Reload =
		{
			Frames =
			{
				{ texture = path .. "/weapons/shotgun/barrel01.dds", duration = 0.5 },
				{ texture = path .. "/weapons/shotgun/barrel02.dds", duration = 0.1 },
				{ texture = path .. "/weapons/shotgun/barrel03.dds", duration = 0.1 },
				{ texture = path .. "/weapons/shotgun/barrel04.dds", duration = 0.1 },
				{ texture = path .. "/weapons/shotgun/barrel05.dds", duration = 0.1 },
				{ texture = path .. "/weapons/shotgun/barrel04.dds", duration = 120 },
				mipmap = true,
				duration = ReloadFramePeriod,
			},
		},
		ReloadEnd =
		{
			Frames =
			{
				{ texture = path .. "/weapons/shotgun/barrel03.dds" },
				{ texture = path .. "/weapons/shotgun/barrel02.dds" },
				mipmap = true,
				duration = 0.1,
			},
			NextState = "Normal",
		},
	},
})

reload = FindSpriteComponent(Root, "Reload")
if reload then
	reload.Sprite = "shotgun-reload-marksman"
end
