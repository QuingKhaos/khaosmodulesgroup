local khaoslib_item_subgroup = require("__khaoslib__.prototypes.item-subgroup")
local lib = require("__khaosmodulesgroup__.prototypes.lib")

if mods["rigor-module"] then
  khaoslib_item_subgroup:load {type = "item-subgroup", name = "rigor-module", group = "modules", order = "f[rigor-module]"} :commit()

  lib.update_subgroup("rigor-module", "rigor-module")
  lib.update_subgroup("rigor-module-2", "rigor-module")
  lib.update_subgroup("rigor-module-3", "rigor-module")
end
