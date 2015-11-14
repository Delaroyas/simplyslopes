-- Add slopes for blocks in the  
--= Castle Mod

simplyslopes.register_all("pavement", "castle:pavement",
	{cracky=2, not_in_craft_guide=1},
	{"castle_pavement_brick.png"},
	"Paving",
	simplyslopes.stone)

simplyslopes.register_all("dungeon_stone", "castle:dungeon_stone",
	{cracky=2, not_in_craft_guide=1},
	{"castle_dungeon_stone.png"},
	"Dungeon",
	simplyslopes.stone)

simplyslopes.register_all("stonewall", "castle:stonewall",
	{cracky=3, not_in_craft_guide=1},
	{"castle_stonewall.png"},
	"Castle Wall",
	simplyslopes.stone)
