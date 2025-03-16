require("__Ultracube__/prototypes/entities/lib/pipe")

local chamber_animation_horizontal = {
  layers = {
    {
      filename = "__krastorio2-assets-ultracube__/buildings/advanced-steam-turbine/advanced-steam-turbine-H.png",
      width = 469,
      height = 270,
      frame_count = 6,
      shift = {0, -0.2},
      line_length = 2,
      scale = 0.5,
    },
    {
      filename = "__krastorio2-assets-ultracube__/buildings/advanced-steam-turbine/advanced-steam-turbine-sh-H.png",
      width = 514,
      height = 225,
      frame_count = 6,
      shift = {0.575, 0.25},
      line_length = 3,
      scale = 0.5,
      draw_as_shadow = true,
    },
  },
}

local chamber_animation_vertical = {
  layers = {
    {
      filename = "__krastorio2-assets-ultracube__/buildings/advanced-steam-turbine/advanced-steam-turbine-V.png",
      width = 330,
      height = 500,
      frame_count = 6,
      line_length = 6,
      shift = {0.26, 0},
      scale = 0.5,
    },
    {
      filename = "__krastorio2-assets-ultracube__/buildings/advanced-steam-turbine/advanced-steam-turbine-sh-V.png",
      width = 350,
      height = 425,
      frame_count = 6,
      line_length = 6,
      shift = {0.48, 0.36},
      scale = 0.5,
      draw_as_shadow = true,
    },
  },
}

local reactor_picture = {
  layers = {
    {
      filename = "__krastorio2-assets-ultracube__/buildings/fusion-reactor/fusion-reactor.png",
      width = 1100,
      height = 1100,
      scale = 0.5,
      shift = {1.01, 0},
    },
    {
      filename = "__krastorio2-assets-ultracube__/buildings/fusion-reactor/fusion-reactor-shadow.png",
      priority = "medium",
      width = 1100,
      height = 1100,
      shift = {1.01, 0},
      draw_as_shadow = true,
      scale = 0.5,
    },
  },
}

local reactor_working_visualizations = {
  {
    render_layer = "higher-object-under",
    animation = {
      filename = "__krastorio2-assets-ultracube__/buildings/fusion-reactor/fusion-reactor-steam.png",
      priority = "extra-high",
      line_length = 10,
      width = 40,
      height = 81,
      frame_count = 60,
      animation_speed = 0.5,
      scale = 0.75,
      shift = {-4.25, -5.35},
      blend_mode = "additive",
      flags = {"smoke"},
      fadeout = true,
    },
  },
  {
    render_layer = "higher-object-under",
    animation = {
      filename = "__krastorio2-assets-ultracube__/buildings/fusion-reactor/fusion-reactor-steam.png",
      priority = "extra-high",
      line_length = 10,
      width = 40,
      height = 81,
      frame_count = 60,
      animation_speed = 0.5,
      scale = 0.5,
      shift = {-5.25, -1.35},
      blend_mode = "additive",
      flags = {"smoke"},
      fadeout = true,
    },
  },
  {
    render_layer = "higher-object-under",
    animation = {
      filename = "__krastorio2-assets-ultracube__/buildings/fusion-reactor/fusion-reactor-animation-glow.png",
      priority = "high",
      line_length = 6,
      width = 626,
      height = 688,
      frame_count = 12,
      animation_speed = 0.75,
      scale = 0.5,
      shift = {2.18, -2.358},
      draw_as_glow = true,
      blend_mode = "additive",
    },
  },
  {
    render_layer = "higher-object-under",
    animation = {
      filename = "__krastorio2-assets-ultracube__/buildings/fusion-reactor/fusion-reactor-animation-light.png",
      line_length = 6,
      width = 626,
      height = 688,
      frame_count = 12,
      animation_speed = 0.75,
      draw_as_light = true,
      scale = 0.5,
      shift = {2.18, -2.358},
    },
  },
  {
    render_layer = "higher-object-under",
    animation = {
      filename = "__krastorio2-assets-ultracube__/buildings/fusion-reactor/fusion-reactor-light.png",
      priority = "high",
      width = 1100,
      height = 1100,
      scale = 0.5,
      line_length = 1,
      frame_count = 1,
      repeat_count = 12,
      shift = {1.01, 0},
      draw_as_light = true,
      blend_mode = "additive-soft",
    },
  },
  {
    render_layer = "higher-object-under",
    animation = {
      filename = "__krastorio2-assets-ultracube__/buildings/fusion-reactor/fusion-reactor-animation.png",
      line_length = 6,
      width = 626,
      height = 688,
      frame_count = 12,
      animation_speed = 0.75,
      scale = 0.5,
      shift = {2.18, -2.358},
    },
  },
  {
    light = {
      intensity = 0.5,
      size = 30,
      flicker_interval = 40,
      shift = {0, 0},
      color = {r = 0.95, g = 0.75, b = 0.5},
    },
  },
}

