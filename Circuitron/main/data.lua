local M = {}

M.STATE_MENU = 1
M.STATE_CONTROLS = 2
M.STATE_GETREADY = 3
M.STATE_PLAYING = 4
M.STATE_LEVELCLEAR = 5
M.STATE_GAMEOVER = 6
M.STATE_OPTIONS = 7

M.state = M.STATE_MENU

M.level = 1
M.maxlevel = 1
M.music = true

M.PIXEL_SIZE = 4
M.TILE_SIZE = 16
M.LEVEL_SIZE = 9

M.offset = vmath.vector3(-88,-16,0)

function M.world2tile(p)
	return vmath.vector3(math.floor((p.x + M.TILE_SIZE) / M.TILE_SIZE), math.floor((p.y + M.TILE_SIZE) / M.TILE_SIZE), p.z)
end

function M.tile2world(p)
	return vmath.vector3((p.x * M.TILE_SIZE) - (M.TILE_SIZE / 2), (p.y * M.TILE_SIZE) - (M.TILE_SIZE / 2), p.z)
end

function M.swaptile(t)
	if t == 1 then t = 2
	elseif t == 2 then t = 1
	elseif t >= 3 and t <= 6 then
		t = t + 1
		if t > 6 then t = 3 end
	elseif t >= 7 and t <= 10 then
		t = t + 1
		if t > 10 then t = 7 end
	end
	return t
end 

return M