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
M.MAX_LEVELS = 4

M.level = 1
M.score = 0
M.hiscore = 0
M.energy = 0
M.double = false
M.coolmult = 2
M.pickup = 1
M.diff = 1
M.complete = 0

M.playerpos = vmath.vector3()

function M.hex2rgba(hex)
	hex = hex:gsub("#","")
	local rgba = vmath.vector4(tonumber("0x"..hex:sub(1,2))/255, tonumber("0x"..hex:sub(3,4))/255, tonumber("0x"..hex:sub(5,6))/255, 1)
	return rgba
end

function M.fullscreen(self)
	defos.toggle_fullscreen()
	defos.disable_window_resize()
	defos.disable_maximize_button()
end

return M

