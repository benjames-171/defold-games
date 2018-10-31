local M = {}

M.CLASS_KEY = 0
M.CLASS_RHAND = 1
M.CLASS_LHAND = 2
M.CLASS_ARMOUR = 3
M.CLASS_HELMET = 4
M.CLASS_RING = 5
M.CLASS_SPELL = 6
M.CLASS_GLOVES = 7
M.CLASS_BOOTS = 8
M.CLASS_AMULET = 20
M.CLASS_FOOD = 21
M.CLASS_POTION = 22
M.CLASS_SCROLL = 23

M.CLASS_NOHOLD = 24

-- determiner, name, class, attack, defence, edible, cost, description
M.ITEM_SIZE = 8

M.itemdata = {
	"some", "NOTHING", 					0, 5, 0, 0, 0, "",
	"a", "DAGGER", 						M.CLASS_RHAND, 10, 0, 0, 100, "",
	"a", "CLUB HAMMER", 				M.CLASS_RHAND, 12, 0, 0, 100, "",
	"a", "HAND AXE", 					M.CLASS_RHAND, 14, 0, 0, 100, "",
	"a", "SPEAR", 						M.CLASS_RHAND, 16, 0, 0, 100, "",
	"a", "TRIDENT", 					M.CLASS_RHAND, 17, 0, 0, 100, "",
	"a", "SPIKED CLUB", 				M.CLASS_RHAND, 18, 0, 0, 100, "",
	"a", "SCIMITAR",	 				M.CLASS_RHAND, 19, 0, 0, 100, "",
	"a", "STAFF", 						M.CLASS_RHAND, 20, 0, 0, 100, "",
	"a", "FLAME-BLADED SWORD",			M.CLASS_RHAND, 21, 0, 0, 100, "",
	"a", "MORNING STAR", 				M.CLASS_RHAND, 23, 0, 0, 100, "",
	"a", "LONGSWORD", 					M.CLASS_RHAND, 25, 0, 0, 100, "",
	"a", "FLAIL", 						M.CLASS_RHAND, 26, 0, 0, 100, "",
	"a", "WAR HAMMER", 					M.CLASS_RHAND, 28, 0, 0, 100, "",
	"a", "WAR AXE", 					M.CLASS_RHAND, 30, 0, 0, 100, "",
	"the", "MASTER SWORD", 				M.CLASS_RHAND, 35, 0, 0, 100, "",

	"the", "AMULET OF YENDOR", 			M.CLASS_AMULET, 0, 0, 0, 100, "A mysterious glowing red amulet\n\nProperties unknown",
	"the", "WARRIOR'S SWORD", 			M.CLASS_RHAND, 15, 0, 0, 100, "",
	"some", "GLOVES OF FORTUNE",		M.CLASS_GLOVES,	0, 0, 0, 100, "Increases the chance of more valuable drops",	
	"some", "BOOTS OF SNEAKING",		M.CLASS_BOOTS, 0, 0, 0, 500, "Increases sneak by 25%",

	"a", "LEATHER HELMET", 				M.CLASS_HELMET, 0, 3, 0, 100, "", 
	"some", "LEATHER ARMOUR", 			M.CLASS_ARMOUR, 0, 5, 0, 100, "", 
	"some", "LEATHER GLOVES",			M.CLASS_GLOVES,	0, 2, 0, 100, "",
	"some", "LEATHER BOOTS",			M.CLASS_BOOTS,	0, 2, 0, 100, "",

	"a", "CHAINMAIL COIF", 				M.CLASS_HELMET, 0, 6, 0, 100, "",
	"a", "CHAINMAIL ARMOUR",			M.CLASS_ARMOUR, 0, 9, 0, 100, "",
	"some", "CHAINMAIL GLOVES",			M.CLASS_GLOVES,	0, 3, 0, 100, "",
	"some", "STEEL BOOTS",				M.CLASS_BOOTS,	0, 3, 0, 100, "",

	"a", "TITANIUM HELMET", 			M.CLASS_HELMET, 0, 8, 0, 100, "", 
	"some", "TITANIUM ARMOUR", 			M.CLASS_ARMOUR, 0, 14, 0, 100, "",
	"some", "TITANIUM GLOVES",			M.CLASS_GLOVES,	0, 4, 0, 100, "",
	"some", "TITANIUM BOOTS",			M.CLASS_BOOTS,	0, 4, 0, 100, "",

	"a", "WOODEN SHIELD", 				M.CLASS_LHAND, 0, 5, 0, 100, "",
	"a", "METAL SHIELD", 				M.CLASS_LHAND, 0, 10, 0, 100, "",
	"a", "KNIGHT'S SHIELD", 			M.CLASS_LHAND, 0, 15, 0, 100, "",

	"the", "SCROLL OF REVELATION",		M.CLASS_SCROLL, 0, 0, 0, 200, "Reveals the whole map", 
	"the", "SCROLL OF DISPLACEMENT", 	M.CLASS_SCROLL, 0, 0, 0, 200, "Teleports reader to a random location",
	"the", "SCROLL OF HEALTH", 			M.CLASS_SCROLL, 0, 0, 0, 600, "Restores 50 points of health\n\nNeutralises the effect of poison\n\nExtinguishes flames\n\nRelieves hunger",
	"the", "SCROLL OF INFERNO", 		M.CLASS_SCROLL, 0, 0, 0, 500, "Ignites a destructive ring of fire surrounding the reader",
	"the", "SCROLL OF FROST", 			M.CLASS_SCROLL, 0, 0, 0, 300, "Freezes creatures surrounding the reader",
	"the", "SCROLL OF DEVASTATION",		M.CLASS_SCROLL, 0, 0, 0, 900, "Triggers a large explosion around the reader",
	"the", "SCROLL OF INVISIBILITY", 	M.CLASS_SCROLL, 0, 0, 0, 400, "Reader becomes invisible for a short time",
	"the", "SCROLL OF SWITCHING", 		M.CLASS_SCROLL, 0, 0, 0, 300, "Restores health using an equal amount of mana",

	"a", "HEALTH POTION", 				M.CLASS_POTION, 0, 0, 50, 300, "Restores 50 points of health",
	"an", "EXPERIENCE POTION", 			M.CLASS_POTION, 0, 0, 50, 200, "Adds 50 points of experience",
	"a", "MANA POTION", 				M.CLASS_POTION, 0, 0, 50, 300, "Adds 50 points of mana",
	"a vial of", "POISON ANTIDOTE", 	M.CLASS_POTION, 0, 0, 0, 200, "Neutralises the effect of poison",
	"a vial of", "STRENGTH SOLUTION",	M.CLASS_POTION, 0, 0, 0, 100, "Increases the power of melee attacks for a short time",
	"a vial of", "PROTECTION SOLUTION",	M.CLASS_POTION, 0, 0, 0, 100, "Reduces the damage taken from melee attacks for a short time",

	"a", "RING OF POWER", 				M.CLASS_RING, 0, 0, 0, 100, "Increases the power of melee attacks", 
	"a", "RING OF PROTECTION", 			M.CLASS_RING, 0, 0, 0, 100, "Reduces the damage taken from melee attacks",
	"a", "RING OF MANA", 				M.CLASS_RING, 0, 0, 0, 100, "The wearer regenerates mana more quickly",

	"a", "AMULET OF POWER", 			M.CLASS_AMULET, 0, 0, 0, 100, "Increases the power of melee attacks",
	"a", "AMULET OF PROTECTION", 		M.CLASS_AMULET, 0, 0, 0, 100, "Reduces the damage taken from melee attacks",
	"a", "AMULET OF MAGIC",		 		M.CLASS_AMULET, 0, 0, 0, 100, "Increases the power of magic attacks",
	"a", "AMULET OF EXPERIENCE", 		M.CLASS_AMULET, 0, 0, 0, 100, "The wearer gains experience points more quickly",

	"a", "SILVER KEY", 					M.CLASS_KEY, 0, 0, 0, 100, "Unlocks a locked chest",
	"a", "GOLD KEY", 					M.CLASS_KEY, 0, 0, 0, 100, "Unlocks a locked door",
	"a", "LOCK PICK", 					M.CLASS_RHAND, 0, 0, 0, 100, "Picks all types of locks",

	"some", "GOLD", 					M.CLASS_NOHOLD, 0, 0, 0, 100, "",
	"a", "HEALTH DROPLET", 				M.CLASS_NOHOLD, 0, 0, 10, 100, "",
	"a", "MANA DROPLET", 				M.CLASS_NOHOLD, 0, 0, 10, 100, "",

	"the", "WAND OF MAGIC MISSILE", 	M.CLASS_SPELL, 20, 0, 0, 100, "",
	"the", "WAND OF FIRE", 				M.CLASS_SPELL, 50, 0, 0, 100, "",
	"the", "WAND OF FROST", 			M.CLASS_SPELL, 0, 0, 0, 100, "Freezes a targetted creature for a short time",
	"the", "WAND OF LEECHING", 			M.CLASS_SPELL, 0, 0, 0, 100, "Steals health from a targetted creature",

	"some", "BREAD",  					M.CLASS_FOOD, 0, 0, 20, 200, "",
	"a", "BANANA", 						M.CLASS_FOOD, 0, 0, 10, 100, "", 
	"some", "BERRIES", 					M.CLASS_FOOD, 0, 0, 15, 150, "",
	"an", "APPLE", 						M.CLASS_FOOD, 0, 0, 15, 150, "", 
	"a", "CARROT", 						M.CLASS_FOOD, 0, 0, 10, 100, "", 
	"some", "CHEESE", 					M.CLASS_FOOD, 0, 0, 20, 200, "",
	"some", "MUSHROOMS", 				M.CLASS_FOOD, 0, 0, 10, 100, "",
	"some", "RADISHES", 				M.CLASS_FOOD, 0, 0, 15, 150, "",
	}


