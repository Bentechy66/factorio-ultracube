local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")
require("__Ultracube__/prototypes/entities/lib/module_effects")

data:extend({
  {
    type = "furnace",
    name = "cube-recovery-bay",
    icon = "__krastorio2-assets-ultracube__/icons/entities/stabilizer-charging-station.png",
    icon_size = 128,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    show_recipe_icon_on_map = false,
    minable = {mining_time = 1, result = "cube-recovery-bay"},
    max_health = 200,
    damaged_trigger_effect = hit_effects.entity(),
    dying_explosion = "cube-small-matter-explosion",
    corpse = "medium-remnants",
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.9, -0.9}, {0.9, 0.9}},
    graphics_set = {
      animation = {
        layers = {
          {
            filename = "__krastorio2-assets-ultracube__/buildings/stabilizer-charging-station/stabilizer-charging-station.png",
            priority = "high",
            width = 170,
            height = 170,
            frame_count = 80,
            line_length = 10,
            animation_speed = 0.4,
            scale = 0.4,
          },
          {
            filename = "__krastorio2-assets-ultracube__/buildings/stabilizer-charging-station/stabilizer-charging-station-sh.png",
            priority = "high",
            width = 170,
            height = 144,
            frame_count = 80,
            line_length = 8,
            animation_speed = 0.4,
            shift = {0.23, 0.262},
            draw_as_shadow = true,
            scale = 0.4,
          },
        },
      },
      working_visualisations = {
        {
          animation = {
            filename = "__krastorio2-assets-ultracube__/buildings/stabilizer-charging-station/stabilizer-charging-station-light.png",
            priority = "high",
            width = 170,
            height = 170,
            frame_count = 80,
            line_length = 10,
            animation_speed = 0.4,
            scale = 0.4,
            draw_as_light = true,
          },
        },
      },
    },
    crafting_categories = {"cube-recovery-bay"},
    vehicle_impact_sound = sounds.generic_impact,
    working_sound = {
      sound = {
        filename = "__krastorio2-assets-ultracube__/sounds/buildings/stabilizer-charging-station.ogg",
        volume = 0.75,
      },
      idle_sound = {filename = "__base__/sound/idle1.ogg"},
      apparent_volume = 1.5,
    },
    crafting_speed = 1,
    energy_usage = "25MW",
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {},
      drain = "25kW",
    },

    water_reflection = {
      pictures = {
        filename = "__krastorio2-assets-ultracube__/buildings/stabilizer-charging-station/stabilizer-charging-station-reflection.png",
        priority = "extra-high",
        width = 20,
        height = 25,
        shift = util.by_pixel(0, 40),
        variation_count = 1,
        scale = 5,
      },
      rotate = false,
      orientation_to_variation = false,
    },

    result_inventory_size = 1,
    source_inventory_size = 1,
    module_slots = 4,
    icons_positioning = {{
      inventory_index = defines.inventory.furnace_modules,
      shift = {0, 0.6},
      scale = 0.35,
      max_icons_per_row = 4,
    }},
    allowed_effects = module_effects.speed_efficiency,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
  },
})