local function make_reactor_port(flip)
  local pipe_position = {0, 0}
  local direction = defines.direction.north
  local selection_box = {{-2.5, -0.5}, {2.5, 3.5}}
  local name = "cube-antimatter-reactor-port"
  if flip then
    direction = defines.direction.south
    selection_box = {{-2.5, -3.5}, {2.5, 0.5}}
    name = name .. "-flip"
  end
  return {
    type = "generator",
    name = name,
    localised_name = {"entity-name.cube-antimatter-reactor-port"},
    localised_description = {"entity-description.cube-antimatter-reactor-port"},
    icon = "__base__/graphics/icons/pump.png",
    icon_size = 64,
    flags = {"not-repairable", "not-blueprintable", "not-deconstructable"},
    placeable_by = {item = "cube-antimatter-reactor", count = 1},
    max_health = 1000,
    collision_box = {{-0.25, -0.25}, {0.25, 0.25}},
    collision_mask = {layers = {cube_selectable_composite = true}},
    selection_box = selection_box,
    selection_priority = 100,
    allow_copy_paste = false,
    hidden = true,

    fluid_box = {
      production_type = "input",
      pipe_covers = pipecoverspictures(),
      pipe_picture = pipe_path,
      volume = 1250000,
      pipe_connections = {
        {flow_direction = "input", direction = direction, position = pipe_position},
      },
      filter = "cube-ionized-annihilation-stream",
    },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-output",
      output_flow_limit = "0W",
      buffer_capacity = "100MJ",
      emissions_per_minute = {},
      render_no_power_icon = false,
      render_no_network_icon = false,
    },

    effectivity = 1,
    maximum_temperature = 25,
    destroy_non_fuel_fluid = true,
    burns_fluid = true,
    scale_fluid_usage = false,
    fluid_usage_per_tick = 400,
  }
end

