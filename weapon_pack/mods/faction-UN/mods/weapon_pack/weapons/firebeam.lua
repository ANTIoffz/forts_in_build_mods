Sprites[3].States["Normal" .. factionName] = { Frames = { { texture = path .. "/weapons/firebeam/head.dds" }, mipmap = true, }, }
Sprites[3].States["Idle" .. factionName] = Sprites[3].States["Normal" .. factionName]
