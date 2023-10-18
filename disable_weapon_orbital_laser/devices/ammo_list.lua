local w = FindDevice("ammo_orbital_sweep")
if w and w.Upgrades then
	local upgrade = FindUpgrade(w, "ammo_orbital_focus")
	if upgrade then
		upgrade.Enabled = false
	end
end

d = FindDevice("ammo_orbital_sweep")
if d then
	d.Enabled = false
	d.ExcludeUnlockAll = true
end

d = FindDevice("ammo_orbital_focus")
if d then
	d.Enabled = false
	d.ExcludeUnlockAll = true
end
