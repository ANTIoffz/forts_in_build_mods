dofile("scripts/core.lua")

--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 26.0

Effects =
{
}

OpenSounds =
{
}

CloseSounds =
{
}

function InitEffect()
	casing = GetSpriteKey(path .. "/effects/media/casing20mmCannon.dds");
	particleParams =
	{
		accel = Vec3(10, 200),
		size = 1,
		growthRate = 0,
		angle = 90,
		angularVel = -720,
		ttl = 2,
		drag = 0,
		initialColour = Colour(255, 255, 255, 255),
		finalColour = Colour(255, 255, 255, 0),
		additive = false,
	}
end

function UpdateEffect(self, effectTime, pos, normal, mirror)
	if self == nil then
		-- create new state for the effect
		self = {}
		self.openTime = 0 --math.random(1, 1.1)
		self.closeTime = self.openTime + 1
	end

	local speed = 200
	local deviation = 10
	local baseAngle = -45
	if mirror then
		baseAngle = -baseAngle
	end
	local angle = ToRad(baseAngle + 2*deviation*math.random() - deviation)
	local velocity = Vec3(speed*normal.x, speed*normal.y)
	velocity = Rotate(velocity, angle)
	
	if self.openTime and effectTime > self.openTime then
		if #OpenSounds > 0 then
			-- TriggerSound(OpenSounds[math.random(#OpenSounds)], 0.5, 64, false, true, pos)
		end
		SpawnParticle(casing, pos, velocity, particleParams);
		self.openTime = nil
	elseif self.closeTime and effectTime > self.closeTime then
		if #CloseSounds > 0 then
			-- TriggerSound(CloseSounds[math.random(#CloseSounds)], 0.5, 64, false, true, pos)
		end
		self.closeTime = nil
	end
	
	return self
end
