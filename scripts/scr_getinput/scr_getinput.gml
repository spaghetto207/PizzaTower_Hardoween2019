function scr_getinput()
{
	if (instance_exists(obj_debugcontroller) && obj_debugcontroller.active)
        exit;
	
	gamepad_set_axis_deadzone(0, 0.4);
	key_up = keyboard_check(global.key_up) || gamepad_button_check(0, global.key_upC) || gamepad_axis_value(0, gp_axislv) < 0;
	key_up2 = keyboard_check_pressed(global.key_up) || gamepad_button_check_pressed(0, global.key_upC) || (gamepad_axis_value(0, gp_axislv) < -0.5 && stickpressed == 0);
	key_right = keyboard_check(global.key_right) || gamepad_button_check(0, global.key_rightC) || gamepad_axis_value(0, gp_axislh) > 0;
	key_right2 = keyboard_check_pressed(global.key_right) || gamepad_button_check_pressed(0, global.key_rightC) || (gamepad_axis_value(0, gp_axislh) > 0.5 && stickpressed == 0);
	key_left = -(keyboard_check(global.key_left) || gamepad_button_check(0, global.key_leftC) || gamepad_axis_value(0, gp_axislh) < 0);
	key_left2 = -(keyboard_check_pressed(global.key_left) || gamepad_button_check_pressed(0, global.key_leftC) || (gamepad_axis_value(0, gp_axislh) < -0.5 && stickpressed == 0));
	key_down = keyboard_check(global.key_down) || gamepad_button_check(0, global.key_downC) || gamepad_axis_value(0, gp_axislv) > 0;
	key_down2 = keyboard_check_pressed(global.key_down) || gamepad_button_check_pressed(0, global.key_downC) || (gamepad_axis_value(0, gp_axislv) > 0.5 && stickpressed == 0);
	key_jump = keyboard_check_pressed(global.key_jump) || gamepad_button_check_pressed(0, global.key_jumpC);
	key_jump2 = keyboard_check(global.key_jump) || gamepad_button_check(0, global.key_jumpC);
	key_slap = keyboard_check(global.key_slap) || gamepad_button_check(0, global.key_slapC);
	key_slap2 = keyboard_check_pressed(global.key_slap) || gamepad_button_check_pressed(0, global.key_slapC);
	key_taunt = keyboard_check(global.key_taunt) || gamepad_button_check(0, global.key_tauntC);
	key_taunt2 = keyboard_check_pressed(global.key_taunt) || gamepad_button_check_pressed(0, global.key_tauntC);
	key_attack = keyboard_check(global.key_attack) || gamepad_button_check(0, global.key_attackC) || gamepad_button_check(0, gp_face2) || gamepad_button_check(0, gp_shoulderrb);
	key_attack2 = keyboard_check_pressed(global.key_attack) || gamepad_button_check_pressed(0, global.key_attackC) || gamepad_button_check_pressed(0, gp_face2) || gamepad_button_check_pressed(0, gp_shoulderrb);
	key_shoot = keyboard_check(global.key_shoot) || gamepad_button_check(0, global.key_shootC);
	key_shoot2 = keyboard_check_pressed(global.key_shoot) || gamepad_button_check_pressed(0, global.key_shootC);
	key_start = keyboard_check_pressed(global.key_start) || gamepad_button_check_pressed(0, global.key_startC);
	key_escape = keyboard_check_pressed(vk_escape) || gamepad_button_check(0, gp_select);
	
	if ((gamepad_axis_value(0, gp_axislh) > 0.5 || gamepad_axis_value(0, gp_axislh) < -0.5) || (gamepad_axis_value(0, gp_axislv) > 0.5 || gamepad_axis_value(0, gp_axislv) < -0.5))
	    stickpressed = 1;
	else
	    stickpressed = 0;
	
	if (keyboard_check_pressed(vk_f1))
	{
		ini_open("saveData.ini");

		global.key_up = ini_read_string("ControlsKeys", "up", vk_up)  
		global.key_right = ini_read_string("ControlsKeys", "right", vk_right)
		global.key_left = ini_read_string("ControlsKeys", "left", vk_left)
		global.key_down = ini_read_string("ControlsKeys", "down", vk_down)
		global.key_jump = ini_read_string("ControlsKeys", "jump", ord("Z"))
		global.key_slap = ini_read_string("ControlsKeys", "slap", ord("X"))
		global.key_taunt = ini_read_string("ControlsKeys", "taunt", ord("C"))
		global.key_shoot = ini_read_string("ControlsKeys", "shoot", ord("A"))
		global.key_attack = ini_read_string("ControlsKeys", "attack", vk_shift)
		global.key_start = ini_read_string("ControlsKeys", "start", vk_escape)


		global.key_upC = ini_read_string("ControllerButton", "up", gp_padu)
		global.key_rightC = ini_read_string("ControllerButton", "right", gp_padr)
		global.key_leftC = ini_read_string("ControllerButton", "left", gp_padl)
		global.key_downC = ini_read_string("ControllerButton", "down", gp_padd)
		global.key_jumpC = ini_read_string("ControllerButton", "jump", gp_face1)
		global.key_slapC = ini_read_string("ControllerButton", "slap", gp_face3)
		global.key_tauntC = ini_read_string("ControllerButton", "taunt", gp_face4)
		global.key_shootC = ini_read_string("ControllerButton", "shoot", gp_face2)
		global.key_attackC = ini_read_string("ControllerButton", "attack", gp_shoulderr)
		global.key_startC = ini_read_string("ControllerButton", "start", gp_start)

		ini_close();
	    with (obj_tv)
	    {
	        message = "CONTROLS RESET";
	        showtext = 1;
	        alarm[0] = 150;
	    }
	}
}
