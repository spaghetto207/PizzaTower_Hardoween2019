with (other.id)
{
	if (obj_player.character == "P")
		sprite_index = choose(spr_shroomcollect, spr_tomatocollect, spr_cheesecollect, spr_sausagecollect, spr_pineapplecollect);
	else
		sprite_index = choose(spr_halloweencollectibles1, spr_halloweencollectibles2, spr_halloweencollectibles3, spr_halloweencollectibles4, spr_halloweencollectibles5);
    image_speed = 0.35;
    global.collected = 0;
    global.collectsound = 0;
    depth = 4;
}

if (obj_player.character == "S")
    sprite_index = spr_snickcollectible1;
