depth = -500;

function string_split_list(argument0, argument1)
{
    var _current_str, _list, i, _char;
    
    argument0 += " ";
    _current_str = "";
    _list = ds_list_create();
    
    for (i = 1; i < (string_length(argument0) + 1); i++)
    {
        _char = string_char_at(argument0, i);
        
        if (_char != argument1)
        {
            _current_str += _char;
        }
        else
        {
            ds_list_add(_list, _current_str);
            _current_str = "";
        }
    }
    
    return _list;
}
function function_overload(argument0, fnc)
{
    var _size;
    
    _size = ds_list_size(argument0);
    
    switch (_size - 1)
    {
        case -1:
            fnc();
            break;
        
        case 0:
            fnc(ds_list_find_value(argument0, 0));
            break;
        
        case 1:
            fnc(ds_list_find_value(argument0, 0), ds_list_find_value(argument0, 1));
            break;
        
        case 2:
            fnc(ds_list_find_value(argument0, 0), ds_list_find_value(argument0, 1), ds_list_find_value(argument0, 2));
            break;
        
        case 3:
            fnc(ds_list_find_value(argument0, 0), ds_list_find_value(argument0, 1), ds_list_find_value(argument0, 2), ds_list_find_value(argument0, 3));
            break;
        
        case 4:
            fnc(ds_list_find_value(argument0, 0), ds_list_find_value(argument0, 1), ds_list_find_value(argument0, 2), ds_list_find_value(argument0, 3), ds_list_find_value(argument0, 4));
            break;
        
        case 5:
            fnc(ds_list_find_value(argument0, 0), ds_list_find_value(argument0, 1), ds_list_find_value(argument0, 2), ds_list_find_value(argument0, 3), ds_list_find_value(argument0, 4), ds_list_find_value(argument0, 5));
            break;
        
        case 6:
            fnc(ds_list_find_value(argument0, 0), ds_list_find_value(argument0, 1), ds_list_find_value(argument0, 2), ds_list_find_value(argument0, 3), ds_list_find_value(argument0, 4), ds_list_find_value(argument0, 5), ds_list_find_value(argument0, 6));
            break;
    }
}
function DebugCommand(argument0, argument1, argument2, argument3) constructor
{
    command_id = argument0;
    description = argument1;
    format = argument2;
    func = argument3;
    
    Invoke = function(argument0)
    {
        if (argument0 != undefined)
            obj_debugcontroller.function_overload(argument0, func);
        else
            func();
    };
}

