if (obj_player.character == "P")
	sprite_index = choose(spr_pizzacollect, spr_pizzacollect2, spr_pizzacollect3);
else
	sprite_index = choose(spr_pizzacollect_halloween, spr_pizzacollect2_halloween, spr_pizzacollect3_halloween);
image_speed = 0.35;

if (obj_player.character == "S")
    sprite_index = spr_snickcollectible2;
