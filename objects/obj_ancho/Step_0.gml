switch (state)
{
    case states.idle:
        scr_enemy_idle();
        break;
    
    case states.charge:
        scr_enemy_charge();
        break;
    
    case states.turn:
        scr_enemy_turn();
        break;
    
    case states.walk:
        scr_enemy_walk();
        break;
    
    case states.land:
        scr_enemy_land();
        break;
    
    case states.hit:
        scr_enemy_hit();
        break;
    
    case states.stun:
        scr_enemy_stun();
        break;
    
    case states.pizzagoblin_throw:
        scr_pizzagoblin_throw();
        break;
    
    case states.grabbed:
        scr_enemy_grabbed();
        break;
}

if (state == states.stun && stunned > 100 && birdcreated == 0)
{
    birdcreated = 1;
    
    with (instance_create(x, y, obj_enemybird))
        ID = other.id;
}

if (state != states.stun)
    birdcreated = 0;

if (state == states.walk && y > ystart && !scr_solid(x, y - 1))
    y--;

if (state == states.walk && y < ystart && !scr_solid(x, y + 1))
    y++;

if (state == states.stun)
    grav = 0.5;
else
    grav = 0;

if (flash == 1 && alarm[2] <= 0)
    alarm[2] = 0.15 * room_speed;

if (state != states.grabbed)
    depth = 0;

if ((obj_player.x > (x - 400) && obj_player.x < (x + 400)) && (y <= (obj_player.y + 60) && y >= (obj_player.y - 60)))
{
    if (state != states.idle && obj_player1.state == states.mach3)
    {
        state = states.idle;
        sprite_index = scaredspr;
        
        if (x != obj_player.x)
            image_xscale = -sign(x - obj_player.x);
    }
}

if (sprite_index == spr_ancho_chargestart && floor(image_index) == (image_number - 1))
{
    if (hitboxcreate == 0 && state == states.charge)
    {
        hitboxcreate = 1;
        
        with (instance_create(x, y, obj_forkhitbox))
            ID = other.id;
    }
    
    sprite_index = spr_ancho_charge;
    movespeed = 10;
}

if (x != obj_player1.x && state != states.charge && y == ystart)
{
    if ((obj_player1.x > (x - 200) && obj_player1.x < (x + 200)) && (y <= (obj_player1.y + 50) && y >= (obj_player1.y - 50)))
    {
        if (state == states.walk)
        {
            image_index = 0;
            image_xscale = -sign(x - obj_player.x);
            state = states.charge;
            sprite_index = spr_ancho_chargestart;
        }
    }
}

if (state == states.stun || state == states.walk)
    movespeed = 0;

if (state != states.stun)
    thrown = 0;

if (boundbox == 0)
{
    with (instance_create(x, y, obj_baddiecollisionbox))
    {
        sprite_index = other.sprite_index;
        mask_index = other.sprite_index;
        baddieID = other.id;
        other.boundbox = 1;
    }
}

// read the create event
if (obj_player1.baddiegrabbedID == id && obj_player1.state != states.grab && !ancho_grabbed)
{
	state = states.grabbed;
	obj_player1.state = states.grab;
	ancho_grabbed = true;
}
if (ancho_grabbed && (thrown || obj_player1.baddiegrabbedID != id))
		ancho_grabbed = false;