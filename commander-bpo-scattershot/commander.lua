dofile("scripts/forts.lua")

Faction = "BPO"
StringGroup = "Scattershot"

DescPassive =
{
	"BurstIncrease",
	"DeviationIncrease",
}

DescActive =
{
	"DeviationDecrease",
	"TrajectoryPreview",
	"SnipersTwoShot",
	"Cannon20mm",
}

CommanderActivationDuration = 20

GaugeDamageHitpoints = 4500
GaugeAttackHitpoints = 11250

if MarkDevicesOnActive then
	WeaponsToMark =
	{
		"machinegun",
		"minigun",
		"sniper",
		"sniper2",
	}

	MarkDevicesOnActive(WeaponsToMark, path .. "/effects/focus_icon.lua")
end

TrajectoryPreviewExclude = {}

function ReactorPositions(sideId)
	local reactorPositions = {}
	local count = GetDeviceCountSide(sideId)
	for i = 0, count - 1 do
		local id = GetDeviceIdSide(sideId, i)
		if GetDeviceType(id) == "reactor" then
			table.insert(reactorPositions, GetDevicePosition(id))
		end
	end
	return reactorPositions
end

function Update()
	if not data.TrajectorySteps and teamId%MAX_SIDES == GetLocalTeamId()%MAX_SIDES then
		local team1reactors = ReactorPositions(TEAM_1)
		local team2reactors = ReactorPositions(TEAM_2)

		local minDist = 1e11
		for i = 1,#team1reactors do
			for j = 1,#team2reactors do
				local dist = Vec3Dist(team1reactors[i], team2reactors[j])
				if dist < minDist then
					minDist = dist
				end
			end
		end

		data.TrajectorySteps = 0.66*(minDist / 100)
	end
end

function OnDraw()
	if GetLocalTeamId()%MAX_SIDES ~= teamId then
		return
	end

	local id = GetLocalSelectedDeviceId()
	if id > 0 and IsCommanderActive(teamId) and IsDeviceFullyBuilt(id) and GetMouseAiming() and not TrajectoryPreviewExclude[GetDeviceType(id)] then
		local projSaveName = GetWeaponSelectedAmmo(id)
		if GetProjectileParamBool(projSaveName, teamId, "ScattershotNoTrajectory", false) then
			data.FireVel = {}
			ClearTrajectory()
			return
		end

		AddFireVel(GetFireVel(id))
		local vel = FilteredFireVel()
		local pos = GetWeaponHardpointPosition(id)
		local df = 100

		local projectileSaveName = GetWeaponAmmo(id)

		local g = GetProjectileTypeGravity(projectileSaveName, GetLocalTeamId())
		if g == 0 then g = 0.00001 end
		local a = 0.5*g/(vel.x*vel.x)
		local dydx = vel.y/vel.x;
		local x = pos.x
		local y = pos.y
		local b = dydx - 2*a*x
		local c = y - (a*x*x + b*x)

		local i = pos.x
		local p1 = a*i*i + b*i + c

		if data.trajectory == nil then
			data.trajectory = {}
		end
		local index = 1
		local dist = 0
		local stepDist = 100

		if vel.x < 0 then
			stepDist = -stepDist
			df = -df
		end

		while index < data.TrajectorySteps do
			local j = i + stepDist
			local p2 = a*j*j + b*j + c
			local dy = p2 - p1
			local d = Vec3(stepDist, dy)
			local dLen = Vec3Length(d)
			local angle = math.atan(d.y/d.x)
			local dx = df*math.cos(angle)

			i = i + dx
			p2 = a*i*i + b*i + c

			Vec3Unit(d)
			local ePos = Vec3(i, p2)

			local e = data.trajectory[index]
			if not e or not SetEffectPosition(e, ePos) then
				e = SpawnEffect("effects/dash_bold.lua", ePos)
				data.trajectory[index] = e
			else
				SetEffectDirection(e, d)
				AddToEffectLifeSpan(e, data.updateDelta/4)
			end
			index = index + 1

			p1 = p2
		end

		ClearTrajectory(index)
	else
		data.FireVel = {}
		ClearTrajectory()
	end
end

function ClearTrajectory(fromIndex)
	if data.trajectory and #data.trajectory > 0 then
		for index = (fromIndex or 1),#data.trajectory do
			CancelEffect(data.trajectory[index])
			data.trajectory[index] = nil
		end
	end
end

function AddFireVel(vel)
	if not data.FireVel then
		data.FireVel = {}
	end

	if #data.FireVel == 30 then
		table.remove(data.FireVel, 1)
	end

	table.insert(data.FireVel, vel)
end

function FilteredFireVel()
	local vel = Vec3(0,0,0)
	local count = #data.FireVel
	for i=1,count do
		vel.x = vel.x + data.FireVel[i].x
		vel.y = vel.y + data.FireVel[i].y
	end
	vel.x = vel.x / count
	vel.y = vel.y / count
	return vel
end
