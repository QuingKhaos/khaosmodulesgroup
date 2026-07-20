local khaoslib_item = require("__khaoslib__.prototypes.item")
local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")
local khaoslib_item_group = require("__khaoslib__.prototypes.item-group")
local khaoslib_item_subgroup = require("__khaoslib__.prototypes.item-subgroup")


khaoslib_item_group:load {
  type = "item-group",
  name = "modules",
  order = "bm[modules]",
} :set_icons {{icon = "__base__/graphics/technology/module.png", icon_size = 256}}
  :commit()

khaoslib_item_subgroup:load("module"):set {group = "modules", order = "a[module]"} :commit()
khaoslib_item_subgroup:load {type = "item-subgroup", name = "speed-module", group = "modules", order = "b[speed-module]"} :commit()
khaoslib_item_subgroup:load {type = "item-subgroup", name = "efficiency-module", group = "modules", order = "c[efficiency-module]"} :commit()
khaoslib_item_subgroup:load {type = "item-subgroup", name = "productivity-module", group = "modules", order = "d[productivity-module]"} :commit()
khaoslib_item_subgroup:load {type = "item-subgroup", name = "quality-module", group = "modules", order = "e[quality-module]"} :commit()

--- @param name string
--- @param subgroup data.ItemSubGroupID
local function update_subgroup(name, subgroup)
  khaoslib_item:load("module", name):set {subgroup = subgroup} :commit()
  khaoslib_recipe:load(name):set {subgroup = subgroup} :commit()
end

update_subgroup("speed-module", "speed-module")
update_subgroup("speed-module-2", "speed-module")
update_subgroup("speed-module-3", "speed-module")

update_subgroup("efficiency-module", "efficiency-module")
update_subgroup("efficiency-module-2", "efficiency-module")
update_subgroup("efficiency-module-3", "efficiency-module")

update_subgroup("productivity-module", "productivity-module")
update_subgroup("productivity-module-2", "productivity-module")
update_subgroup("productivity-module-3", "productivity-module")

if mods["space-age"] then
  update_subgroup("quality-module", "quality-module")
  update_subgroup("quality-module-2", "quality-module")
  update_subgroup("quality-module-3", "quality-module")
end
