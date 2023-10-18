
--cannon = FindProjectile("cannon")
--cannon.TrailEffect = path .."/effects/flaming_trail.lua"

FlakDetonation = { Effect = path .. "/effects/flak_explode.lua", Projectile = { Count = 12, Type = "shrapnel", Speed = 4000, StdDev = 1.1 }, Offset = -120, Terminate = true, }

table.insert(Projectiles,
{
	SaveName = "flak",

	ProjectileType = "bullet",
	ProjectileSprite = "weapons/media/bullet",
	ProjectileSpriteMipMap = false,
	DrawBlurredProjectile = true,
	ProjectileMass = 0.2,
	ProjectileDrag = 0,
	DeflectedByShields = false,
	ExplodeOnTouch = true,
	ProjectileThickness = 2.0,
	ProjectileShootDownRadius = 150,
	ProjectileShootDownRadiusBeamWidth = 15,
	CollisionLookaheadDist = 120,
	Impact = 10000,
	ProjectileDamage = 6.0,
	AntiAirDamage = 0,
	WeaponDamageBonus = 6.0,
	SpeedIndicatorFactor = 5.0,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,

	DamageMultiplier =
	{
		{ SaveName = "default", Direct = 0, },
	},

	Effects =
	{
		Impact =
		{
			["firebeam"] = FlakDetonation,
			["device"] = FlakDetonation,
			["foundations"] = FlakDetonation,
			["rocks01"] = FlakDetonation,
			["bracing"] = FlakDetonation,
			["backbracing"] = FlakDetonation,
			["armour"] = FlakDetonation,
			["door"] = FlakDetonation,
			["shield"] = FlakDetonation,
			["default"] = FlakDetonation,
		},
		Deflect =
		{
			["bracing"] = "effects/bullet_bracing_hit.lua",
			["backbracing"] = "effects/bullet_bracing_hit.lua",
			["armour"] = "effects/bullet_armor_ricochet.lua",
			["door"] = "effects/bullet_armor_ricochet.lua",
			["shield"] = "effects/energy_shield_ricochet.lua",
			["default"] = "effects/bullet_bracing_hit.lua",
		},
		Age =
		{
			t200 = FlakDetonation,
		},
	},
})

Shrapnel =
{
	SaveName = "shrapnel",

	ProjectileType = "bullet",
	ProjectileSprite = "weapons/media/bullet",
	ProjectileSpriteMipMap = false,
	DrawBlurredProjectile = true,
	ProjectileMass = 0.25,
	ProjectileDrag = 0.021,
	DeflectedByShields = true,
	DeflectedByTerrain = false,
	ExplodeOnTouch = false,
	ProjectileThickness = 2.0,
	ProjectileShootDownRadius = 9,
	Impact = 10000,
	ImpactMomentumLimit = 2000,
	ProjectileDamage = 6.0,
	WeaponDamageBonus = 12,
	SpeedIndicatorFactor = 5.0,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,
	MinAge = 0.25,
	MaxAge = 0.25,
	DrawFromAge = 2/FrameRate,

	Effects =
	{
		ImpactDevice =
		{
			["sandbags"] = "effects/bullet_sandbag_hit.lua",
		},
		Impact =
		{
			["device"] = "effects/impact_light.lua",
			["foundations"] = "effects/ground_hit.lua",
			["rocks01"] = "effects/ground_hit.lua",
			["bracing"] = "effects/bullet_bracing_hit.lua",
			["backbracing"] = "effects/bullet_bracing_hit.lua",
			["armour"] = "effects/bullet_armor_hit.lua",
			["door"] = "effects/bullet_armor_hit.lua",
			["shield"] = "effects/impact_light.lua",
			["default"] = "effects/impact_light.lua",
		},
		Deflect =
		{
			["bracing"] = "effects/bullet_bracing_hit.lua",
			["backbracing"] = "effects/bullet_bracing_hit.lua",
			["armour"] = "effects/bullet_armor_ricochet.lua",
			["door"] = "effects/bullet_armor_ricochet.lua",
			["shield"] = "effects/energy_shield_ricochet.lua",
			["default"] = "effects/bullet_bracing_hit.lua",
		},
	},

	DamageMultiplier =
	{
		{ SaveName = "mortar", Direct = 0.6, Splash = 1 },
		{ SaveName = "mortar2", Direct = 0.6, Splash = 1 },
		{ SaveName = "machinegun", Direct = 0.2, Splash = 1 },
		{ SaveName = "minigun", Direct = 0.2, Splash = 1 },
	},
}

