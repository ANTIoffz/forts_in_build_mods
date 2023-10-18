local w = FindWeapon("sniper")
if w and w.Upgrades then
	local upgrade = FindUpgrade(w, "sniper2")
	if upgrade then
		upgrade.Enabled = false
	end
end

w = FindWeapon("sniper2")
if w then
	w.Enabled = false
	w.ExcludeUnlockAll = true
end
