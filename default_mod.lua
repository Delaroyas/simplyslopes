-- Add slopes for blocks in the  
-- Default minetest mod


simplyslopes.register_all("grass", "default:dirt_with_grass",
	{choppy=2,oddly_breakable_by_hand=2,flammable=3},
	{"default_grass.png"},
	"Grass",
	simplyslopes.dirt)

simplyslopes.register_all("wood", "default:wood",
	{choppy=2,oddly_breakable_by_hand=2,flammable=3},
	{"default_wood.png"},
	"Wooden",
	simplyslopes.wood)

simplyslopes.register_all("junglewood", "default:junglewood",
	{choppy=2,oddly_breakable_by_hand=2,flammable=3, not_in_craft_guide=1},
	{"default_junglewood.png"},
	"Jungle Wood",
	simplyslopes.wood)

simplyslopes.register_all("pine_wood", "default:pinewood",
	{choppy=2,oddly_breakable_by_hand=1,flammable=3, not_in_craft_guide=1},
	{"default_pine_wood.png"},
	"Pine Wood",
	simplyslopes.wood)

simplyslopes.register_all("cobble", "default:cobble",
	{cracky=3,stone=2},
	{"default_cobble.png"},
	"Cobble",
	simplyslopes.stone)
		
simplyslopes.register_all("desert_cobble", "default:desert_cobble",
	{cracky=3, stone=2, not_in_craft_guide=1},
	{"default_desert_cobble.png"},
	"Desert Cobble", 
	simplyslopes.stone)

simplyslopes.register_all("cloud", "default:cloud",
	{unbreakable=1, not_in_craft_guide=1},
	{"default_cloud.png"},
	"Cloud",
	simplyslopes.wool)

simplyslopes.register_all("coal", "default:coalblock",
	{cracky=3, not_in_craft_guide=1},
	{"default_coal_block.png"},
	"Coal",
	simplyslopes.stone)

simplyslopes.register_all("steel", "default:steelblock",
	{cracky=1,level=2, not_in_craft_guide=1},
	{"default_steel_block.png"},
	"Steel",
	simplyslopes.stone)

simplyslopes.register_all("copper", "default:copperblock",
	{cracky=1,level=2, not_in_craft_guide=1},
	{"default_copper_block.png"},
	"Copper",
	simplyslopes.stone)

simplyslopes.register_all("bronze", "default:bronzeblock",
	{cracky=1,level=2, not_in_craft_guide=1},
	{"default_bronze_block.png"},
	"Bronze",
	simplyslopes.stone)

simplyslopes.register_all("mese", "default:mese",
	{cracky=1,level=2, not_in_craft_guide=1},
	{"default_mese_block.png"},
	"Mese",
	simplyslopes.stone)

simplyslopes.register_all("gold", "default:goldblock",
	{cracky=1, not_in_craft_guide=1},
	{"default_gold_block.png"},
	"Gold",
	simplyslopes.stone)

simplyslopes.register_all("diamond", "default:diamondblock",
	{cracky=1,level=3, not_in_craft_guide=1},
	{"default_diamond_block.png"},
	"Diamond",
	simplyslopes.stone)

simplyslopes.register_all("stone", "default:stone",
	{cracky=3,stone=1, not_in_craft_guide=1},
	{"default_stone.png"},
	"Stone",
	simplyslopes.stone)

simplyslopes.register_all("desert_stone", "default:desert_stone",
	{cracky=3,stone=1, not_in_craft_guide=1},
	{"default_desert_stone.png"},
	"Desert Stone",
	simplyslopes.stone)

simplyslopes.register_all("mossycobble", "default:mossycobble",
	{cracky=3, not_in_craft_guide=1},
	{"default_mossycobble.png"},
	"Mossy Cobble",
	simplyslopes.stone)

simplyslopes.register_all("brick", "default:brick",
	{cracky=3, not_in_craft_guide=1},
	{"default_brick.png"},
	"Brick",
	simplyslopes.stone)

simplyslopes.register_all("sandstone", "default:sandstone",
	{crumbly=2,cracky=3, not_in_craft_guide=1},
	{"default_sandstone.png"},
	"Sandstone",
	simplyslopes.stone)

simplyslopes.register_all("glass", "default:glass",
	{cracky=3,oddly_breakable_by_hand=3, not_in_craft_guide=1},
	{"default_glass.png"},
	"Glass",
	simplyslopes.glass)

simplyslopes.register_all("obsidianglass", "default:obsidian_glass",
	{cracky=2,level=3, not_in_craft_guide=1},
	{"default_obsidian_glass.png"},
	"Obsidian Glass",
	simplyslopes.glass)

simplyslopes.register_all("sandstonebrick", "default:sandstonebrick",
	{cracky=2, not_in_craft_guide=1},
	{"default_sandstone_brick.png"},
	"Sandstone Brick",
	simplyslopes.stone)

simplyslopes.register_all("obsidian", "default:obsidian",
	{cracky=1,level=2, unbreakable=1, not_in_craft_guide=1},
	{"default_obsidian.png"},
	"Obsidian",
	simplyslopes.stone)

simplyslopes.register_all("stonebrick", "default:stonebrick",
	{cracky=2,stone=1, not_in_craft_guide=1},
	{"default_stone_brick.png"},
	"Stone Brick",
	simplyslopes.stone)

simplyslopes.register_all("desert_stonebrick", "default:desert_stonebrick",
	{cracky = 3, not_in_craft_guide=1},
	{"default_desert_stone_brick.png"},
	"Desert Stone Brick",
	simplyslopes.stone)

simplyslopes.register_all("obsidian_brick", "default:obsidianbrick",
	{cracky=1,level=3, unbreakable=1, not_in_craft_guide=1},
	{"default_obsidian_brick.png"},
	"Obsidian Brick",
	simplyslopes.stone)
