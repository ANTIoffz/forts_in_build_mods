
function MakeIncendiaryFromSplash(saveName, trail)
	local projectile = FindProjectile(saveName)
	if projectile then
		if not turret.IncendiaryRadius or projectile.IncendiaryRadius < projectile.ProjectileSplashDamageMaxRadius then
			projectile.IncendiaryRadius = projectile.ProjectileSplashDamageMaxRadius
		end
		projectile.ProjectileIncendiary = true
		if trail then
			projectile.TrailEffect = trail
		else
			projectile.TrailEffect = "mods/commander-ee-fireman/effects/mortar_trail_smoke_small.lua"
		end
	end
end

CommanderApplyModBase = function()
	local activeRadius = 70
	local activeRadiusHeated = 80
	local activeOffset = 20

	local incendiaryMortar = FindProjectile("mortar")
	if incendiaryMortar then
		incendiaryMortar.IncendiaryRadius = activeRadius
		incendiaryMortar.IncendiaryRadiusHeated = activeRadiusHeated
		incendiaryMortar.IncendiaryOffset = activeOffset
		incendiaryMortar.AlwaysIncendiary = true
	end

	local cannon = FindProjectile("cannon")
	if cannon then
		cannon.ProjectileIncendiary = true
		cannon.IncendiaryRadius = 50
		cannon.IncendiaryRadiusHeated = 60
		cannon.IncendiaryOffset = -10
		cannon.AlwaysIncendiary = true
	end

	local cannon20mm = FindProjectile("cannon20mm")
	if cannon20mm then
		cannon20mm.ProjectileIncendiary = true
	end

	local flamingNoExpire =
	{
		"flamingmortar",
		"flamingmortar2",
		"flamingrocketemp",
		"flamingrocket",
		"flamingmissile",
		"flamingmissile2",
		"flamingdamagedmissile2",
	}

	for k,saveName in ipairs(flamingNoExpire) do
		local flamingProj = FindProjectile(saveName)
		if flamingProj then
			flamingProj.MaxAge = nil
		end
	end

	if active then
		local sniper = FindProjectile("sniper")
		local sniper2 = FindProjectile("sniper2")
		local dome = FindProjectile("dome")

		if sniper then
			sniper.TrailEffect = "mods/commander-ee-fireman/effects/sniper_trail_incendiary.lua"
		end
		if sniper2 then
			sniper2.TrailEffect = "mods/commander-ee-fireman/effects/sniper_trail_incendiary.lua"
		end
		local mortar = FindProjectile("mortar2")
		if mortar then
			mortar.TrailEffect = "mods/commander-ee-fireman/effects/mortar_trail_smoke_small.lua"
		end

		for k, v in ipairs(Projectiles) do
            if v ~= dome then
                v.ProjectileIncendiary = true
                if v ~= sniper2 and v ~= incendiaryMortar and v ~= cannon then
                    if not v.IncendiaryRadius or v.IncendiaryRadius < activeRadius then
                        if v.ProjectileType ~= "bullet" then
                            v.IncendiaryRadius = activeRadius
                            v.IncendiaryRadiusHeated = activeRadiusHeated
                            v.IncendiaryOffset = activeOffset
                            v.AlwaysIncendiary = true
                        end
                        if v.ProjectileType == "missile" then
                            -- HACK: need to hard code here otherwise the effect isn't preloaded and goes missing
                            v.TrailEffect = "mods/commander-ee-fireman/effects/mortar_trail.lua"
                        end
                    end
                end
			end
		end
		
		local missile = FindProjectile("missile2")
		if missile then
			missile.IncendiaryRadius = 3.5*activeRadius
			missile.IncendiaryRadiusHeated = 4.0*activeRadiusHeated
			missile.AlwaysIncendiary = true
		end

		local missileDamaged = FindProjectile("damagedmissile2")
		if missileDamaged then
			missileDamaged.IncendiaryRadius = 3.5*activeRadius
			missileDamaged.IncendiaryRadiusHeated = 4.0*activeRadiusHeated
			missileDamaged.AlwaysIncendiary = true
			missileDamaged.TrailEffect = "mods/commander-ee-fireman/effects/mortar_trail_smoke.lua"
		end
	end
end
RegisterApplyMod(CommanderApplyModBase)