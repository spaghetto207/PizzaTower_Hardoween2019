var winh, winw, apph, appw, appx, appa;

if (global.panic == 1 && global.panicbg)
{
    application_surface_draw_enable(false);
    winh = window_get_height();
    winw = window_get_width();
    apph = window_get_height();
    appw = apph * 1.7777777777777777;
    appx = (winw - appw) / 2;
    appa = lerp(1, 0.33999999999999997, global.wave / global.maxwave);
    draw_surface_stretched_ext(application_surface, appx, 0, appw, apph, c_white, appa);
}
else
{
    application_surface_draw_enable(true);
}
