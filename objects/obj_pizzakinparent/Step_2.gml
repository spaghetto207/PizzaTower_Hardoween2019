if (sprite_index != spr_intro)
{
    image_alpha = obj_player.image_alpha;
    
    if (obj_player.hsp != 0)
        sprite_index = spr_run;
    else
        sprite_index = spr_idle;
    
    depth = -6;
    image_xscale = obj_player.xscale;
}

if (global.playerhealth == 1)
    sprite_index = spr_panic;