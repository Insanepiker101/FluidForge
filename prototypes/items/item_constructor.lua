-- This is the prototype file for the item constructor

function item_constructor(itemname -- This is the name for the item. Note this is not the name you would see in game but a internal name that all things can refer too
    , stacksize, -- I would hope that this one is self explanatory, use a double for this
     iconsize, -- This relates to the size expected by the game for the icon you provide, it is always a square by default so 64 is 64x64 
     -- and the game will not load with a differnt icon size to the acutal size of the icon.
     itemtint, -- This is the tint that is applied to the item when in the world
     itemicon, -- This is the file path to the sprite of the icon, __modId__ relates to the root mod folder.
     placeresult
    )
return 
{
    name = itemname,
    type = "item",
    stack_size = stacksize,
    icon_size = iconsize,
    tint = itemtint,
    icon = itemicon,
    place_result = placeresult
}
end