local enemy = require "game.enemy.enemy"

local M = {}

M.STATE_INTRO = 1
M.STATE_MENU = 2
M.STATE_CONTROLS = 3
M.STATE_CREDITS = 4
M.STATE_PLAYING = 5
M.STATE_EXAMINE = 6
M.STATE_GAMEOVER = 7
M.STATE_CLEAR = 8
M.STATE_COMPLETE = 9

M.state = M.STATE_MENU

M.INV_SIZE = 20
M.EQP_SIZE = 4
M.ITM_SIZE = M.INV_SIZE + M.EQP_SIZE

M.TILE_SIZE = 16
M.PIXEL_SIZE = 4

M.FX_HIT = 1
M.FX_EXPLODE = 2

M.level = 1
M.energy = 100
M.power = 100
M.ammo = 0
M.turn = 0
M.elec = false
M.playerpos = vmath.vector3()
M.playernow = vmath.vector3()
M.scrollpos = vmath.vector3()
M.inv = {}

M.offset = vmath.vector3(1280 / (M.PIXEL_SIZE * 2), 720 / (M.PIXEL_SIZE * 2), 0)

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

function M.onscreen(p, m)
	if p.x > M.scrollpos.x - m and
	p.x < M.scrollpos.x + m + M.offset.x * 2 and
	p.y > M.scrollpos.y - m and
	p.y < M.scrollpos.y + m + M.offset.y * 2 then
		return true
	else
		return false
	end
end

function M.getfreetile(self)
	local found = false

	local x, y

	while not found do
		x = math.random(3, 9)
		y = math.random(1, 9)

		local t = tilemap.get_tile("/level#tilemap", "col", x, y)
		local e = enemy.ontile(M.tile2world(vmath.vector3(x,y,0)))
		if t == 0 and e == nil then found = true end
	end

	return vmath.vector3(x, y, 0)
end

return M