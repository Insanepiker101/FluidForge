-- Init items 
-- In this section all the recipe Category prototypes are created and added to the FluidForge.items table for later indexing.
-- Refer to prototypes.items.item_constructor for details on how to use this function
FluidForge.items.stone_dust = item_constructor("stone_dust", 200, 64, {r = 0.34, g = 0.9, b = 0.81}, "__FluidForge__/ImageSource/items/stone_dust.png", nil)
FluidForge.items.coal_ore_dust = item_constructor("coal_ore_dust", 200, 64, {r = 0, g = 0, b = 1, a=0.3}, "__FluidForge__/ImageSource/items/coal_ore_dust.png", nil)
FluidForge.items.coke_dust = item_fuel_constructor("coke_dust", 200, 64, "__FluidForge__/ImageSource/items/coke_dust.png", "chemical", "5MJ", 0.3, {r=1, g=0, b=0, a=0.2})
FluidForge.items.iron_ore_dust = item_constructor("iron_ore_dust", 200, 64, {r = 0, g = 0, b = 1, a=0.3}, "__FluidForge__/ImageSource/items/iron_ore_dust.png", nil)
FluidForge.items.copper_ore_dust = item_constructor("copper_ore_dust", 200, 64, {r = 0, g = 0, b = 1, a=0.3}, "__FluidForge__/ImageSource/items/copper_ore_dust.png", nil)
FluidForge.items.crusheritem = item_constructor("crusher", 10, 128, {r = 0.34, g = 0.9, b = 0.81}, "__FluidForge__/ImageSource/items/crusher.png", "crusher")