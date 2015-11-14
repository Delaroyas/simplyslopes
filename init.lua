simplyslopes = {}
simplyslopes.mod = "original"

simplyslopes.wood = default.node_sound_wood_defaults()
simplyslopes.dirt = default.node_sound_dirt_defaults()
simplyslopes.stone = default.node_sound_stone_defaults()
simplyslopes.glass = default.node_sound_glass_defaults()
simplyslopes.leaves = default.node_sound_leaves_defaults()
--slopes.wool = default.node_sound_wool_defaults() -- Xanadu only
--slopes.wool = slopes.leaves
	
--= Load functions that creates the differents nodes.
dofile(minetest.get_modpath("simplyslopes").."/functions.lua")


local grp = {}


--= Default Minetest
dofile(minetest.get_modpath("simplyslopes").."/default_mod.lua")


--= Lapis Mod
if minetest.get_modpath("lapis") then
	dofile(minetest.get_modpath("simplyslopes").."/lapis_mod.lua")
end

--= Baked Clay mod
if minetest.get_modpath("bakedclay") then
	dofile(minetest.get_modpath("simplyslopes").."/bakedclay_mod.lua")
end

--= Wool mod
if minetest.get_modpath("wool") then
	dofile(minetest.get_modpath("simplyslopes").."/wool_mod.lua")
end


--= Farming Mod
if minetest.get_modpath("farming") then

simplyslopes.register_all("straw", "farming:straw",
	{snappy = 3, flammable = 4, not_in_craft_guide = 1},
	{"farming_straw.png"},
	"Straw",
	simplyslopes.leaves)

end

--= Mobs Mod
if mobs and mobs.mod and mobs.mod == "redo" then

grp = {crumbly = 3, flammable = 2, not_in_craft_guide = 1}

simplyslopes.register_all("cheeseblock", "mobs:cheeseblock",
	grp,
	{"mobs_cheeseblock.png"},
	"Cheese Block",
	simplyslopes.dirt)

simplyslopes.register_all("honey_block", "mobs:honey_block",
	grp,
	{"mobs_honey_block.png"},
	"Honey Block",
	simplyslopes.dirt)

end


--= Homedecor Mod
--= Never made this mod work.
if minetest.get_modpath("homedecor") then
	dofile(minetest.get_modpath("simplyslopes").."/homedecor_mod.lua")
end


--= Xanadu Mod
--= Never found and tested this mod.
if minetest.get_modpath("xanadu") then
	dofile(minetest.get_modpath("simplyslopes").."/xanadu_mod.lua")
end

--= Castle Mod
--= Never made this mod work.
if minetest.get_modpath("castle") then
	dofile(minetest.get_modpath("simplyslopes").."/castle_mod.lua")
end

--= Ethereal Mod
-- Never managed to make any blocks with this mod.
if minetest.get_modpath("ethereal") then
	dofile(minetest.get_modpath("simplyslopes").."/ethereal_mod.lua")
end




print ("[MOD] SimplySlopes loaded")
