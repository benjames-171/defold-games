local M = {}

M.STATE_MENU = 1
M.STATE_CONTROLS = 2
M.STATE_SCORING = 3
M.STATE_PLAYING = 4
M.STATE_CLEAR = 5
M.STATE_PAUSE = 6
M.STATE_GAMEOVER = 7

M.state = M.STATE_MENU

M.SCR_W = 0
M.SCR_H = 0
M.CANV_W = 0
M.CANV_H = 0
M.PIXEL_SIZE = 4
M.WORLD_W = 0
M.WORLD_H = 120
M.MAX_MEN = 10

M.level = 1
M.score = 0
M.lives = 3
M.bombs = 3
M.waves = 3
M.men = 0
M.dir = 1
M.scroll = vmath.vector3()
M.mid = 0
M.gate = {}

M.save = {
	hiscore = 0
}

M.APP_NAME = "planetoid"
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


function M.hex2rgba(hex)
	hex = hex:gsub("#","")
	local rgba = vmath.vector4(tonumber("0x"..hex:sub(1,2))/255, tonumber("0x"..hex:sub(3,4))/255, tonumber("0x"..hex:sub(5,6))/255, 1)
	return rgba
end

function M.onscreen(p, m)
	if p.x > M.scroll.x - m and
		p.x < M.scroll.x + m + M.CANV_W and
		p.y > M.scroll.y - m and
		p.y < M.scroll.y + m + M.WORLD_H then
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

function M.poswrap(pos)
	if pos.x < M.mid - M.WORLD_W / 2 then
		pos.x = pos.x + M.WORLD_W
	elseif pos.x > M.mid + M.WORLD_W / 2 then
		pos.x = pos.x - M.WORLD_W
	end

	return pos
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
end

return M

