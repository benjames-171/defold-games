local M = {}

M.STATE_MENU = 1
M.STATE_CONTROLS = 2
M.STATE_CREDITS = 3
M.STATE_PLAYING = 4
M.STATE_GAMEOVER = 5

M.state = M.STATE_MENU

M.TILE_SIZE = 16
M.PIXEL_SIZE = 4
M.MAX_LEVELS = 10
M.SCR_W = 320
M.SCR_H = 180

M.score = 0
M.best = 0

function M.hex2rgba(hex)
	hex = hex:gsub("#","")
	local rgba = vmath.vector4(tonumber("0x"..hex:sub(1,2))/255, tonumber("0x"..hex:sub(3,4))/255, tonumber("0x"..hex:sub(5,6))/255, 1)
	return rgba
end

function M.onscreen(p, m)
	if p.x > -m and
		p.x < M.SCR_W + m and
		p.y > -m and
		p.y < M.SCR_H + m then
		return true
	else
		return false
	end
end

return M