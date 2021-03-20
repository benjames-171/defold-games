local M = {}

M.STATE_MENU = 1
M.STATE_CONTROLS = 2
M.STATE_CREDITS = 3
M.STATE_PLAYING = 4
M.STATE_DEAD = 5
M.STATE_COMPLETE = 6

M.state = M.STATE_MENU

M.TILE_SIZE = 16
M.PIXEL_SIZE = 4
M.SCR_W = 320
M.SCR_H = 180

M.MAX_LEVELS = 5

M.level = 1
M.maxlevel = 1
M.rads = 0
M.frags = 0

M.offset = vmath.vector3(M.SCR_W / 2, M.SCR_H / 2, 0)
M.scrollpos = vmath.vector3(0,0,0)
M.playerpos = vmath.vector3(0,0,0)
M.bounds = vmath.vector4(0,0,0,0)

M.APP_NAME = "reactor"
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
	p.x < M.scrollpos.x + m + M.offset.x * 2 and
	p.y > M.scrollpos.y - m and
	p.y < M.scrollpos.y + m + M.offset.y * 2 then
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

return M