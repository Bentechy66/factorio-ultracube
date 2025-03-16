local item_sounds = require("__base__.prototypes.item_sounds")

data:extend({
  {
    type = "resource-category",
    name = "cube-uranium",
  },
  {
    type = "item",
    name = "cube-raw-rare-metals",
    icon = "__krastorio2-assets-ultracube__/icons/items/raw-rare-metals.png",
    icon_size = 64,
    pictures = {
      {
        size = 64,
        filename = "__krastorio2-assets-ultracube__/icons/items/raw-rare-metals.png",
        scale = 0.5,
      },
      {
        size = 64,
        filename = "__krastorio2-assets-ultracube__/icons/items/raw-rare-metals-1.png",
        scale = 0.5,
      },
      {
        size = 64,
        filename = "__krastorio2-assets-ultracube__/icons/items/raw-rare-metals-2.png",
        scale = 0.5,
      },
      {
        size = 64,
        filename = "__krastorio2-assets-ultracube__/icons/items/raw-rare-metals-3.png",
        scale = 0.5,
      },
    },
    subgroup = "raw-resource",
    order = "cube-e[0-raw-rare-metals]",
    inventory_move_sound = item_sounds.resource_inventory_move,
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.resource_inventory_move,
    stack_size = 100,
  },
  {
    type = "item",
    name = "cube-refined-rare-metals",
    icon = "__krastorio2-assets-ultracube__/icons/items/enriched-rare-metals.png",
    icon_size = 64,
    pictures = {
      {
        size = 64,
        filename = "__krastorio2-assets-ultracube__/icons/items/enriched-rare-metals.png",
        scale = 0.5,
      },
      {
        size = 64,
        filename = "__krastorio2-assets-ultracube__/icons/items/enriched-rare-metals-1.png",
        scale = 0.5,
      },
      {
        size = 64,
        filename = "__krastorio2-assets-ultracube__/icons/items/enriched-rare-metals-2.png",
        scale = 0.5,
      },
    },
    subgroup = "cube-processing",
    order = "cube-a[refined-rare-metals]",
    inventory_move_sound = item_sounds.resource_inventory_move,
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.resource_inventory_move,
    stack_size = 100,
  },
  {
    type = "item",
    name = "cube-rare-metals",
    icon = "__krastorio2-assets-ultracube__/icons/items/rare-metals.png",
    icon_size = 64,
    pictures = {
      {
        size = 64,
        filename = "__krastorio2-assets-ultracube__/icons/items/rare-metals.png",
        scale = 0.5,
      },
      {
        size = 64,
        filename = "__krastorio2-assets-ultracube__/icons/items/rare-metals-1.png",
        scale = 0.5,
      },
      {
        size = 64,
        filename = "__krastorio2-assets-ultracube__/icons/items/rare-metals-2.png",
        scale = 0.5,
      },
      {
        size = 64,
        filename = "__krastorio2-assets-ultracube__/icons/items/rare-metals-3.png",
        scale = 0.5,
      },
      {
        size = 64,
        filename = "__krastorio2-assets-ultracube__/icons/items/rare-metals-4.png",
        scale = 0.5,
      },
      {
        size = 64,
        filename = "__krastorio2-assets-ultracube__/icons/items/rare-metals-5.png",
        scale = 0.5,
      },
      {
        size = 64,
        filename = "__krastorio2-assets-ultracube__/icons/items/rare-metals-6.png",
        scale = 0.5,
      },
    },
    subgroup = "cube-smelting",
    order = "cube-0[rare-metals]",
    inventory_move_sound = item_sounds.metal_small_inventory_move,
    pick_sound = item_sounds.metal_small_inventory_pickup,
    drop_sound = item_sounds.metal_small_inventory_move,
    stack_size = 100,
  },

  {
    type = "item",
    name = "cube-sand",
    icon = "__Ultracube__/assets/icons/sand-01.png",
    icon_size = 64,
    pictures = {
      {
        size = 64,
        filename = "__Ultracube__/assets/icons/sand-01.png",
        scale = 0.5,
      },
    },
    subgroup = "cube-processing",
    order = "cube-c[0-sand]",
    inventory_move_sound = item_sounds.resource_inventory_move,
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.resource_inventory_move,
    stack_size = 200,
  },
  {
    type = "item",
    name = "cube-glass",
    icon = "__krastorio2-assets-ultracube__/icons/items/glass.png",
    icon_size = 64,
    subgroup = "cube-processed-materials",
    order = "cube-1[a-glass]",
    inventory_move_sound = item_sounds.metal_small_inventory_move,
    pick_sound = item_sounds.science_inventory_pickup,
    drop_sound = item_sounds.metal_small_inventory_move,
    stack_size = 50,
  },

  {
    type = "item",
    name = "cube-calcium",
    icon = "__krastorio2-assets-ultracube__/icons/items/sand.png",
    icon_size = 64,
    pictures = {
      {
        size = 64,
        filename = "__krastorio2-assets-ultracube__/icons/items/sand.png",
        scale = 0.5,
      },
      {
        size = 64,
        filename = "__krastorio2-assets-ultracube__/icons/items/sand-1.png",
        scale = 0.5,
      },
      {
        size = 64,
        filename = "__krastorio2-assets-ultracube__/icons/items/sand-2.png",
        scale = 0.5,
      },
    },
    subgroup = "cube-experimental",
    order = "cube-a[calcium]",
    inventory_move_sound = item_sounds.resource_inventory_move,
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.resource_inventory_move,
    stack_size = 100,
  },
  {
    type = "item",
    name = "cube-intelligent-calcium",
    icon = "__Ultracube__/assets/icons/intelligent-calcium.png",
    icon_size = 128,
    pictures = {
      {
        layers = {
          {
            filename = "__krastorio2-assets-ultracube__/icons/items/sand.png",
            scale = 0.5,
            size = 64,
          },
          {
            filename = "__krastorio2-assets-ultracube__/icons/items/blank-tech-card-1.png",
            scale = 0.5 * 0.3125, shift = {0, -4 / 64},
            size = 64,
          },
        },
      },
      {
        layers = {
          {
            filename = "__krastorio2-assets-ultracube__/icons/items/sand-1.png",
            scale = 0.5,
            size = 64,
          },
          {
            filename = "__krastorio2-assets-ultracube__/icons/items/blank-tech-card-1.png",
            scale = 0.5 * 0.3125, shift = {0, -4 / 64},
            size = 64,
          },
        },
      },
      {
        layers = {
          {
            filename = "__krastorio2-assets-ultracube__/icons/items/sand-2.png",
            scale = 0.5,
            size = 64,
          },
          {
            filename = "__krastorio2-assets-ultracube__/icons/items/blank-tech-card-1.png",
            scale = 0.5 * 0.3125, shift = {0, -4 / 64},
            size = 64,
          },
        },
      },
    },
    subgroup = "cube-experimental",
    order = "cube-b[calcium]",
    inventory_move_sound = item_sounds.resource_inventory_move,
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.resource_inventory_move,
    stack_size = 100,
  },
  {
    type = "item",
    name = "cube-mash",
    icon = "__Ultracube__/assets/icons/mash-1.png",
    icon_size = 64,
    pictures = {
      {
        size = 64,
        filename = "__Ultracube__/assets/icons/mash.png",
        scale = 0.5,
      },
      {
        size = 64,
        filename = "__Ultracube__/assets/icons/mash-1.png",
        scale = 0.5,
      },
      {
        size = 64,
        filename = "__Ultracube__/assets/icons/mash-2.png",
        scale = 0.5,
      },
    },
    subgroup = "cube-processing",
    order = "cube-b[0-mash]",
    inventory_move_sound = item_sounds.resource_inventory_move,
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.resource_inventory_move,
    stack_size = 100,
  },

  {
    type = "item",
    name = "cube-deep-core-ore",
    icon = "__krastorio2-assets-ultracube__/icons/items/raw-imersite.png",
    icon_size = 64,
    pictures = {
      {
        layers = {
          {
            size = 64,
            filename = "__krastorio2-assets-ultracube__/icons/items/raw-imersite.png",
            scale = 0.5,
          },
          {
            draw_as_light = true,
            flags = {"light"},
            blend_mode = "additive",
            tint = {r = 0.3, g = 0.3, b = 0.3, a = 0.3},
            size = 64,
            filename = "__krastorio2-assets-ultracube__/icons/items/raw-imersite-light.png",
            scale = 0.5,
          },
        },
      },
      {
        layers = {
          {
            size = 64,
            filename = "__krastorio2-assets-ultracube__/icons/items/raw-imersite-1.png",
            scale = 0.5,
          },
          {
            draw_as_light = true,
            flags = {"light"},
            blend_mode = "additive",
            tint = {r = 0.3, g = 0.3, b = 0.3, a = 0.3},
            size = 64,
            filename = "__krastorio2-assets-ultracube__/icons/items/raw-imersite-1-light.png",
            scale = 0.5,
          },
        },
      },
      {
        layers = {
          {
            size = 64,
            filename = "__krastorio2-assets-ultracube__/icons/items/raw-imersite-2.png",
            scale = 0.5,
          },
          {
            draw_as_light = true,
            flags = {"light"},
            blend_mode = "additive",
            tint = {r = 0.3, g = 0.3, b = 0.3, a = 0.3},
            size = 64,
            filename = "__krastorio2-assets-ultracube__/icons/items/raw-imersite-2-light.png",
            scale = 0.5,
          },
        },
      },
      {
        layers = {
          {
            size = 64,
            filename = "__krastorio2-assets-ultracube__/icons/items/raw-imersite-3.png",
            scale = 0.5,
          },
          {
            draw_as_light = true,
            flags = {"light"},
            blend_mode = "additive",
            tint = {r = 0.3, g = 0.3, b = 0.3, a = 0.3},
            size = 64,
            filename = "__krastorio2-assets-ultracube__/icons/items/raw-imersite-3-light.png",
            scale = 0.5,
          },
        },
      },
    },
    subgroup = "raw-resource",
    order = "cube-f[1-deep-core-ore]",
    inventory_move_sound = item_sounds.resource_inventory_move,
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.resource_inventory_move,
    stack_size = 50,
  },
  {
    type = "item",
    name = "cube-deep-powder",
    icon = "__krastorio2-assets-ultracube__/icons/items/imersite-powder.png",
    icon_size = 64,
    pictures = {
      {
        layers = {
          {
            size = 64,
            filename = "__krastorio2-assets-ultracube__/icons/items/imersite-powder.png",
            scale = 0.5,
          },
          {
            draw_as_light = true,
            flags = {"light"},
            blend_mode = "additive",
            tint = {r = 0.3, g = 0.3, b = 0.3, a = 0.3},
            size = 64,
            filename = "__krastorio2-assets-ultracube__/icons/items/imersite-powder-light.png",
            scale = 0.5,
          },
        },
      },
      {
        layers = {
          {
            size = 64,
            filename = "__krastorio2-assets-ultracube__/icons/items/imersite-powder-1.png",
            scale = 0.5,
          },
          {
            draw_as_light = true,
            flags = {"light"},
            blend_mode = "additive",
            tint = {r = 0.3, g = 0.3, b = 0.3, a = 0.3},
            size = 64,
            filename = "__krastorio2-assets-ultracube__/icons/items/imersite-powder-1-light.png",
            scale = 0.5,
          },
        },
      },
      {
        layers = {
          {
            size = 64,
            filename = "__krastorio2-assets-ultracube__/icons/items/imersite-powder-2.png",
            scale = 0.5,
          },
          {
            draw_as_light = true,
            flags = {"light"},
            blend_mode = "additive",
            tint = {r = 0.3, g = 0.3, b = 0.3, a = 0.3},
            size = 64,
            filename = "__krastorio2-assets-ultracube__/icons/items/imersite-powder-2-light.png",
            scale = 0.5,
          },
        },
      },
    },
    subgroup = "cube-processing",
    order = "cube-d[0-powder]",
    inventory_move_sound = item_sounds.resource_inventory_move,
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.resource_inventory_move,
    stack_size = 100,
  },
  {
    type = "item",
    name = "cube-deep-crystal",
    icon = "__krastorio2-assets-ultracube__/icons/items/imersite-crystal.png",
    icon_size = 64,
    pictures = {
      {
        layers = {
          {
            size = 64,
            filename = "__krastorio2-assets-ultracube__/icons/items/imersite-crystal.png",
            scale = 0.5,
          },
          {
            draw_as_light = true,
            flags = {"light"},
            blend_mode = "additive",
            tint = {r = 0.3, g = 0.3, b = 0.3, a = 0.3},
            size = 64,
            filename = "__krastorio2-assets-ultracube__/icons/items/imersite-crystal-light.png",
            scale = 0.5,
          },
        },
      },
      {
        layers = {
          {
            size = 64,
            filename = "__krastorio2-assets-ultracube__/icons/items/imersite-crystal-1.png",
            scale = 0.5,
          },
          {
            draw_as_light = true,
            flags = {"light"},
            blend_mode = "additive",
            tint = {r = 0.3, g = 0.3, b = 0.3, a = 0.3},
            size = 64,
            filename = "__krastorio2-assets-ultracube__/icons/items/imersite-crystal-1-light.png",
            scale = 0.5,
          },
        },
      },
      {
        layers = {
          {
            size = 64,
            filename = "__krastorio2-assets-ultracube__/icons/items/imersite-crystal-2.png",
            scale = 0.5,
          },
          {
            draw_as_light = true,
            flags = {"light"},
            blend_mode = "additive",
            tint = {r = 0.3, g = 0.3, b = 0.3, a = 0.3},
            size = 64,
            filename = "__krastorio2-assets-ultracube__/icons/items/imersite-crystal-2-light.png",
            scale = 0.5,
          },
        },
      },
      {
        layers = {
          {
            size = 64,
            filename = "__krastorio2-assets-ultracube__/icons/items/imersite-crystal-3.png",
            scale = 0.5,
          },
          {
            draw_as_light = true,
            flags = {"light"},
            blend_mode = "additive",
            tint = {r = 0.3, g = 0.3, b = 0.3, a = 0.3},
            size = 64,
            filename = "__krastorio2-assets-ultracube__/icons/items/imersite-crystal-3-light.png",
            scale = 0.5,
          },
        },
      },
      {
        layers = {
          {
            size = 64,
            filename = "__krastorio2-assets-ultracube__/icons/items/imersite-crystal-4.png",
            scale = 0.5,
          },
          {
            draw_as_light = true,
            flags = {"light"},
            blend_mode = "additive",
            tint = {r = 0.3, g = 0.3, b = 0.3, a = 0.3},
            size = 64,
            filename = "__krastorio2-assets-ultracube__/icons/items/imersite-crystal-4-light.png",
            scale = 0.5,
          },
        },
      },
    },
    subgroup = "cube-chemical-intermediates",
    order = "cube-0[b-crystal]",
    inventory_move_sound = item_sounds.sulfur_inventory_move,
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.sulfur_inventory_move,
    stack_size = 50,
  },
  {
    type = "item",
    name = "cube-potato",
    icon = "__krastorio2-assets-ultracube__/icons/items/potato.png",
    icon_size = 64,
    subgroup = "cube-fuel",
    order = "cube-1[a-potato]",
    inventory_move_sound = item_sounds.resource_inventory_move,
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.resource_inventory_move,
    stack_size = 50,
  },
  {
    type = "item",
    name = "cube-spoiled-potato",
    icon = "__krastorio2-assets-ultracube__/icons/capsules/spoiled-potato.png",
    icon_size = 64,
    subgroup = "cube-fuel",
    order = "cube-1[b-potato]",
    inventory_move_sound = item_sounds.resource_inventory_move,
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.resource_inventory_move,
    stack_size = 50,
  },
  {
    type = "item",
    name = "cube-ghost-crystal",
    icons = {{
      icon = "__krastorio2-assets-ultracube__/icons/items/quartz.png",
      icon_size = 64,
      tint = {r = 1, g = 1, b = 1, a = 0.5},
    }},
    pictures = {
      {
        size = 64,
        filename = "__krastorio2-assets-ultracube__/icons/items/quartz.png",
        scale = 0.5,
        tint = {r = 1, g = 1, b = 1, a = 0.5},
      },
      {
        size = 64,
        filename = "__krastorio2-assets-ultracube__/icons/items/quartz-1.png",
        scale = 0.5,
        tint = {r = 1, g = 1, b = 1, a = 0.5},
      },
      {
        size = 64,
        filename = "__krastorio2-assets-ultracube__/icons/items/quartz-2.png",
        scale = 0.5,
        tint = {r = 1, g = 1, b = 1, a = 0.5},
      },
      {
        size = 64,
        filename = "__krastorio2-assets-ultracube__/icons/items/quartz-3.png",
        scale = 0.5,
        tint = {r = 1, g = 1, b = 1, a = 0.5},
      },
    },
    subgroup = "cube-synthesis-ethereal",
    order = "cube-0[c-crystal]",
    inventory_move_sound = item_sounds.sulfur_inventory_move,
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.sulfur_inventory_move,
    stack_size = 50,
  },
  {
    type = "item",
    name = "cube-spectralite",
    icons = {{
      icon = "__krastorio2-assets-ultracube__/icons/items/silicon.png",
      icon_size = 64,
      tint = {r = 1, g = 1, b = 1, a = 0.5},
    }},
    pictures = {
      {
        size = 64,
        filename = "__krastorio2-assets-ultracube__/icons/items/silicon.png",
        scale = 0.5,
        tint = {r = 1, g = 1, b = 1, a = 0.5},
      },
      {
        size = 64,
        filename = "__krastorio2-assets-ultracube__/icons/items/silicon-1.png",
        scale = 0.5,
        tint = {r = 1, g = 1, b = 1, a = 0.5},
      },
      {
        size = 64,
        filename = "__krastorio2-assets-ultracube__/icons/items/silicon-2.png",
        scale = 0.5,
        tint = {r = 1, g = 1, b = 1, a = 0.5},
      },
    },
    subgroup = "cube-processed-materials",
    order = "cube-5[spectralite]",
    inventory_move_sound = item_sounds.sulfur_inventory_move,
    pick_sound = item_sounds.resource_inventory_pickup,
    drop_sound = item_sounds.sulfur_inventory_move,
    stack_size = 100,
  },
  {
    type = "item",
    name = "cube-residual-tendrils",
    icon = "__krastorio2-assets-ultracube__/icons/items/biomass.png",
    icon_size = 64,
    pictures = {
      {
        size = 64,
        filename = "__krastorio2-assets-ultracube__/icons/items/biomass-1.png",
        scale = 0.5,
      },
      {
        size = 64,
        filename = "__krastorio2-assets-ultracube__/icons/items/biomass-2.png",
        scale = 0.5,
      },
      {
        size = 64,
        filename = "__krastorio2-assets-ultracube__/icons/items/biomass-3.png",
        scale = 0.5,
      },
    },
    subgroup = "cube-processing",
    order = "cube-x[0-tendrils]",
    inventory_move_sound = item_sounds.fluid_inventory_move,
    pick_sound = item_sounds.fluid_inventory_pickup,
    drop_sound = item_sounds.fluid_inventory_move,
    stack_size = 50,
  },
  {
    type = "item",
    name = "cube-uranium-234",
    icon = "__Ultracube__/assets/icons/uranium-234.png",
    pictures = {
      layers = {
        {
          size = 64,
          filename = "__Ultracube__/assets/icons/uranium-234.png",
          scale = 0.5,
        },
        {
          draw_as_light = true,
          blend_mode = "additive",
          size = 64,
          filename = "__Ultracube__/assets/icons/uranium-234.png",
          scale = 0.5,
          tint = {r = 0.3, g = 0.3, b = 0.3, a = 0.3},
        }
      }
    },
    icon_size = 64,
    subgroup = "cube-uranium",
    order = "cube-a[1]",
    inventory_move_sound = item_sounds.nuclear_inventory_move,
    pick_sound = item_sounds.nuclear_inventory_pickup,
    drop_sound = item_sounds.nuclear_inventory_move,
    stack_size = 100,
  },
})
