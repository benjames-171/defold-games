local M = {}

M.name = {
	[-200] = "West Library Lower",
	[-195] = "Graveyard Lower", 
	[-196] = "Main Gates",
	[-197] = "Basement East",
	[-198] = "Basement",
	[-199] = "Basement West",
	[-100] = "West Library Upper",
	[-99] = "Side Study",
	[-98] = "Basement Staircase",
	[-97] = "Mephitic Graveyard",
	[-96] = "Grand Entrance Boulevard",
	[-95] = "Graveyard Upper", 
	
	[0] = "Drawing Room",
	[1] = "Writing Room",
	[2] = "Storage Area",
	[3] = "Entrance Hall West",
	[4] = "Entrance Hall",
	[5] = "Entrance Hall East",
	[6] = "Hidden Pathway",
	[7] = "Hidden Courtyard",

	[100] = "West Hallway A",
	[101] = "The Green Room",
	[102] = "West Hallway B",
	[103] = "Laundry Block B",
	[104] = "Main Staircase",
	[105] = "East Library",
	[106] = "Vertical Shaft",
	
	[200] = "West Hallway A",
	[201] = "Backstage Area",
	[202] = "Laundry Block A",
	[203] = "Main Landing West",
	[204] = "Main Landing",
	[205] = "Main Landing East",
	[206] = "Old Storage Room",

	[300] = "Props Room",
	[301] = "Main Stage",
	[302] = "Central Hallway",
	[303] = "Spring Bedroom",
	[304] = "Bedroom Hallway",
	[305] = "Autumn Bedroom",

	[400] = "West Lounge",
	[401] = "Auditorium",
	[402] = "East Lounge",
	[403] = "Side Room West",
	[404] = "Master Suite",
	[405] = "Side Room East",
}

function M.getname(id)
	return M.name[id]
end

return M