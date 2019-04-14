local M = {}

M.STATE_MENU = 1
M.STATE_CONTROLS = 2
M.STATE_GETREADY = 3
M.STATE_PLAYING = 4
M.STATE_LEVELCLEAR = 5
M.STATE_GAMEOVER = 6

M.state = M.STATE_MENU

M.SCREEN_W = 640
M.SCREEN_H = 360

M.TILE_SIZE = 16
M.PIXEL_SIZE = 2


M.score = 0
M.bestscore = 0
M.energy = 100
M.level = 1
M.maxlevel = 1
M.total = 0
M.speedup = 0
M.laser = false

M.playerpos = vmath.vector3()

function M.tile2world(p)
	return vmath.vector3((p.x * M.TILE_SIZE) - (M.TILE_SIZE / 2) + 200, (p.y * M.TILE_SIZE) - (M.TILE_SIZE / 2) + 60, p.z)
end

function M.onscreen(p, m)
	if p.x > M.SCREEN_W + m or p.x < 0 - m or
	   p.y > M.SCREEN_H + m or p.y < 0 - m then
		return false
	else
		return true
	end
end

function M.incircle(pos)
	local dif = vmath.vector3(M.SCREEN_W/2 - pos.x, M.SCREEN_H/2 - pos.y, 0)
	local r = (dif.x * dif.x) + (dif.y * dif.y)

	if r > 25000 then
		return false
	else
		return true
	end
end

return M