
--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 5.0

Effects =
{
	{
		Type = "trail",
		Texture = "objects/projectiles/missile/trail.dds",
		LocalPosition = { x = 0, y = 0, z = 9.0 },
		Width = 8,
		Length = 1,
		Keyframes = 100,
		KeyframePeriod = 0.05,
		RepeatRate = 0.001,
		ScrollRate = 0,
		FattenRate = 0,
		Colour = { 100, 100, 255, 255 },
	}
}
