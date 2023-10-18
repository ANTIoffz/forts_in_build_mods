Sprites[2].States["Normal" .. factionName] = { Frames = { { texture = path .. "/weapons/shotgun/head.dds" }, mipmap = true, }, }
Sprites[2].States["Idle" .. factionName] = Sprites[2].States["Normal" .. factionName]
