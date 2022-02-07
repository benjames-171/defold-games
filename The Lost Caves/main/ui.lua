local data = require "main.data"

local M = {}

M.GUI_DROP = 135
M.FADE = 0.2

local function disablenode (self, node)
	gui.set_enabled(node, false)
end

function M.show(node)
	gui.set_enabled(node, true)
	gui.animate(node, gui.PROP_POSITION, vmath.vector3(data.SCR_W/2, data.SCR_H/2, 0), gui.EASING_LINEAR, M.FADE)
end

function M.hide(node)
	gui.animate(node, gui.PROP_POSITION, vmath.vector3(data.SCR_W/2, (data.SCR_H/2) - M.GUI_DROP, 0), gui.EASING_LINEAR, M.FADE, 0, disablenode)
end

function M.init(node)
	gui.set_position(node, vmath.vector3(data.SCR_W/2, (data.SCR_H/2) - M.GUI_DROP, 0))
	gui.set_enabled(node, false)
end

return M