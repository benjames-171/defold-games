local strings = require "main.strings"

local M = {}

M.STATE_MENU = 1
M.STATE_CONTROLS = 2
M.STATE_CONTROLS_V = 3
M.STATE_CREDITS = 4
M.STATE_WORLD = 5
M.STATE_SELECT = 6
M.STATE_PLAYING = 7
M.STATE_CLEAR = 8
M.STATE_PAUSE = 9
M.STATE_COMPLETE = 10

M.state = M.STATE_MENU

M.SCR_W = 0
M.SCR_H = 0
M.CANV_W = 0
M.CANV_H = 0
M.TILE_SIZE = 16
M.PIXEL_SIZE = 4
M.MAX_LEVELS = 9
M.MAX_WORLDS = 3

M.world = 1
M.level = 1
M.stars = 3
M.touch = false
M.gamepad = false
M.music = true
M.sfx = true
M.lang = strings.en
M.savedata = {1,1,1, 0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0,0}
M.touchname = "tap"

M.APP_NAME = "pathfinder"
M.SAVE_FILE_NAME = "savefile"
M.SAVE_DATA_SIZE = 30

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

function M.setlanguage(lang)
	if lang == "ru" then M.lang = strings.ru
	elseif lang == "tr" then M.lang = strings.tr
	end
end

function M.setstring(id)
	gui.set_text(gui.get_node(id), M.lang[id])
end

function M.setnodestring(node, id)
	gui.set_text(node, M.lang[id])
end

function M.loadgamefile()
	local file = sys.load(sys.get_save_file(M.APP_NAME, M.SAVE_FILE_NAME))

	if next(file) ~= nil then
		for n = 1, M.SAVE_DATA_SIZE do
			M.savedata[n] = file[n]
		end
	end
end

function M.savegamefile()
	sys.save(sys.get_save_file(M.APP_NAME, M.SAVE_FILE_NAME), M.savedata)
end

function M.getstarrating(w, l)
	local i = ((w - 1) * 9) + 3 + l
	return M.savedata[i]
end

function M.setstarrating(w, l, s)
	local i = ((w - 1) * 9) + 3 + l
	M.savedata[i] = s
end

function M.playsound(s)
	if M.sfx then
		local str = "main:/sound#"..s
		sound.play(str)
	end
end

function M.playmusic(s)
	if M.music then
		local str = "main:/sound#"..s
		sound.play(str)
	end
end

return M

