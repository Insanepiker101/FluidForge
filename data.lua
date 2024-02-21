--data.lua

FluidForge = {}

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
require("prototypes.items.item_fuel_constructor")

-- Building require
require("prototypes.buildings.crusher")

-- Recipe require
require("prototypes.recipes.recipe_constructor")

-- Init require
require("factories.item_factory")
require("factories.recipe_factory")
require("prototype_init")
