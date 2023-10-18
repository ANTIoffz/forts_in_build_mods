Sprites[1].States["Normal" .. factionName] = { Frames = { { texture = path .. "/weapons/20mmcannon/base.dds" }, mipmap = true, }, }
Sprites[1].States["Idle" .. factionName] = Sprites[1].States["Normal" .. factionName]
