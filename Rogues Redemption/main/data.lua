local M = {}

M.MAX_LEVELS = 5

M.INV_SIZE = 24
M.INV_MAX = 32

M.INV_SLOT_HELMET = 25
M.INV_SLOT_AMULET = 26
M.INV_SLOT_ARMOUR = 27
M.INV_SLOT_GLOVES = 28
M.INV_SLOT_RING = 29
M.INV_SLOT_BOOTS = 30
M.INV_SLOT_LEFTHAND = 31
M.INV_SLOT_RIGHTHAND = 32

M.STATE_INGAME = 1
M.STATE_INVENTORY = 2
M.STATE_EQUIPPED = 3
M.STATE_EXAMINEITEM = 4
M.STATE_MAP = 5
M.STATE_PROFILE = 6
M.STATE_SHOP = 7
M.STATE_GAMEMENU = 8
M.STATE_COMPLETED = 9
M.STATE_MAINMENU = 10
M.STATE_CHARSELECT = 11
M.STATE_SETTINGS = 12

M.TILE_FLOOR_MIN = 3
M.TILE_FLOOR_MAX = 17
M.TILE_CORRIDOR_MIN = 25
M.TILE_CORRIDOR_MAX = 33
M.TILE_SPECIAL_CTR = 37
M.TILE_SPECIAL_MIN = 38
M.TILE_SPECIAL_MAX = 48

M.CLASS_ROGUE = 1
M.CLASS_WIZARD = 2
M.CLASS_WARRIOR = 3

M.APP_NAME = "rogred"
M.SAVE_FILE_NAME = "savefile"
M.SETTINGS_FILE_NAME = "settings"

M.level = 1
M.depth = 1
M.playerpos = vmath.vector3(0,0,0)
M.turn = 0
M.enemyturn = 0
M.numenemies = 0
M.inv = {}
M.state = M.STATE_MAINMENU
M.health = 100
M.mana = 100
M.hunger = 100
M.plevel = 1
M.xp = 0
M.invisible = 0
M.gold = 0
M.class = 2
M.classnames = {"ROGUE", "WIZARD", "WARRIOR"}
M.newgame = false
M.turnstaken = 0
M.fightswon = 0
M.scrollsread = 0
M.spellscast = 0
M.lockspicked = 0
M.doorsunlocked = 0
M.chestsopened = 0
M.chestsunlocked = 0
M.musicvol = 1.0
M.sfxvol = 1.0
M.detail = false
M.keep = false
M.sneak = 64
M.time = 0

function M.clearinv(self)
	for n = 1, M.INV_MAX do
		M.inv[n] = 1
	end
end

function M.itemininv(num)	
	for n = 1, M.INV_MAX do
		if M.inv[n] == num then return true end
	end
	
	return false
end

function M.invfull(self)
	for n = 1, M.INV_SIZE do
		if M.inv[n] < 2 then 
			return false
		end
	end
	
	return true
end

function M.getemptyslot()
	local n = 1

	while M.inv[n] > 1 and n < M.INV_SIZE do
		n = n + 1
	end

	return n
end

function M.useitem(num)	
	for n = 1, M.INV_MAX do
		if M.inv[n] == num then 
			M.inv[n] = 1
			return
		end
	end
end

function M.ptinrect(x, y, rect)
	local r = false

	if x > rect.x and x < rect.z and y > rect.y and y < rect.w then r = true
	end

	return r
end

function M.istilefree(self, x, y)
	local valid = false

	local item = M.gettile (self, x, y, "items")
	
	if M.gettile (self, x, y, "world") < 287 and item < 287 then
		valid = true
	end
	
	return valid
end

function M.istilespawnable(self, x, y)
	local tw = tilemap.get_tile(string.format("level%d:/level#tilemap", M.level), "world", x, y)
	local tx = tilemap.get_tile(string.format("level%d:/level#tilemap", M.level), "taken", x, y)
	local ti = tilemap.get_tile(string.format("level%d:/level#tilemap", M.level), "items", x, y)

	if tw > M.TILE_FLOOR_MIN and tw <= M.TILE_FLOOR_MAX and tx == 0 and ti == 0 then 
		return true
	end
	
	return false
