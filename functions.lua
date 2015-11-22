
-- Nodes will be called simplyslopes:{'',outer,outer2,inner,inner2}_<subname>
function simplyslopes.register_all2(recipeitem)
	-- Todo 
	-- remove "block" form subname;
	-- remove "Block" and "Planks" form description;
	local s = splitstring(recipeitem)
	local modname=s[1]
	local subname=s[2]
	
	-- Bakedclay and wool mod name their blocks like "bakedclay:white"
	if  modname == 'bakedclay' or modname == 'wool'
	-- We must add modname to subname	
	then subname= modname .. '_' .. subname
	end

	--local thisnode=minetest.registered_nodes["default:wood"]
	local thisnode=minetest.registered_nodes[recipeitem]
	
	
	if thisnode == nil 
	then	   -- thisnode is empty
	
	else
		simplyslopes.register_slope(subname, recipeitem, thisnode.groups, thisnode.tiles, thisnode.description, thisnode.sounds)
		simplyslopes.register_slopecorner(subname, recipeitem, thisnode.groups, thisnode.tiles, thisnode.description, thisnode.sounds)		
		simplyslopes.register_slopecorner2(subname, recipeitem, thisnode.groups, thisnode.tiles, thisnode.description, thisnode.sounds)
		simplyslopes.register_slopeinsidecorner(subname, recipeitem, thisnode.groups, thisnode.tiles, thisnode.description, thisnode.sounds)
		simplyslopes.register_slopeinsidecorner2(subname, recipeitem, thisnode.groups, thisnode.tiles, thisnode.description, thisnode.sounds)
	end


end



-- Node will be called simplyslopes:slope_<subname>
function simplyslopes.register_slope(subname, recipeitem, groups, images, description, snds)
	
	--x=minetest.registered_nodes[1].images,
	
	minetest.register_node(":simplyslopes:slope_" .. subname, {
		description = description.." Slope",
--		drawtype = "nodebox",
		drawtype = "mesh",
		mesh = "simplyslopes_slope.obj",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = groups,
		sounds = snds,

		selection_box = {
			type = "fixed",
			fixed = {
			  {-0.5, -0.5, -0.5, 0.5, -0.1875, 0.5}, -- NodeBox1
			  {-0.5, -0.1875, -0.1875, 0.5, 0.1875, 0.5}, -- NodeBox3
			  {-0.5, 0.1875, 0.1875, 0.5, 0.5, 0.5}, -- NodeBox2
			},
		},

		collision_box = {
			type = "fixed",
			fixed = {
			  {-0.5, -0.5, -0.5, 0.5, -0.1875, 0.5}, -- NodeBox1
			  {-0.5, -0.1875, -0.1875, 0.5, 0.1875, 0.5}, -- NodeBox3
			  {-0.5, 0.1875, 0.1875, 0.5, 0.5, 0.5}, -- NodeBox2
			},
		},
		on_place = minetest.rotate_node
	})

	minetest.register_craft({
		output = 'simplyslopes:slope_' .. subname .. ' 6',
		recipe = {
			{recipeitem, "", ""},
			{ "",recipeitem, ""},
			{"","",recipeitem},
		},
	})
end

-- Node will be called simplyslopes:slopeinsidecorner_<subname>
function simplyslopes.register_slopeinsidecorner(subname, recipeitem, groups, images, description, snds)
	minetest.register_node(":simplyslopes:slopeinsidecorner_" .. subname, {
		description = description.." Slope inside corner",
--		drawtype = "nodebox",
		drawtype = "mesh",
		mesh = "simplyslopes_slopeinsidecorner.obj",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = groups,
		sounds = snds,

		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
				{-0.5, 0, -0.5, 0, 0.5, 0},
			},
		},
		collision_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
				{-0.5, 0, -0.5, 0, 0.5, 0},
			},
		},
		on_place = minetest.rotate_node
	})

	minetest.register_craft({
		output = 'simplyslopes:slopeinsidecorner_' .. subname .. ' 5',
		recipe = {
			{recipeitem, recipeitem, ""},
			{"", "", recipeitem},
			{"","", recipeitem},
		},
	})
end

