local M = {}

M.STATE_MENU = 1
M.STATE_CONTROLS = 2
M.STATE_CREDITS = 3
M.STATE_PLAYING = 4
M.STATE_GAMEOVER = 5

M.PIXEL_SIZE = 4
M.TILE_SIZE = 16
M.LEVEL_W = 14
M.LEVEL_H = 14

M.SCR_W = 896
M.SCR_H = 896

M.CAN_W = M.SCR_W / M.PIXEL_SIZE
M.CAN_H = M.SCR_H / M.PIXEL_SIZE

M.MAX_LEVELS = 9

M.APP_NAME = "app_name"
M.SAVE_FILE_NAME = "savefile"

M.state = M.STATE_MENU

M.level = 1
M.maxlevel = 1
M.music = true
M.rocks = 0
M.keys = 0
M.hearts = 0
M.guidest = vmath.vector3(M.SCR_W / 2, M.SCR_H / 2, 0)
M.guistart = vmath.vector3(M.SCR_W / 2, (M.SCR_H / 2) - 50, 0)
M.playerpos = vmath.vector3(0,0,0)
M.screenpos = vmath.vector3(0,0,0)

function M.onscreen(p)
	if p.x > M.screenpos.x and
	p.x < M.screenpos.x + M.CAN_W and
	p.y > M.screenpos.y and
	p.y < M.screenpos.y + M.CAN_H then
		return true
	else
		return false
	end
end

function M.hex2rgba(hex)
	hex = hex:gsub("#","")
	local rgba = vmath.vector4(tonumber("0x"..hex:sub(1,2)) / 255, tonumber("0x"..hex:sub(3,4)) / 255, tonumber("0x"..hex:sub(5,6)) / 255, 1)
	return rgba
end

function M.clamp(v, min, max)
	if v == nil then v = 1 end
	local r = v
	if r < min then r = min
	elseif r > max then r = max
	end
	return r
end

function M.loadgamefile()
	local file = sys.load(sys.get_save_file(M.APP_NAME, M.SAVE_FILE_NAME))

	if next(file) ~= nil then
		M.maxlevel = file.maxlevel
		M.music = file.music

		M.maxlevel = M.clamp(M.maxlevel, 1, M.MAX_LEVELS)
	end
end

function M.savegamefile()
	local file = {
		maxlevel = M.maxlevel,
		music = M.music
	}

	sys.save(sys.get_save_file(M.APP_NAME, M.SAVE_FILE_NAME), file)
end

function M.world2tile(p)
	return vmath.vector3(math.floor((p.x + M.TILE_SIZE) / M.TILE_SIZE), math.floor((p.y + M.TILE_SIZE) / M.TILE_SIZE), p.z)
end

function M.tile2world(p)
	return vmath.vector3((p.x * M.TILE_SIZE) - (M.TILE_SIZE / 2), (p.y * M.TILE_SIZE) - (M.TILE_SIZE / 2), p.z)
end

return M

