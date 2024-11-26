repeat (8)
	instance_create(x, y, obj_slimedebris);

scr_sound(sfx_pephurt);
other.state = states.cheesepep;
other.sprite_index = spr_cheesepep_intro;
instance_destroy();
