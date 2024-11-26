if (ds_list_find_index(global.saveroom, id) == -1)
{
	repeat (4)
		instance_create(x + 16, y, obj_debris);
    tile_layer_delete_at(1, x, y);
    scr_soundeffect(sfx_breakblock1, sfx_breakblock2);
    ds_list_add(global.saveroom, id);
}
