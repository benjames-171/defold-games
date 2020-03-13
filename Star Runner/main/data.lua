local M = {}

M.STATE_MENU = 1
M.STATE_CONTROLS = 2
M.STATE_CREDITS = 3
M.STATE_PLAYING = 4
M.STATE_MAP = 5
M.STATE_COMPLETE = 6

M.state = M.STATE_MENU

M.TILE_SIZE = 16
M.PIXEL_SIZE = 4

M.SCR_W = 1024 / M.PIXEL_SIZE
M.SCR_H = 576 / M.PIXEL_SIZE

M.DEADZONE = 0.3

M.itemname = {
	[16] = "NOTHING",
	[17] = "THE BATTERY",
	[18] = "THE WRENCH",
	[19] = "THE BLUE ACCESS CARD",
	[20] = "THE YELLOW ACCESS CARD",
	[21] = "THE FUSE",
	[22] = "A CONTROL ROD",
	[23] = "ITEM 8",
	}
	
M.item = 17
M.rods = 0
M.screenpos = vmath.vector3()
M.playerpos = vmath.vector3()
M.spawnpos = vmath.vector3()
M.offset = vmath.vector3(1024/(M.PIXEL_SIZE * 2), 576/(M.PIXEL_SIZE * 2), 0)

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
	local ret = false
	if p.x > M.screenpos.x - m and
		p.x < M.screenpos.x + m + M.offset.x * 2 and
		p.y > M.screenpos.y - m and
		p.y < M.screenpos.y + m + M.offset.y * 2 then
		ret = true
	end

	return ret
end

function M.deadzone(v)
	local ret = false
	if v > M.DEADZONE then ret = true end

	return ret
end

M.DELTA_CAP = 0.05

function M.capdelta(dt)
	if dt > M.DELTA_CAP then dt = M.DELTA_CAP end
	return dt
end

return M




	