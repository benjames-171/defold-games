local M = {}

M.SLOT_NONE = 0
M.SLOT_HEAD = 21
M.SLOT_CHEST = 22
M.SLOT_LEFT = 23
M.SLOT_RIGHT = 24
M.SLOT_USE = 25
M.SLOT_LOAD = 26

M.PROP_NONE = 0
M.PROP_DAMAGE = 1
M.PROP_ARMOUR = 2
M.PROP_HEALTH = 3
M.PROP_POWER = 4
M.PROP_AMMO = 5

M.data = {
	{name = "BLASTER",		slot = M.SLOT_RIGHT,prop = M.PROP_DAMAGE,	value = 20},
	{name = "POWERED ARMOR",slot = M.SLOT_CHEST,prop = M.PROP_ARMOUR,	value = 50},
	{name = "MEDI-KIT",		slot = M.SLOT_USE,	prop = M.PROP_HEALTH,	value = 50},
	{name = "ENERGY DRINK",	slot = M.SLOT_USE,	prop = M.PROP_HEALTH,	value = 25},
	{name = "AIRLOCK KEY",	slot = M.SLOT_NONE,	prop = M.PROP_NONE, 	value = 0},
	{name = "BODY ARMOUR",	slot = M.SLOT_CHEST,prop = M.PROP_ARMOUR,	value = 25},
	{name = "GAS MASK",		slot = M.SLOT_HEAD,	prop = M.PROP_NONE,		value = 0},
	{name = "METAL BAR",	slot = M.SLOT_LEFT,	prop = M.PROP_DAMAGE, 	value = 10},
	{name = "HAMMER",		slot = M.SLOT_LEFT,	prop = M.PROP_DAMAGE, 	value = 15},
	{name = "KNUCKLES",		slot = M.SLOT_LEFT,	prop = M.PROP_DAMAGE, 	value = 5},
	{name = "BATTERY", 		slot = M.SLOT_USE,	prop = M.PROP_POWER,	value = 50},
	{name = "POWER PACK",	slot = M.SLOT_USE,	prop = M.PROP_POWER,	value = 100},
	{name = "PISTOL",		slot = M.SLOT_RIGHT,prop = M.PROP_DAMAGE,	value = 10},
	{name = "RATION",		slot = M.SLOT_USE,	prop = M.PROP_HEALTH,	value = 10},
	{name = "AMMUNITION",	slot = M.SLOT_LOAD,	prop = M.PROP_AMMO,		value = 20};
}

function M.getname(item)
	return M.data[item].name
end

function M.getslot(item)
	return M.data[item].slot
end

function M.getprop(item)
	return M.data[item].prop
end

function M.getvalue(item)
	return M.data[item].value
end

return M