local w = FindWeapon("machinegun")
if w and w.Upgrades then
	local upgrade = FindUpgrade(w, "minigun")
	if upgrade then
		upgrade.Enabled = false
	end
end

w = FindWeapon("minigun")
if w then
	w.Enabled = false
	w.ExcludeUnlockAll = true
end
