
SetDamageMultiplierSpecific("cannon20mm", "shield", "Splash", 0)

SetDamageMultiplierSpecific("shrapnel", "weapon", "Direct", 0.4)
SetDamageMultiplierSpecific("shrapnel", "device", "Direct", 0.4)

SetDamageMultiplierSpecific("sniper2", "shotgun", "Direct", 2)
SetDamageMultiplierSpecific("minigun", "shotgun", "Direct", 3)

cannon20mm = FindProjectile("cannon20mm")
if cannon20mm then
	cannon20mm.ProjectileDamage = 100
end
