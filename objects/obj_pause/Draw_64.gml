if (pause == 1)
{
	draw_set_color(c_black);
	draw_rectangle(0, 0, camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]), false)
	draw_set_color(c_white);
    draw_sprite(spr_pausescreen, selected, 0, 0);
}