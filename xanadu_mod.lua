-- Add slopes for blocks in the  
--= Xanadu Mod

grp = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, not_in_craft_guide = 1}

minetest.register_alias("simplyslopes:slope_stained_wood_brown", "simplyslopes:slope_junglewood")
minetest.register_alias("simplyslopes:slopeinsidecorner_stained_wood_brown", "simplyslopes:slopeinsidecorner_junglewood")
minetest.register_alias("simplyslopes:slopecorner_stained_wood_brown", "simplyslopes:slopecorner_junglewood")

simplyslopes.register_all("stained_wood_white", "xanadu:stained_wood_white",
	grp,
	{"stained_wood_white.png"},
	"White Wooden",
	simplyslopes.wood)

minetest.register_alias("simplyslopes:slope_stained_wood_pink", "simplyslopes:slope_acacia_wood")
minetest.register_alias("simplyslopes:slopeinsidecorner_stained_wood_pink", "simplyslopes:slopeinsidecorner_acacia_wood")
minetest.register_alias("simplyslopes:slopecorner_stained_wood_pink", "simplyslopes:slopecorner_acacia_wood")

slopes.register_all("stained_wood_red", "xanadu:stained_wood_red",
	grp,
	{"stained_wood_red.png"},
	"Red Wooden",
	simplyslopes.wood)


grp = {cracky = 3, not_in_craft_guide = 1}

simplyslopes.register_all("stone1", "bakedclay:stone1",
	grp,
	{"stone1.png"},
	"Decorative Stone 1",
	simplyslopes.stone)

simplyslopes.register_all("stone2", "bakedclay:stone2",
	grp,
	{"stone2.png"},
	"Decorative Stone 2",
	simplyslopes.stone)

simplyslopes.register_all("stone3", "bakedclay:stone3",
	grp,
	{"stone3.png"},
	"Decorative Stone 3",
	simplyslopes.stone)

simplyslopes.register_all("stone4", "bakedclay:stone4",
	grp,
	{"stone4.png"},
	"Decorative Stone 4",
	simplyslopes.stone)

simplyslopes.register_all("stone5", "bakedclay:stone5",
	grp,
	{"stone5.png"},
	"Decorative Stone 5",
	simplyslopes.stone)

simplyslopes.register_all("stone6", "bakedclay:stone6",
	grp,
	{"stone6.png"},
	"Decorative Stone 6",
	simplyslopes.stone)

simplyslopes.register_all("sandstonebrick4", "bakedclay:sandstonebrick4",
	grp,
	{"sandstonebrick4.png"},
	"Decorative Sandstone 4",
	simplyslopes.stone)

simplyslopes.register_slab("desert_cobble1", "bakedclay:desert_cobble1",
	grp,
	{"desert_cobble1.png"},
	"Decorative desert cobble 1",
	simplyslopes.stone)

simplyslopes.register_slab("desert_cobble5", "bakedclay:desert_cobble5",
	grp,
	{"desert_cobble5.png"},
	"Decorative desert cobble 5",
	simplyslopes.stone)

simplyslopes.register_slab("desert_stone1", "bakedclay:desert_stone1",
	grp,
	{"desert_stone1.png"},
	"Decorative desert stone 1",
	simplyslopes.stone)

simplyslopes.register_slab("desert_stone3", "bakedclay:desert_stone3",
	grp,
	{"desert_stone3.png"},
	"Decorative desert stone 3",
	simplyslopes.stone)

simplyslopes.register_slab("desert_stone4", "bakedclay:desert_stone4",
	grp,
	{"desert_stone4.png"},
	"Decorative desert stone 4",
	simplyslopes.stone)

simplyslopes.register_slab("desert_stone5", "bakedclay:desert_stone5",
	grp,
	{"desert_stone5.png"},
	"Decorative desert stone 5",
	simplyslopes.stone)
simplyslopes.register_slab("red1", "bakedclay:red1",
	grp,
	{"baked_clay_red1.png"},
	"Decorative baked red clay 1",
	simplyslopes.stone)

simplyslopes.register_all("bred2", "bakedclay:red2",
	grp,
	{"baked_clay_red2.png"},
	"Decorative baked red clay 2",
	simplyslopes.stone)


