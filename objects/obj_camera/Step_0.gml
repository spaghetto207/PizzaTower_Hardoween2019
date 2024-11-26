event_order;

if (room == rank_room || room == timesuproom || room == Realtitlescreen)
    visible = false;
else
    visible = true;

if (global.combo >= 10)
{
    global.SAGEcombo10 = 1;
    ini_open("saveData.ini");
    ini_write_string("SAGE2019", "combo10", 1);
    ini_close();
}

if (room == timesuproom)
    timestop = 1;

if (global.seconds <= 0 && global.minutes <= 0 && ded == 0)
{
    alarm[1] = -1;
    alarm[2] = 3;
    audio_stop_all();
    ded = 1;
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

if ((global.panic == true && global.minutes < 1) || obj_player.sprite_index == spr_player_timesup)
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

if (instance_exists(target) && target.state != states.timesup && target.state != states.gameover)
{
    var cam_x = target.x - (camera_get_view_width(view_camera[0]) / 2);
    var cam_y = target.y - (camera_get_view_height(view_camera[0]) / 2);
    
    if (target.state == states.mach3 || target.state == states.machroll)
    {
        if (chargecamera > (target.xscale * 100))
            chargecamera -= 2;
        
        if (chargecamera < (target.xscale * 100))
            chargecamera += 2;
    }
    else
    {
        if (chargecamera > 0)
            chargecamera -= 2;
        
        if (chargecamera < 0)
            chargecamera += 2;
    }
    
    cam_x += chargecamera;
    
    cam_x = clamp(cam_x, 0, room_width - camera_get_view_width(view_camera[0]));
    cam_y = clamp(cam_y, 0, room_height - camera_get_view_height(view_camera[0]));
    
    if (shake_mag != 0)
        cam_y += irandom_range(-shake_mag, shake_mag);
    
    camera_set_view_pos(view_camera[0], cam_x, cam_y);
}
