local d = FindDevice("workshop")
if d then
	d.Enabled = false
end

d = FindDevice("factory")
if d then
	d.Prerequisite = nil
end

d = FindDevice("munitions")
if d then
	d.Prerequisite = nil
end