end 


function M.issolid(self, x, y)
	if M.gettile (self, x, y, "world") < 287 then
		return false
	end
	
	return true
end

function M.snaptotile(self, v)
	if v.x > 0 then v.x = v.x + 8
	elseif v.x < 0 then v.x = v.x - 8
	end
	if v.y > 0 then v.y = v.y + 8
	elseif v.y < 0 then v.y = v.y - 8
	end	
	v.x = v.x - math.fmod(v.x, 16) + 8
	v.y = v.y - math.fmod(v.y, 16) + 8
	
	return v
end

function M.screentoworld(self, v)
	v.x = M.playerpos.x + ((v.x - 224) / 4) - 8
	v.y = M.playerpos.y + ((v.y - 400) / 4) - 8
	
	return v
end

function M.gettile(self, x, y, layer)
	local tx = math.floor(x / 16) + 1
	local ty = math.floor(y / 16) + 1

	local t = tilemap.get_tile(string.format("level%d:/level#tilemap", M.level), layer, tx, ty)
		
	return t
end

function M.settile(self, x, y, layer, tile)
	local tx = math.floor(x / 16) + 1
	local ty = math.floor(y / 16) + 1

	local t = tilemap.set_tile(string.format("level%d:/level#tilemap", M.level), layer, tx, ty, tile)
end

function M.findfreetile(self)
	sx, sy, w, h = tilemap.get_bounds(string.format("level%d:/level#tilemap", M.level))
	local c = false
	local x, y
	local n = 1
	
	while c == false do
		x = math.random(sx, sx + w - 1)
		y = math.random(sy, sy + h - 1)
		
		if M.istilespawnable(self, x, y) then c = true end
		
		n = n + 1
		if n > 100 then 
			print("free tile not found")
			c = true
			x = 0
			y = 0
		end
	end

	return vmath.vector3(x, y, 1)
end

function M.findcorridortile(self)
	sx, sy, w, h = tilemap.get_bounds(string.format("level%d:/level#tilemap", M.level))
	local c = false
	local x, y
	local n = 1
	
	while c == false do
		x = math.random(sx, sx + w - 1)
		y = math.random(sy, sy + h - 1)
		
		local tw = tilemap.get_tile(string.format("level%d:/level#tilemap", M.level), "world", x, y)
		
		if tw >= M.TILE_CORRIDOR_MIN and tw <= M.TILE_CORRIDOR_MAX then c = true end

		n = n + 1
		if n > 100 then
			print("corridor tile not found")
			c = true
			x = 0
			y = 0			
		end
	end

	return vmath.vector3(x, y, 1)
end

function M.loadgamefile(self)
	local file = sys.load(sys.get_save_file(M.APP_NAME, M.SAVE_FILE_NAME))

	M.level = file.level
	M.depth = file.depth
	M.health = file.health
	M.mana = file.mana
	M.hunger = file.hunger
	M.plevel = file.plevel
	M.xp = file.xp
	M.gold = file.gold
	M.class = file.class
	M.turnstaken = file.turnstaken
	M.fightswon = file.fightswon
	M.scrollsread = file.scrollsread
	M.spellscast = file.spellscast
	M.lockspicked = file.lockspicked
	M.doorsunlocked = file.doorsunlocked
	M.chestsopened = file.chestsopened
	M.chestsunlocked = file.chestsunlocked
	M.time = file.time
	M.inv[1] = file.inv1
	M.inv[2] = file.inv2
	M.inv[3] = file.inv3
	M.inv[4] = file.inv4
	M.inv[5] = file.inv5
	M.inv[6] = file.inv6
	M.inv[7] = file.inv7
	M.inv[8] = file.inv8
	M.inv[9] = file.inv9
	M.inv[10] = file.inv10
	M.inv[11] = file.inv11
	M.inv[12] = file.inv12
	M.inv[13] = file.inv13
	M.inv[14] = file.inv14
	M.inv[15] = file.inv15
	M.inv[16] = file.inv16
	M.inv[17] = file.inv17
	M.inv[18] = file.inv18
	M.inv[19] = file.inv19
	M.inv[20] = file.inv20
	M.inv[21] = file.inv21
	M.inv[22] = file.inv22
	M.inv[23] = file.inv23
	M.inv[24] = file.inv24
	M.inv[25] = file.inv25
	M.inv[26] = file.inv26
	M.inv[27] = file.inv27
	M.inv[28] = file.inv28
	M.inv[29] = file.inv29
	M.inv[30] = file.inv30
	M.inv[31] = file.inv31
	M.inv[32] = file.inv32
