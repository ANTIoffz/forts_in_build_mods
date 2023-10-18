dofile("scripts/forts.lua")

Faction = ""
StringGroup = "HeavyWeapons"

DescPassive =
{
	"BigAimingArc",
	"ReducedReload",
	"ReducedReloadMortar",
	"BigAimingArcHowitzer",
	"ReducedReloadHowitzer",
	"ShotgunAntiAir",
	"ThrustIncrease",
}

DescActive =
{
	"IncreasedDirectDamage",
	"IncreasedSplashRadius",
	"IncreasedDirectDamageHowitzer",
	"IncreasedSplashRadiusHowitzer",
	"SecondChanceShot",
}

GaugeDamageHitpoints = 3150
GaugeAttackHitpoints = 9000

WeaponsToMark =
{
	"laser",
	"cannon",
	"missile2",
	"missile2inv",
	"howitzer",
}

WeaponsWithSecondChance =
{
	"laser",
	"cannon",
	"missile2",
	"missile2inv",
	"howitzer",
}

data.isActive = false

function ResetTables()
	data.FirstChanceProjectile = {}
	data.FirstChanceBeam = {}
	data.SecondChanceUsed = {}
	data.SecondChanceIcon = {}
end

ResetTables()

function Load(gameStart)
	data.enemyTeamId = 3 - teamId
end

CommanderApplyModBase = function()
	for k,v in ipairs(WeaponsToMark) do
		AddDeviceNodeEffect(teamId, v, "Root", path .. "/effects/damage_icon.lua", false)
	end
end
RegisterApplyMod(CommanderApplyModBase)

function OnActivation(active)
	data.isActive = active

	if active then
		for weaponId, effectId in pairs(data.SecondChanceIcon) do
			SecondChanceEndEffect(weaponId)
		end

		ResetTables()
	end

	if GetLocalTeamId()%MAX_SIDES == teamId then
		for k,v in ipairs(WeaponsToMark) do
			ConfigureDeviceNodeEffect(teamId, v, "Root", active, false)
		end
	end
end

function OnDeviceTeamUpdated(oldTeamId, newTeamId, deviceId, saveName)
	if GetLocalTeamId()%MAX_SIDES == teamId then
		if (oldTeamId%MAX_SIDES == teamId or newTeamId%MAX_SIDES == teamId) and TrackingType(saveName, WeaponsToMark) then
			ConfigureDeviceNodeEffect(newTeamId, saveName, "Root", data.isActive and newTeamId%MAX_SIDES == teamId, false)

			if newTeamId == TEAM_NEUTRAL and data.SecondChanceIcon[deviceId] then
				SecondChanceEndEffect(deviceId)
			end
		end
	end
end

function OnDeviceCompleted(deviceTeamId, deviceId, saveName)
	OnDeviceTeamUpdated(0, deviceTeamId, deviceId, saveName)
end

function OnWeaponFired(weaponTeamId, saveName, weaponId, projectileNodeId, projectileNodeIdFrom)
	--Log("OnWeaponFired " .. weaponTeamId .. " name " .. saveName .. " weapon " .. weaponId)

	if data.SecondChanceIcon[weaponId] then
		SecondChanceEndEffect(weaponId)
	end

	-- handle projectile transformations (e.g. intersection with firebeam, detonation)
	for pid,wid in pairs(data.FirstChanceProjectile) do
		if wid == weaponId and pid == projectileNodeIdFrom then
			--Log("Transformation detected " .. pid .. " -> " .. projectileNodeId)
			data.FirstChanceProjectile[pid] = nil
			data.FirstChanceProjectile[projectileNodeId] = wid
			return
		end
	end

	if data.isActive and weaponTeamId%MAX_SIDES == teamId and TrackingType(saveName, WeaponsWithSecondChance) and not data.SecondChanceUsed[weaponId] then
		if IsDeviceBeam(weaponId) then
			data.FirstChanceBeam[weaponId] = true
		else
			data.FirstChanceProjectile[projectileNodeId] = weaponId
		end
	end
end

function OnWeaponFiredEnd(weaponTeamId, saveName, weaponId)
	if data.FirstChanceBeam[weaponId] then
		local enemyBeamDamage = GetWeaponBeamDamage(weaponId, data.enemyTeamId)
		if enemyBeamDamage == 0 then
			SecondChance(weaponId)
		end
		data.FirstChanceBeam[weaponId] = nil
		data.SecondChanceUsed[weaponId] = true
	end
end

