local M = {}

M.domains = {}

function M.add_domain(domain)
	table.insert(M.domains, domain)
end

function M.verify_domain()
	if not html5 then return true end
	local current_domain = html5.run("location.hostname")
	print("domain - ", current_domain)
	for key, value in ipairs(M.domains) do
		if value == current_domain then
			return true
		end
	end
	return false
end

function M.get_current_domain()
	if html5 then
		return html5.run("location.hostname")
	else
		return ""
	end
end

return M