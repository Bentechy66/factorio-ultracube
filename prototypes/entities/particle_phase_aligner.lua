local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")
require("__Ultracube__/prototypes/entities/lib/module_effects")

data:extend({
  {
    type = "furnace",
    name = "cube-particle-phase-aligner",
    icon = "__krastorio2-assets-ultracube__/icons/entities/research-server.png",
    icon_size = 64,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "cube-particle-phase-aligner"},
    damaged_trigger_effect = hit_effects.entity(),
    max_health = 250,
    corpse = "medium-remnants",
    collision_box = {{-1.25, -1.25}, {1.25, 1.25}},
    selection_box = {{-1.4, -1.4}, {1.4, 1.4}},
    graphics_set = {
      animation = {
        layers = {
          {
            filename = "__krastorio2-assets-ultracube__/buildings/research-server/research-server.png",
            priority = "high",
            width = 256,
            height = 256,
            shift = {0., -0.2},
            frame_count = 60,
            line_length = 15,
            animation_speed = 0.9,
            scale = 0.5,
          },
          {
            filename = "__krastorio2-assets-ultracube__/buildings/research-server/research-server-shadow.png",
            priority = "high",
            width = 256,
            height = 256,
            draw_as_shadow = true,
            shift = {0., -0.2},
            frame_count = 60,
            line_length = 15,
            animation_speed = 0.9,
            scale = 0.5,
          },
        },
      },
      working_visualisations = {
        {
          animation = {
            filename = "__krastorio2-assets-ultracube__/buildings/research-server/research-server-light.png",
            priority = "extra-high",
            width = 256,
            height = 256,
            shift = {0., -0.2},
            draw_as_light = true,
            frame_count = 60,
            line_length = 15,
            animation_speed = 0.9,
            scale = 0.5,
          },
        },
        {
          light = {
            intensity = 0.25,
            size = 1,
            shift = {0.0, 0.0},
            color = {r = 0.1, g = 0.5, b = 1},
          },
        },
      },
    },
    vehicle_impact_sound = sounds.generic_impact,
    working_sound = {
      sound = {
        {
          filename = "__krastorio2-assets-ultracube__/sounds/buildings/small-research-server.ogg",
          volume = 0.75,
        },
      },
      idle_sound = {filename = "__base__/sound/idle1.ogg"},
      apparent_volume = 1.5,
    },

    crafting_categories = {"cube-particle-phase-aligner"},
    source_inventory_size = 1,
    result_inventory_size = 1,
    crafting_speed = 1,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {},
    },

    water_reflection = {
      pictures = {
        filename = "__krastorio2-assets-ultracube__/buildings/research-server/research-server-reflection.png",
        priority = "extra-high",
        width = 40,
        height = 40,
        shift = util.by_pixel(0, 40),
        variation_count = 1,
        scale = 5,
      },
      rotate = false,
      orientation_to_variation = false,
    },

    energy_usage = "200kW",
    ingredient_count = 1,
    module_slots = 0,
    allowed_effects = module_effects.none,
    open_sound = {filename = "__krastorio2-assets-ultracube__/sounds/buildings/open.ogg", volume = 1},
    close_sound = {filename = "__krastorio2-assets-ultracube__/sounds/buildings/close.ogg", volume = 1},
  },
})