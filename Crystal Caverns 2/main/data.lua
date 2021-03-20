local M = {}

M.STATE_MENU = 1
M.STATE_CONTROLS = 2
M.STATE_CREDITS = 3
M.STATE_PLAYING = 4
M.STATE_CLEAR = 5
M.STATE_GAMEOVER = 6

M.state = M.STATE_MENU

M.SCR_W = 0
M.SCR_H = 0
M.CANV_W = 0
M.CANV_H = 0
M.TILE_SIZE = 16
M.PIXEL_SIZE = 4
M.MAX_LEVELS = 3
M.GUI_DROP = 50

M.level = 1
M.maxlevel = 1
M.boom = 0
M.hp = 0
M.o2 = 0
M.gems = 0
M.totalgems = 0
M.secrets = 0
M.totalsecrets = 0
M.time = 0
M.key = {false,false,false}
M.bosshp = 0

M.offset = vmath.vector3()
M.scrollpos = vmath.vector3()
M.playerpos = vmath.vector3()
M.bounds = vmath.vector4(0,0,0,0)
M.respawn = vmath.vector3(0,0,0)
M.portal = {vmath.vector3(), vmath.vector3()}

M.APP_NAME = "crystal-caverns-2"
M.SAVE_FILE_NAME = "savefile"

function M.world2tile(p)
	return vmath.vector3(math.floor((p.x + M.TILE_SIZE) / M.TILE_SIZE), math.floor((p.y + M.TILE_SIZE) / M.TILE_SIZE), p.z)
end

function M.tile2world(p)
	return vmath.vector3((p.x * M.TILE_SIZE) - (M.TILE_SIZE / 2), (p.y * M.TILE_SIZE) - (M.TILE_SIZE / 2), p.z)
end

function M.hex2rgba(hex)
	hex = hex:gsub("#","")
	local rgba = vmath.vector4(tonumber("0x"..hex:sub(1,2))/255, tonumber("0x"..hex:sub(3,4))/255, tonumber("0x"..hex:sub(5,6))/255, 1)
	return rgba
end

function M.onscreen(p, m)
	if p.x > M.scrollpos.x - m and
	p.x < M.scrollpos.x + m + M.CANV_W and
	p.y > M.scrollpos.y - m and
	p.y < M.scrollpos.y + m + M.CANV_H then
		return true
	else
		return false
	end
end

function M.loadgamefile()
	local file = sys.load(sys.get_save_file(M.APP_NAME, M.SAVE_FILE_NAME))

	if next(file) ~= nil then
		M.maxlevel = file.maxlevel
	end
end

function M.savegamefile()
	local file = {
		maxlevel = M.maxlevel
	}

	sys.save(sys.get_save_file(M.APP_NAME, M.SAVE_FILE_NAME), file)
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