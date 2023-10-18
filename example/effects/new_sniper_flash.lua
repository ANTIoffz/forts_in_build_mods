--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 0.7

-- don't create a new Sprites table here or the sniper_flash sprite will not exist
Sprites =
{
}

-- create a new effects list
Effects =
{
	{
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 10, y = 130, z = 0 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0.0,
		Sprite = "sniper_flash",
		Additive = true,
		TimeToLive = 2,
		InitialSize = 3,
		ExpansionRate = 0,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		Colour1 = { 128, 128, 128, 255 },
		Colour2 = { 128, 128, 128, 255 },
	},
}
