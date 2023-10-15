-- This is the prototype file for the function to make recipe prototypes
-- Create the crusher object in the table FluidForge, this object will be used to append to the main process using data:extend 
local niter_crushing_ingredients = {{ type = "item", name = "stone", amount = 5 },}
local niter_crushing_results = {{ type = "item", name = "niter", amount = 5 },}



FluidForge.recipes.niter = recipe_prototype("Niter Crushing", "advanced-crafting", "sarah-products", true, 30, niter_crushing_ingredients, niter_crushing_results, "niter", 32)


for k, v in pairs(FluidForge.recipes) do
    data:extend{FluidForge.recipes[k]}
end