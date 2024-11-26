if (room == rank_room || room == timesuproom)
    visible = false;

if (obj_player.state == states.pizzathrow)
    visible = false;

if (sprite_index == spr_intro && floor(image_index) == (image_number - 1))
    sprite_index = spr_idle;