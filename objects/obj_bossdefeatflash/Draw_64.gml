draw_set_color(c_white);
draw_set_alpha(fadealpha);
//draw_rectangle(0, 0, __view_get(e__VW.XView, 0), __view_get(e__VW.YView, 0), false); //?
draw_rectangle(0, 0, 
	camera_get_view_width(view_camera[0]),
	camera_get_view_height(view_camera[0]),
	false);
draw_set_alpha(1);
