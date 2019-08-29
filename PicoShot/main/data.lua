local M = {}

M.STATE_MENU = 1
M.STATE_SUBMENU = 2
M.STATE_GETREADY = 3
M.STATE_PLAYING = 4
M.STATE_LEVELCLEAR = 5
M.STATE_GAMEOVER = 6
M.STATE_COMPLETE = 7

M.state = M.STATE_MENU

M.SCR_SIZE = 64
M.TILE_SIZE = 6
M.PIXEL_SIZE = 1

M.score = 0
M.hiscore = 0
M.lives = 5
M.special = 0
M.weap = 1
M.level = 1
M.maxlevel = 1

M.offset = vmath.vector3(64/(M.PIXEL_SIZE * 2), 64/(M.PIXEL_SIZE * 2), 0)
M.scrollpos = vmath.vector3(0,0,0)
M.playerpos = vmath.vector3(0,0,0)
M.spawnpos = vmath.vector3(0,0,0)

function M.hex2rgba(hex)
	hex = hex:gsub("#","")
	local rgba = vmath.vector4(tonumber("0x"..hex:sub(1,2))/255, tonumber("0x"..hex:sub(3,4))/255, tonumber("0x"..hex:sub(5,6))/255, 1)
	return rgba
end

function M.world2tile(p)
	return vmath.vector3(math.floor((p.x + M.TILE_SIZE) / M.TILE_SIZE), math.floor((p.y + M.TILE_SIZE) / M.TILE_SIZE), p.z)
end

function M.tile2world(p)
	return vmath.vector3((p.x * M.TILE_SIZE) - (M.TILE_SIZE / 2), (p.y * M.TILE_SIZE) - (M.TILE_SIZE / 2), p.z)
end

function M.snap(p)
	return vmath.vector3(math.floor(p.x), math.floor(p.y), p.z)
end

function M.onscreen(p, m)
	if p.x > -m and
	p.x < M.SCR_SIZE + m and
	p.y > -m and
	p.y < M.SCR_SIZE + m then
		return true
	else
		return false
	end
end

return M