end

function M.savegamefile(self)
	local file = {
		valid = 1,
		level = M.level,
		depth = M.depth,	
		health = M.health,
		mana = M.mana,
		hunger = M.hunger,
		plevel = M.plevel,
		xp = M.xp,
		gold = M.gold,
		class = M.class,
		turnstaken = M.turnstaken,
		fightswon = M.fightswon,
		scrollsread = M.scrollsread,
		spellscast = M.spellscast,
		lockspicked = M.lockspicked,
		doorsunlocked = M.doorsunlocked,
		chestsopened = M.chestsopened,
		chestsunlocked = M.chestsunlocked,
		time = M.time,
		inv1 = M.inv[1],
		inv2 = M.inv[2],
		inv3 = M.inv[3],
		inv4 = M.inv[4],
		inv5 = M.inv[5],
		inv6 = M.inv[6],
		inv7 = M.inv[7],
		inv8 = M.inv[8],
		inv9 = M.inv[9],
		inv10 = M.inv[10],
		inv11 = M.inv[11],
		inv12 = M.inv[12],
		inv13 = M.inv[13],
		inv14 = M.inv[14],
		inv15 = M.inv[15],
		inv16 = M.inv[16],
		inv17 = M.inv[17],
		inv18 = M.inv[18],
		inv19 = M.inv[19],
		inv20 = M.inv[20],
		inv21 = M.inv[21],
		inv22 = M.inv[22],
		inv23 = M.inv[23],
		inv24 = M.inv[24],
		inv25 = M.inv[25],
		inv26 = M.inv[26],
		inv27 = M.inv[27],
		inv28 = M.inv[28],
		inv29 = M.inv[29],
		inv30 = M.inv[30],
		inv31 = M.inv[31],
		inv32 = M.inv[32]
	}

	sys.save(sys.get_save_file(M.APP_NAME, M.SAVE_FILE_NAME), file)
end

function M.loadsettings(self)
	local file = sys.load(sys.get_save_file(M.APP_NAME, M.SETTINGS_FILE_NAME))

	M.musicvol = file.musicvol
	M.sfxvol = file.sfxvol
	M.detail = file.detail
	M.keep = file.keep
	
	if M.musicvol == nil then M.musicvol = 1 end
	if M.sfxvol == nil then M.sfxvol = 1 end
	if M.detail == nil then M.detail = true end
	if M.keep == nil then M.keep = false end
end

function M.savesettings(self)
	local file = {
		musicvol = M.musicvol,
		sfxvol = M.sfxvol,
		detail = M.detail,
		keep = M.keep
	}

	sys.save(sys.get_save_file(M.APP_NAME, M.SETTINGS_FILE_NAME), file)
end

function M.clearsavegame(self)
	local file = {
		valid = nil,
	}

	sys.save(sys.get_save_file(M.APP_NAME, M.SAVE_FILE_NAME), file)
end

function M.validsavegame(self)
	local file = sys.load(sys.get_save_file(M.APP_NAME, M.SAVE_FILE_NAME))

	if file.valid == 1 then
		M.class = file.class
		M.depth = file.depth
	end

	return file.valid
end

return M

