GIVEKEY = new DebugCommand("givekey", "", "givekey", function()
{
    global.key_inv = 1;
});
SETCOMBO = new DebugCommand("set_combo", "Set the combo", "set_combo <combo> <combotime:optional>", function(argument0, argument1)
{
    if (argument0 == undefined)
        exit;
    
    if (argument1 == undefined)
        argument1 = 60;
    
    global.combo = argument0;
    global.combotime = argument1;
});
ALLTOPPINS = new DebugCommand("alltoppins", "Adds all the toppins", "alltoppins", function()
{
    if (!instance_exists(obj_pizzakincheese))
        instance_create(obj_player1.x, obj_player1.y, obj_pizzakincheese);
    
    if (!instance_exists(obj_pizzakintomato))
        instance_create(obj_player1.x, obj_player1.y, obj_pizzakintomato);
    
    if (!instance_exists(obj_pizzakinsausage))
        instance_create(obj_player1.x, obj_player1.y, obj_pizzakinsausage);
    
    if (!instance_exists(obj_pizzakinpineapple))
        instance_create(obj_player1.x, obj_player1.y, obj_pizzakinpineapple);
    
    if (!instance_exists(obj_pizzakinshroom))
        instance_create(obj_player1.x, obj_player1.y, obj_pizzakinshroom);
    
    global.cheesefollow = true;
    global.tomatofollow = true;
    global.sausagefollow = true;
    global.pineapplefollow = true;
    global.shroomfollow = true;
});
PANIC = new DebugCommand("panic", "Toggles pizza time", "panic <minutes> <seconds>", function(argument0, argument1)
{
	if (argument0 == "")
		argument0 = undefined;
	if (argument1 == "")
		argument1 = undefined;
		
    if (argument0 != undefined)
    {
        argument0 = get_number_string(argument0);
        global.minutes = argument0;
    }
    
    if (argument1 != undefined)
    {
        argument1 = get_number_string(argument1);
        global.seconds = clamp(argument1, 0, 60);
    }
    
    global.panic = !global.panic;
    
    if (global.panic)
    {
	    scr_soundeffect(sfx_escaperumble);
		obj_camera.alarm[1] = 60;
	    global.wave = 0;
	    global.maxwave = ((global.minutes * 60) + global.seconds) * 60;
    
	    if (global.panicbg)
	        scr_panicbg_init();
	}
	else
		scr_panicbg_end();
});
SHOW_COLLISIONS = new DebugCommand("showcollisions", "Shows the collisions", "showcollisions <bool>", function(argument0)
{
    if (argument0 == undefined)
        exit;
    
    argument0 = get_bool(argument0);
    
    if (argument0 != undefined)
    {
        showcollisions = argument0;
        event_perform(ev_other, ev_room_start);
    }
});
SHOW_HUD = new DebugCommand("showhud", "Shows the HUD", "showhud <bool>", function(argument0)
{
    if (argument0 == undefined)
        exit;
    
    argument0 = get_bool(argument0);
    show_debug_message(!argument0);
    
    if (argument0 != undefined)
    {
        showhud = argument0;
        
        with (obj_tv)
        {
            visible = argument0;
            show_debug_message(visible);
        }
        
        with (obj_camera)
        {
            visible = argument0;
            show_debug_message(visible);
        }
    }
});
SET_PLAYER_CHARACTER = new DebugCommand("player_set_character", "Sets the player's character", "player_set_character <character:string>", function(argument0)
{
    if (argument0 == undefined)
        exit;
    
    argument0 = string(argument0);
    
	with (obj_player1)
	{
	    character = argument0;
		scr_characterspr();
	}
});
PLAYER_ROOM = new DebugCommand("player_room", "Go to given room", "player_room <targetRoom> <targetDoor:optional>", function(argument0, argument1)
{
    if (argument0 == undefined)
        exit;
    
    argument0 = asset_get_index(argument0);
    
    if (argument0 == -1)
        exit;
    
    with (obj_player)
    {
        targetRoom = argument0;
		if (argument1 != undefined)
			targetDoor = argument1;
		else
			targetDoor = "OLD";
    }
    
    instance_create(x, y, obj_fadeout);
});
PLAYER_POSITION = new DebugCommand("player_position", "Sets the player's position", "player_position <object:string> or <x:number> <y:number>", function(argument0, argument1)
{
    if (argument0 == undefined)
        exit;
    
    var test_obj = asset_get_index(argument0);
    
    if (test_obj == -1)
    {
		argument0 = get_number_string(argument0);
		argument1 = get_number_string(argument1);
	    with (obj_player)
	    {
	        x = argument0;
			y = argument1;
	    }
	}
	else
	{
		if (!instance_exists(test_obj))
			exit;
			
		var xx = test_obj.x;
		var yy = test_obj.y;
		
		with (obj_player)
	    {
	        x = xx;
			y = yy;
	    }
	}
});
PLAYER_SET_STATE = new DebugCommand("player_set_state", "Changes the player state", "player_set_state <states.state>", function(argument0)
{
    var _spr;
    
    if (argument0 == undefined)
        exit;
    
    argument0 = ds_map_find_value(state_map, argument0);
    
    if (!is_undefined(argument0))
    {
        with (obj_player)
        {
            if (object_index == obj_player1)
            {
                state = argument0;
                _spr = sprite_index;
                
                switch (argument0)
                {
                    case states.normal:
                        _spr = spr_idle;
                        break;
                    
                    case states.cheesepep:
                        _spr = spr_cheesepep_idle;
                        break;
                    
                    case states.knightpep:
                        _spr = spr_knightpepidle;
                        break;
                }
                
                sprite_index = _spr;
                image_index = 0;
            }
        }
    }
});

active = 0;
showcollisions = 0;
showhud = 1;
state_map = ds_map_create();
ds_map_set(state_map, "states.normal", states.normal);
ds_map_set(state_map, "states.cheesepep", states.cheesepep);
ds_map_set(state_map, "states.knightpep", states.knightpep);
command_list = ds_list_create();
ds_list_add(command_list, SHOW_HUD, SHOW_COLLISIONS, PLAYER_ROOM, PLAYER_SET_STATE, PANIC, ALLTOPPINS);
ds_list_add(command_list, SETCOMBO, GIVEKEY, SET_PLAYER_CHARACTER, PLAYER_POSITION);

input_text = "";
input_text_list = ds_list_create();
input_buffer = 0;
input_max = 1;
delete_buffer = 0;
delete_max = 8;
keyboard_string = "";
lastplayerstate = obj_player1.state;

function get_bool(argument0)
{
    if (argument0 == "true")
    {
        argument0 = 1;
        return argument0;
    }
    else if (argument0 == "false")
    {
        argument0 = 0;
        return argument0;
    }
    else if (is_real(real(string_digits(argument0))))
    {
        argument0 = bool(real(string_digits(argument0)));
        return argument0;
    }
    
    return undefined;
}
function get_number_string(argument0)
{
    var n;
    
    n = argument0;
	
    if (is_string(argument0))
    {
        n = real(string_digits(argument0));
        
        if (string_char_at(argument0, 1) == "-")
            n = -real(string_digits(argument0));
    }
    
    return n;
}
function check_command(argument0)
{
    var i, _cmd;
    
    if (!ds_list_empty(argument0))
    {
        for (i = 0; i < ds_list_size(command_list); i++)
        {
            _cmd = ds_list_find_value(command_list, i);
            
            if (ds_list_find_value(argument0, 0) == _cmd.command_id)
                return i;
        }
    }
    
    return -1;
}
function get_command_list(argument0)
{
    var r, i, _cmd;
    
    r = ds_list_create();
    
    for (i = 0; i < ds_list_size(command_list); i++)
    {
        _cmd = ds_list_find_value(command_list, i);
        
        if (string_copy(_cmd.command_id, 1, string_length(argument0)) == argument0)
            ds_list_add(r, _cmd);
    }
    
    if (!ds_list_empty(r))
    {
        return r;
    }
    else
    {
        ds_list_destroy(r);
        return -4;
    }
}
