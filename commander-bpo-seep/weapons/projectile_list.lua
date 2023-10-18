
local damagedmissile2 = FindProjectile("damagedmissile2")
if damagedmissile2 then
	damagedmissile2.Effects.Impact["antiair"] = { Effect = path .. "/effects/warhead_split.lua", Projectile = { Count = 15, Type = "missile", Speed = 2000, StdDev = 1 }, Terminate = true, }
end

local rocketemp = FindProjectile("rocketemp")
if rocketemp then
	rocketemp.EMPMissileReturnToSource = true
	if active then
		MakeMissileErratic(rocketemp)
		rocketemp.TrailEffect = "mods/skirmish/effects/missile_trail_damaged.lua"
	end
end

local flamingrocketemp = FindProjectile("flamingrocketemp")
if flamingrocketemp then
	flamingrocketemp.EMPMissileReturnToSource = true

	if active then
		MakeMissileErratic(flamingrocketemp)
	end
end

local rocket = FindProjectile("rocket")
if rocket then
	if active then
		MakeMissileErratic(rocket)
		rocket.TrailEffect = "mods/skirmish/effects/missile_trail_damaged.lua"
	end
end

CommanderApplyModBase = function()
	if active then
		local multiplier = 1.32

		for k,projectile in ipairs(Projectiles) do
			if projectile.Missile then
				projectile.Missile.RocketThrust = multiplier*projectile.Missile.RocketThrust
				if projectile.Missile.RocketThrustChange then
					projectile.Missile.RocketThrustChange = multiplier*projectile.Missile.RocketThrustChange
				end
			end
		end
	end
end
RegisterApplyMod(CommanderApplyModBase)

smoke = FindProjectile("smoke")
if smoke then
	smoke.MaxAge = 1.2*smoke.MaxAge
	smoke.FieldRadius = 1.1*smoke.FieldRadius
end
