-- Loop over the table FluidForge.items and add it to the game
for key, value in pairs(FluidForge.items) do
    data:extend{FluidForge.items[key]}
end


-- Loop over the table FluidForge.items and add it to the game
for key, value in pairs(FluidForge.buildings) do
    data:extend{FluidForge.buildings[key]}
end


-- Loop over the table FluidForge.recipe_category and add it to the game
for key, value in pairs(FluidForge.recipe_category) do
    data:extend{FluidForge.recipe_category[key]}
end


-- Loop over the table FluidForge.recipes and add it to the game
for key, value in pairs(FluidForge.recipes) do
    data:extend{FluidForge.recipes[key]}
end