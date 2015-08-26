-- Thank you for downloading the Samhain mod.
--
-- This mod is designed much like Glowstone from Mnecraft only there are two kinds
-- of stones. The first is Sol and the other is Luna. Sol is reference to the sun
-- while Luna is obviously reference to the moon. These two sets are of course in
-- different color.
--
-- To make these stones, you much venture deep into the earth to find minerals, which
-- are dust. Crafting the dust together will make either Sol Stone or Luna Stone. Not
-- much are different unless you craft the main recipe, Solidus and Lunavesta. These
-- require 8 Sol/Luna Stones and 1 Obsidian. These main stones aren't much different
-- than the normal stones, just be careful where you place Solidus.


------------------------------------------------------------------------- MINERALS

minetest.register_node("samhain:stone_with_sol", {
	description = "Sol Mineral",
	tiles = {"default_stone.png^samhain_sol_mineral.png"},
	light_propagates = true,
	paramtype = "light",
	light_source = 5,
	is_ground_content = true,
	groups = {cracky=2},
	drop = 'samhain:sol_dust',
})

minetest.register_node("samhain:stone_with_luna", {
	description = "Luna Mineral",
	tiles = {"default_stone.png^samhain_luna_mineral.png"},
	light_propagates = true,
	paramtype = "light",
	light_source = 6,
	is_ground_content = true,
	groups = {cracky=2},
	drop = 'samhain:luna_dust',
})


------------------------------------------------------------------------- GLOWSTONE

minetest.register_node("samhain:sol_stone", {
	description = "Sol Stone",
	tiles = {"samhain_sol_stone.png"},
	light_propagates = true,
	paramtype = "light",
	sunlight_propagates = true,
	light_source = 19,
	groups = {cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_glass_defaults(),
	drop = 'samhain:sol_dust 4',
})

minetest.register_node("samhain:luna_stone", {
	description = "Luna Stone",
	tiles = {"samhain_luna_stone.png"},
	light_propagates = true,
	paramtype = "light",
	sunlight_propagates = true,
	light_source = 19,
	groups = {cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_glass_defaults(),
	drop = 'samhain:luna_dust 4',
})

minetest.register_node("samhain:solidus", {
	description = "Solidus",
	tiles = {"samhain_solidus.png"},
	light_propagates = true,
	paramtype = "light",
	sunlight_propagates = true,
	light_source = 25,
	groups = {cracky=1,level=2, hot=3, igniter=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("samhain:lunavesta", {
	description = "Lunavesta",
	tiles = {"samhain_lunavesta.png"},
	light_propagates = true,
	paramtype = "light",
	sunlight_propagates = true,
	light_source = 25,
	groups = {cracky=1,level=2, puts_out_fire=1},
	sounds = default.node_sound_stone_defaults(),
})

------------------------------------------------------------------------- ITEMS

minetest.register_craftitem("samhain:sol_dust", {
	description = "Sol Dust",
	inventory_image = "samhain_sol_dust.png",
})

minetest.register_craftitem("samhain:luna_dust", {
	description = "Luna Dust",
	inventory_image = "samhain_luna_dust.png",
})


------------------------------------------------------------------------- SMELTING

minetest.register_craft({
	type = "cooking",
	output = "default:coal_lump",
	recipe = "samhain:sol_dust",
})

minetest.register_craft({
	type = "cooking",
	output = "default:coal_lump",
	recipe = "samhain:luna_dust",
})


------------------------------------------------------------------------- CRAFTING

minetest.register_craft({
	output = 'samhain:luna_stone',
	recipe = {
		{'samhain:luna_dust', 'samhain:luna_dust'},
		{'samhain:luna_dust', 'samhain:luna_dust'},
	}
})

minetest.register_craft({
	output = 'samhain:sol_stone',
	recipe = {
		{'samhain:sol_dust', 'samhain:sol_dust'},
		{'samhain:sol_dust', 'samhain:sol_dust'},
	}
})

minetest.register_craft({
	output = 'samhain:solidus',
	recipe = {
		{'samhain:sol_stone', 'samhain:sol_stone', 'samhain:sol_stone'},
		{'samhain:sol_stone', 'default:obsidian', 'samhain:sol_stone'},
		{'samhain:sol_stone', 'samhain:sol_stone', 'samhain:sol_stone'},
	}
})

minetest.register_craft({
	output = 'samhain:lunavesta',
	recipe = {
		{'samhain:luna_stone', 'samhain:luna_stone', 'samhain:luna_stone'},
		{'samhain:luna_stone', 'default:obsidian', 'samhain:luna_stone'},
		{'samhain:luna_stone', 'samhain:luna_stone', 'samhain:luna_stone'},
	}
})


------------------------------------------------------------------------- SPAWN

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "samhain:stone_with_sol",
	wherein        = "default:stone",
	clust_scarcity = 13*13*13,
	clust_num_ores = 5,
	clust_size     = 3,
	height_min     = -390,
	height_max     = -150,
	flags          = "absheight",
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "samhain:stone_with_luna",
	wherein        = "default:stone",
	clust_scarcity = 29*29*29,
	clust_num_ores = 3,
	clust_size     = 2,
	height_min     = -760,
	height_max     = -360,
	flags          = "absheight",
})