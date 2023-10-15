--data.lua

-- I cannot remember why I added the if statment part tbh
if not FluidForge then
    FluidForge = {}
end

-- This is the main tables of the things included in the FluidForge mod
FluidForge.items = {}
FluidForge.buildings = {}
FluidForge.recipes = {}
FluidForge.recipe_category = {}


-- ToDo Remove this and add constructor for it
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


-- Item require
require("prototypes.items.item_constructor")

-- Building require
require("prototypes.buildings.crusher")

-- Recipe require
require("prototypes.recipes.recipe_constructor")

-- Init require
require("prototype_init")