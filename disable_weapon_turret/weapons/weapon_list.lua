local w = FindWeapon("hardpoint")
if w and w.Upgrades then
	local upgrade = FindUpgrade(w, "turret")
	if upgrade then
		upgrade.Enabled = false
	end
end

w = FindWeapon("turret")
if w then
	w.Enabled = false
	w.ExcludeUnlockAll = true
end
