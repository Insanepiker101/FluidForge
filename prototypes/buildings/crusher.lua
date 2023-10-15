-- This is the prototype file for the item niter
-- Create the crusher object in the table FluidForge, this object will be used to append to the main process using data:extend 
FluidForge.crusheritem = 
{
    name = "crusher", -- Name of the item
    type = "item", -- Type of the item
    stack_size=20, -- Stack size of the item
    icon_size=128, -- This relates to the size expected by the game for the icon you provide, it is always a square by default so 64 is 64x64 
                  -- and the game will not load with a differnt icon size to the acutal size of the icon.
    tint = {r = 0.34, g = 0.9, b = 0.81}, -- This is the tint that is applied to the item when in the world
    icon = "__FluidForge__/ImageSource/items/crusher.png", -- This is the file path to the sprite of the icon, __modId__ relates to the root mod folder.
    subgroup = "sarah-products",
    place_result = "crusher",
}
FluidForge.crusherbuilding = 
{
    name = "crusher",
    type= "assembling-machine",
    icon = "__FluidForge__/ImageSource/items/crusher.png",
    icon_size = 128,
    crafting_categories = {"basic-crafting"},
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 1, result = "crusher" },
    fast_replaceable_group = "crusher",
    max_health = 300,
    dying_explosion = "medium-explosion",
    collision_box = { { -0, -0 }, { 0, 0 } },
    selection_box = { { -0, -0 }, { 0, 0 } },
    drawing_box = { { -0, -0 }, { 0, 0 } },
    module_specification = 
    {
        module_slots = 0,
    },
      crafting_speed = 1,
    energy_source = 
    {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.03 * 60,
      },
      energy_usage = "100kW",
      animation = {
        layers = {
          {
            filename = "__FluidForge__/ImageSource/buildings/crusher.png",
            priority = "high",
            width = 128,
            height = 128,
            line_length = 4,
            frame_count = 4,
            animation_speed = 0.5,
            shift = util.by_pixel(0, -10),
          },
          {
          filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1-shadow.png",
          priority = "high",
          width = 128,
          height = 128,
          repeat_count = 4,
          animation_speed = 0.5,
          draw_as_shadow = true,
          shift = util.by_pixel(13.5, 9.5),
          },
        }
    },
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = {
        sound = { filename = "__base__/sound/assembling-machine-t1-1.ogg", volume = 0.45 },
        idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5,
    }
}

local recipe = table.deepcopy(data.raw["recipe"]["heavy-armor"]) -- Copy the recipe table so I do not have to make the defaults
    recipe.enabled = true -- governs when the recipe is enabled or not
    recipe.name = "crusher" -- name of the recipe
     recipe.ingredients = {{"copper-plate",200},{"steel-plate",50}} -- What the recipe costs
    recipe.result = "crusher" -- This returns the item id of the item the recipe is to make


data:extend{FluidForge.crusheritem, FluidForge.crusherbuilding, recipe}