data:extend({
  {
    type = "corpse",
    name = "cube-antimatter-reactor-remnant",
    localised_name = {"remnant-name", {"entity-name.cube-antimatter-reactor"}},
    icon = "__krastorio2-assets-ultracube__/icons/entities/fusion-reactor.png",
    icon_size = 64,
    flags = {"placeable-neutral", "building-direction-8-way", "not-on-map"},
    selection_box = {{-7.5, -7.5}, {7.5, 7.5}},
    tile_width = 9,
    tile_height = 9,
    selectable_in_game = false,
    subgroup = "remnants",
    order = "cube-z[remnants]-a[generic]-b[antimatter-reactor-remnant]",
    time_before_removed = 60 * 60 * 20, -- 20 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet(1, {
      filename = "__krastorio2-assets-ultracube__/remnants/fusion-reactor-remnant/fusion-reactor-remnant.png",
      line_length = 1,
      width = 1100,
      height = 1100,
      frame_count = 1,
      direction_count = 1,
      shift = {1.01, 0},
      scale = 0.5,
    }),
  },

  {
    type = "electric-energy-interface",
    name = "cube-antimatter-reactor",
    icon = "__krastorio2-assets-ultracube__/icons/entities/fusion-reactor.png",
    icon_size = 64,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 2, result = "cube-antimatter-reactor"},
    max_health = 6000,
    corpse = "cube-antimatter-reactor-remnant",
    dying_explosion = "nuclear-reactor-explosion",
    collision_box = {{-7.25, -7.25}, {7.25, 7.25}},
    selection_box = {{-7.5, -7.5}, {7.5, 7.5}},

    energy_production = "24GW",
    energy_usage = "0W",
    energy_source = {
      type = "electric",
      buffer_capacity = "400MJ",  -- Production / 60.
      usage_priority = "primary-output",
      input_flow_limit = "0W",
      emissions_per_minute = {},
      render_no_power_icon = false,
    },

    picture = reactor_picture,
    water_reflection = {
      pictures = {
        filename = "__krastorio2-assets-ultracube__/buildings/fusion-reactor/fusion-reactor-reflection.png",
        priority = "extra-high",
        width = 110,
        height = 110,
        shift = util.by_pixel(0, 40),
        variation_count = 1,
        scale = 5,
      },
      rotate = false,
      orientation_to_variation = false,
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
      sound = {
        filename = "__krastorio2-assets-ultracube__/sounds/buildings/fusion-reactor.ogg",
        volume = 1.5,
        audible_distance_modifier = 10,
      },
      idle_sound = {filename = "__base__/sound/idle1.ogg"},
      apparent_volume = 1.5,
      audible_distance_modifier = 1,
      fade_in_ticks = 5,
      fade_out_ticks = 5,
    },

    open_sound = {filename = "__krastorio2-assets-ultracube__/sounds/buildings/open.ogg", volume = 1},
    close_sound = {filename = "__krastorio2-assets-ultracube__/sounds/buildings/close.ogg", volume = 0.85},
  },

  {
    type = "assembling-machine",
    name = "cube-antimatter-reactor-animation",
    localised_name = {"entity-name.cube-antimatter-reactor"},
    localised_description = {"entity-description.cube-antimatter-reactor"},
    icon = "__krastorio2-assets-ultracube__/icons/entities/fusion-reactor.png",
    icon_size = 64,
    flags = {"not-repairable", "not-blueprintable", "not-deconstructable"},
    show_recipe_icon_on_map = false,
    max_health = 1000,
    collision_mask = {layers = {}},
    collision_box = {{-7.25, -7.25}, {7.25, 7.25}},
    selection_box = {{-7.5, -7.5}, {7.5, 7.5}},
    allow_copy_paste = false,
    selectable_in_game = false,
    show_recipe_icon = false,
    match_animation_speed_to_activity = false,
    hidden = true,

    picture = util.empty_sprite(),
    crafting_categories = {"cube-uncraftable"},
    crafting_speed = 1,
    fixed_recipe = "cube-uncraftable-dummy-recipe",
    energy_usage = "1W",
    energy_source = {type = "void"},
    graphics_set = {working_visualisations = reactor_working_visualizations},
  },

  make_reactor_port(false),
  make_reactor_port(true),

  {
    type = "assembling-machine",
    name = "cube-annihilation-chamber",
    icon = "__krastorio2-assets-ultracube__/icons/entities/advanced-steam-turbine.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    show_recipe_icon_on_map = false,
    minable = {mining_time = 1, result = "cube-annihilation-chamber"},
    max_health = 900,
    corpse = "cube-medium-random-pipes-remnant",
    dying_explosion = "medium-explosion",
    alert_icon_shift = util.by_pixel(0, -12),
    collision_box = {{-2.25, -3.25}, {2.25, 3.25}},
    selection_box = {{-2.5, -3.5}, {2.5, 3.5}},
    fluid_boxes = {
      {
        volume = 25000,
        pipe_covers = pipecoverspictures(),
        pipe_connections = {
          {flow_direction = "output", direction = defines.direction.north, position = {0, -3}},
        },
        production_type = "output",
      },
      {
        volume = 25000,
        pipe_covers = pipecoverspictures(),
        pipe_connections = {
          {flow_direction = "output", direction = defines.direction.south, position = {0, 3}},
        },
        production_type = "output",
      },
    },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {},
    },
    graphics_set = {
      animation = {
        north = chamber_animation_vertical,
        south = chamber_animation_vertical,
        east = chamber_animation_horizontal,
        west = chamber_animation_horizontal,
      },
    },
    energy_usage = "150MW",
    ingredient_count = 2,
    crafting_speed = 1,
    crafting_categories = {"cube-annihilation-chamber"},
    fixed_recipe = "cube-annihilation",
    show_recipe_icon = false,
    vehicle_impact_sound = {
      filename = "__base__/sound/car-metal-impact.ogg",
      volume = 0.65,
    },
    working_sound = {
      sound = {
        filename = "__Ultracube__/assets/sounds/annihilation-chamber.ogg",
        volume = 0.9,
      },
      fade_in_ticks = 5,
      fade_out_ticks = 5,
    },
    open_sound = {filename = "__base__/sound/machine-open.ogg"},
    close_sound = {filename = "__base__/sound/machine-close.ogg"},
  },
})