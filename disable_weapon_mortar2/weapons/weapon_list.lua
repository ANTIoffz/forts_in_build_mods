local w = FindWeapon("mortar")
if w and w.Upgrades then
	local upgrade = FindUpgrade(w, "mortar2")
	if upgrade then
		upgrade.Enabled = false
	end
end

w = FindWeapon("mortar2")
if w then
	w.Enabled = false
	w.ExcludeUnlockAll = true
end