table.insert(Projectiles, Shrapnel)

minigun = FindProjectile("minigun")
if minigun then
	if minigun.DamageMultiplier == nil then
		minigun.DamageMultiplier = {}
	end
	table.insert(minigun.DamageMultiplier, { SaveName = "rocketemp", Direct = 3, Splash = 1 })
	table.insert(minigun.DamageMultiplier, { SaveName = "rocket", Direct = 3, Splash = 1 })
	table.insert(minigun.DamageMultiplier, { SaveName = "shotgun", Direct = 3, Splash = 1 })
end

laser = FindProjectile("laser")
if laser then
	if laser.DamageMultiplier == nil then
		laser.DamageMultiplier = {}
	end
	table.insert(laser.DamageMultiplier, { SaveName = "shotgun", AntiAir = 0 })
	table.insert(laser.DamageMultiplier, { SaveName = "cannon20mm", AntiAir = 0 })
	table.insert(laser.DamageMultiplier, { SaveName = "shrapnel", AntiAir = 0 })
end

table.insert(Projectiles,
{
	SaveName = "shotgun",

	ProjectileType = "bullet",
	ProjectileSprite = "weapons/media/bullet",
	ProjectileSpriteMipMap = false,
	DrawBlurredProjectile = true,
	ProjectileMass = 0.2,
	ProjectileDrag = 0,
	DeflectedByShields = true,
	ExplodeOnTouch = false,
	ProjectileThickness = 2.0,
	ProjectileShootDownRadius = 14,
	Impact = 10000,
	ImpactMomentumLimit = 2000,
	ProjectileDamage = 40,
	WeaponDamageBonus = -5,
	SpeedIndicatorFactor = 5.0,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,

	Effects =
	{
		ImpactDevice =
		{
			["sandbags"] = "effects/bullet_sandbag_hit.lua",
		},
		Impact =
		{
			["device"] = "effects/impact_light.lua",
			["foundations"] = "effects/ground_hit.lua",
			["rocks01"] = "effects/ground_hit.lua",
			["bracing"] = "effects/bullet_bracing_hit.lua",
			["backbracing"] = "effects/bullet_bracing_hit.lua",
			["armour"] = "effects/bullet_armor_hit.lua",
			["door"] = "effects/bullet_armor_hit.lua",
			["shield"] = "effects/energy_shield_ricochet.lua",
			["default"] = "effects/impact_light.lua",
--			["shield"] = "effects/beam_hit.lua",
--			["shield"] = "effects/impact_light.lua",
		},
		Deflect =
		{
			["bracing"] = "effects/bullet_bracing_hit.lua",
			["backbracing"] = "effects/bullet_bracing_hit.lua",
			["armour"] = "effects/bullet_armor_ricochet.lua",
			["door"] = "effects/bullet_armor_ricochet.lua",
			["shield"] = "effects/energy_shield_ricochet.lua",
		},
	},

	DamageMultiplier =
	{
		{ SaveName = "sniper", Direct = 0.25, Splash = 1 },
		{ SaveName = "sniper2", Direct = 0.25, Splash = 1 },
		{ SaveName = "minigun", Direct = 0.25, Splash = 1 },
	},
})

EMPDetonation = { Effect = path .. "/effects/impact_emp.lua", Terminate = true, }

