local M = {}

M.STATE_FRONT = 1
M.STATE_PLAYING = 2
M.STATE_LEVELCLEAR = 3
M.STATE_MENU = 4
M.STATE_HELP = 5

M.state = M.STATE_FRONT
M.level = 1
M.turns = 0

return M
