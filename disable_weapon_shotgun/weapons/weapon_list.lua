local w = FindWeapon("flak")
if w and w.Upgrades then
	local upgrade = FindUpgrade(w, "shotgun")
	if upgrade then
		upgrade.Enabled = false
	end
end

local w = FindWeapon("shotgun")
if w then
	w.Enabled = false
	w.ExcludeUnlockAll = true
end