table.insert(Projectiles,
{
	SaveName = "rocketemp",

	ProjectileType = "missile",
	DrawBlurredProjectile = false,
	ProjectileMass = 5.0,
	ProjectileDrag = 13,
	DisableShields = true,
	DeflectedByShields = false,
	ExplodeOnTouch = true,
	ProjectileThickness = 4.0,
	ProjectileShootDownRadius = 15,
	Impact = 100000,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,
	ProjectileDamage = 100.0,
	ProjectileSplashDamage = 40.0,
	ProjectileSplashDamageMaxRadius = 120.0,
	ProjectileSplashMaxForce = 50000,
	SpeedIndicatorFactor = 0.05,
	AntiAirDamage = 60.0,
	EMPRadius = 150,
	EMPOffset = 50,
	EMPDuration = 10,
	EMPSensitivity = 0,
	Gravity = 0,
	IgnitesBackgroundMaterials = true,
	IgnitesBackgroundMaterialsPassing = true,
	IgnitesBackgroundMaterialsPassingSource = false,

	-- example usage
	--MaxAgeUnderwater = 3,
	--UnderwaterFadeDuration = 0.5,

	Projectile =
	{
		Root =
		{
			Name = "Root",
			Angle = 0,
			Sprite = path .. "/weapons/rocketemp/projectile",
			Pivot = { 0, 0.35 },

			ChildrenInFront =
			{
				{
					Name = "Flame",
					Angle = 0,
					Offset = { 0, 0.8 },
					Pivot = { 0, 0.1 },
					PivotOffset = { 0, 0 },
					Sprite = "missile_tail",
				},
			},
		}
	},

	TrailEffect = path .. "/effects/emp_trail.lua",

	Missile =
	{
		ThrustAngleExtent = 30,
		ErraticAngleExtentStdDev = 0.3,
		ErraticAngleExtentMax = 0.6,
		MaxSteerPerSecond = 200,
		MaxSteerPerSecondErratic = 300,
		ErraticAnglePeriodMean = 0.3,
		ErraticAnglePeriodStdDev = 0.05,
		RocketThrust = 10000,
		RocketThrustChange = 8000,
		ErraticThrust = 1.4,
		CruiseTargetDistance = 300,
		CruiseTargetDuration = .5,
		TargetRearOffsetDistance = 100000,
		MinTargetUpdateDistance = 2000,
	},

	DamageMultiplier =
	{
		{ SaveName = "shield", Direct = 0, Splash = 0.5 },
	},

	Effects =
	{
		Impact =
		{
			["device"] = path .. "/effects/impact_emp.lua",
			["antiair"] = EMPDetonation,
			["foundations"] = path .. "/effects/impact_emp.lua",
			["rocks01"] = path .. "/effects/impact_emp.lua",
			["shield"] = path .. "/effects/impact_emp.lua",
			["default"] = path .. "/effects/impact_emp.lua",
		},
		Deflect =
		{
		},
	},
})

table.insert(Projectiles,
{
	SaveName = "rocket",

	ProjectileType = "missile",
	DrawBlurredProjectile = false,
	ProjectileMass = 5.0,
	ProjectileDrag = 13,
	DisableShields = true,
	DeflectedByShields = false,
	ExplodeOnTouch = true,
	ProjectileThickness = 4.0,
	ProjectileShootDownRadius = 15,
	Impact = 100000,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,
	ProjectileDamage = 110.0,
	ProjectileSplashDamage = 45.0,
	ProjectileSplashDamageMaxRadius = 200.0,
	ProjectileSplashMaxForce = 75000,
	SpeedIndicatorFactor = 0.05,
	IgnitesBackgroundMaterials = true,
	IgnitesBackgroundMaterialsPassing = true,
	IgnitesBackgroundMaterialsPassingSource = false,
	EMPSensitivity = 0,
	Gravity = 0,
	AntiAirDamage = 60,

	Projectile =
	{
		Root =
		{
			Name = "Root",
			Angle = 0,
			Sprite = path .. "/weapons/rocket/projectile",
			Pivot = { 0, 0.35 },

			ChildrenInFront =
			{
				{
					Name = "Flame",
					Angle = 0,
					Offset = { 0, 0.8 },
					Pivot = { 0, 0.1 },
					PivotOffset = { 0, 0 },
					Sprite = "missile_tail",
				},
			},
		}
	},

	TrailEffect = path .. "/effects/rocket_trail.lua",

	Missile =
	{
		ThrustAngleExtent = 30,
		ErraticAngleExtentStdDev = 0.3,
		ErraticAngleExtentMax = 0.6,
		MaxSteerPerSecond = 200,
		MaxSteerPerSecondErratic = 350,
		ErraticAnglePeriodMean = 0.3,
		ErraticAnglePeriodStdDev = 0.05,
		RocketThrust = 10000,
		RocketThrustChange = 8000,
		ErraticThrust = 1.4,
		CruiseTargetDistance = 300,
		CruiseTargetDuration = .5,
		TargetRearOffsetDistance = 100000,
		MinTargetUpdateDistance = 2000,
	},

	Effects =
	{
		Impact =
		{
			["device"] = path .. "/effects/rocket_structure_hit.lua",
			["antiair"] = path .. "/effects/rocket_structure_hit.lua",
			["foundations"] = path .. "/effects/rocket_structure_hit.lua",
			["rocks01"] = path .. "/effects/rocket_structure_hit.lua",
			["default"] = path .. "/effects/rocket_structure_hit.lua",
		},
		Deflect =
		{
		},
	},

	DamageMultiplier =
	{
		{ SaveName = "shield", Direct = 0.25, Splash = 0.25 },
	},
})

