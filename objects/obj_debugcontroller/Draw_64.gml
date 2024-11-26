var _old_halign, _old_valign, _old_font, _maxlength, i, _cmd, _str;

if (!active)
    exit;

_old_halign = draw_get_halign();
_old_valign = draw_get_valign();
_old_font = draw_get_font();
draw_set_font(font2);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
_maxlength = -1;

if (!ds_list_empty(input_text_list) && string_letters(input_text) != "")
{
    for (i = 0; i < ds_list_size(input_text_list); i++)
    {
        _cmd = ds_list_find_value(input_text_list, i);
        _str = _cmd.format + " - " + _cmd.description;
        draw_text(8, 36 + (16 * i), _cmd.format + " - " + _cmd.description);
        
        if (string_width(_str) > _maxlength)
            _maxlength = string_width(_str);
    }
}

draw_set_alpha(0.75);
draw_rectangle_color(0, 0, 960, 24, c_black, c_black, c_black, c_black, 0);
draw_set_alpha(0.5);

if (!ds_list_empty(input_text_list) && string_letters(input_text) != "")
    draw_rectangle_color(0, 24, _maxlength + 16, 36 + (16 * ds_list_size(input_text_list)), c_black, c_black, c_black, c_black, 0);

draw_set_alpha(1);
draw_set_color(c_white);
draw_text(8, 12, input_text + "|");
draw_set_halign(_old_halign);
draw_set_valign(_old_valign);
draw_set_font(_old_font);
