if (!place_meeting(x, y, obj_transformbarrel) && !instance_exists(obj_transformbarrel) && !point_in_rectangle(x, y, camera_get_view_x(view_camera[0]) - 50, camera_get_view_y(view_camera[0]), camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) + 50, camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])) && obj_player.barrel == 0 && !instance_exists(obj_barrelfloat))
    instance_create(x, y, obj_transformbarrel);
