var _cam_x, _cam_y;

event_order;

_cam_x = camera_get_view_x(view_camera[0]);
_cam_y = camera_get_view_y(view_camera[0]);
layer_x("Backgrounds_1", _cam_x * 0.25);
layer_y("Backgrounds_1", _cam_y * 0.25);
layer_x("Backgrounds_2", _cam_x * 0.15);
layer_y("Backgrounds_2", _cam_y * 0.15);
layer_x("Backgrounds_3", _cam_x * 0.05);
layer_y("Backgrounds_3", _cam_y * 0.05);
layer_x("Backgrounds_Ground1", _cam_x * 0.25);
layer_x("Backgrounds_Ground2", _cam_x * 0.25);
