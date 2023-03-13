local M = {}

M.STATE_MENU = 1
M.STATE_CONTROLS = 2
M.STATE_CREDITS = 3
M.STATE_PLAYING = 4
M.STATE_MAP = 5
M.STATE_PAUSE = 6
M.STATE_END = 7
M.STATE_COMPLETE = 8

M.state = M.STATE_MENU

M.SCR_W = 0
M.SCR_H = 0
M.CANV_W = 0
M.CANV_H = 0
M.TILE_W = 8
M.TILE_H = 8
M.PIXEL_SIZE = 1
M.MAX_LEVELS = 10

M.hp = 0
M.fuel = 0
M.kills = 0
M.eggs = 0
M.eggstot = 0
M.deaths = 0
M.time = 0
M.fire = 0
M.secrets = 0
M.discs = 0
M.key = {false, false, false}

M.offset = vmath.vector3()
M.playerpos = vmath.vector3()
M.scrollpos = vmath.vector3()
M.bounds = vmath.vector3()

M.save = {
	cheat = false,
	ee = {false, false, false, false}
}

M.APP_NAME = "incinerator"
M.FILE_NAME = "game.sav"

function M.loadgamefile()
	local file = sys.load(sys.get_save_file(M.APP_NAME, M.FILE_NAME))

	if next(file) ~= nil then
		M.save = file
	end
end

function M.savegamefile()
	sys.save(sys.get_save_file(M.APP_NAME, M.FILE_NAME), M.save)
end

function M.world2tile(p)
	return vmath.vector3(math.floor((p.x + M.TILE_W) / M.TILE_W), math.floor((p.y + M.TILE_H) / M.TILE_H), p.z)
end

function M.tile2world(p)
	return vmath.vector3((p.x * M.TILE_W) - (M.TILE_W / 2), (p.y * M.TILE_H) - (M.TILE_H / 2), p.z)
end

function M.centreontile(pos)
	return vmath.vector3((pos.x - pos.x % M.TILE_W) + M.TILE_W / 2, (pos.y - pos.y % M.TILE_H) + M.TILE_H / 2, pos.z)
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

function M.fullscreen(self)
	defos.toggle_fullscreen()
	defos.disable_window_resize()
	defos.disable_maximize_button()
end

return M

