require("prototypes.scripts.remove_unused")
require("prototypes.scripts.autoplace")

-- TODO: useless coal from decorations.
-- TODO: output buffer on rare metals / matter, etc, can it be fixed?
-- TODO: layered icons look bad when disabled. Bake them.
-- TODO: upgrade graphics for (particularly) boiler, maybe also pipes/tanks/steam engine?
-- TODO: tech cost review.

-- TODO: make replication-based widgets/contemplation depend on something additional?
-- TODO: all items seem to be unlocked in FNEI/signals etc without researching them.

-- TODO: icon reworks
--       - advanced engine tech graphic + name (?)
--       - tar processing/reclamation icons, + tech graphic
--       - emotional synthesis icon + tech graphic
--       - roboport tech graphic
-- TODO: renames
--       - unstable gas? heavy/light oil (essential oils?)
-- TODO: recipe crafting_machine_tint

-- TODO: science 3 techs:
--       bigger boxes?

-- TODO: allow voiding calcium to get metal going earlier
--       new intermediate: batteries (for various things)
--       remove fuel values or categories from wood/coal?
--       sort vehicle fuel in general; cube can be used in trains for lols
--       technology allows (cube only) speed/acceleration bonus to work from cargo

-- TODO: little things
--       walls/gates; cliff explosives; landfill; repair packs
--       extend upgrade techs
--       - lab speed + increase times (?)

-- TODO: think about reintroducing biters?
-- TODO: storylore tooltips!
-- TODO: after science 2, split into 3 (?) different focus trees that interlink & eventually merge together.
--       - 1: maybe scale-focused, cube scale puzzles, maybe
--       - 2: maybe power / energy / byproducts-focused?
--       - 3: either - cube logistics puzzles, many interlinked recipes with short time and low amounts or
--            (if possible) computation via recipes, crypts and locks, decoder via furnaces with randomized hidden changing recipes?
-- TODO: (2) some cube process that outputs random / multiple products.
-- TODO: (1/2?) ultradense constituent and reassembly. Something with weird ratios. Need to recharge many constituents at once?
-- TODO: (1/3?) something where cube splits in 2 (joy + anguish?), which are used for different things, then recombined.
--              can have some recipes that make old things e.g. matter units, but not strict replacement
-- TODO: (1?) something that forces cube to go far away on train (cube powered miner, basically)
--       - possibly: re-add coal, but only far away, make a way more efficient coal/wood->tar recipe
-- TODO: (2?) some sort of weird biter farmer spawning synthesis.
-- TODO: (3) late game forbidden tech. Experiments on cube. Suffering. Regret.
-- TODO: (1) some sort of teleport cube logistics option.
-- TODO: (2) (further on) basic antimatter unit. Basic dark matter unit. Matter annihilation (matter + antimatter) -> energy!
-- TODO: (1) eventually, modules.

require("prototypes.equipment")
require("prototypes.fluids")
require("prototypes.fuel_categories")
require("prototypes.item_groups")
require("prototypes.items")
require("prototypes.items_equipment")
require("prototypes.items_resources")
require("prototypes.items_production")
require("prototypes.items_science")
require("prototypes.recipe_categories")
require("prototypes.recipes_equipment")
require("prototypes.recipes_fluids")
require("prototypes.recipes_intermediates")
require("prototypes.recipes_logistics")
require("prototypes.recipes_production")
require("prototypes.recipes_resources")
require("prototypes.recipes_science")
require("prototypes.recipes_synthesis")
require("prototypes.resources")
require("prototypes.technology_0")
require("prototypes.technology_1")
require("prototypes.technology_2")
require("prototypes.technology_upgrades")
require("prototypes.tweaks")

require("prototypes.entities.boiler")
require("prototypes.entities.chemical_plant")
require("prototypes.entities.crusher")
require("prototypes.entities.electric_furnace")
require("prototypes.entities.electric_mining_drills")
require("prototypes.entities.explosions")
require("prototypes.entities.fabricator")
require("prototypes.entities.fuel_refinery")
require("prototypes.entities.greenhouse")
require("prototypes.entities.lab")
require("prototypes.entities.recovery_bay")
require("prototypes.entities.remnants")
require("prototypes.entities.roboport")
require("prototypes.entities.robots")
require("prototypes.entities.synthesizer")
require("prototypes.entities.ultradense_furnace")

for _, t in pairs(data.raw.technology) do
  t.enabled = false
end
