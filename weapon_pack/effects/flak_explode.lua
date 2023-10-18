dofile("effects/device_explode_util.lua")

--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 2.5

Effects =
{	
	{
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = 0, z = 50 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0,
		Sprite = path .. "/effects/media/CloudLarge",
		Additive = false,
		TimeToLive = 1.5,
		InitialSize = 1.5,
		ExpansionRate = 250,
		AngularVelocity = 0,
		AngleMaxDeviation = 180,
		RandomAngularVelocityMagnitude = 2,
		Colour1 = { 255, 255, 255, 255 },
		Colour2 = { 255, 255, 255, 0 },
	},
	{
	--SPARKS
		Type = "sparks",
		TimeToTrigger = 0,
		SparkCount = 8,
		LocalPosition = { x = 0, y = 0, z = -0.5 },	-- how to place the origin relative to effect position and direction (0, 0) 
		Texture = path .. "/effects/media/flame",

		Gravity = 250,						-- gravity applied to particle (981 is earth equivalent)
		
		EvenDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Min = -180,						-- minimum angle in degrees (e.g. -180, 45, 0)
			Max = 180,						-- maximum angle in degrees (e.g. -180, 45, 0)
			StdDev = 5,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},

		Keyframes =							
		{
			{
				Angle = -180,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 0.4,
				ScaleStdDev = 0.05,
				SpeedStretch = 0,
				SpeedMean = 1000,
				SpeedStdDev = 200,
				Drag = 3,
				RotationMean = 45,
				RotationStdDev = 10,
				RotationalSpeedMean = 10,
				RotationalSpeedStdDev = 5,
				AgeMean = 0.25,
				AgeStdDev = 0.05,
				AlphaKeys = { 0.1, 0.5 },
				ScaleKeys = { 0.1, 0.5 },
			},
			{
				Angle = 180,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 0.4,
				ScaleStdDev = 0.05,
				SpeedStretch = 0,
				SpeedMean = 1000,
				SpeedStdDev = 200,
				Drag = 3,
				RotationMean = -45,
				RotationStdDev = -10,
				RotationalSpeedMean = 10,
				RotationalSpeedStdDev = 5,
				AgeMean = 0.25,
				AgeStdDev = 0.05,
				AlphaKeys = { 0.1, 0.5 },
				ScaleKeys = { 0.1, 0.5 },
			},
		},
	},
	{
	--DEBRIS
		Type = "sparks",
		TimeToTrigger = 0.05,
		SparkCount = 8,
		LocalPosition = { x = 0, y = 0, z = -0.25 },	-- how to place the origin relative to effect position and direction (0, 0) 
		Texture = path .. "/effects/media/debris",

		Gravity = 250,						-- gravity applied to particle (981 is earth equivalent)
		
		EvenDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Min = -180,						-- minimum angle in degrees (e.g. -180, 45, 0)
			Max = 180,						-- maximum angle in degrees (e.g. -180, 45, 0)
			StdDev = 5,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},

		Keyframes =							
		{
			{
				Angle = -180,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 0.5,
				ScaleStdDev = 0.1,
				SpeedStretch = 0.2,
				SpeedMean = 1000,
				SpeedStdDev = 200,
				Drag = 3,
				RotationMean = 45,
				RotationStdDev = 10,
				RotationalSpeedMean = 10,
				RotationalSpeedStdDev = 5,
				AgeMean = 0.25,
				AgeStdDev = 0.05,
				AlphaKeys = { 0.1, 0.5 },
				ScaleKeys = { 0.1, 0.5 },
			},
			{
				Angle = 180,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 0.4,
				ScaleStdDev = 0.05,
				SpeedStretch = 0,
				SpeedMean = 1000,
				SpeedStdDev = 200,
				Drag = 3,
				RotationMean = -45,
				RotationStdDev = -10,
				RotationalSpeedMean = 10,
				RotationalSpeedStdDev = 5,
				AgeMean = 0.25,
				AgeStdDev = 0.05,
				AlphaKeys = { 0.1, 0.5 },
				ScaleKeys = { 0.1, 0.5 },
			},
		},
	},
	{
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = 0, z = 0 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0,
		Sprite = path .. "/effects/media/AdditiveLarge",
		Additive = true,
		TimeToLive = 0.2,
		InitialSize = 2,
		ExpansionRate = 150,
		AngularVelocity = 0,
		AngleMaxDeviation = 180,
		RandomAngularVelocityMagnitude = 6,
		Colour1 = { 251, 187, 62, 255 },
		Colour2 = { 241, 167, 24, 0 },
	},
--[[
	{
		Type = "sound",
		TimeToTrigger = 0.0,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = "fire_cannon",
		Volume = 0.7,
		Priority = 192,
	},
]]
}

--[[
function InitEffect()
	SFXVariants("/audio/sfx/explosions/explosion_small_", 4)
end
]]