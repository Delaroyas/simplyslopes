-- Add slopes for blocks in the  
-- Lapis mod

grp = {cracky = 3, not_in_craft_guide = 1}

simplyslopes.register_all("lapis", "lapis:lapisblock",
	grp,
	{"lapis_block.png"},
	"Lapis",
	simplyslopes.stone)

simplyslopes.register_all("lapis_brick", "lapis:lapis_brick",
	grp,
	{"lapis_brick.png"},
	"Lapis Brick",
	simplyslopes.stone)

simplyslopes.register_all("lapis_cobble", "lapis:lapis_cobble",
	grp,
	{"lapis_cobble.png"},
	"Lapis Cobble",
	simplyslopes.stone)

simplyslopes.register_all("lazurite", "lapis:lazurite",
	grp,
	{"lapis_lazurite.png"},
	"Lazurite",
	simplyslopes.stone)

simplyslopes.register_all("lazurite_brick", "lapis:lazurite_brick",
	grp,
	{"lapis_lazurite_brick.png"},
	"Lazurite Brick",
	simplyslopes.stone)

