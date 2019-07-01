local M = {}

M.url = {}
M.pos = {}

function M.add(url, pos)
	table.insert(M.url, url)
	table.insert(M.pos, pos)
end

function M.setpos(url, pos)
	for k, v in ipairs(M.url) do
		if v == url then
			M.pos[k] = pos
			return
		end
	end
end

function M.total()
	local total = 0
	for _ in pairs(M.url) do
		total = total + 1
	end

	return total
end

function M.ontile(pos)
	for k, v in ipairs(M.pos) do
		if v.x == pos.x and v.y == pos.y then
			return M.url[k] 
		end
	end

	return nil
end

function M.delete(url)
	for k, v in ipairs(M.url) do
		if v == url then
			table.remove(M.url, k)
			table.remove(M.pos, k)
			return
		end
	end
end

function M.deleteall()
	for k, v in ipairs(M.url) do
		go.delete(v)
	end
	M.url = {}
	M.pos = {}
end

function M.freeze()
	for k, v in ipairs(M.url) do
		msg.post(v, "freeze")
	end
end

return M