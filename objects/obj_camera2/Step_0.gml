view_visible[1] = true;
view_wport[1] = window_get_width();
view_yport[1] = 540;
view_hport[1] = 540;
view_hport[0] = 540;
view_yport[0] = 0;
camera_set_view_size(view_camera[0], 960, 270);
camera_set_view_size(view_camera[1], 960, 270);

if (room == rank_room || room == timesuproom || room == Realtitlescreen)
    visible = false;
else
    visible = true;

if (room == timesuproom)
    timestop = 1;

if (global.seconds == 0 && global.minutes == 0 && room != timesuproom && !instance_exists(obj_endlevelfade))
{
    obj_player2.state = states.timesup;
    room = timesuproom;
    obj_player2.image_index = 0;
}

if (global.seconds < 0)
{
    global.seconds = 59;
    global.minutes -= 1;
}

if (global.seconds > 59)
{
    global.minutes += 1;
    global.seconds -= 59;
}

if ((global.panic == true && global.minutes < 1) || obj_player2.sprite_index == spr_player_timesup)
{
    shake_mag = 2;
    shake_mag_acc = 3 / room_speed;
}
else if (global.panic == true && basement == 0)
{
    shake_mag = 2;
    shake_mag_acc = 3 / room_speed;
}

if (shake_mag > 0)
{
    shake_mag -= shake_mag_acc;
    
    if (shake_mag < 0)
        shake_mag = 0;
}

if (instance_exists(obj_player2) && obj_player2.state != states.timesup && obj_player2.state != states.gameover)
{
    var target = obj_player2;
	var cam_x = camera_get_view_x(view_camera[0]);
	var cam_y = camera_get_view_y(view_camera[0]);
    
    if (obj_player2.state == states.mach3 || obj_player2.state == states.machroll)
    {
        if (chargecamera > (obj_player2.xscale * 100))
            chargecamera -= 2;
        
        if (chargecamera < (obj_player2.xscale * 100))
            chargecamera += 2;
    }
    else
    {
        if (chargecamera > 0)
            chargecamera -= 2;
        
        if (chargecamera < 0)
            chargecamera += 2;
    }
    
	cam_x = (target.x - (camera_get_view_width(view_camera[0]) / 2)) + chargecamera;
    cam_y = target.y - (camera_get_view_height(view_camera[0]) / 2);
	  
    if (shake_mag != 0)
    {
        cam_x = (target.x - (camera_get_view_width(view_camera[0]) / 2)) + chargecamera;
        cam_y = (target.y - (camera_get_view_height(view_camera[0]) / 2)) + irandom_range(-shake_mag, shake_mag);
    }
	
    cam_x = clamp(cam_x, 0, room_width - camera_get_view_width(view_camera[0]));
	cam_y = clamp(cam_y, 0 + irandom_range(-shake_mag, shake_mag), (room_height - camera_get_view_height(view_camera[0])) + irandom_range(-shake_mag, shake_mag));
  
	camera_set_view_pos(view_camera[0], cam_x, cam_y);
}