-- Node will be called simplyslopes:slopeinsidecorner2_<subname>
function simplyslopes.register_slopeinsidecorner2(subname, recipeitem, groups, images, description, snds)
	minetest.register_node(":simplyslopes:slopeinsidecorner2_" .. subname, {
		description = description.." Slope inside 2 corner",
--		drawtype = "nodebox",
		drawtype = "mesh",
		mesh = "simplyslopes_slopeinsidecorner2.obj",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = groups,
		sounds = snds,

		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
				{-0.5, 0, -0.5, 0, 0.5, 0},
			},
		},
		collision_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
				{-0.5, 0, -0.5, 0, 0.5, 0},
			},
		},
		on_place = minetest.rotate_node
	})

	minetest.register_craft({
		output = 'simplyslopes:slopeinsidecorner2_' .. subname .. ' 6',
		recipe = {
			{recipeitem, recipeitem, ""},
			{"", "", recipeitem},
			{recipeitem,"", recipeitem},
		},
	})
end


-- Node will be called simplyslopes:slopecorner_<subname>
function simplyslopes.register_slopecorner(subname, recipeitem, groups, images, description, snds)
	minetest.register_node(":simplyslopes:slopecorner_" .. subname, {
		description = description.." Slope corner",
--		drawtype = "nodebox",
		drawtype = "mesh",
		mesh = "simplyslopes_slopecorner.obj",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		groups = groups,
		sounds = snds,

		selection_box = {
			type = "fixed",
			fixed = {
			  {-0.5, -0.5, -0.5, 0.5, -0.1875, 0.5}, -- NodeBox1
			  {-0.5, -0.1875, -0.1875,  0.1875, 0.1875, 0.5}, -- NodeBox3
			  {-0.5, 0.1875, 0.1875,  -0.1875, 0.5, 0.5}, -- NodeBox2
			},
		},

		collision_box = {
			type = "fixed",
			fixed = {
			  {-0.5, -0.5, -0.5, 0.5, -0.1875, 0.5}, -- NodeBox1
			  {-0.5, -0.1875, -0.1875, 0.5, 0.1875, 0.5}, -- NodeBox3
			  {-0.5, 0.1875, 0.1875, 0.5, 0.5, 0.5}, -- NodeBox2
			},
		},
		on_place = minetest.rotate_node
	})

	minetest.register_craft({
		output = 'simplyslopes:slopecorner_' .. subname .. ' 6',
		recipe = {
			{ "",recipeitem, ""},
			{recipeitem,"",recipeitem},
		},
	})
end

-- Node will be called simplyslopes:slopecorner_<subname>
function simplyslopes.register_slopecorner2(subname, recipeitem, groups, images, description, snds)
	minetest.register_node(":simplyslopes:slopecorner2_" .. subname, {
		description = description.." Slope corner 2",
--		drawtype = "nodebox",
		drawtype = "mesh",
		mesh = "simplyslopes_slopecorner2.obj",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = false,
		sunlight_propagates = true,
		groups = groups,
		sounds = snds,

		selection_box = {
			type = "fixed",
			fixed = {
			  {-0.5, -0.5, -0.5, 0.5, -0.1875, 0.5}, -- NodeBox1
			  {-0.5, -0.1875, -0.1875,  0.1875, 0.1875, 0.5}, -- NodeBox3
			  {-0.5, 0.1875, 0.1875,  -0.1875, 0.5, 0.5}, -- NodeBox2
			},
		},

		collision_box = {
			type = "fixed",
			fixed = {
			  {-0.5, -0.5, -0.5, 0.5, -0.1875, 0.5}, -- NodeBox1
			  {-0.5, -0.1875, -0.1875, 0.5, 0.1875, 0.5}, -- NodeBox3
			  {-0.5, 0.1875, 0.1875, 0.5, 0.5, 0.5}, -- NodeBox2
			},
		},
		on_place = minetest.rotate_node
	})

	minetest.register_craft({
		output = 'simplyslopes:slopecorner2_' .. subname .. ' 6',
		recipe = {
			{ "",recipeitem, ""},
			{"",recipeitem,recipeitem},
		},
	})
end

-- Nodes will be called simplyslopes:{stair,slab,corner,invcorner}_<subname>
function simplyslopes.register_all(subname, recipeitem, groups, images, desc, snds)
	simplyslopes.register_slope(subname, recipeitem, groups, images, desc, snds)
	simplyslopes.register_slopecorner(subname, recipeitem, groups, images, desc, snds)
	simplyslopes.register_slopecorner2(subname, recipeitem, groups, images, desc, snds)
	simplyslopes.register_slopeinsidecorner(subname, recipeitem, groups, images, desc, snds)
	simplyslopes.register_slopeinsidecorner2(subname, recipeitem, groups, images, desc, snds)
end




function splitstring(inputstr)
        if sep == nil then
                sep = "%s"
        end
	local sep = ':'
        local t={} ; i=1
        for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
                t[i] = str
                i = i + 1
        end
        return t
end

-- Helper
