local w = FindWeapon("hardpoint")
if w and w.Upgrades then
	local upgrade = FindUpgrade(w, "orbital_laser")
	if upgrade then
		upgrade.Enabled = false
	end
end

w = FindWeapon("orbital_laser")
if w then
	w.Enabled = false
	w.ExcludeUnlockAll = true
end
