local M = {}

local words = {}

local letters = ""
local frequencies = {}

local LETTER_FREQUENCIES = {
	default = "aaaaaaaaabbccddddeeeeeeeeeeeeffggghhiiiiiiiiijkllllmmnnnnnnooooooooppqrrrrrrssssttttttuuuuvvwwxyyz",
}

function M.load()
	local res = sys.load_resource("/assets/dictionary.txt")

	for word in res:gmatch("(.-)\n") do
		word = word:gsub("^%s*(.-)%s*$", "%1")
		words[word] = true
	end

	letters = LETTER_FREQUENCIES.default
	for i=1,#letters do
		local letter = letters:sub(i, i)
		frequencies[letter] = frequencies[letter] or 0
		frequencies[letter] = frequencies[letter] + 1
	end
end

function M.is_word(word)
	return words[word]
end

function M.random_letter()
	local i = math.random(1, #letters)
	local letter = letters:sub(i, i)
	return letter
end

return M