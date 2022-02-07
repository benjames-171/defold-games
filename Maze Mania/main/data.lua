local M = {}

M.STATE_MENU = 1
M.STATE_CONTROLS = 2
M.STATE_CREDITS = 3
M.STATE_PLAYING = 4
M.STATE_CLEAR = 5
M.STATE_GAMEOVER = 6
M.STATE_COMPLETE = 7
M.STATE_PAUSE = 8

M.state = M.STATE_MENU

M.SCR_W = 0
M.SCR_H = 0
M.CANV_W = 0
M.CANV_H = 0
M.TILE_SIZE = 16
M.PIXEL_SIZE = 3
M.MAX_LEVELS = 12

M.level = 1
M.time = 0
M.coins = 0
M.keys = 0
M.score = 0
M.exit = nil
M.bestscore = 0

M.offset = vmath.vector3()

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

function M.fullscreen(self)
	defos.toggle_fullscreen()
	defos.disable_window_resize()
	defos.disable_maximize_button()
end

return M

