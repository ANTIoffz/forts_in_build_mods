dofile("effects/device_explode_util.lua")

--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 5.0

Effects =
{
	Debris("weapons/gunner.dds"),
	Debris("weapons/gunner.dds"),
	Debris(path .. "/weapons/20mmcannon/barrel_destroyed1.dds"),
	Debris(path .. "/weapons/20mmcannon/head_destroyed.dds"),
	Debris(path .. "/weapons/20mmcannon/base_destroyed.dds"),
--	Sandbags(0),
--	DeviceExplodeSFX(),
	DeviceExplodeSprite()
}

--[[
function InitEffect()
	SFXVariants("/audio/sfx/explosions/explosion_medium_", 4)
end
]]
