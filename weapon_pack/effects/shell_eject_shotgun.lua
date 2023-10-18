dofile("scripts/core.lua")

--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 1.0

Effects =
{
--[[	{
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = 0, z = 0 },
		LocalVelocity = { x = 20, y = 150, z = 0 },
		Acceleration = { x = 0, y = 200, z = 0 },
		Drag = 0.0,
		Sprite = path .. "/effects/media/casing",
		Additive = false,
		TimeToLive = 2,
		Angle = 90,
		InitialSize = 1,
		ExpansionRate = 0,
		AngularVelocity = -720,
		RandomAngularVelocityMagnitude = 180,
		Colour1 = { 255, 255, 255, 255 },
		Colour2 = { 255, 255, 255, 0},
	},]]
}

function InitEffect()
	casing = GetSpriteKey(path .. "/effects/media/casingShotgun.dds");
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
	speed = 200
	deviation = 0
end

function UpdateEffect(self, effectTime, pos, normal, mirror)
	if self == nil then
		-- create new state for the effect
		self = {}
		self.openTime = 1.5 --math.random(1, 1.1)
		self.closeTime = self.openTime + 1
	end

	if not self.triggered and effectTime >= 0.75 then
		self.triggered = true
		local baseAngle = -45
		if mirror then
			baseAngle = -baseAngle
		end
		local angle = ToRad(baseAngle + 2*deviation*math.random() - deviation)
		local velocity = Vec3(speed*normal.x, speed*normal.y)
		velocity = Rotate(velocity, angle)
		SpawnParticle(casing, pos, velocity, particleParams)
	end

	return self
end
