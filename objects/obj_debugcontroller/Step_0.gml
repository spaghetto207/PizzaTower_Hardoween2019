var r, _commands, _cmd;

if (active)
{
    if (keyboard_check(vk_anykey) && input_buffer == 0)
    {
        input_text += keyboard_string;
        r = get_command_list(input_text);
        
        if (r != -4)
        {
            ds_list_clear(input_text_list);
            ds_list_copy(input_text_list, r);
            ds_list_destroy(r);
        }
        
        keyboard_string = "";
        input_buffer = input_max;
    }
    
    if (keyboard_check(vk_backspace) && delete_buffer == 0)
    {
        input_text = string_delete(input_text, string_length(input_text), 1);
        delete_buffer = delete_max;
    }
    
    if (keyboard_check_pressed(vk_enter) && input_text != "")
    {
        _commands = string_split_list(input_text, " ");
        active = 0;
        
        if (!ds_list_empty(_commands))
        {
            input_text = "";
            keyboard_string = "";
            _cmd = check_command(_commands);
            
            if (_cmd != -1)
            {
                ds_list_delete(_commands, 0);
                ds_list_find_value(command_list, _cmd).Invoke(ds_list_empty(_commands) ? undefined : _commands);
            }
            else
            {
                show_debug_message("Not valid");
            }
        }
    }
    
    if (input_buffer > 0)
        input_buffer--;
    
    if (delete_buffer > 0)
        delete_buffer--;
    
    if (keyboard_check_pressed(vk_f5))
    {
        active = 0;
        keyboard_string = "";
    }
}
else if (keyboard_check_pressed(vk_f5))
{
    active = 1;
    keyboard_string = "";
}