/// @description pal_swap_init_system 
pal_swap_init_system(shd_pal_swapper);
if (!instance_exists(obj_cowboyhat))
	instance_create_depth(x, y, 0, obj_cowboyhat);

event_inherited();