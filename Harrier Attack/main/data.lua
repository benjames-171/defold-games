local M = {}

M.STATE_MENU = 1
M.STATE_CONTROLS = 2
M.STATE_PLAYING = 5
M.STATE_EJECTED = 6
M.STATE_DEAD = 7
M.STATE_COMPLETED = 8

M.TOP_SPEED = 100
M.MAX_ROCKETS = 25
M.MAX_BOMBS = 150

M.scrollpos = vmath.vector3(0, 0, 0)
M.playerpos = vmath.vector3(0, 0, 0)
M.retcar = vmath.vector3(0, 0, 0)
M.nocarrier = false

M.state = M.STATE_MENU
M.rockets = 0
M.bombs = 0
M.fuel = 0
M.hull = 0
M.speed = 0
M.score = 0

return M
