draw_set_alpha(fadealpha);
draw_set_color(c_white);
draw_rectangle(0, 0, 
	camera_get_view_width(view_camera[0]),
	camera_get_view_height(view_camera[0]),
	false);
draw_set_alpha(1);
