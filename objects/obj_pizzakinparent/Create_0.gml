image_speed = 0.35;

followQueue = ds_queue_create();

hsp = 0;
vsp = 0;
grav = 0.23;
movespeed = 3;

panic = false;

spr_intro = spr_toppinshroom_intro;
spr_idle = spr_pizzakinshroom;
spr_run = spr_pizzakinshroom_run;
spr_panic = spr_pizzakinshroom_panic;

//easier to add it here
LAG_STEPS = 10;