function OnDeviceHit(deviceTeamId, deviceId, saveName, newHealth, projectileNodeId, projectileTeamId, pos)
	if data.FirstChanceProjectile[projectileNodeId] and deviceTeamId%MAX_SIDES == data.enemyTeamId then
		SecondChanceLost(projectileNodeId)
	end
end

function OnLinkHit(nodeIdA, nodeIdB, sourceId, sourceTeamId, sourceSaveName, damage, pos)
	if data.FirstChanceProjectile[sourceId] and NodeTeam(nodeIdA)%MAX_SIDES == data.enemyTeamId then
		SecondChanceLost(sourceId)
	end
end

function WeaponProjectileCount(weaponId)
	local count = 0
	for pid,wid in pairs(data.FirstChanceProjectile) do
		if wid == weaponId then
			count = count + 1
		end
	end
	return count
end

function OnProjectileDestroyed(projectileNodeId, weaponTeamId, saveName, structureIdHit, destroyType)
	local wid = data.FirstChanceProjectile[projectileNodeId]
	if wid then
		local missPotential = (destroyType == DESTROYTYPE_OUTOFWORLD or destroyType == DESTROYTYPE_HITTERRAIN or destroyType == DESTROYTYPE_EXPIRED)

		local count = WeaponProjectileCount(wid)
		if count > 1 then -- when multiple shots are in play wait for the last one to grant instant reload
			if not missPotential then
				SecondChanceLost(projectileNodeId)
			end

			data.FirstChanceProjectile[projectileNodeId] = nil
		else
			local weaponId = SecondChanceLost(projectileNodeId)

			if not missPotential then
				return
			end

			local sideIdHit = None
			if structureIdHit then
				sideIdHit = GetStructureTeam(structureIdHit)%MAX_SIDES
			end

			if sideIdHit ~= data.enemyTeamId then
				SecondChance(weaponId)
			end
		end
	end
end

function OnDeviceDeleted(deviceTeamId, deviceId, saveName, nodeA, nodeB, t)
	OnDeviceDestroyed(deviceTeamId, deviceId, saveName, nodeA, nodeB, t)
end

function OnDeviceDestroyed(deviceTeamId, deviceId, saveName, nodeA, nodeB, t)
	if deviceTeamId%MAX_SIDES == teamId then
		if data.SecondChanceIcon[deviceId] then
			SecondChanceEndEffect(deviceId)
		end

		if data.isActive then
			ConfigureDeviceNodeEffect(deviceTeamId, saveName, "Root", data.isActive, true)
		end
	end
end

function SecondChanceLost(projectileNodeId)
	local weaponId = data.FirstChanceProjectile[projectileNodeId]
	for pid,wid in pairs(data.FirstChanceProjectile) do
		if wid == weaponId then
			data.FirstChanceProjectile[pid] = nil
		end
	end
	data.SecondChanceUsed[weaponId] = true

	return weaponId
end

function SecondChance(weaponId)
	-- reload weapon instantly
	ReloadWeapon(weaponId)
	if GetLocalTeamId()%MAX_SIDES == teamId then
		local pos = GetDeviceComponentPosition(weaponId, "Icon")
		data.SecondChanceIcon[weaponId] = SpawnEffect(path .. "/effects/second_chance_icon.lua", pos)
	end
end

function SecondChanceEndEffect(weaponId)
	CancelEffect(data.SecondChanceIcon[weaponId])
	data.SecondChanceIcon[weaponId] = nil

	if GetLocalTeamId()%MAX_SIDES == teamId then
		local pos = GetDeviceComponentPosition(weaponId, "Icon")
		SpawnEffect("effects/commander_highlight_outro.lua", pos)
	end
end

function OnDeviceCreated(teamId, deviceId, saveName, nodeA, nodeB, t, upgradedId)
	for pid,wid in pairs(data.FirstChanceProjectile) do
		if wid == upgradedId then
			data.FirstChanceProjectile[pid] = deviceId
		end
	end

	for wid,used in pairs(data.SecondChanceUsed) do
		if wid == upgradedId then
			data.SecondChanceUsed[deviceId] = used
			data.SecondChanceUsed[wid] = nil
		end
	end

	if data.SecondChanceIcon[upgradedId] then
		data.SecondChanceIcon[deviceId] = data.SecondChanceIcon[upgradedId]
		data.SecondChanceIcon[upgradedId] = nil
	end
end

function OnUpdate(timeDelta)
	for weaponId, effectId in pairs(data.SecondChanceIcon) do
		if DeviceExists(weaponId) then
			local pos = GetDeviceComponentPosition(weaponId, "Icon")
			SetEffectPosition(effectId, pos)
			AddToEffectLifeSpan(effectId, timeDelta)
		end
	end
end
