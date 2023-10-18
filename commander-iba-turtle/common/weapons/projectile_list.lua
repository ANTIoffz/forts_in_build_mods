minigun = FindProjectile("minigun")
if minigun then
	local minigun2 = DeepCopy(minigun)

	minigun2.SaveName = "minigun2"
	minigun2.PenetrationDamage = 600
	minigun2.PenetrationSpeedMultiplier = 0.7
	minigun2.ProjectileThickness = 4
	minigun2.ProjectileMass = 1.55
	minigun2.ImpactMomentumLimit = nil

	if not minigun2.MomentumThreshold then minigun2.MomentumThreshold = {} end
	minigun2.MomentumThreshold["armour"] = { Reflect = 6000, Penetrate = 6000 }
	minigun2.MomentumThreshold["door"] = { Reflect = 6000, Penetrate = 6000 }
	minigun2.MomentumThreshold["shield"] = { Reflect = 10000, Penetrate = 10000 }
	minigun2.DeflectedByShields = nil

	--SetDamageMultiplier("minigun", { SaveName = "machinegun", Direct = 15/(minigun.ProjectileDamage + minigun.WeaponDamageBonus), Splash = 1 })

	SetEffect(minigun2, "Impact", "shield", "effects/energy_shield_ricochet.lua")

	SetEffect(minigun2, "Penetrate", "bracing", "effects/bullet_bracing_hit.lua")
	SetEffect(minigun2, "Penetrate", "armour", "effects/bullet_armor_hit.lua")
	SetEffect(minigun2, "Penetrate", "door", "effects/bullet_armor_hit.lua")
	SetEffect(minigun2, "Penetrate", "shield", { Effect = "effects/energy_shield_ricochet.lua", SpeedLossFactor = 0.5, Terminate = false })

	table.insert(Projectiles, minigun2)

	SetDamageMultiplierSpecific("minigun2", "bracing", "Direct", 0.375)
	SetDamageMultiplierSpecific("minigun2", "shotgun", "Direct", 3)
	SetDamageMultiplierSpecific("shrapnel", "minigun2", "Direct", 0.2)
	SetDamageMultiplierSpecific("shotgun", "minigun2", "Direct", 0.25)

	MakeFlamingVersion("minigun2", 1.25, 0.2, flamingSniperTrail, nil, smallArmsFlare)
end
