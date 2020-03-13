local M = {}

M.STATE_MENU = 1
M.STATE_CONTROLS = 2
M.STATE_GETREADY = 3
M.STATE_PLAYING = 4
M.STATE_LEVELCLEAR = 5
M.STATE_GAMEOVER = 6

M.state = M.STATE_MENU

M.TILE_SIZE = 16
M.PIXEL_SIZE = 4
M.MAX_LEVELS = 4

M.level = 1
M.maxlevel = 1
M.fuel = 100
M.coins = 0
M.hp = 0
M.score = 0
M.bestscore = 0

M.offset = vmath.vector3(1280/(M.PIXEL_SIZE * 2), 720/(M.PIXEL_SIZE * 2), 0)
M.scrollpos = vmath.vector3(0,0,0)

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
	local x = p.x - M.scrollpos.x
	if x > -m and x < 320 + m then
		return true
	else
		return false
	end
end

return M