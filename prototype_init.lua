
-- Recipe Ingredient tables
-- This is where the Ingredient tables for the recipes are created and organised
local ore_crushing = 10
local dust_output = 1
local stone_crushing_ingredients = {{ type = "item", name = "stone", amount = ore_crushing }}
local coal_ore_crushing_ingredients = {{ type = "item", name = "coal", amount = ore_crushing }}
local coal_ore_smelting_ingredients = {{ type = "item", name = "coal_ore_dust", amount = ore_crushing }}
local iron_ore_crushing_ingredients = {{ type = "item", name = "iron-ore", amount = ore_crushing }}
local iron_ore_dust_smelting_ingredients = {{ type = "item", name = "iron_ore_dust", amount = dust_output }}
local copper_ore_crushing_ingredients = {{ type = "item", name = "copper-ore", amount = ore_crushing }}
local copper_ore_dust_smelting_ingredients = {{ type = "item", name = "copper_ore_dust", amount = dust_output }}

local crusher_ingredients = {{ type = "item", name = "iron-plate", amount = 200 }, { type = "item", name = "copper-plate", amount = 200 }}


-- Recipe Result tables
-- This is where the result tables for the recipes are created and organised
local stone_crushing_results = {{ type = "item", name = "stone_dust", amount = 5 },}
local crusher_results = {{ type = "item", name = "crusher", amount = 1 },}
local coal_ore_crushing_results = {{ type = "item", name = "coal_ore_dust", amount = 20 },}
local coal_ore_smelting_results = {{ type = "item", name = "coke_dust", amount = 8 },}
local iron_ore_crushing_results = {{ type = "item", name = "iron_ore_dust", amount = 20 },}
local iron_ore_dust_smelting_results = {{ type = "item", name = "iron-plate", amount = 1 },}
local copper_ore_crushing_results = {{ type = "item", name = "copper_ore_dust", amount = 20 },}
local copper_ore_dust_smelting_results = {{ type = "item", name = "copper-plate", amount = 1 },}


-- Init items 
-- In this section all the recipe Category prototypes are created and added to the FluidForge.items table for later indexing.
-- Refer to prototypes.items.item_constructor for details on how to use this function
FluidForge.items.stone_dust = item_constructor("stone_dust", 200, 64, {r = 0.34, g = 0.9, b = 0.81}, "__FluidForge__/ImageSource/items/stone_dust.png", nil)
FluidForge.items.coal_ore_dust = item_constructor("coal_ore_dust", 200, 64, {r = 0, g = 0, b = 1, a=0.3}, "__FluidForge__/ImageSource/items/coal_ore_dust.png", nil)
FluidForge.items.coke_dust = item_fuel_constructor("coke_dust", 200, 64, "__FluidForge__/ImageSource/items/coke_dust.png", "chemical", "5MJ", 0.3, {r=1, g=0, b=0, a=0.2})
FluidForge.items.iron_ore_dust = item_constructor("iron_ore_dust", 200, 64, {r = 0, g = 0, b = 1, a=0.3}, "__FluidForge__/ImageSource/items/iron_ore_dust.png", nil)
FluidForge.items.copper_ore_dust = item_constructor("copper_ore_dust", 200, 64, {r = 0, g = 0, b = 1, a=0.3}, "__FluidForge__/ImageSource/items/copper_ore_dust.png", nil)
FluidForge.items.crusheritem = item_constructor("crusher", 10, 128, {r = 0.34, g = 0.9, b = 0.81}, "__FluidForge__/ImageSource/items/crusher.png", "crusher")


-- Init Recipe Category
-- In this section all the recipe Category prototypes are created and added to the FluidForge.recipe_category table for later indexing. This makes use of the prototypes.recipes.recipe_constructor which the hold the functions
-- Refer to prototypes.recipes.recipe_constructor for details on how to use this function
FluidForge.recipe_category.crushed = recipe_category("crushing", "b-a")
FluidForge.recipe_category.burning = recipe_category("burning", "b-a")

-- Init recipe
-- In this section all the recipe prototypes are created and added to the FluidForge.recipes table for later indexing. This makes use of the prototypes.recipes.recipe_constructor which the hold the functions
-- Refer to prototypes.recipes.recipe_constructor for details on how to use this function
FluidForge.recipes.stone_dust = recipe_prototype("Stone Crushing", "crushing", "sarah-products", true, 30, stone_crushing_ingredients, stone_crushing_results, "stone_dust", 32)
FluidForge.recipes.coal_ore_dust = recipe_prototype("Coal Crushing", "crushing", "sarah-products", true, 10, coal_ore_crushing_ingredients, coal_ore_crushing_results, "coal_ore_dust", 32)
FluidForge.recipes.coal_ore_dust_smelting = recipe_prototype("Coal Ore Coking", "smelting", "sarah-products", true, 1, coal_ore_smelting_ingredients, coal_ore_smelting_results, "coke_dust", 32)
FluidForge.recipes.iron_ore_dust = recipe_prototype("Iron Ore Crushing", "crushing", "sarah-products", true, 10, iron_ore_crushing_ingredients, iron_ore_crushing_results, "iron_ore_dust", 32)
FluidForge.recipes.iron_ore_dust_smelting = recipe_prototype("Iron Ore Smelting", "smelting", "sarah-products", true, 1, iron_ore_dust_smelting_ingredients, iron_ore_dust_smelting_results, "iron-plate", 32)
FluidForge.recipes.copper_ore_dust = recipe_prototype("Copper Ore Crushing", "crushing", "sarah-products", true, 10, copper_ore_crushing_ingredients, copper_ore_crushing_results, "copper_ore_dust", 32)
FluidForge.recipes.copper_ore_dust_smelting = recipe_prototype("Iron Ore Smelting", "smelting", "sarah-products", true, 1, copper_ore_dust_smelting_ingredients, copper_ore_dust_smelting_results, "copper-plate", 32)
FluidForge.recipes.crusher = recipe_prototype("Crusher 1", "basic-crafting", "sarah-products", true, 30, crusher_ingredients, crusher_results, "crusher", 128)


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