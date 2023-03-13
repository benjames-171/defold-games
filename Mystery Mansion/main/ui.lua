local data = require "main.data"

local M = {}

M.FADE = 0.3

local function disablenode (self, node)
	gui.set_enabled(node, false)
end

function M.show(node)
	gui.set_enabled(node, true)
	gui.animate(node, "color.w", 1, gui.EASING_LINEAR, M.FADE)
end

function M.hide(node)
	gui.animate(node, "color.w", 0, gui.EASING_LINEAR, M.FADE)
end

function M.init(node)
	gui.set_enabled(node, false)
	gui.set_color(node, vmath.vector4(1,1,1,0))
end

return M