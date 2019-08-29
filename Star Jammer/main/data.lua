local M = {}

M.STATE_MENU = 1
M.STATE_CONTROLS = 2
M.STATE_PLAYING = 4
M.STATE_SHOP = 5
M.STATE_LEVELCLEAR = 6
M.STATE_GAMEOVER = 7
M.STATE_COMPLETE = 8

M.state = M.STATE_MENU

M.TILE_SIZE = 16
M.PIXEL_SIZE = 4

M.NUM_LEVELS = 3

M.level = 1
M.maxlevel = 1
M.score = 0
M.energy = 0
M.credits = 0
M.keys = 0
M.gun = 0
M.ammo = 0

M.playerpos = vmath.vector3(0,0,0)
M.offset = vmath.vector3(1280/(M.PIXEL_SIZE * 2), 720/(M.PIXEL_SIZE * 2) - 8, 0)

function M.world2tile(pos)
	return vmath.vector3(math.floor((pos.x + M.TILE_SIZE) / M.TILE_SIZE), math.floor((pos.y + M.TILE_SIZE) / M.TILE_SIZE), pos.z)
end

function M.tile2world(pos)
	return vmath.vector3((pos.x * M.TILE_SIZE) - (M.TILE_SIZE / 2), (pos.y * M.TILE_SIZE) - (M.TILE_SIZE / 2), pos.z)
end

function M.centreontile(pos)
	return vmath.vector3((pos.x - pos.x % M.TILE_SIZE) + M.TILE_SIZE / 2, (pos.y - pos.y % M.TILE_SIZE) + M.TILE_SIZE / 2, pos.z)
end

function M.hex2rgba(hex)
	hex = hex:gsub("#","")
	local rgba = vmath.vector4(tonumber("0x"..hex:sub(1,2))/255, tonumber("0x"..hex:sub(3,4))/255, tonumber("0x"..hex:sub(5,6))/255, 1)
	return rgba
end

function M.snap(pos)
	return vmath.vector3(math.floor(pos.x), math.floor(pos.y), pos.z)
end

function M.onscreen(p, m)
	if  p.x > M.scrollpos.x - m + 80 and
		p.x < M.scrollpos.x + m + 160+80 and
		p.y > M.scrollpos.y - m + 13 and
		p.y < M.scrollpos.y + m + 144+13 then
		return true
	else
		return false
	end
end

return M

