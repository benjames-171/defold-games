local M = {}

M.STATE_MENU = 1
M.STATE_CONTROLS = 2
M.STATE_GETREADY = 3
M.STATE_PLAYING = 4
M.STATE_LEVELCLEAR = 5
M.STATE_DEAD = 6

M.state = M.STATE_MENU

M.playerpos = vmath.vector3(0, 0, 0)
M.ballpos = vmath.vector3(0, 0, 0)
M.score = 0
M.level = 1
M.lives = 0
M.blocks = 0

function M.resolveshadow(level, x, y)
	local t = tilemap.get_tile(level, "top", x, y)
	
	if t > 16 then return end
	
	local t1 = tilemap.get_tile(level, "top", x - 1, y + 1)
	local t2 = tilemap.get_tile(level, "top", x, y + 1)
	local t3 = tilemap.get_tile(level, "top", x - 1, y)
	
	local d = 0
	
	if t1 < 16 and t2 < 16 and t3 < 16 then d = 0
	elseif t1 < 16 and t2 < 16 and t3 > 16 then d = 4
	elseif t1 < 16 and t2 > 16 and t3 < 16 then d = 1
	elseif t1 < 16 and t2 > 16 and t3 > 16 then d = 8
	elseif t1 > 16 and t2 < 16 and t3 < 16 then d = 3
	elseif t1 > 16 and t2 < 16 and t3 > 16 then d = 5
	elseif t1 > 16 and t2 > 16 and t3 < 16 then d = 2
	elseif t1 > 16 and t2 > 16 and t3 > 16 then d = 7
	else print("unresolved shadow", t1, t2, t3)
	end

	tilemap.set_tile(level, "top", x, y, d)
end

return M