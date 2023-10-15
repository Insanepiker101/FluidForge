-- This is the prototype file for the building crusher
-- Create the crusher table in the table FluidForge.buildings, this table will be used to append to the main process using data:extend 
FluidForge.buildings.crusherbuilding = 
{
    name = "crusher", -- This is the name of the building
    type= "assembling-machine", -- This is the type of the building
    icon = "__FluidForge__/ImageSource/items/crusher.png", -- This refers to the icon in the...
    icon_size = 128, -- This is the icon size remember it is always a square this icon size is I.e; 128x128. And will crash if the image linked is differnt sized then this

    crafting_categories = {"crushing"}, -- This is the crafting_categories that the building works with,
                                      -- I.e; "crushed" is a custom crafting_categories that only contrains the crusher 
                                      -- and such only the crusher will have access to any recipes that are inserted into the tabl
    flags = { "placeable-neutral", "player-creation" }, -- The flags Determines the default force when placing entities in the map editor and using the AUTO option for the force.
                                                        -- player-creation flag makes it possible for biters to attack the building
    minable = { mining_time = 1, result = "crusher" }, -- This defines the mining behaviors of the building mining_time is in seconds

    fast_replaceable_group = "crusher", -- This defines the replacement behaviors of the building, I.e; just like how you can quickly replace assembling-machine 1 with assembling-machine 2
    max_health = 300,
    crafting_speed = 1, -- This is the global crafting speed for the building
    dying_explosion = "medium-explosion", -- This defines the size of the dying_explosion

    collision_box = { { -2, -3 }, { 2, 3.5 } }, -- Specification of the entity collision boundaries. 
    selection_box = { { -2, -3 }, { 2, 3.5 } }, -- Specification of the entity selection area.
    drawing_box = { { -2, -3 }, { 2, 3.5 } }, -- Specification of space needed to see the whole entity. 

    module_specification = -- The number of module slots in this machine, and their icon positions.
    {
        module_slots = 0,
    },

    energy_source = -- Defines how the crafting machine is powered.
    {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.03 * 60,
    },

    energy_usage = "100kW", -- Sets how much energy this machine uses while crafting. 

    animation = 
    { -- This is an animation4way prototype
      layers = 
      {
        { -- This is an animation prototype
          filename = "__FluidForge__/ImageSource/buildings/crusher.png", -- The path to the sprite file to use.
          priority = "high",
          width = 187, -- Mandatory if size is not defined. This is the size of the image
          height = 128*2+20, -- Mandatory if size is not defined.
          line_length = 4, -- Specifies how many pictures are on each horizontal line in the image file. 
          frame_count = 4, -- idk what this is and how it works
          animation_speed = 0.1, -- Modifier of the animation playing speed, the default of 1 means one animation frame per tick (60 fps). 
        },

        {-- This is an animation prototype
          filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1-shadow.png", -- The path to the sprite file to use
          priority = "high",
          width = 187, -- Mandatory if size is not defined. This is the size of the image
          height = 128*2+20,  -- Specifies how many pictures are on each horizontal line in the image file. 
          repeat_count = 4, 
          animation_speed = 0.1, -- Modifier of the animation playing speed, the default of 1 means one animation frame per tick (60 fps). 
          draw_as_shadow = true, -- idk what this does but it makes it work so okay
        },
        }
    },

    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 }, -- This hopefully is self explanatory
    working_sound = -- Same for this
    {
        sound = { filename = "__base__/sound/assembling-machine-t1-1.ogg", volume = 0.45 },
        idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
        audible_distance_modifier = 0.5, -- This defines how the sound disapates over space
        apparent_volume = 2.5,
    }
}