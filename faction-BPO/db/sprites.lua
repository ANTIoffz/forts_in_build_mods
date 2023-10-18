for k,v in ipairs(Sprites) do
	if v.Name == "gunner" then
		v.States["Normal" .. factionName] = { Frames = { { texture = path .. "/weapons/gunner.dds" }, }, }
		break
	end
end
