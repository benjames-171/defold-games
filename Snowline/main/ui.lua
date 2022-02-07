local data = require "main.data"

local M = {}

M.GUI_DROP = 50
M.FADE = 0.25

local function disablenode (self, node)
	gui.set_enabled(node, false)
end

function M.show(node)
	gui.set_enabled(node, true)
	gui.animate(node, gui.PROP_POSITION, vmath.vector3(data.SCR_W/2, data.SCR_H/2, 0), gui.EASING_INOUTQUAD, M.FADE)
	gui.animate(node, "color.w", 1, gui.EASING_INOUTQUAD, M.FADE)
end

function M.hide(node)
	gui.animate(node, gui.PROP_POSITION, vmath.vector3(data.SCR_W/2, (data.SCR_H/2) - M.GUI_DROP, 0), gui.EASING_INOUTQUAD, M.FADE, 0, disablenode)
	gui.animate(node, "color.w", 0, gui.EASING_INOUTQUAD, M.FADE)
end

function M.init(node)
	gui.set_position(node, vmath.vector3(data.SCR_W/2, (data.SCR_H/2) - M.GUI_DROP, 0))
	gui.set_enabled(node, false)
	gui.set_color(node, vmath.vector4(1,1,1,0))
end

return M