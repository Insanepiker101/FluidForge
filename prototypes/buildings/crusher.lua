-- This is the prototype file for the building crusher
-- Create the crusher table in the table FluidForge.buildings, this table will be used to append to the main process using data:extend 
FluidForge.buildings.crusherbuilding = 
{
    name = "crusher",
    type= "assembling-machine",
    icon = "__FluidForge__/ImageSource/items/crusher.png",
    icon_size = 128,
    crafting_categories = {"crushed"},
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 1, result = "crusher" },
    fast_replaceable_group = "crusher",
    max_health = 300,
    dying_explosion = "medium-explosion",
    collision_box = { { -2, -3 }, { 2, 3 } },
    selection_box = { { -2, -3 }, { 2, 3 } },
    drawing_box = { { -2, -3 }, { 2, 3 } },
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
            width = 187,
            height = 128*2+20,
            line_length = 4,
            frame_count = 4,
            animation_speed = 0.1,
          },
          {
          filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1-shadow.png",
          priority = "high",
          width = 187,
          height = 128*2+20,
          repeat_count = 4,
          animation_speed = 0.1,
          draw_as_shadow = true,
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