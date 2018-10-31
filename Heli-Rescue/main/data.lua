local M = {}

M.STATE_MENU = 1
M.STATE_CONTROLS = 2
M.STATE_SELECT =3
M.STATE_PLAYING = 4
M.STATE_PAUSED = 5
M.STATE_LEVELCLEAR = 6

M.TILE_SIZE = 16

M.state = M.STATE_MENU

M.score = 0
M.level = 1
M.ammo = 0
M.fuel = 0
M.hull = 0
M.hover = 0
M.heli = 1
M.overbase = true
M.num_hostages = 0
M.onboard = 0
M.rescued = 0
M.playerrot = 0
M.playerpos = vmath.vector3(0,0,0)
M.offset = vmath.vector3 (160, 96, 0)
M.scrollpos = vmath.vector3(0,0,0)
M.basepos = vmath.vector3(0,0,0)

function M.world2tile(p)
	return vmath.vector3(math.floor((p.x + M.TILE_SIZE) / M.TILE_SIZE), math.floor((p.y + M.TILE_SIZE) / M.TILE_SIZE), p.z)
end

function M.tile2world(p)
	return vmath.vector3((p.x * M.TILE_SIZE) - (M.TILE_SIZE / 2), (p.y * M.TILE_SIZE) - (M.TILE_SIZE / 2), p.z)
end

function M.destructible_tile(t)
	if t >= 129 and t <= 192 then
		return true
	else
		return false
	end
end

function M.validtile(x, y)
	sx, sy, w, h = tilemap.get_bounds(string.format("level%d:/level#tilemap", M.level))

	if x >= sx and x <= w+sx-1 and y >= sy and y <= h+sy-1 then
		return true
	else
		return false
	end
end

function M.onscreen(p)
	if p.x > M.scrollpos.x and
		p.x < M.scrollpos.x + M.offset.x * 2 and
		p.y > M.scrollpos.y and
		p.y < M.scrollpos.y + M.offset.y * 2 then
		return true
	else
		return false
	end
end

return M