function M.getnum(str)
	n = 1
	
	while n do
		local s = M.getname(n)
		if s == nil then
			print(string.format("ITEM %s NOT FOUND", str))
			return 1
		elseif s == str then return n end
		n = n + 1
	end		
end

function M.getnamedeterminer(num)
	return M.itemdata[((num - 1) * M.ITEM_SIZE) + 1]
end

function M.getname(num)
	return M.itemdata[((num - 1) * M.ITEM_SIZE) + 2]
end

function M.getclass(num)
	return M.itemdata[((num - 1) * M.ITEM_SIZE) + 3]
end

function M.getattack(num)
	return M.itemdata[((num - 1) * M.ITEM_SIZE) + 4]
end	
	
function M.getdefence(num)
	return M.itemdata[((num - 1) * M.ITEM_SIZE) + 5]
end	

function M.getedible(num)
	return M.itemdata[((num - 1) * M.ITEM_SIZE) + 6]
end

function M.getcost(num)
	return M.itemdata[((num - 1) * M.ITEM_SIZE) + 7]
end

function M.getinfo(num)
	return M.itemdata[((num - 1) * M.ITEM_SIZE) + 8]
end

function M.isequippable(num)
	local class = M.getclass(num)
	
	if class > 0 and class <= M.CLASS_AMULET then
		return true
	else
		return false
	end
end

return M
