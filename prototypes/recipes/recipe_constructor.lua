-- This is the prototype file for the function to make recipe prototypes
-- Create the crusher object in the table FluidForge, this object will be used to append to the main process using data:extend 
function recipe_prototype(func_name -- This referse to the name of the recipe
    , func_category -- This is the crafting category that the recipe will belong too 
    , func_subgroup, -- This is the subgroup of the recipe, this can be used to sort different recipes in the viewer as different orders can be used 
    func_enabled, -- This is the bool that controls if the recipe is enabled or not, note do not try to change this in the control.lua file as the game will not see the changed file
    func_energy_required, -- This is how much time the recipe takes for it to be crafted. Must be greater then 0.001. The integer is how many seconds the recipe will take
    func_ingredients, -- This is a table containing all of the ingredients that the recipe needs supports fluids and non fluids 
    func_results, -- This is a table containing all of the results for the recipe needs supports fluids and non fluids
    func_main_product, -- This is the main product of the recipe and will be used for the icon
    func_icon_size -- This is the size of the icon
    )
return {
    type = "recipe",
    name = func_name,
    category = func_category,
    subgroup = func_subgroup,
    enabled = func_enabled,
    energy_required = func_energy_required,
    ingredients = func_ingredients,
    results = func_results,
    always_show_products = true,
    main_product = func_main_product,
    icon_size = func_icon_size,
}
end

function recipe_category(func_name -- Name of the recipe category
    , func_order -- order of the category
)
return  
{
    type = "recipe-category",
    name = func_name,
    order = func_order,
}
end