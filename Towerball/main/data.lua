local M = {}

M.STATE_MENU = 1
M.STATE_CONTROLS = 2
M.STATE_PLAYING = 5
M.STATE_DEAD = 6

M.state = M.STATE_MENU

M.scrollpos = vmath.vector3(0, 0, 0)
M.playerpos = vmath.vector3(0, 0, 0)
M.score = 0
M.level = 1
M.lives = 0

function M.heighttoscore()
	return (math.floor(M.playerpos.y / 16) * 10) - 120
end

return M
