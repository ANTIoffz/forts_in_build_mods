function MoviePrefix()
	return path .. "/"
end

function TheatreSpriteLocal(name, filename, right, bottom)
	local sprite =
	{
		Name = name,
		States =
		{
			Normal = { Frames = {{ texture = path .. "/campaigns/USA/".. filename .."-A.dds", bottom = bottom, right = right, },},},
			Pressed = { Frames = {{ texture = path .. "/campaigns/USA/".. filename .."-S.dds", bottom = bottom, right = right },},},
		},
	}
	return sprite
end

Sprites =
{
	TheatreSpriteLocal("TheatreAfricaLocal", "TheatreAfrica"),
	TheatreSpriteLocal("TheatreMiddleEastLocal", "TheatreMiddleEast"),
	TheatreSpriteLocal("TheatreEuropeLocal", "TheatreEurope"),
	TheatreSpriteLocal("TheatreSiberiaLocal", "TheatreSiberia"),
	TheatreSpriteLocal("TheatreMotherloadLocal", "TheatreMotherload"),
}