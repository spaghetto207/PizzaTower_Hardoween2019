x = target.x;
y = target.y;

with (obj_camera)
{
    shake_mag = 0;
    shake_mag_acc = 0;
}

if ((global.panic == true || global.snickchallenge == true) && global.panicbg)
    scr_panicbg_init();

application_surface_draw_enable(true);
global.wave = global.maxwave - (((global.minutes * 60) + global.seconds) * 60);
