local M = {}

M.STATE_MENU = 1
M.STATE_CONTROLS = 2
M.STATE_CREDITS = 3
M.STATE_PLAYING = 4
M.STATE_SHOP = 5
M.STATE_UFO = 6
M.STATE_MONSTER = 7
M.STATE_COMPLETE = 8

M.state = M.STATE_MENU

M.SCR_W = 0
M.SCR_H = 0
M.CANV_W = 0
M.CANV_H = 0
M.TILE_SIZE_X = 8
M.TILE_SIZE_Y = 8
M.PIXEL_SIZE = 1
M.MAX_LEVELS = 10

M.level = 1
M.time = 0
M.shot = 0
M.food = 0
M.hp = 0
M.gold = 0
M.cool = 0
M.speed = 0
M.key = false
M.weap = ""
M.class = ""
M.shotspd = 1
M.player = nil

M.attmult = 1
M.defmult = 1
M.spdmult = 1
M.stamult = 1

M.items = 0
M.totalitems = 0
M.secrets = 0
M.totalsecrets = 0
M.deaths = 0
M.kills = 0
M.ending = "???"


M.offset = vmath.vector3()
M.scrollpos = vmath.vector3()
M.playerpos = vmath.vector3()
M.spawnpos = vmath.vector3()

function M.world2tile(p)
	return vmath.vector3(math.floor((p.x + M.TILE_SIZE_X) / M.TILE_SIZE_X), math.floor((p.y + M.TILE_SIZE_Y) / M.TILE_SIZE_Y), p.z)
end

function M.tile2world(p)
	return vmath.vector3((p.x * M.TILE_SIZE_X) - (M.TILE_SIZE_X / 2), (p.y * M.TILE_SIZE_Y) - (M.TILE_SIZE_Y / 2), p.z)
end

function M.hex2rgba(hex)
	hex = hex:gsub("#","")
	local rgba = vmath.vector4(tonumber("0x"..hex:sub(1,2))/255, tonumber("0x"..hex:sub(3,4))/255, tonumber("0x"..hex:sub(5,6))/255, 1)
	return rgba
end

function M.onscreen(p, m)
	if p.x > M.scrollpos.x - m and
	p.x < M.scrollpos.x + m + M.offset.x * 2 and
	p.y > M.scrollpos.y - m and
	p.y < M.scrollpos.y + m + (M.offset.y * 2) - 8 then
		return true
	else
		return false
	end
end

function M.ms2str(time)
	local day = math.floor(time / 86400)
	local rem = time % 86400
	local hr = math.floor(rem / 3600)
	rem = rem % 3600
	local min = math.floor(rem / 60)
	rem = rem % 60
	local sec = rem

	local str = ""
	if day > 0 then str = tostring(day) .. "d " end
	if hr > 0 or day > 0 then str = str .. tostring(hr) .. ":" end

	str = string.format("%s%02d:%02d", str, min, math.floor(sec))
	return str
end

return M

