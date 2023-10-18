local machinegun = FindWeapon("machinegun")
if machinegun then
	machinegun.BuildTimeComplete = 20

	local minigun = FindUpgrade(machinegun, "minigun")
	if minigun then
		minigun.MetalCost = 125
	end
end

local minigun = FindWeapon("minigun")
if minigun and machinegun then
	minigun.MetalCost = machinegun.MetalCost + 125
end

local mortar2 = FindWeapon("mortar2")
if mortar2 then
	mortar2.BuildTimeComplete = 20
end

local mortar = FindWeapon("mortar")
if mortar then
	mortar.MetalCost = 150
	local mortarUpgrade = FindUpgrade(mortar, "mortar2")

	if mortarUpgrade and mortar2 then
		mortarUpgrade.MetalCost = mortar2.MetalCost - mortar.MetalCost
	end
end

local missileinv = FindWeapon("missileinv")
if missileinv then
	missileinv.Enabled = true
	missileinv.MetalCost = 500
	missileinv.MetalRepairCost = 0.33*missileinv.MetalCost
end

local missile = FindWeapon("missile")
if missile then
	missile.MetalCost = 500
	missile.MetalRepairCost = 0.33*missile.MetalCost
end

local missile2inv = FindWeapon("missile2inv")
if missile2inv then
	missile2inv.BuildTimeComplete = 95
	missile2inv.MetalCost = 700
	missile2inv.MetalRepairCost = 0.33*missile2inv.MetalCost
end

local missile2 = FindWeapon("missile2")
if missile2 then
	missile2.BuildTimeComplete = 95
	missile2.MetalCost = 700
	missile2.MetalRepairCost = 0.33*missile2.MetalCost
end

local cannon = FindWeapon("cannon")
if cannon then
	cannon.MetalRepairCost = 0.33*cannon.MetalCost
end

local laser = FindWeapon("laser")
if laser then
	laser.MetalRepairCost = 0.33*laser.MetalCost
end
