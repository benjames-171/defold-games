local M = {}

M.STATE_MENU = 1
M.STATE_CONTROLS = 2
M.STATE_CREDITS = 3
M.STATE_PLAYING = 4
M.STATE_CLEAR = 5
M.STATE_PAUSE = 6
M.STATE_GAMEOVER = 7
M.STATE_COMPLETE = 8

M.state = M.STATE_MENU

M.SCR_W = 0
M.SCR_H = 0
M.CANV_W = 0
M.CANV_H = 0
M.MIN_X = -48
M.MAX_X = 272
M.WORLD_W = 320
M.TILE_SIZE = 16
M.PIXEL_SIZE = 2
M.MAX_LEVELS = 10

M.level = 1
M.lives = 3
M.score = 0
M.time = 0
M.speed = 1

M.offset = vmath.vector3()
M.scrollpos = vmath.vector3()
M.bounds = vmath.vector3()
M.home = {false, false, false, false, false, false, false}
M.gate = {}

M.save = {
	hiscore = 0
}

M.APP_NAME = "defrog"
M.FILE_NAME = "gamedata.sav"

function M.loadgamefile()
	local file = sys.load(sys.get_save_file(M.APP_NAME, M.FILE_NAME))

	if next(file) ~= nil then
		M.save = file
	end
end

function M.savegamefile()
	sys.save(sys.get_save_file(M.APP_NAME, M.FILE_NAME), M.save)
end

function M.gethome()
	local n = false
	repeat
		n = math.random(1, 7)
	until not M.home[n]

	M.home[n] = true

	return n
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

function M.sound(id)
	local t = M.gate[id] or 0
	t = os.clock() - t

	if t > 0.075 then
		M.gate[id] = os.clock()
		local url = "main:/sound#"..id
		sound.play(url)
	end
end

function M.fullscreen(self)
	defos.toggle_fullscreen()
	defos.disable_window_resize()
	defos.disable_maximize_button()
	defos.set_cursor_visible(not defos.is_fullscreen())
end

return M

