#macro event_order if ((!instance_exists(other) || other.object_index != obj_persistent)) exit

stepevent_order = [obj_player, obj_camera, obj_pause, obj_parallax, obj_baddiecollisionbox];
