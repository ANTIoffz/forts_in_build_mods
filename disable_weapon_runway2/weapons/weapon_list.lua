local w = FindWeapon("runway")
if w and w.Upgrades then
	local upgrade = FindUpgrade(w, "runway2")
	if upgrade then
		upgrade.Enabled = false
	end
end

local w = FindWeapon("runway2")
if w then
	w.Enabled = false
	w.ExcludeUnlockAll = true
end
