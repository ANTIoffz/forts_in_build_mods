Sprites[2].States["Normal" .. factionName] = { Frames = { { texture = path .. "/weapons/flak/head.png" }, mipmap = true, }, }
Sprites[2].States["Idle" .. factionName] = Sprites[2].States["Normal" .. factionName]
