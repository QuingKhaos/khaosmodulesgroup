local lib = require("__khaosmodulesgroup__.prototypes.lib")

lib.update_subgroup("speed-module", "speed-module")
lib.update_subgroup("speed-module-2", "speed-module")
lib.update_subgroup("speed-module-3", "speed-module")

lib.update_subgroup("efficiency-module", "efficiency-module")
lib.update_subgroup("efficiency-module-2", "efficiency-module")
lib.update_subgroup("efficiency-module-3", "efficiency-module")

lib.update_subgroup("productivity-module", "productivity-module")
lib.update_subgroup("productivity-module-2", "productivity-module")
lib.update_subgroup("productivity-module-3", "productivity-module")

if mods["space-age"] then
  lib.update_subgroup("quality-module", "quality-module")
  lib.update_subgroup("quality-module-2", "quality-module")
  lib.update_subgroup("quality-module-3", "quality-module")
end
