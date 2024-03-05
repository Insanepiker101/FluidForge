-- This is the prototype file for the building crusher
-- Create the crusher table in the table FluidForge.buildings, this table will be used to append to the main process using data:extend 
FluidForge.buildings.oilgenbuilding = 
{
    name = "oilgen",
    type = "generator",
    icon = "__FluidForge__/ImageSource/items/crusher.png", -- This refers to the icon in the...
    icon_size = 128, -- This is the icon size remember it is always a square this icon size is I.e; 128x128. And will crash if the image linked is differnt sized then this
    flags = { "placeable-neutral", "player-creation" }, -- The flags Determines the default force when placing entities in the map editor and using the AUTO option for the force.
                                                        -- player-creation flag makes it possible for biters to attack the building
    minable = { mining_time = 1, result = "oilgen" }, -- This defines the mining behaviors of the building mining_time is in seconds
    
    energy_source = -- energy source of steam engine
    {
      type = "electric",
      usage_priority = "secondary-output"
    },
    fluid_box =
    {
      base_area = 1,
      height = 2,
      base_level = -1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {type = "input-output", position = {-2.5, 0.5}},
        {type = "input-output", position = {2.5, 0.5}}
      },
      production_type = "input-output"
    },
    effectivity = 0.9,
    fluid_usage_per_tick = 10,
    maximum_temperature = 100,
    burns_fluid = true,
    max_power_output = "20MW",


    fast_replaceable_group = "oilgen", -- This defines the replacement behaviors of the building, I.e; just like how you can quickly replace assembling-machine 1 with assembling-machine 2
    max_health = 300,
    dying_explosion = "medium-explosion", -- This defines the size of the dying_explosion

    collision_box = { { -2, -2 }, { 2, 3 } }, -- Specification of the entity collision boundaries. 
    selection_box = { { -2, -2 }, { 2, 3 } }, -- Specification of the entity selection area.
    drawing_box = { { -2, -3 }, { 2, 3.5 } }, -- Specification of space needed to see the whole entity. 
    horizontal_animation  = 
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
          height = 128*2+20,   
          repeat_count = 4, -- Specifies how many pictures are on each horizontal line in the image file.
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