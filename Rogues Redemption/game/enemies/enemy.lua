local M = {}

M.ENEMY_SIZE = 4

M.en_xy = {}
M.en_url = {}
M.en_vis = {}

-- determiner, name, power, damage

M.enemydata = {
	"a", "VAMPIRE BAT", 	35, 2,
	"a", "GIANT FROG", 		40, 2,
	"a", "GOBLIN", 			45, 3,
	"a", "COMMON SNEK", 	50, 3,
	"a", "SKELETON", 		55, 4,
	"a", "GHOST", 			60, 4,
	"a", "TRIFFID", 		65, 5,
	"a", "SWAMP BEAST", 	65, 5,
	"a", "PHANTOM", 		70, 6,
	"a", "RATTLE SNAKE", 	70, 7,
	"a", "TROLL", 			80, 8,
	"a", "LESSER DRAGON", 	90, 9,
	"a", "BULK", 			100, 10,
	"a", "GREATER DRAGON", 	110, 11,
	}

function M.getenemynamedeterminer(num)
	return M.enemydata[((num - 1) * M.ENEMY_SIZE) + 1]
end

function M.getenemyname(num)
	return M.enemydata[((num - 1) * M.ENEMY_SIZE) + 2]
end

function M.getenemypower(num)
	return M.enemydata[((num - 1) * M.ENEMY_SIZE) + 3]
end

function M.getenemydamage(num)
	return M.enemydata[((num - 1) * M.ENEMY_SIZE) + 4]
end

local function diff(a,b)
	return math.abs(a - b)
end

function M.enemyontile(url, pos)
	for k, v in ipairs(M.en_xy) do
		if diff(v.x, pos.x) < 8 and diff(v.y, pos.y) < 8 and M.en_url[k] ~= url then 
			return M.en_url[k] 
		end
	end
	
	return nil
end

function M.delete(url)
	for k, v in ipairs(M.en_url) do	
		if (v == url) then
			table.remove(M.en_url, k)
			table.remove(M.en_xy, k)
			table.remove(M.en_vis, k)
			return
		end
	end
end

function M.deleteall()
	for k in pairs (M.en_url) do
	    M.en_url [k] = nil
	end

	for k in pairs (M.en_xy) do
	    M.en_xy [k] = nil
	end
end

function M.setposition(url, pos)
	for k, v in ipairs(M.en_url) do	
		if (v == url) then
			M.en_xy[k] = pos
			return
		end
	end
end

function M.getvisible(url)
	for k, v in ipairs(M.en_url) do	
		if (v == url) then
			return M.en_vis[k]
		end
	end
	
	return false
end

function M.setvisible(url, vis)
	for k, v in ipairs(M.en_url) do	
		if (v == url) then
			M.en_vis[k] = vis
			return
		end
	end
end

function M.debug()
	for k, v in ipairs(M.en_url) do	
		print(k, M.en_url[k], M.en_xy[k], M.en_vis[k])
	end
end

return M