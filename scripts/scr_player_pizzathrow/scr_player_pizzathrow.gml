function scr_player_pizzathrow()
{
	movespeed = 0;
	mach2 = 0;
	hsp = 0;
	xscale = -1;
	jumpstop = 0;
	
	if (global.shroomfollow == false && global.cheesefollow == false && global.tomatofollow == false && global.sausagefollow == false && global.pineapplefollow == false)
	{
	    state = states.normal;
	    landAnim = 0;
	    mach2 = 0;
	    image_index = 0;
	}
	
	if ((global.shroomfollow == true || global.cheesefollow == true || global.tomatofollow == true || global.sausagefollow == true || global.pineapplefollow == true) && !instance_exists(obj_toppinsacrifice))
	{
	    instance_create(x, y - 75, obj_toppinsacrifice);
	    sprite_index = spr_player_pizzathrow;
	}
	
	if (instance_exists(obj_toppinsacrifice))
	{
	    if (obj_toppinsacrifice.throwed == 0 && key_slap2)
	    {
	        obj_toppinsacrifice.hsp = -4;
	        obj_toppinsacrifice.throwed = 1;
	        obj_toppinsacrifice.vsp = -10;
	    }
	}
	
	if (key_slap2)
	    sprite_index = spr_player_pizzathrow2;
	
	if (floor(image_index) == 3)
	    sprite_index = spr_player_pizzathrow3;
	
	image_speed = 0.35;
}
