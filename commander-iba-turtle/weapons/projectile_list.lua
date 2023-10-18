if active then
	local sniper2 = FindProjectile("sniper2")
	if sniper2 then
		sniper2.PenetrationDamage = 850
		if active then
			sniper2.TrailEffect = path .. "/effects/sniper_trail.lua"
			if sniper2.MomentumThreshold == nil then
				sniper2.MomentumThreshold = {}
			end
			sniper2.MomentumThreshold["shield"] = { Reflect = 400, Penetrate = 400 }
			sniper2.PenetrationSpeedMultiplier = 0.8
			sniper2.TrailEffect = path .. "/effects/sniper_trail.lua"
			sniper2.ProjectileThickness = sniper2.ProjectileThickness + 1
		end
	end

	local minigun2 = FindProjectile("minigun2")
	if minigun2 then
		if minigun2.MomentumThreshold == nil then
			minigun2.MomentumThreshold = {}
		end
		minigun2.MomentumThreshold["shield"] = { Reflect = 400, Penetrate = 8000 }
	end
end
