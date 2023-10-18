local w = FindWeapon("rocketemp")
if w and w.Upgrades then
	local upgrade = FindUpgrade(w, "rocket")
	if upgrade then
		upgrade.Enabled = false
	end
end

w = FindWeapon("rocket")
if w then
	w.Enabled = false
	w.ExcludeUnlockAll = true
end
