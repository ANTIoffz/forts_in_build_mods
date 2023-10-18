--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 6

Sprites =
{
	{
		Name = "firebeam_fire",

		States =
		{
			Normal =
			{
				Frames =
				{
					{ texture = path .. "/effects/media/FirebeamFX01.dds" },
					{ texture = path .. "/effects/media/FirebeamFX02.dds" },
					{ texture = path .. "/effects/media/FirebeamFX03.dds" },
					{ texture = path .. "/effects/media/FirebeamFX04.dds" },
					{ texture = path .. "/effects/media/FirebeamFX01.dds" },
					{ texture = path .. "/effects/media/FirebeamFX02.dds" },
					{ texture = path .. "/effects/media/FirebeamFX03.dds" },
					{ texture = path .. "/effects/media/FirebeamFX04.dds" },
					{ texture = path .. "/effects/media/FirebeamFX01.dds" },
					{ texture = path .. "/effects/media/FirebeamFX02.dds" },
					{ texture = path .. "/effects/media/FirebeamFX03.dds" },
					{ texture = path .. "/effects/media/FirebeamFX04.dds" },
					{ texture = path .. "/effects/media/FirebeamFX01.dds" },
					{ texture = path .. "/effects/media/FirebeamFX02.dds" },
					{ texture = path .. "/effects/media/FirebeamFX03.dds" },
					{ texture = path .. "/effects/media/FirebeamFX04.dds" },
					{ texture = path .. "/effects/media/FirebeamFX01.dds" },
					{ texture = path .. "/effects/media/FirebeamFX02.dds" },
					{ texture = path .. "/effects/media/FirebeamFX03.dds" },
					{ texture = path .. "/effects/media/FirebeamFX04.dds" },
					{ texture = path .. "/effects/media/FirebeamFX01.dds" },
					{ texture = path .. "/effects/media/FirebeamFX02.dds" },
					{ texture = path .. "/effects/media/FirebeamFX03.dds" },
					{ texture = path .. "/effects/media/FirebeamFX04.dds" },
					{ texture = path .. "/effects/media/FirebeamFX01.dds" },
					{ texture = path .. "/effects/media/FirebeamFX02.dds" },
					{ texture = path .. "/effects/media/FirebeamFX03.dds" },
					{ texture = path .. "/effects/media/FirebeamFX04.dds" },
					{ texture = path .. "/effects/media/FirebeamFX01.dds" },
					{ texture = path .. "/effects/media/FirebeamFX02.dds" },
					{ texture = path .. "/effects/media/FirebeamFX03.dds" },
					{ texture = path .. "/effects/media/FirebeamFX04.dds" },
					{ texture = path .. "/effects/media/FirebeamFX01.dds" },
					{ texture = path .. "/effects/media/FirebeamFX02.dds" },
					{ texture = path .. "/effects/media/FirebeamFX03.dds" },
					{ texture = path .. "/effects/media/FirebeamFX04.dds" },
					{ texture = path .. "/effects/media/FirebeamFX01.dds" },
					{ texture = path .. "/effects/media/FirebeamFX02.dds" },
					{ texture = path .. "/effects/media/FirebeamFX03.dds" },
					{ texture = path .. "/effects/media/FirebeamFX04.dds", colour = { 1, 1, 1, 0.0 }, duration = 2 }, -- just makes a blank frame long enough to last the rest of the effect

					duration = 0.066,
					blendColour = false,
					blendCoordinates = false,
				},
				--RandomPlayLength = 2,
				NextState = "Normal",
			},
		},
	},
}

Effects =
{
	{
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 12, y = 34, z = 0 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0.0,
		Sprite = "firebeam_fire",
		Additive = true,
		TimeToLive = 3,
		Angle = -90,
		InitialSize = 1,
		ExpansionRate = 0,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		KillParticleOnEffectCancel = true,
		Colour1 = { 255, 255, 255, 255 },
		Colour2 = { 255, 255, 255, 255 },
	},

--[[	{
		Type = "bullettime",
		TimeToTrigger = 0,
		TimeToContinue = 1.5,
		Speed = 0.5,
	},
]]
}
