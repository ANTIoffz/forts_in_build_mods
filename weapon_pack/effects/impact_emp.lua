dofile("effects/device_explode_util.lua")

--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 3

Sprites =
{
	{
		Name = "impact_shield_emp",

		States =
		{
			Normal =
			{
				Frames =
				{
					{ texture = path .. "/effects/media/impact_shield_01.dds" },
					{ texture = path .. "/effects/media/impact_shield_02.dds" },
					{ texture = path .. "/effects/media/impact_shield_03.dds" },
					{ texture = path .. "/effects/media/impact_shield_04.dds" },
					{ texture = path .. "/effects/media/impact_shield_05.dds" },
					{ texture = path .. "/effects/media/impact_shield_06.dds" },
					{ texture = path .. "/effects/media/impact_shield_07.dds" },
					{ texture = path .. "/effects/media/impact_shield_08.dds" },
					{ texture = path .. "/effects/media/impact_shield_09.dds" },
					{ texture = path .. "/effects/media/impact_shield_10.dds" },
					{ texture = path .. "/effects/media/impact_shield_11.dds" },
					{ texture = path .. "/effects/media/impact_shield_12.dds" },
					{ texture = path .. "/effects/media/impact_shield_13.dds" },
					{ texture = path .. "/effects/media/impact_shield_14.dds" },
					{ texture = path .. "/effects/media/impact_shield_14.dds", colour = { 1, 1, 1, 0.0 }, duration = 2 }, -- just makes a blank frame long enough to last the rest of the effect

					duration = 0.07,
					blendColour = false,
					blendCoordinates = false,
				},
				--RandomPlayLength = 2,
				NextState = "Normal",
			},
		},
	},
	{
		Name = "impact_emp",

		States =
		{
			Normal =
			{
				Frames =
				{
					--{ texture = path .. "/effects/media/RocketEMP00.dds" },
					{ texture = path .. "/effects/media/RocketEMP01.dds" },
					{ texture = path .. "/effects/media/RocketEMP02.dds" },
					{ texture = path .. "/effects/media/RocketEMP03.dds" },
					{ texture = path .. "/effects/media/RocketEMP04.dds" },
					{ texture = path .. "/effects/media/RocketEMP05.dds" },
					{ texture = path .. "/effects/media/RocketEMP06.dds" },
					{ texture = path .. "/effects/media/RocketEMP07.dds" },
					{ texture = path .. "/effects/media/RocketEMP08.dds" },
					{ texture = path .. "/effects/media/RocketEMP09.dds" },
					{ texture = path .. "/effects/media/RocketEMP10.dds" },
					{ texture = path .. "/effects/media/RocketEMP11.dds" },
					{ texture = path .. "/effects/media/RocketEMP12.dds" },
					{ texture = path .. "/effects/media/RocketEMP13.dds" },
					{ texture = path .. "/effects/media/RocketEMP14.dds" },
					{ texture = path .. "/effects/media/RocketEMP15.dds" },
					{ texture = path .. "/effects/media/RocketEMP16.dds" },
					{ texture = path .. "/effects/media/RocketEMP17.dds" },
					{ texture = path .. "/effects/media/RocketEMP18.dds" },
					{ texture = path .. "/effects/media/RocketEMP18.dds", colour = { 1, 1, 1, 0.0 }, duration = 2 }, -- just makes a blank frame long enough to last the rest of the effect

					duration = 0.04,
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
	--DUST CLOUDS
		Type = "sparks",
		TimeToTrigger = 0.15,
		SparkCount = 5,
		LocalPosition = { x = 0, y = 0 },	-- how to place the origin relative to effect position and direction (0, 0) 
		Texture = path .. "/effects/media/cloud",

		Gravity = 400,						-- gravity applied to particle (981 is earth equivalent)
		
		EvenDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Min = -20,						-- minimum angle in degrees (e.g. -180, 45, 0)
			Max = 20,						-- maximum angle in degrees (e.g. -180, 45, 0)
			StdDev = 5,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},

		Keyframes =							
		{
			{
				Angle = 0,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 4,
				ScaleStdDev = 0.5,
				SpeedStretch = 0,
				SpeedMean = 500,	
				SpeedStdDev = 50,
				Drag = 1,
				RotationMean = 0,
				RotationStdDev = 45,
				RotationalSpeedMean = 5,
				RotationalSpeedStdDev = 0,
				AgeMean = 1.5,
				AgeStdDev = 0.5,
				AlphaKeys = { 0.5, 0.5 },
				ScaleKeys = { 0.1, 0.5 },
			},
		},
	},
	{
	--SPARKS
		Type = "sparks",
		TimeToTrigger = 0.1,
		SparkCount = 14,
		LocalPosition = { x = 0, y = 0 },	-- how to place the origin relative to effect position and direction (0, 0) 
		Texture = path .. "/effects/media/flame",

		Gravity = 0981,						-- gravity applied to particle (981 is earth equivalent)
		
		EvenDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Min = -35,						-- minimum angle in degrees (e.g. -180, 45, 0)
			Max = 35,						-- maximum angle in degrees (e.g. -180, 45, 0)
			StdDev = 5,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},

		Keyframes =							
		{
			{
				Angle = -35,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 0.25,
				ScaleStdDev = 0.1,
				SpeedStretch = 0,
				SpeedMean = 1000,
				SpeedStdDev = 200,
				Drag = 1,
				RotationMean = 45,
				RotationStdDev = 180,
				RotationalSpeedMean = 10,
				RotationalSpeedStdDev = 5,
				AgeMean = 0.5,
				AgeStdDev = 0.25,
				AlphaKeys = { 0.1, 0.5 },
				ScaleKeys = { 0.1, 0.5 },
			},
			{
				Angle = 35,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 0.25,
				ScaleStdDev = 0.1,
				SpeedStretch = 0,
				SpeedMean = 1000,
				SpeedStdDev = 200,
				Drag = 1,
				RotationMean = -45,
				RotationStdDev = -180,
				RotationalSpeedMean = 10,
				RotationalSpeedStdDev = 5,
				AgeMean = 0.5,
				AgeStdDev = 0.25,
				AlphaKeys = { 0.1, 0.5 },
				ScaleKeys = { 0.1, 0.5 },
			},
		},
	},
	{
	--DEBRIS
		Type = "sparks",
		TimeToTrigger = 0.1,
		SparkCount = 12,
		LocalPosition = { x = 0, y = 0 },	-- how to place the origin relative to effect position and direction (0, 0) 
		Texture = path .. "/effects/media/debris",

		Gravity = 0981,						-- gravity applied to particle (981 is earth equivalent)
		
		EvenDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Min = -35,						-- minimum angle in degrees (e.g. -180, 45, 0)
			Max = 35,						-- maximum angle in degrees (e.g. -180, 45, 0)
			StdDev = 5,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},

		Keyframes =							
		{
			{
				Angle = -35,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 0.5,
				ScaleStdDev = 0.25,
				SpeedStretch = 0,
				SpeedMean = 500,
				SpeedStdDev = 200,
				Drag = 1,
				RotationMean = 45,
				RotationStdDev = 180,
				RotationalSpeedMean = 10,
				RotationalSpeedStdDev = 5,
				AgeMean = 1,
				AgeStdDev = 0.5,
				AlphaKeys = { 0.1, 0.8 },
				ScaleKeys = { 0.1, 1 },
			},
			{
				Angle = 35,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 0.5,
				ScaleStdDev = 0.25,
				SpeedStretch = 0,
				SpeedMean = 500,
				SpeedStdDev = 200,
				Drag = 1,
				RotationMean = -45,
				RotationStdDev = -180,
				RotationalSpeedMean = 10,
				RotationalSpeedStdDev = 5,
				AgeMean = 1,
				AgeStdDev = 0.5,
				AlphaKeys = { 0.1, 0.8 },
				ScaleKeys = { 0.1, 1 },
			},
		},
	},
	{
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = 100, z = 0 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0.0,
		Sprite = "impact_shield_emp",
		Additive = false,
		TimeToLive = 2,
		InitialSize = 1.4,
		Angle = 0,
		ExpansionRate = 0,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		Colour1 = { 255, 255, 255, 255 },
		Colour2 = { 255, 255, 255, 255 },
	},
	{
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = -50, z = 0 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0.0,
		Sprite = "impact_emp",
		Additive = true,
		TimeToLive = 2,
		InitialSize = 1.5,
		Angle = 90,
		ExpansionRate = 0,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		Colour1 = { 255, 255, 255, 255 },
		Colour2 = { 255, 255, 255, 255 },
	},
	{
		Type = "shake",
		PlayForEnemy = true,
		FalloffStart = 1000,
		FalloffEnd = 5000,
		TimeToTrigger = 0,
		TimeToLive = 1,
		Magnitude = 20,
	},
}

