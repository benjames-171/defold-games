-- ca-app-pub-4303277611893487~2741955201

local M = {}

M.STATE_MENU = 1
M.STATE_CONTROLS = 2
M.STATE_GETREADY = 3
M.STATE_PLAYING = 4
M.STATE_WATER = 5
M.STATE_LEVELCLEAR = 6
M.STATE_GAMEMENU = 7

M.state = M.STATE_PLAYING

M.SCALE = 4
M.MAX_POWER = 65
M.POWER_DIVISOR = 2.5
M.TILE_SIZE = 8
M.MAX_LEVELS = 36

M.score = 0
M.level = 1
M.leveloffset = 0
M.strokes = 0
M.startpos = vmath.vector3(0,0,0)
M.ballpos = vmath.vector3(0,0,0)
M.scrollpos = vmath.vector3(0,0,0)
M.scrollbounds = vmath.vector4(0,0,0,0)
M.actualpos = vmath.vector3(0,0,0)

M.par = {	5,4,5,6,5,5,6,3,6,6,6,9,
			9,12,8,13,13,17,20,12,13,16,14,25,
			10,13,13,9,10,10,8,12,12,10,9,10}

M.progress = {	0,0,0,0,0,0,0,0,0,0,0,0,
				0,0,0,0,0,0,0,0,0,0,0,0,
				0,0,0,0,0,0,0,0,0,0,0,0}

M.GAME_NAME = "FuriousGolf"
M.SAVE_FILE = "savefile"

function M.load(self)
	local path = sys.get_save_file(M.GAME_NAME, M.SAVE_FILE)
	local table = sys.load(path)
	if next(table) then
		for n = 1, M.MAX_LEVELS do
			M.progress[n] = table[n]
			if M.progress[n] == nil or M.progress[n] > 3 or M.progress[n] < 0 then M.progress[n] = 0 end
		end
	end
end

function M.save(self)
	local path = sys.get_save_file(M.GAME_NAME, M.SAVE_FILE)
	sys.save(path, M.progress)
end

return M