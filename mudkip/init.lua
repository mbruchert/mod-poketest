--= mudkip for poketesr (cme) =--
--engine: Copyright (c) 2015-2016 BlockMen <blockmen2015@gmail.com>
--poketest: Copyright (c) 2017 MBB <MBB@webproxy.li>
--NODEBOX OF TIS POKEMON BY <DOOMED>
-- init.lua
--
--POKETEST USES BLOCKMEN´S CREATURES MOB ENGINE 
--
--ENGINE:
--
-- This software is provided 'as-is', without any express or implied warranty. In no
-- event will the authors be held liable for any damages arising from the use of
-- this software.
--
-- Permission is granted to anyone to use this software for any purpose, including
-- commercial applications, and to alter it and redistribute it freely, subject to the
-- following restrictions:
--
-- 1. The origin of this software must not be misrepresented; you must not
-- claim that you wrote the original software. If you use this software in a
-- product, an acknowledgment in the product documentation is required.
-- 2. Altered source versions must be plainly marked as such, and must not
-- be misrepresented as being the original software.
-- 3. This notice may not be removed or altered from any source distribution.
--




local def = {
  -- general
  name = "poketest:mudkip",
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
    mesh = "poketest_mudkip.b3d",
    textures = {"poketest_mudkip.png"},
    collisionbox = {-0.25, -0.01, -0.3, 0.25, 0.45, 0.3},
    rotation = -90,

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
      on_damage = {name = "poketest_mudkip_hit", gain = 0.5, distance = 10},
      on_death = {name = "poketest_mudkip_hit", gain = 0.5, distance = 10},
      swim = {name = "creatures_splash", gain = 1.0, distance = 10},
      random = {
        idle = {name = "poketest_mudkip", gain = 0.9, distance = 12, time_min = 8, time_max = 50},
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
      description = "mudkip Spawn-Egg",
      texture = "poketest_egg_mudkip.png",
    },
  },

  drops = {
    {"default:meat"},

  },
}
 

creatures.register_mob(def)
