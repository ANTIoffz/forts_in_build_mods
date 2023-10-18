local w = FindWeapon("subswarm")
if w then
	w.Enabled = false
	w.ExcludeUnlockAll = true
end

-- make sublauncher available from workshop directly
local w = FindWeapon("sublauncher")
if w then
	w.Enabled = true
	w.Prerequisite = "workshop"
end

