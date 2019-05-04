local M = {}

M.TILE_SIZE = 16
M.PIXEL_SIZE = 4

M.level = 1
M.maxlevel = 1
M.fuel = 100
M.shield = 100
M.artifacts = 0

M.scrollpos = vmath.vector3()
M.playerpos = vmath.vector3()

M.offset = vmath.vector3(1280/(M.PIXEL_SIZE * 2), 720/(M.PIXEL_SIZE * 2), 0)

function M.get_tint()
	local t

	if M.level <= 3 then t = vmath.vector4(157/255, 31/255, 47/255, 1)
	else t = vmath.vector4(18/255, 111/255, 126/255, 1)
	end
	
	return t
end

function M.world2tile(p)
	return vmath.vector3(math.floor((p.x + M.TILE_SIZE) / M.TILE_SIZE), math.floor((p.y + M.TILE_SIZE) / M.TILE_SIZE), p.z)
end

function M.tile2world(p)
	return vmath.vector3((p.x * M.TILE_SIZE) - (M.TILE_SIZE / 2), (p.y * M.TILE_SIZE) - (M.TILE_SIZE / 2), p.z)
end

return M