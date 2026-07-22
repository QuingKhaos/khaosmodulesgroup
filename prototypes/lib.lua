local khaoslib_item = require("__khaoslib__.prototypes.item")
local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

--- @class KhaosModulesGroup.lib
local lib = {}

--- @param name string
--- @param subgroup data.ItemSubGroupID
function lib.update_subgroup(name, subgroup)
  khaoslib_item:load("module", name):set {subgroup = subgroup} :commit()
  khaoslib_recipe:load(name):set {subgroup = subgroup} :commit()
end

return lib
