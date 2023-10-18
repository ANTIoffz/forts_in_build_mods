dofile("scripts/forts.lua")

Faction = "Russia"
StringGroup = "Spy"

DescPassive =
{
	"SeeResources",
	"SeeDevice",
	"SeeReactor",
	"SeeCommander",
}

DescActive =
{
	"SeeInside",
	"StealResources",
}

GaugeDamageHitpoints = 4050
GaugeAttackHitpoints = 8640
CommanderActivationDuration = 20

ReactorStartY = nil

function FindMatchingTeam(sideId)
	local teamId = nil
	local count = GetDeviceCountSide(sideId)
	for i = 0, count - 1 do
		local id = GetDeviceIdSide(sideId, i)
		if GetDeviceType(id) == "reactor" then
			local position = GetDevicePosition(id)
			if ReactorStartY + 5 > position.y and ReactorStartY - 5 < position.y then
				return GetDeviceTeamIdActual(id) -- return first aligned reactor
			end
			if not teamId then
				teamId = GetDeviceTeamIdActual(id) -- fallback to first found reactor
			end
		end
	end
	return teamId
end

function DiscoverTeams(sideId)
	local teamFound = {}
	local teams = {}
	local count = GetDeviceCountSide(sideId)
	for i = 0, count - 1 do
		local id = GetDeviceIdSide(sideId, i)
		local currTeam = GetDeviceTeamIdActual(id)
		if not teamFound[currTeam] and GetDeviceType(id) == "reactor" then
			teamFound[currTeam] = true
			table.insert(teams, currTeam)
		end
	end
	return teams
end

CommanderApplyModBase = function()
	SetButtonCallback("ResourcePanelEnemy", "SpyNext", 0)
	SetControlTextW("ResourcePanelEnemy", "LastDevice", L"")

	data.enemySideId = 1
	if teamId%MAX_SIDES == 1 then
		data.enemySideId = 2
	end
end
RegisterApplyMod(CommanderApplyModBase)

function Update()
	local localTeamId = GetLocalTeamId()
	if not ReactorStartY then
		local count = GetDeviceCount(localTeamId)
		for i = 0, count - 1 do
			local id = GetDeviceId(localTeamId, i)
			if GetDeviceType(id) == "reactor" then
				local position = GetDevicePosition(id)
				ReactorStartY = position.y
				break
			end
		end
	end

	if not data.currentTeam and teamId%MAX_SIDES == localTeamId%MAX_SIDES then
		data.currentTeam = FindMatchingTeam(data.enemySideId)
		if data.currentTeam then
			ConfigureDeviceNodeEffect(data.currentTeam, "reactor", "Core", true, true, false)
			SetInspectedEnemyTeamId(data.currentTeam)
		end
	end
end

function OnTeamDefeated(teamId)
	if data.currentTeam == teamId then
		data.currentTeam = nil
	end
end

function OnActivation(active)
	--Log("Spy OnActivation " .. tostring(active))

	local localTeamId = GetLocalTeamId()
	local localSpy = localTeamId%MAX_SIDES == teamId%MAX_SIDES

	EnableFogOfWar(teamId, not active)
	if localSpy then
		if active then
			AddMouseAccessory("commander-spy", "magnifying_glass_icon", 0, 32, 42, 42)
		else
			DeleteMouseAccessory("commander-spy")
		end
	end

	if active then
		local teams = DiscoverTeams(data.enemySideId)
		if #teams > 0 then
			local perTeamMetal = 200
			local perTeamEnergy = 2000
			local stolenAmount = Value()

			for i,team in ipairs(teams) do
				--Log("attempting theft from " .. team)
				local teamAmount = TransferResources(team, teamId, perTeamMetal, perTeamEnergy, true)
				stolenAmount = stolenAmount + teamAmount
			end

			--Log("stolen amount " .. tostring(stolenAmount))

			if localSpy and (stolenAmount.metal > 0 or stolenAmount.energy > 0) then
				ShowStolenResources(stolenAmount)
			end
		end
	end
end

function OnControlActivated(name)
	if name == "SpyNext" and GetLocalTeamId()%MAX_SIDES == teamId%MAX_SIDES then
		--Log("SpyNext hit")
	
		local teams = DiscoverTeams(data.enemySideId)
		local teamIndex = 1
		for i,team in ipairs(teams) do
			if team == data.currentTeam then
				teamIndex = i + 1
			end
		end
		if teamIndex > #teams then
			teamIndex = 1
		end

		if #teams > 0 and data.currentTeam ~= teams[teamIndex] then
			ConfigureDeviceNodeEffect(data.currentTeam, "reactor", "Core", false, true)
			data.currentTeam = teams[teamIndex]
			ConfigureDeviceNodeEffect(data.currentTeam, "reactor", "Core", true, true)
			SetInspectedEnemyTeamId(data.currentTeam)
		end
	end
end

function OnDeviceCreated(deviceTeamId, deviceId, saveName, nodeAId, nodeBId, t, upgradedId)
	if deviceTeamId%MAX_SIDES == data.enemySideId and GetDeviceMovingId(deviceId) == -1 then
		ActOnDeviceCreation(deviceTeamId, deviceId, saveName)
	end
end

function OnGroundDeviceCreated(deviceTeamId, deviceId, saveName, pos)
	if deviceTeamId%MAX_SIDES == data.enemySideId and GetDeviceMovingId(deviceId) == -1 then
		ActOnDeviceCreation(deviceTeamId, deviceId, saveName)
	end
end

function ActOnDeviceCreation(deviceTeamId, deviceId, saveName)
	if data.currentTeam and deviceTeamId%MAX_SIDES == data.enemySideId then
		if deviceTeamId == data.currentTeam then
			if IsWeapon(deviceId) then
				SetControlText("ResourcePanelEnemy", "LastDevice", "$Weapon." .. saveName)
			else
				SetControlText("ResourcePanelEnemy", "LastDevice", "$Device." .. saveName)
			end
		end
	end
end

Sprites =
{
	{
		Name = "magnifying_glass_icon",

		States =
		{
			Normal =
			{
				Frames =
				{
					{ texture = path .. "/effects/media/CPIcons-MagnifyingGlass.dds" },

					duration = 1,
					blendColour = false,
					blendCoordinates = false,
				},
				--RandomPlayLength = 2,
				NextState = "Normal",
			},
		},
	},
}

