local M = {}

M.data = {
	[5] = "Drawing Room Key",
	[7] = "West Library Key",
	[8] = "Auditorium Key",
	[10] = "Front Door Key",
	[11] = "Basement Door Key",
	[12] = "Main Landing Key",
	[13] = "Trapdoor Key",

	[17] = "An empty clay pot. It looks like something was ripped out of it",
	[18] = "A footstool with a burgundy velvet top",

	[23] = "A wooden crate. It's nailed shut",
	[24] = "A large wooden crate has been stored here",
	[25] = "A large wooden crate has been stored here",
	[26] = "A heavy oak barrel filled with alcoholic liquor",
	[28] = "A heavy oak chest. It's locked tight",

	[31] = "A birchwood bedside cabinet. Various personal items inside",
	[32] = "A chest of drawers. Nothing useful inside",
	[33] = "A chest of drawers. Nothing useful",
	[34] = "A drawer cabinet filled with discarded odds and ends. Nothing helpful",
	[35] = "A substantial oak couch with dark red upholstery",
	[36] = "A substantial oak couch with dark red upholstery",

	[37] = "A small enamel pot. It's very dusty",
	[38] = "A large blue enamel vase. There are spiders",
	[39] = "..",

	[40] = "A large laundry hamper with wheels on. Nothing interesting inside",
	[41] = "A commercial grade washing machine.\nIt's empty",

	[43] = "A pot plant is growing here",
	[44] = "A grandfather clock.\nIt's stopped",
	[45] = "A heavy looking wooden desk with green leather topping",
	[46] = "A heavy looking wooden desk with green leather topping",
	[47] = "A plain wooden table",
	[48] = "A plain wooden table",

	[51] = "An antique oak cupboard with a blue felt surface",
	[52] = "An antique oak cupboard with a blue felt surface",
	[61] = "Some heavy iron gates. No way to get past",
	[64] = "A substantial oak couch with dark red upholstery",

	[76] = "A large bookcase with many dusty old tomes",
	[84] = "A plain wooden table",
	[98] = "A plain wooden table",

	[124] = "A dead body.\nEven in death, he looks terrified",
	[135] = "A small bookcase",
	[136] = "An old and faded tombstone",
	[137] = "A tall blue lampstand",

	[144] = "..",
	[145] = "..",
	[146] = "..",
	[147] = "..",
	
	[155] = "..",
	[156] = "..",
	[157] = "..",
	[158] = "..",

	[159] = "An open green lockbox",
	[160] = "An open blue lockbox",
	[161] = "An open yellow lockbox",
	[162] = "Sasha's Box",

	[163] = "Green gem",
	[164] = "Blue gem",
	[165] = "Yellow gem",
	[166] = "Orange gem",

	[169] = "Some papers are scattered here",
	[170] = "There is a scrawled note here.\nI can't read it",
	[171] = "Some deep scratches and what looks like traces of blood",
	[172] = "Some kind of sticky residue",

	[173] = "Green lockbox combination:\n4792",
	[174] = "Blue lockbox combination:\n5396",
	[175] = "Yellow lockbox combination:\n7082",
	[176] = "Orange lockbox combination:\n1403",
}

M.journal = {
	[1] = "Wednesday 7th\n\nLong have stories been told of the phantom inhabiting this place. A fun tale for children for certain that's all it is, I tell myself.\n\nEvery old house creaks and growns with age. Sudden noises in the night, dust and dirt appearing on every other surface. It's just an old house.\n\nI am trapped here with no way out, it seems. If I see any phantom, or anything, I'm going to just RUN.",
	[2] = "Thursday 8th\n\nThere's definitely something in here with me. From the corner of my eye I think I saw it. A wickedly evil thing focused on me.\n\nFor the longest time I hid in a corner and it didn't seem to notice me then. What could it be? Did I really see something? I'm sure I did.\n\nI need to get to the front entrance and find a way out of here. Don't like that spooky graveyard out there though.",
	[3] = "Friday 9th\n\nThis is my third day stuck in here. What a wretched place and I can't find any way out. Managed to open the front door but then it's just high walls and gates.\n\nRight now I'm holed up somewhere upstairs in one of the bedrooms. Plenty of places to hide up here.\n\nGoing to venture out again at dawn and look for a hidden passage, or something. These old houses are full of secrets.",
	[4] = "Saturday 10th\n\nI checked the front courtyard again. Found a strange stone slab in one of the graveyards. Four circular indentations in it and it looks like it does something but I'm not sure what.\n\nI don't like it out there either but it's better than in here. I don't feel like I'm being watched so much, though I probably am.\n\nI'm going to investigate the library, see if anything in there can help."
}

function M.getitemtext(item)
	return M.data[item]
end

M.INV_SIZE = 5
M.inv = {0,0,0,0,0,0}

function M.get(slot)
	return M.inv[slot]
end

function M.clearall()
	M.inv = {0,0,0,0,0,0}
end

function M.check(item)
	local slot = 0

	for n = 1, M.INV_SIZE do
		if M.inv[n] == item then
			slot = n
		end
	end

	return slot
end

function M.use(slot)
	M.inv [slot] = 0
	for n = slot, M.INV_SIZE - 1 do
		M.inv[n] = M.inv[n+1]
	end

	M.inv[M.INV_SIZE] = 0
end

function M.store(item)
	local n = 1

	while M.inv[n] ~= 0 do
		n = n + 1
	end

	if n <= M.INV_SIZE then 
		M.inv[n] = item
	else
		return false
	end

	return true
end

function M.getjournaltext(num)
	return M.journal[num]
end

return M