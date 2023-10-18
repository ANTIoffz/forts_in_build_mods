
ExplosiveProjectileDamageFactor =
{
	["minigun"] = 1.2,
	["sniper"] = 2.5,
	["sniper2"] = 5.5,
}

CommanderApplyModBase = function()
	local multiplier = 0.9

	incendiaryMortar = FindProjectile("mortar")
	incendiaryMortarAirBurst = incendiaryMortar.Effects.Impact["antiair"]

	-- reduce the drag for all projectiles
	for k,projectile in ipairs(Projectiles) do
		projectile.ProjectileDrag = multiplier*(projectile.ProjectileDrag or 0)

		if active and ExplosiveProjectileDamageFactor[projectile.SaveName] then			
			projectile.ExplodeOnTouch = true
			projectile.ProjectileSplashDamage = 7.5*ExplosiveProjectileDamageFactor[projectile.SaveName]
			projectile.ProjectileSplashDamageMaxRadius = 90.0
			
			if projectile.Effects then
				for m,effect in pairs(projectile.Effects.Impact) do
					projectile.Effects.Impact[m] = incendiaryMortarAirBurst
				end
			end
		end
	end
end
RegisterApplyMod(CommanderApplyModBase)
