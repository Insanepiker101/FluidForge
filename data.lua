--data.lua
if not FluidForge then
    FluidForge = {}
end
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
require("prototypes.niter")
require("prototypes.fire-armor")