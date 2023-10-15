--data.lua
if not FluidForge then
    FluidForge = {}
end
FluidForge.items = {}
FluidForge.buildings = {}
FluidForge.recipes = {}
data:extend({
    {
      type = "item-subgroup",
      name = "sarah-products",
      group = "intermediate-products",
      order = "b-a",
    },
    {
      type = "resource-category",
      name = "water",
    },
  })
  


require("item")
require("prototypes.items.niter")
require("prototypes.buildings.crusher")
require("prototypes.recipes.niter-recipe")
require("prototype_init")