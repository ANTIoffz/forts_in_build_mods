local w = FindWeapon("subswarm")
if w and w.Upgrades then
	local upgrade = FindUpgrade(w, "sublauncher")
	if upgrade then
		upgrade.Enabled = false
	end
end

w = FindWeapon("sublauncher")
if w then
	w.Enabled = false
	w.ExcludeUnlockAll = true
end

