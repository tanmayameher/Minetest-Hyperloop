--[[

	Hyperloop Mod
	=============

	Copyright (C) 2017 Joachim Stolberg

	LGPLv2.1+
	See LICENSE.txt for more information

	History:
	see init.lua

]]--


minetest.register_craftitem("hyperloop:hypersteel_ingot", {
	description = "Hypersteel Ingot",
	inventory_image = "hyperloop_hypersteel_ingot.png",
})


minetest.register_craft({
	output = "hyperloop:hypersteel_ingot 4",
	recipe = {
		{"default:steel_ingot", "default:tin_ingot"},
		{"default:copper_ingot", "dye:cyan"},
	},
})

minetest.register_craft({
	output = "hyperloop:tube0 8",
	recipe = {
		{"", "hyperloop:hypersteel_ingot", ""},
		{"hyperloop:hypersteel_ingot", "", "hyperloop:hypersteel_ingot"},
		{"", "hyperloop:hypersteel_ingot", ""},
	},
})

minetest.register_craft({
	output = "hyperloop:pillar 8",
	recipe = {
		{"", "hyperloop:hypersteel_ingot", ""},
		{"", "hyperloop:hypersteel_ingot", ""},
		{"", "hyperloop:hypersteel_ingot", ""},
	},
})

minetest.register_craft({
	output = "hyperloop:pod_wall 8",
	recipe = {
		{"hyperloop:hypersteel_ingot", "hyperloop:hypersteel_ingot", "hyperloop:hypersteel_ingot"},
		{"hyperloop:hypersteel_ingot", "dye:white", "hyperloop:hypersteel_ingot"},
		{"hyperloop:hypersteel_ingot", "hyperloop:hypersteel_ingot", "hyperloop:hypersteel_ingot"},
	},
})

minetest.register_craft({
	output = "hyperloop:booking 1",
	recipe = {
		{"hyperloop:hypersteel_ingot", "", "hyperloop:hypersteel_ingot"},
		{"", "default:paper", ""},
		{"hyperloop:hypersteel_ingot", "", "hyperloop:hypersteel_ingot"},
	},
})

minetest.register_craft({
	output = "hyperloop:junction",
	recipe = {
		{"", "hyperloop:hypersteel_ingot", ""},
		{"hyperloop:hypersteel_ingot", "default:mese_crystal", "hyperloop:hypersteel_ingot"},
		{"", "hyperloop:hypersteel_ingot", ""},
	},
})

minetest.register_craft({
	output = "hyperloop:station",
	recipe = {
		{"hyperloop:hypersteel_ingot", "default:mese_crystal", "hyperloop:hypersteel_ingot"},
		{"",                           "default:mese_crystal", ""},
		{"hyperloop:hypersteel_ingot", "default:mese_crystal", "hyperloop:hypersteel_ingot"},
	},
})

minetest.register_craft({
	output = "hyperloop:robot",
	recipe = {
		{"hyperloop:hypersteel_ingot", "hyperloop:hypersteel_ingot", "hyperloop:hypersteel_ingot"},
		{"hyperloop:hypersteel_ingot", "default:mese_crystal", "hyperloop:hypersteel_ingot"},
		{"hyperloop:hypersteel_ingot", "hyperloop:hypersteel_ingot", "hyperloop:hypersteel_ingot"},
	},
})

if hyperloop.wifi_enabled then
	minetest.register_craft({
		output = "hyperloop:tube_wifi1 2",
		recipe = {
			{"default:mese_crystal", "hyperloop:hypersteel_ingot", "default:mese_crystal"},
			{"hyperloop:hypersteel_ingot", "default:mese_crystal", "hyperloop:hypersteel_ingot"},
			{"default:mese_crystal", "hyperloop:hypersteel_ingot", "default:mese_crystal"},
		},
	})
end

minetest.register_craft({
	output = "hyperloop:station_map",
	recipe = {
		{"default:paper", "dye:red", ""},
		{"default:paper", "dye:red", ""},
		{"default:paper", "dye:red", ""},
	},
})

minetest.register_craft({
	output = "hyperloop:shaft 8",
	recipe = {
		{"hyperloop:hypersteel_ingot", "", "hyperloop:hypersteel_ingot"},
		{"", "", ""},
		{"hyperloop:hypersteel_ingot", "", "hyperloop:hypersteel_ingot"},
	},
})

minetest.register_craft({
	output = "hyperloop:elevator_bottom 2",
	recipe = {
		{"", "default:glass", "hyperloop:hypersteel_ingot"},
		{"", "dye:red", 	  "default:mese_crystal"},
		{"", "default:glass", "hyperloop:hypersteel_ingot"},
	},
})

minetest.register_craft({
	output = "hyperloop:sign",
	recipe = {
		{"", "", ""},
		{"", "dye:cyan", 	 "hyperloop:hypersteel_ingot"},
		{"", "default:wood", "default:wood"},
	},
})

minetest.register_craft({
	output = "hyperloop:signL 4",
	recipe = {
		{"", "", ""},
		{"", "", ""},
		{"dye:cyan", "hyperloop:hypersteel_ingot", "default:wood"},
	},
})

minetest.register_craft({
	output = "hyperloop:signR 4",
	recipe = {
		{"", "", ""},
		{"", "", ""},
		{"default:wood", "hyperloop:hypersteel_ingot", "dye:cyan"},
	},
})

minetest.register_craft({
	output = "hyperloop:poster1L",
	recipe = {
		{"", "", ""},
		{"", "dye:white", 	 "hyperloop:hypersteel_ingot"},
		{"", "dye:blue", "default:wood"},
	},
})

minetest.register_craft({
	output = "hyperloop:poster2L",
	recipe = {
		{"", "", ""},
		{"", "dye:white", 	 "hyperloop:hypersteel_ingot"},
		{"", "dye:cyan", "default:wood"},
	},
})

minetest.register_craft({
	output = "hyperloop:poster3L",
	recipe = {
		{"", "", ""},
		{"", "dye:white", 	 "hyperloop:hypersteel_ingot"},
		{"", "dye:brown", "default:wood"},
	},
})

minetest.register_craft({
	type = "cooking",
	output = "dye:cyan",
	recipe = "default:cactus",
	cooktime = 3,
})