MakeArmouredVersion("rocket", path .. "/weapons/rocket/projectile_armoured.dds", "effects/missile_armor_debris.lua")

table.insert(Projectiles,
{
	SaveName = "cannon20mm",

	ProjectileType = "mortar",
	ProjectileSprite = "weapons/media/bullet",
	ProjectileSpriteMipMap = false,
	DrawBlurredProjectile = true,
	ProjectileMass = 16,
	ProjectileDrag = 0,
	Impact = 20000,
	DisableShields = false,
	DeflectedByShields = true,
	PassesThroughMaterials = false,
	ExplodeOnTouch = false,
	ProjectileThickness = 5.0,
	ProjectileShootDownRadius = 60,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,
	ProjectileDamage = 90.0,
	ProjectileSplashDamage = 20.0, -- low splash damage
	ProjectileSplashDamageMaxRadius = 100.0,
	ProjectileSplashMaxForce = 10000, -- moderate shockwave
	AntiAirHitpoints = 40,
	SpeedIndicatorFactor = 0.25,

	TrailEffect = path .. "/effects/20mmcannon_trail.lua",

	Effects =
	{
		Impact =
		{
--			["device"] = "effects/impact_medium.lua",
--			["foundations"] = "effects/impact_medium.lua",
--			["rocks01"] = "effects/impact_heavy_ground.lua",
--			["bracing"] = "effects/impact_medium.lua",
--			["armour"] = "effects/impact_medium.lua",
--			["door"] = "effects/impact_medium.lua",
			["default"] = "effects/impact_medium.lua",
		},	
		Deflect =
		{
			["armour"] = { Effect = "effects/armor_ricochet.lua" },
			["door"] = { Effect = "effects/armor_ricochet.lua" },
			["shield"] = { Effect = "effects/energy_shield_ricochet.lua" },
		},
	},

	DamageMultiplier =
	{
		{ SaveName = "sandbags", Direct = 0.6, Splash = 0.6 },
	},
})

table.insert(Projectiles,
{
	SaveName = "firebeam",

	ProjectileType = "beam",
	ProjectileSprite = path .. "/weapons/firebeam/beam",
	ProjectileSpriteMipMap = true,
	DrawBlurredProjectile = false,
	ProjectileMass = 1.0,
	ProjectileDrag = 0.0,
	ProjectileIncendiary = true,
	IncendiaryRadius = 40,
	IncendiaryRadiusHeated = 40,
	IncendiaryOffset = 25,
	--IncendiaryHeatRate = 75,
	IgnitesBackgroundMaterials = true,
	IgnitesBackgroundMaterialsPassing = true,
	IgnitesBackgroundMaterialsPassingSource = false,
	DeflectedByShields = true,
	DeflectedByTerrain = false,
	ExplodeOnTouch = false,
	Impact = 0,
	BeamScrollRate = -10,
	BeamOcclusionDistance = 200,
	BeamOcclusionDistanceWater = 400,
	ProjectileDamage = 50,
	AntiAirDamage = 1, -- non-zero so damage can be multiplied
	MinPenetration = 160,
	SpeedIndicatorFactor = 0.05,
	ProjectileThickness = 30,

	Effects =
	{
		Impact =
		{
			["foundations"] = path .. "/effects/firebeam_hit_ground.lua",
			["rocks01"] = path .. "/effects/firebeam_hit_ground.lua",
			["default"] = path .. "/effects/firebeam_hit.lua",
			["shield"] = path .. "/effects/firebeam_absorb.lua",
		},
		Deflect =
		{
			["armour"] = path .. "/effects/firebeam_hit.lua",
			["door"] = path .. "/effects/firebeam_hit.lua",
			["shield"] = path .. "/effects/firebeam_hit.lua",
		},
	},

	DamageMultiplier =
	{
		{ SaveName = "reactor", Direct = 0, Splash = 0 },
	},
})

