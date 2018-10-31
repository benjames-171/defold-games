local M = {}

M.level = 1
M.fuel = 100
M.shield = 100
M.artifacts = 0

function M.get_tint()
	local t = vmath.vector4(1, 1, 1, 1)

	if M.level <= 3 then
		t = vmath.vector4(0.7, 0.1, 0.6, 1)
	elseif M.level <= 6 then
		t = vmath.vector4(0.3, 0.8, 1, 1)
	end
	
	return t
end

return M