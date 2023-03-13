local M = {}

M.data = {}

function M.add(obj)
	table.insert(M.data, obj)
end

function M.remove(obj)
	for k, v in pairs(M.data) do
		if v == obj then
			go.delete(obj, true)
			table.remove(M.data, k)
		end
	end
end

function M.transformall()
	for k, v in pairs(M.data) do
		msg.post(v, "transform")
	end
end

function M.total()
	local total = 0
	for _ in pairs(M.data) do
		total = total + 1
	end
	return total
end


return M

