local w = FindWeapon("missile")
if w and w.Upgrades then
	local upgrade = FindUpgrade(w, "missile2")
	if upgrade then
		upgrade.Enabled = false
	end
end

w = FindWeapon("missileinv")
if w and w.Upgrades then
	local upgrade = FindUpgrade(w, "missile2inv")
	if upgrade then
		upgrade.Enabled = false
	end
end

w = FindWeapon("missile2")
if w then
	w.Enabled = false
	w.ExcludeUnlockAll = true
end

w = FindWeapon("missile2inv")
if w then
	w.Enabled = false
	w.ExcludeUnlockAll = true
end