genericFlamingExpire = "effects/mortar_air_burst.lua"
rocketFlamingExpire = path .. "/effects/rocket_structure_hit.lua"
smallArmsFlare = "effects/small_arms_flare.lua" 
missileStructureHit = "effects/missile_structure_hit.lua"

flamingTrail = path .. "/effects/flaming_trail.lua"
flamingSniperTrail = path .. "/effects/flaming_sniper_trail.lua"
flamingSwarmTrail = path .. "/effects/flaming_swarm_trail.lua"

MakeFlamingVersion("machinegun",	1.25,	0.2, flamingSniperTrail, nil, smallArmsFlare)
MakeFlamingVersion("shrapnel",		1.25,	0.2, flamingSniperTrail, nil, smallArmsFlare)
MakeFlamingVersion("minigun",		1.25,	0.2, flamingSniperTrail, nil, smallArmsFlare)
MakeFlamingVersion("sniper",		1.25,	0.2, flamingSniperTrail, nil, smallArmsFlare)
MakeFlamingVersion("sniper2",		1.25,	 0.2, flamingSniperTrail, nil, smallArmsFlare)
MakeFlamingVersion("mortar",		1.33,	2, flamingTrail, 40, nil, genericFlamingExpire)
MakeFlamingVersion("mortar2",		1.33,	2, flamingTrail, 50, nil, genericFlamingExpire)
MakeFlamingVersion("cannon",		1.25,	0.4, flamingTrail, 80, nil, nil)
MakeFlamingVersion("missile",		1.33,	3, flamingSwarmTrail, 85, nil, genericFlamingExpire)
MakeFlamingVersion("missile2",		1.25,	4, flamingTrail, 150, nil, missileStructureHit)
if FindProjectile("damagedmissile2") then
	MakeFlamingVersion("damagedmissile2", 1.25,	4, flamingTrail, 150, nil, missileStructureHit)
end
MakeFlamingVersion("shotgun",		1.25,	0.2, flamingSniperTrail, nil, smallArmsFlare)
MakeFlamingVersion("rocket",		1.33,	2.3, flamingTrail, 75, nil, rocketFlamingExpire)
MakeFlamingVersion("rocketemp",		1.33,	2.3, flamingTrail, 75, nil, rocketFlamingExpire)
MakeFlamingVersion("cannon20mm",	1.25,	0.16, flamingTrail, 70, nil, nil)

local flamingMissile2 = FindProjectile("flamingmissile2")
if flamingMissile2 then
	flamingMissile2Damage = { Effect = "effects/mortar_air_burst.lua", Projectile = { Count = 1, Type = "flamingdamagedmissile2", }, Splash = false, Terminate = true, KeepLifespan = true, }
	flamingMissile2.Effects.Impact["antiair"] = flamingMissile2Damage
end

function MakeArmouredMissileTurnFlaming(saveName)
	local missile = FindProjectile(saveName)
	local armouredMissile = FindProjectile("armoured" .. saveName)
	if missile and armouredMissile then
		SetEffect(armouredMissile, "Impact", "firebeam", missile.Effects.Impact["firebeam"])
	end
end

MakeArmouredMissileTurnFlaming("missile")
MakeArmouredMissileTurnFlaming("rocketemp")
MakeArmouredMissileTurnFlaming("rocket")
