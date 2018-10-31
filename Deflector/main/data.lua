local M = {}

M.STATE_MENU = 1
M.STATE_CONTROLS = 2
M.STATE_GETREADY = 3
M.STATE_STOPPED = 4
M.STATE_PLAYING = 5
M.STATE_PLAYINGFAST = 6
M.STATE_LEVELCLEAR = 7

M.APP_NAME = "deflector"
M.SAVE_FILE_NAME = "savefile"
M.SETTINGS_FILE_NAME = "settings"

M.state = M.STATE_MENU

M.score = 0
M.level = 1
M.numballs = 0

M.teleport = vmath.vector3(0,0,0)

function M.loadgamefile()
	local file = sys.load(sys.get_save_file(M.APP_NAME, M.SAVE_FILE_NAME))

	M.level = file.level
end

function M.savegamefile()
	local file = {
		valid = 1,
		level = M.level,
	}

	sys.save(sys.get_save_file(M.APP_NAME, M.SAVE_FILE_NAME), file)
end

function M.clearsavegame()
	local file = {
		valid = nil,
	}

	sys.save(sys.get_save_file(M.APP_NAME, M.SAVE_FILE_NAME), file)
end

function M.validsavegame()
	local file = sys.load(sys.get_save_file(M.APP_NAME, M.SAVE_FILE_NAME))

	if file.valid == 1 then
		M.level = file.level
	end

	return file.valid
end

return M

