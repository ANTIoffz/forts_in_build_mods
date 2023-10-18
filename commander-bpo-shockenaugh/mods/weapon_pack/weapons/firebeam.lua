if active then
	Projectile = "laser"

	FireEffect = "effects/fire_laser.lua"
	FireEndEffect = "effects/laser_post_fire.lua"
	BeamDuration = 1.5
	EnergyFireCost = 5000/BeamDuration
	MetalFireCost = 0.0
	BeamEndEffectTime = 1.0
	BeamThicknessMultiplier = 1.0
	BeamDamageMultiplier = 1.0
	BeamPenetrationRotationThreshold = 0.0004
	BeamsCutOffEffects = true
	BeamsRecycleEffects = true

	-- first column is time keypoint
	-- second coloumn is thickness at that keypoint
	-- third column is damage at that keypoint
	BeamTable =
	{
		{ 0,	1,	0, },
		{ 0.25, 3,  0, },
		{ 0.5,	30, 1000, },
		{ 1,	30, 1000, }, -- 1000
		{ 1.5,	0,	0, },
	}

	--[[
	BeamTable =
	{
		{ 0,   1,  0, },
		{ 0.01, 1,  0, },
	}
	]]

	function BeamThickness(t)
		return InterpolateTable(BeamTable, t, 2)
	end

	function BeamDamage(t)
	--	return 0
		return InterpolateTable(BeamTable, t, 3)
	end
end
