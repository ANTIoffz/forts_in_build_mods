--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 1

Effects =
{
	{
		Type = "sprite",
		TimeToTrigger = 0,
		PlayForEnemy = false,
		LocalPosition = { x = 0, y = 0, z = 0 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0.01,
		Sprite = "repairfieldactive",
		KillParticleOnEffectCancel = true,
		KillParticleOnEffectExpire = true,
		Additive = false,
		TimeToLive = 10000000,
		InitialSize = 4.7,
		ExpansionRate = 0,
		AngleMaxDeviation = 0,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		Colour1 = { 255, 255, 255, 32 },
		Colour2 = { 255, 255, 255, 0 },
	},
}
--[[
Sounds =
{
	"audio/sfx/tools/tool_ratchet_01.wav",
	"audio/sfx/tools/tool_ratchet_02.wav",
	"audio/sfx/tools/tool_ratchet_03.wav",
	"audio/sfx/tools/tool_ratchet_04.wav",
	"audio/sfx/tools/tool_ratchet_05.wav",
	"audio/sfx/tools/tool_ratchet_06.wav",
}

Repeat = false

function UpdateEffect(self, effectTime, pos)
	if self == nil then self = {} end

	if self.channel == nil or (Repeat and not IsSoundPlaying(self.channel)) then
		self.channel = TriggerSound(Sounds[math.random(#Sounds)], 0.8, 192, false, true, pos)
	end
	
	return self
end
]]
