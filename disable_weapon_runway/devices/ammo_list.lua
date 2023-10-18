local d = FindDevice("ammo_thunderbolt")
if d then
	d.Enabled = false
	d.ExcludeUnlockAll = true
end

d = FindDevice("ammo_nighthawk")
if d then
	d.Enabled = false
	d.ExcludeUnlockAll = true
end
