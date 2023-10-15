-- This is the prototype file for the item niter
-- Create the niter object in the table FluidForge, this object will be used to append to the main process using data:extend 
FluidForge.items.niter = 
{
    name = "niter", -- Name of the item
    type = "item", -- Type of the item
    stack_size=200, -- Stack size of the item
    icon_size=64, -- This relates to the size expected by the game for the icon you provide, it is always a square by default so 64 is 64x64 
                  -- and the game will not load with a differnt icon size to the acutal size of the icon.
    tint = {r = 0.34, g = 0.9, b = 0.81}, -- This is the tint that is applied to the item when in the world
    icon = "__FluidForge__/ImageSource/items/niter.png", -- This is the file path to the sprite of the icon, __modId__ relates to the root mod folder.
}

local recipe = table.deepcopy(data.raw["recipe"]["heavy-armor"]) -- Copy the recipe table so I do not have to make the defaults
recipe.enabled = true -- governs when the recipe is enabled or not
recipe.name = "niter" -- name of the recipe
 recipe.ingredients = {{"copper-plate",200},{"steel-plate",50}} -- What the recipe costs
recipe.result = "niter" -- This returns the item id of the item the recipe is to make

data:extend{FluidForge.items.niter,recipe} -- This inserts the data into the prototypes phase of game loading