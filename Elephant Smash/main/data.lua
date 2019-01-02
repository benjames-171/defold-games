local M = {}

M.TILE_SIZE = 16
M.PIXEL_SIZE = 4

M.STATE_MENU = 1
M.STATE_CONTROLS = 2
M.STATE_GETREADY = 3
M.STATE_PLAYING = 4
M.STATE_LEVELCLEAR = 5
M.STATE_DEAD = 6
M.STATE_GAMEOVER = 7

M.state = M.STATE_PLAYING

M.level = 1
M.offset = vmath.vector3(0,0,0)
M.spawnpos = vmath.vector3(8,32,0.4)

function M.world2tile(p)
	return vmath.vector3(math.floor((p.x + M.TILE_SIZE) / M.TILE_SIZE), math.floor((p.y + M.TILE_SIZE) / M.TILE_SIZE), p.z)
end

return M