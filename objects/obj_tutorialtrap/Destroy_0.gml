repeat(4)
	instance_create(x + 16, y, obj_debris);
tile_layer_delete_at(1, x, y);
var backname = "Compatibility_Background_2_bg_trapscreen";
var backid = layer_background_get_id(layer_get_id(backname));
layer_background_change(__backid, trapscreen2);  