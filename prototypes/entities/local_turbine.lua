local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")

local turbine_persistent_sound = {
  variations = {
    {
      filename = "__Krastorio2Assets__/sounds/buildings/wind-turbine-rotating.ogg",
      volume = 0.4,
      min_speed = 0.8,
      max_speed = 0.9,
    },
    {
      filename = "__Krastorio2Assets__/sounds/buildings/wind-turbine-rotating-2.ogg",
      volume = 0.3,
      min_speed = 0.8,
      max_speed = 0.9,
    },
  },
  audible_distance_modifier = 0.5,
  aggregation = {
    max_count = 3,
    remove = false,
    count_already_playing = true,
  },
}

local turbine_scale = 0.85
local turbine_animation = {
  layers = {
    {
      filename = "__Krastorio2Assets__/entities/wind-turbine/hr-wind-turbine.png",
      priority = "medium",
      width = 196,
      height = 286,
      scale = turbine_scale * 0.5,
      frame_count = 30,
      line_length = 6,
      animation_speed = 0.8,
      shift = {0, turbine_scale * -1.2},
    },
    {
      filename = "__Krastorio2Assets__/entities/wind-turbine/hr-wind-turbine-shadow.png",
      priority = "medium",
      width = 242,
      height = 100,
      scale = turbine_scale * 0.65,
      frame_count = 30,
      line_length = 6,
      animation_speed = 0.5,
      draw_as_shadow = true,
      shift = {turbine_scale * 1.15, turbine_scale * 0.05},
    },
  },
}

local turbine_water_reflection = {
  pictures = {
    filename = "__Krastorio2Assets__/entities/wind-turbine/wind-turbine-reflection.png",
    priority = "extra-high",
    width = 20,
    height = 25,
    shift = util.by_pixel(0, turbine_scale * 40),
    variation_count = 1,
    scale = turbine_scale * 5,
  },
  rotate = false,
  orientation_to_variation = false,
}

local no_connections = {
  {
    shadow = {
      copper = {0, 0},
      red = {0, 0},
      green = {0, 0},
    },
    wire = {
      copper = {0, 0},
      red = {0, 0},
      green = {0, 0},
    }
  },
}

data:extend({
  {
    type = "simple-entity-with-owner",
    name = "cube-local-turbine",
    localised_name = {"entity-name.cube-local-turbine"},
    localised_description = {"entity-description.cube-local-turbine"},
    icon = "__Krastorio2Assets__/icons/entities/wind-turbine.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation", "not-rotatable"},
    collision_mask = {
      layers = {item = true, object = true, player = true, water_tile = true,
                cube_local_turbine_forbidden_zone = true},
    },
    selectable_in_game = false,
    minable = {mining_time = 0.25, result = "cube-local-turbine"},
    max_health = 200,
    corpse = "medium-remnants",
    damaged_trigger_effect = hit_effects.entity(),
    collision_box = {{-0.9, -0.7}, {0.9, 0.7}},
    selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
    drawing_box = {{-0.45, -1.6}, {0.45, 0.8}},
    water_reflection = turbine_water_reflection,
    animations = turbine_animation,
    working_sound = {
      sound = turbine_persistent_sound,
      idle_sound = turbine_persistent_sound,
      persistent = true,
    },
  },
  {
    type = "electric-energy-interface",
    name = "cube-local-turbine-generator",
    localised_name = {"entity-name.cube-local-turbine"},
    localised_description = {"entity-description.cube-local-turbine"},
    icon = "__Krastorio2Assets__/icons/entities/wind-turbine.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"not-repairable", "not-blueprintable", "not-deconstructable"},
    hidden = true,
    max_health = 200,
    damaged_trigger_effect = hit_effects.entity(),
    collision_box = {{-0.9, -0.7}, {0.9, 0.7}},
    selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
    drawing_box = {{-0.45, -1.6}, {0.45, 0.8}},
    energy_source = {
      type = "electric",
      buffer_capacity = "20kJ",
      usage_priority = "primary-output",
      input_flow_limit = "0W",
      output_flow_limit = "20kW",
      render_no_power_icon = false,
    },
    water_reflection = turbine_water_reflection,
    energy_production = "20kW",
    energy_usage = "0kW",
    animation = turbine_animation,
    continuous_animation = true,
    working_sound = {
      sound = turbine_persistent_sound,
      idle_sound = turbine_persistent_sound,
      persistent = true,
    },
  },
  {
    type = "electric-pole",
    name = "cube-local-turbine-source",
    icon = "__base__/graphics/icons/small-electric-pole.png",
    icon_size = 64, icon_mipmaps = 4,
    localised_name = {"entity-name.cube-local-turbine"},
    flags = {"not-repairable", "not-blueprintable", "not-deconstructable"},
    hidden = true,
    max_health = 100,
    selectable_in_game = false,
    maximum_wire_distance = 0.5,
    supply_area_distance = 1,
    pictures = util.empty_sprite(),
    connection_points = no_connections,
    radius_visualisation_picture = {
      filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
      width = 12,
      height = 12,
      priority = "extra-high-no-scale"
    },
  },
  {
    type = "electric-pole",
    name = "cube-local-turbine-transmitter",
    icon = "__base__/graphics/icons/small-electric-pole.png",
    icon_size = 64, icon_mipmaps = 4,
    localised_name = {"entity-name.cube-local-turbine"},
    localised_description = {"entity-description.cube-local-turbine"},
    flags = {"not-repairable", "not-blueprintable", "not-deconstructable"},
    hidden = true,
    placeable_by = {item = "cube-local-turbine", count = 1},
    minable = {mining_time = 0.25},
    selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
    collision_box = {{-2.8, -2.8}, {2.8, 2.8}},
    collision_mask = {layers = {cube_accumulator_forbidden_zone = true}},
    max_health = 100,
    maximum_wire_distance = 0.5,
    supply_area_distance = 3,
    pictures = util.empty_sprite(),
    connection_points = no_connections,
    radius_visualisation_picture = {
      filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
      width = 12,
      height = 12,
      priority = "extra-high-no-scale"
    },
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
  },
  {
    type = "simple-entity-with-owner",
    name = "cube-accumulator-local-turbine-collision",
    icon = "__base__/graphics/icons/accumulator.png",
    icon_size = 64, icon_mipmaps = 4,
    localised_name = {"entity-name.accumulator"},
    flags = {"not-repairable", "not-blueprintable", "not-deconstructable"},
    selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
    collision_box = {{-2.8, -2.8}, {2.8, 2.8}},
    collision_mask = {layers = {cube_local_turbine_forbidden_zone = true}},
    max_health = 100,
    selectable_in_game = false,
    hidden = true,
    pictures = util.empty_sprite(),
  },
  {
    type = "simple-entity-with-owner",
    name = "cube-energy-bulkframe-local-turbine-collision",
    icon = "__Krastorio2Assets__/icons/entities/energy-storage.png",
    icon_size = 64, icon_mipmaps = 4,
    localised_name = {"entity-name.cube-energy-bulkframe"},
    flags = {"not-repairable", "not-blueprintable", "not-deconstructable"},
    selection_box = {{-3, -3}, {3, 3}},
    collision_box = {{-4.8, -4.8}, {4.8, 4.8}},
    collision_mask = {layers = {cube_local_turbine_forbidden_zone = true}},
    max_health = 100,
    selectable_in_game = false,
    hidden = true,
    pictures = util.empty_sprite(),
  },
})