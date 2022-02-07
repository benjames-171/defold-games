local data = require "main.data"

local M = {}

M.FADE = 0.2

local function disablenode (self, node)
	gui.set_enabled(node, false)
end

function M.show(node)
	gui.set_enabled(node, true)
	gui.animate(node, "color.w", 1, gui.EASING_INOUTQUAD, M.FADE)
end

function M.hide(node)
	gui.animate(node, "color.w", 0, gui.EASING_INOUTQUAD, M.FADE)
end

function M.init(node)
	gui.set_position(node, vmath.vector3(data.SCR_W/2, (data.SCR_H/2), 0))
	gui.set_enabled(node, false)
	local col = gui.get_color(node)
	col.w = 0
	gui.set_color(node, col)
end

return M