-- This is the prototype file for the function to make recipe prototypes
-- Create the crusher object in the table FluidForge, this object will be used to append to the main process using data:extend 


-- Recipe Ingredient tables
-- This is where the tables for the recipes are created and organised
local niter_crushing_ingredients = {{ type = "item", name = "stone", amount = 5 },}


-- Recipe Result tables
-- This is where the result tables for the recipes are created and organised
local niter_crushing_results = {{ type = "item", name = "niter", amount = 5 },}


-- Init items 
-- In this section all the recipe Category prototypes are created and added to the FluidForge.items table for later indexing.
-- Refer to prototypes.items.item_constructor for details on how to use this function
FluidForge.items.niter = item_constructor("niter", 20, 64, {r = 0.34, g = 0.9, b = 0.81}, "__FluidForge__/ImageSource/items/niter.png")


-- Init Recipe Category
-- In this section all the recipe Category prototypes are created and added to the FluidForge.recipe_category table for later indexing. This makes use of the prototypes.recipes.recipe_constructor which the hold the functions
-- Refer to prototypes.recipes.recipe_constructor for details on how to use this function
FluidForge.recipe_category.crushed = recipe_category("crushed", "b-a")


-- Init recipe
-- In this section all the recipe prototypes are created and added to the FluidForge.recipes table for later indexing. This makes use of the prototypes.recipes.recipe_constructor which the hold the functions
-- Refer to prototypes.recipes.recipe_constructor for details on how to use this function
FluidForge.recipes.niter = recipe_prototype("Niter Crushing", "crushed", "sarah-products", true, 30, niter_crushing_ingredients, niter_crushing_results, "niter", 32)


-- Loop over the table FluidForge.items and add it to the game
for k, v in pairs(FluidForge.items) do
    data:extend{FluidForge.items[k]}
end


-- Loop over the table FluidForge.recipe_category and add it to the game
for k, v in pairs(FluidForge.recipe_category) do
    data:extend{FluidForge.recipe_category[k]}
end


-- Loop over the table FluidForge.recipes and add it to the game
for k, v in pairs(FluidForge.recipes) do
    data:extend{FluidForge.recipes[k]}
end