local M = {}

M.STATE_MENU = 1
M.STATE_CONTROLS = 2
M.STATE_PLAYING = 3
M.STATE_LEVELCLEAR = 4
M.STATE_GAMEOVER = 5
M.STATE_COMPLETE = 6

M.state = M.STATE_MENU

M.SCR_SIZE = 720
M.TILE_SIZE = 16
M.PIXEL_SIZE = 2

M.level = 1
M.maxlevel = 1
M.gems = 0
M.gemstot = 0
M.balls = 0
M.ballstot = 0

M.offset = vmath.vector3(M.SCR_SIZE / M.PIXEL_SIZE, M.SCR_SIZE / M.PIXEL_SIZE, 0)
M.angle = 0

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

function M.onscreen(p, m)
	if p.x > -m and
	p.x < m + M.offset.x * 2 and
	p.y > -m and
	p.y < m + M.offset.y * 2 then
		return true
	else
		return false
	end
end

return M


