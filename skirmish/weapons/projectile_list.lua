local minigun = FindProjectile("minigun")
if minigun then
	if not minigun.DamageMultiplier then
		minigun.DamageMultiplier = {}
	end
	table.insert(minigun.DamageMultiplier, { SaveName = "bracing", Direct = 1.5, Splash = 1 })
	table.insert(minigun.DamageMultiplier, { SaveName = "sandbags", Direct = 5, Splash = 1 })
	table.insert(minigun.DamageMultiplier, { SaveName = "machinegun", Direct = 30/(minigun.ProjectileDamage + minigun.WeaponDamageBonus), Splash = 1 })
end

local missile = FindProjectile("missile")
if missile then
	missile.AlwaysIncendiary = true
	missile.IncendiaryRadius = 30
	missile.IncendiaryRadiusHeated = 30
	missile.IncendiaryOffset = -10
end

local missile2 = FindProjectile("missile2")
if missile2 then
	Missile2Damage = { Effect = "effects/mortar_air_burst.lua", Projectile = { Count = 1, Type = "damagedmissile2", }, Splash = false, Terminate = true, KeepLifespan = true, KeepAge = true, }

	missile2.ProjectileShootDownRadius = 14
	missile2.AntiAirDamage = 100
	missile2.Effects.Impact["antiair"] = Missile2Damage
end

local cannon = FindProjectile("cannon")
if cannon then
	cannon.AntiAirHitpoints = 120
	cannon.ProjectileSplashDamage = 40
	cannon.ProjectileSplashDamageMaxRadius = 230
end

function MakeMissileErratic(projectile)
	projectile.ProjectileDrag = 64
	projectile.Missile =
	{
		ThrustAngleExtent = 35,
		ErraticAngleExtentStdDev = 10,
		ErraticAngleExtentMax = 20,
		MaxSteerPerSecond = 120,
		MaxSteerPerSecondErratic = 600,
		ErraticAnglePeriodMean = 1.5,
		ErraticAnglePeriodStdDev = 0.1,
		ErraticThrust = 0.5,
		ErraticThrustMagneticField = 0.8,
		RocketThrust = 90000,
		CruiseTargetDistance = 2000,
		CruiseTargetDuration = .5,
		TargetRearOffsetDistance = 100000,
		MinTargetUpdateDistance = 2000,
	}
end

function MakeDamagedVersion(saveName, trailEffect)
	local projectile = FindProjectile(saveName)
	if not projectile then return end

	local damagedProjectile = DeepCopy(projectile)
	damagedProjectile.SaveName = "damaged" .. saveName
	if projectile.ProjectileType == "bullet" then
		damagedProjectile.ProjectileType = "mortar"
	end

	MakeMissileErratic(damagedProjectile)

	damagedProjectile.Effects.Impact["antiair"] = "effects/missile_structure_hit.lua"

	damagedProjectile.TrailEffect = path .. "/effects/" .. trailEffect .. ".lua"
	table.insert(Projectiles, damagedProjectile)
end

MakeDamagedVersion("missile2", "missile_trail_damaged")

-- uncomment to test Commander Seep's warhead to swarm missile burst in Sandbox
--local damagedmissile2 = FindProjectile("damagedmissile2")
--if damagedmissile2 then
--	damagedmissile2.Effects.Impact["antiair"] = { Effect = path .. "/effects/warhead_split.lua", Projectile = { Count = 15, Type = "missile", Speed = 2000, StdDev = 1 }, Terminate = true, }
--end

local rocket = FindProjectile("rocket")
if rocket then
	rocket.ProjectileShootDownRadius = 13
	rocket.ProjectileSplashOffset = 50
end

local rocketemp = FindProjectile("rocketemp")
if rocketemp then
	rocketemp.ProjectileShootDownRadius = 13
end

local cannon20mm = FindProjectile("cannon20mm")
if cannon20mm then
	cannon20mm.ProjectileMass = 0.5 -- reduced to allow deflection from sloped armour
	cannon20mm.ProjectileSplashOffset = 50 -- moved forward to apply an increased splash damage to dense structure, punishing woodspam
end
