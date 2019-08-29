local M = {}

M.obj = {}

function M.add(url)
	table.insert(M.obj, url)
end

function M.deleteall()
	for k, v in ipairs(M.obj) do
		if pcall(go.get_position, v) then go.delete(v) end
	end
	M.obj = {}
end

return M