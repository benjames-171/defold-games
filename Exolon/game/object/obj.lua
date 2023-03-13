local M = {}

M.spawn = {}
M.tele = {}

function M.add(obj)
	table.insert(M.spawn, obj)
end

function M.addtele(obj)
	table.insert(M.tele, obj)
end	

function M.remove(obj)
	for k,v in pairs(M.spawn) do
		if v == obj then
			go.delete(v)
			table.remove(M.spawn, k)
		end
	end
end

function M.clearall(self)
	for k,v in pairs(M.spawn) do
		go.delete(v)
	end
	M.spawn = {}
	M.tele = {}
end

return M

