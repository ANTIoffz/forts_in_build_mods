
ProjectilesToAffect =
{
	"cannon",
	"flamingcannon",
	"20mmcannon",
	"flaming20mmcannon",
	"missile2",
	"damagedmissile2",
	"flamingmissile2",
	"flamingdamagedmissile2",
}

CommanderApplyModBase = function()
	local multiplier = 1.25
	local multiplierSplashDamage = 1
	local multiplierSplashRadius = 1.25

	for k,projectile in ipairs(Projectiles) do
		if projectile.Missile then
			projectile.Missile.RocketThrust = multiplier*(projectile.Missile.RocketThrust or 0)
		end
	end

	if active then
		for k,v in ipairs(ProjectilesToAffect) do
			local projectile = FindProjectile(v)
			if projectile then
				projectile.ProjectileDamage = multiplier*(projectile.ProjectileDamage or 0)
				projectile.ProjectileSplashDamage = multiplierSplashDamage*(projectile.ProjectileSplashDamage or 0)
				projectile.ProjectileSplashDamageMaxRadius = multiplierSplashRadius*(projectile.ProjectileSplashDamageMaxRadius or 0)
			end
		end
	end
end
RegisterApplyMod(CommanderApplyModBase)