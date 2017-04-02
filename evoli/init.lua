--= evoli for poketesr (cme) =--





local def = {
	-- general
	name = "poketest:evoli",
	stats = {
		hp = 5,
		lifetime = 300, -- 5 Minutes
		can_jump = 1,
		can_swim = true,
		can_burn = true,
		can_panic = true,
		has_kockback = true,
		sneaky = true,
	},

	modes = {
		idle = {chance = 0.25, duration = 5, update_yaw = 3},
		idle2 = {chance = 0.69, duration = 0.8},
		pick = {chance = 0.2, duration = 2},
		walk = {chance = 0.2, duration = 5.5, moving_speed = 0.7, update_yaw = 2},
		panic = {moving_speed = 2.1},
		lay_egg = {chance = 0.01, duration = 1},
	},

	model = {
		mesh = "poketest_evoli.b3d",
		textures = {"poketest_evoli.png"},
		collisionbox = {-0.25, -0.01, -0.3, 0.25, 0.45, 0.3},
		rotation = -180.0,

		collide_with_objects = false,
		animations = {
			idle = {start = 0, stop = 1, speed = 10},
			idle2 = {start = 40, stop = 50, speed = 50},
			pick = {start = 88, stop = 134, speed = 50},
			walk = {start = 4, stop = 36, speed = 50},
			-- special modes
			swim = {start = 51, stop = 87, speed = 40},
			panic = {start = 51, stop = 87, speed = 55},
			death = {start = 135, stop = 160, speed = 28, loop = false, duration = 2.12},
		},
	},

	sounds = {
			on_damage = {name = "poketest_evoli_hit", gain = 0.5, distance = 10},
			on_death = {name = "poketest_evoli_hit", gain = 0.5, distance = 10},
			swim = {name = "creatures_splash", gain = 1.0, distance = 10},
			random = {
				idle = {name = "poketest_evoli", gain = 0.9, distance = 12, time_min = 8, time_max = 50},
			},
	},

	spawning = {
		abm_nodes = {
			spawn_on = {"default:dirt_with_grass", "default:dirt"},
		},
		abm_interval = 55,
		abm_chance = 7800,
		max_number = 1,
		number = 1,
		light = {min = 8, max = 15},
		height_limit = {min = 0, max = 150},

		spawn_egg = {
			description = "evoli Spawn-Egg",
			texture = "poketest_egg_evoli.png",
		},
	},

	drops = {
		{"creatures:flesh"},

	},
}


creatures.register_mob(def)
