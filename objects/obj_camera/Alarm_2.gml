if (global.seconds == 0 && global.minutes == 0)
    alarm[2] = 3;

if (global.collect > 0)
    instance_create(target.x, target.y, obj_pizzaloss);

if (global.collect > 0)
    global.collect -= 5;

if (global.snickchallenge == true && global.collect == 0)
{
    with (obj_player)
    {
        state = states.gameover;
        sprite_index = spr_deathstart;
        image_index = 0;
        audio_stop_all();
        scr_soundeffect(mu_timesup);
    }
    
    alarm[2] = -1;
}
