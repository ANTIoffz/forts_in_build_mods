flak = FindWeapon("flak")
if flak then
	local shotgunUpgrade = FindUpgrade(flak, "shotgun")
	if shotgunUpgrade then
		shotgunUpgrade.MetalCost = 50
	end
end

shotgun = FindWeapon("shotgun")
if shotgun then
	shotgun.MetalCost = 250
	shotgun.BuildTimeComplete = 20
end

local rocket = FindWeapon("rocket")
if rocket then
	rocket.BuildTimeComplete = 30
	rocket.MetalCost = 350
	rocket.EnergyCost = 3500
end

local rocketemp = FindWeapon("rocketemp")
if rocketemp then
	rocketemp.MetalCost = 200
	rocketemp.EnergyCost = 2000

	local rocketUpgrade = FindUpgrade(rocketemp, "rocket")
	if rocket and rocketUpgrade then
		rocketUpgrade.MetalCost = 150
		rocketUpgrade.EnergyCost = 1500
	end
end
