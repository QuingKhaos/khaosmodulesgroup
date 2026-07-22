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
