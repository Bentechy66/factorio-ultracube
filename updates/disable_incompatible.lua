require("__Ultracube__/scripts/lib")

-- Whitelisted vanilla items/entities.
local vanilla_item_whitelist = make_set({
  "raw-fish",
  "water",
  "steam",
  "barrel",
  "sulfuric-acid",
  "uranium-ore",
  "uranium-235",
  "uranium-238",
  "uranium-fuel-cell",
  "depleted-uranium-fuel-cell",
  "stone",
  "stone-brick",
  "wood",
  "coal",
  "pump",
  "pipe",
  "pipe-to-ground",
  "iron-chest",
  "construction-robot",
  "passive-provider-chest",
  "active-provider-chest",
  "storage-chest",
  "buffer-chest",
  "requester-chest",
  "storage-tank",
  "steam-engine",
  "offshore-pump",
  "accumulator",
  "radar",
  "stone-wall",
  "gate",
  "concrete",
  "hazard-concrete",
  "refined-concrete",
  "refined-hazard-concrete",
  "landfill",
  "spidertron",
  "spidertron-remote",
  "car",
  "rail",
  "rail-support",
  "rail-ramp",
  "locomotive",
  "cargo-wagon",
  "fluid-wagon",
  "train-stop",
  "rail-signal",
  "rail-chain-signal",
  "transport-belt",
  "underground-belt",
  "splitter",
  "fast-transport-belt",
  "fast-underground-belt",
  "fast-splitter",
  "express-transport-belt",
  "express-underground-belt",
  "express-splitter",
  "small-lamp",
  "copper-cable",
  "sulfur",
  "battery",
  "explosives",
  "cliff-explosives",
  "flying-robot-frame",
  "red-wire",
  "green-wire",
  "constant-combinator",
  "arithmetic-combinator",
  "decider-combinator",
  "selector-combinator",
  "power-switch",
  "programmable-speaker",
  "display-panel",
  "small-electric-pole",
  "medium-electric-pole",
  "big-electric-pole",
  "substation",
  "inserter",
  "fast-inserter",
  "long-handed-inserter",
  "bulk-inserter",
  "heat-pipe",
  "heat-exchanger",
  "centrifuge",
  "night-vision-equipment",
  "exoskeleton-equipment",
  "battery-mk2-equipment",
  "personal-roboport-mk2-equipment",
  "fission-reactor-equipment",
  "parameter-0",
  "parameter-1",
  "parameter-2",
  "parameter-3",
  "parameter-4",
  "parameter-5",
  "parameter-6",
  "parameter-7",
  "parameter-8",
  "parameter-9",
})

local entity_prototypes = {
  "lab",
  "inserter",
  "transport-belt",
  "underground-belt",
  "loader-1x1",
  "splitter",
  "furnace",
  "assembling-machine",
  "mining-drill",
  "construction-robot",
  "logistic-robot",
  "unit",
  "unit-spawner",
  "turret",
  "combat-robot",
  "cargo-pod",
  "temporary-container",
}

local item_prototypes = {
  "item",
  "item-with-entity-data",
  "ammo",
  "capsule",
  "gun",
  "module",
  "spidertron-remote",
  "armor",
  "tool",
  "repair-tool",
  "rail-planner",
  "artillery-wagon",
}

local function has_prefix(s)
  return s and starts_with(s, "cube-")
end

local function add_prefix(s)
  if has_prefix(s) then
    return s
  elseif s then
    return "cube-" .. s
  else
    return nil
  end
end

local function is_compatible(t)
  return t and (has_prefix(t.name) or has_prefix(t.order) or has_prefix(t.subgroup))
end

local function is_compatible_recipe(t)
  return t and (is_compatible(t) or has_prefix(t.category))
end

local function is_compatible_item(t)
  return t and (is_compatible(t) or is_compatible_recipe(data.raw.recipe[t.name]))
end

local function is_compatible_entity(t)
  return t and (is_compatible(t) or is_compatible_item(data.raw.item[t.name]))
end

for _, v in ipairs(entity_prototypes) do
  for _, t in pairs(data.raw[v]) do
    if vanilla_item_whitelist[t.name] or is_compatible_entity(t) then
      t.order = add_prefix(t.order)
    else
      t.next_upgrade = nil
      t.hidden = true
    end
  end
end

for _, v in ipairs(item_prototypes) do
  for _, t in pairs(data.raw[v]) do
    if vanilla_item_whitelist[t.name] or is_compatible_item(t) then
      t.order = add_prefix(t.order)
    else
      t.hidden = true
    end
  end
end

for _, t in pairs(data.raw.fluid) do
  if vanilla_item_whitelist[t.name] or is_compatible_item(t) then
    t.order = add_prefix(t.order)
  else
    t.hidden = true
  end
end

for _, t in pairs(data.raw.recipe) do
  if is_compatible_recipe(t) then
    t.order = add_prefix(t.order)
  else
    t.enabled = false
    t.hide_from_signal_gui = true
  end
end
