dofile("effects/device_explode_util.lua")

--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 5.0

Effects =
{
	Debris("gunner"),
	Debris(path .. "/weapons/firebeam/beam_debris1.dds"),
	Debris(path .. "/weapons/firebeam/beam_debris2.dds"),
	Sandbags(0),
	DeviceExplodeSprite()
}
