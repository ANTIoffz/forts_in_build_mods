local d = FindDevice("armoury")
if d then
	d.Enabled = false
end

d = FindDevice("factory")
if d then
	d.PrerequisiteAlt = nil
end

d = FindDevice("munitions")
if d then
	d.PrerequisiteAlt = nil
end
