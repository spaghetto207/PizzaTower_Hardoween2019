view_visible[1] = true;
view_wport[1] = window_get_width();
view_yport[1] = 540;
view_hport[1] = 540;
view_hport[0] = 540;
view_yport[0] = 0;
camera_set_view_size(view_camera[0], 960, 270);
camera_set_view_size(view_camera[1], 960, 270);

event_inherited();