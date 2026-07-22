local lib = require("__khaosmodulesgroup__.prototypes.lib")

if mods["modules-t4"] then
  lib.update_subgroup("speed-module-4", "speed-module")
  lib.update_subgroup("efficiency-module-4", "efficiency-module")
  lib.update_subgroup("productivity-module-4", "productivity-module")

  if mods["quality"] then
    lib.update_subgroup("quality-module-4", "quality-module")
  end
end
